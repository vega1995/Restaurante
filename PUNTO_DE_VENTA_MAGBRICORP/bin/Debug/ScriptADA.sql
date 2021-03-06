USE [master]
GO

USE [BASEADA]

/****** Object:  Table [dbo].[ASISTENCIAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ASISTENCIAS](
	[Id_asistencia] [int] IDENTITY(1,1) NOT NULL,
	[Id_personal] [int] NULL,
	[Fecha_entrada] [datetime] NULL,
	[Fecha_salida] [datetime] NULL,
	[Estado] [varchar](50) NULL,
	[Horas] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ASISTENCIAS] PRIMARY KEY CLUSTERED 
(
	[Id_asistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Caja]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Caja](
	[Id_Caja] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Tema] [varchar](50) NULL,
	[Serial_PC] [varchar](50) NULL,
 CONSTRAINT [PK_Caja_1] PRIMARY KEY CLUSTERED 
(
	[Id_Caja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categoria](
	[idcategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombrecategoria] [varchar](50) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[idcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[idclientev] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NULL,
	[Direccion_para_factura] [varchar](max) NULL,
	[Ruc] [varchar](max) NULL,
	[movil] [varchar](50) NULL,
	[Cliente] [varchar](50) NULL,
	[Proveedor] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[Saldo] [numeric](18, 2) NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[idclientev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONCEPTOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONCEPTOS](
	[Id_concepto] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_CONCEPTOS] PRIMARY KEY CLUSTERED 
(
	[Id_concepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONEXION]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONEXION](
	[Id_conexion] [int] IDENTITY(1,1) NOT NULL,
	[Data_source_REMOTO] [varchar](max) NULL,
 CONSTRAINT [PK_CONEXION] PRIMARY KEY CLUSTERED 
(
	[Id_conexion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONTROL_DE_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONTROL_DE_COBROS](
	[Id_control_de_cobros] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [numeric](18, 2) NULL,
	[Concepto] [varchar](max) NULL,
	[Id_venta] [int] NULL,
 CONSTRAINT [PK_CONTROL_DE_COBROS] PRIMARY KEY CLUSTERED 
(
	[Id_control_de_cobros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETALLE_CONTROL_DE_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DETALLE_CONTROL_DE_COBROS](
	[Id_detalle_de_control_de_cobros] [int] IDENTITY(1,1) NOT NULL,
	[Pago_realizado] [numeric](18, 2) NULL,
	[Fecha_que_pago] [datetime] NULL,
	[Tipo_de_cobro] [varchar](50) NULL,
	[Detalle] [varchar](max) NULL,
	[Id_cliente] [int] NULL,
	[Id_usuario] [int] NULL,
	[Id_caja] [int] NULL,
 CONSTRAINT [PK_DETALLE_CONTROL_DE_COBROS] PRIMARY KEY CLUSTERED 
(
	[Id_detalle_de_control_de_cobros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[iddetalle_venta] [int] IDENTITY(1,1) NOT NULL,
	[idventa] [int] NOT NULL,
	[Id_producto] [int] NOT NULL,
	[cantidad] [numeric](18, 2) NULL,
	[preciounitario] [numeric](18, 2) NULL,
	[Modena] [varchar](50) NULL,
	[Total_a_pagar]  AS ([preciounitario]*[cantidad]),
	[Unidad_de_medida] [varchar](50) NULL,
	[Cantidad_mostrada] [numeric](18, 2) NULL,
	[Estado] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Codigo] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Se_vende_a] [varchar](50) NULL,
	[Usa_inventarios] [varchar](50) NULL,
	[Costo] [numeric](18, 2) NULL,
	[Ganancia]  AS ([cantidad]*[preciounitario]-[cantidad]*[Costo]),
 CONSTRAINT [PK_detalle_venta] PRIMARY KEY CLUSTERED 
(
	[iddetalle_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPRESA]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPRESA](
	[Id_empresa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Empresa] [varchar](50) NULL,
	[Logo] [image] NULL,
	[Impuesto] [varchar](50) NULL,
	[Porcentaje_impuesto] [numeric](18, 0) NULL,
	[Moneda] [varchar](50) NULL,
	[Trabajas_con_impuestos] [varchar](50) NULL,
	[Modo_de_busqueda] [varchar](50) NULL,
	[Carpeta_para_copias_de_seguridad] [varchar](max) NULL,
	[Correo_para_envio_de_reportes] [varchar](50) NULL,
	[Ultima_fecha_de_copia_de_seguridad] [varchar](50) NULL,
	[Ultima_fecha_de_copia_date] [datetime] NULL,
	[Frecuencia_de_copias] [int] NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_EMPRESA] PRIMARY KEY CLUSTERED 
(
	[Id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GASTOSVARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GASTOSVARIOS](
	[Idgasto] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_del_Gasto] [datetime] NULL,
	[Nro_Comprobante] [varchar](50) NULL,
	[Tipo_de_Comprobante] [varchar](50) NULL,
	[Importe] [numeric](18, 2) NULL,
	[Descripcion] [varchar](500) NULL,
	[Id_concepto] [int] NULL,
	[Id_usuario] [int] NULL,
	[TIPO] [varchar](50) NULL,
	[Id_caja] [int] NULL,
 CONSTRAINT [PK_GASTOSVARIOS] PRIMARY KEY CLUSTERED 
(
	[Idgasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HORARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HORARIOS](
	[Id_horarios] [int] IDENTITY(1,1) NOT NULL,
	[Cargo] [varchar](50) NULL,
	[Horas_laborales_diarias] [numeric](18, 1) NULL,
	[Costo_hora_normal] [numeric](18, 2) NULL,
	[Costo_hora_extra] [numeric](18, 2) NULL,
	[Horas_libres_diarias] [numeric](18, 1) NULL,
	[lunes] [int] NULL,
	[martes] [int] NULL,
	[miercoles] [int] NULL,
	[jueves] [int] NULL,
	[viernes] [int] NULL,
	[sabado] [int] NULL,
	[domingo] [int] NULL,
 CONSTRAINT [PK_HORARIOS] PRIMARY KEY CLUSTERED 
(
	[Id_horarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INGRESOSVARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[INGRESOSVARIOS](
	[Idgasto] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_del_Gasto] [datetime] NULL,
	[Nro_Comprobante] [varchar](50) NULL,
	[Tipo_de_Comprobante] [varchar](50) NULL,
	[Importe] [decimal](18, 2) NULL,
	[Observacion] [varchar](500) NULL,
	[Estado] [varchar](50) NULL,
	[Id_concepto] [int] NULL,
 CONSTRAINT [PK_INGRESOSVARIOS] PRIMARY KEY CLUSTERED 
(
	[Idgasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KARDEX]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KARDEX](
	[Id_kardex] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Motivo] [varchar](200) NULL,
	[Cantidad] [numeric](18, 0) NULL,
	[Id_producto] [int] NULL,
	[Id_usuario] [int] NULL,
	[Tipo] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[Total]  AS ([Cantidad]*[Costo_unt]),
	[Costo_unt] [numeric](18, 2) NULL,
	[Habia] [numeric](18, 2) NULL,
	[Hay] [numeric](18, 2) NULL,
	[Id_caja] [int] NULL,
 CONSTRAINT [PK_KARDEX] PRIMARY KEY CLUSTERED 
(
	[Id_kardex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[linea]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[linea](
	[Idline] [int] IDENTITY(1,1) NOT NULL,
	[Linea] [varchar](50) NULL,
 CONSTRAINT [PK_linea] PRIMARY KEY CLUSTERED 
(
	[Idline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marcan]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marcan](
	[Id_marca] [int] IDENTITY(1,1) NOT NULL,
	[S] [varchar](50) NULL,
	[F] [varchar](max) NULL,
 CONSTRAINT [PK_Licencias] PRIMARY KEY CLUSTERED 
(
	[Id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Monedero_Electronico_del_ahorro]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Monedero_Electronico_del_ahorro](
	[Id_monedero] [int] IDENTITY(1,1) NOT NULL,
	[Puntos_acumulados] [numeric](18, 0) NULL,
	[Id_conversion] [int] NULL,
	[Estado] [varchar](50) NULL,
	[Id_venta] [int] NULL,
 CONSTRAINT [PK_Monedero_Electronico_del_ahorro] PRIMARY KEY CLUSTERED 
(
	[Id_monedero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVIMIENTOCAJA]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVIMIENTOCAJA](
	[idmovcaja] [varchar](12) NOT NULL,
	[fechamov] [datetime] NULL,
	[tipomov] [varchar](20) NULL,
	[nombretipomov] [varchar](20) NULL,
	[descripciontipomov] [varchar](120) NULL,
	[totalmov] [real] NULL,
	[movcerrado] [char](2) NULL,
	[estado] [char](1) NULL,
	[mediodepago] [varchar](20) NULL,
	[idcompraventa] [varchar](12) NULL,
	[idusuario] [numeric](18, 0) NULL,
	[idcierrecaja] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVIMIENTOCAJACIERRE]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVIMIENTOCAJACIERRE](
	[idcierrecaja] [int] IDENTITY(1,1) NOT NULL,
	[fechainicio] [datetime] NULL,
	[fechafin] [datetime] NULL,
	[fechacierre] [datetime] NULL,
	[ingresos] [numeric](18, 2) NULL,
	[egresos] [numeric](18, 2) NULL,
	[Saldo_queda_en_caja] [numeric](18, 2) NULL,
	[Id_usuario] [int] NULL,
	[Total_calculado] [numeric](18, 2) NULL,
	[Total_real] [numeric](18, 2) NULL,
	[Estado] [varchar](50) NULL,
	[Diferencia] [numeric](18, 2) NULL,
	[Id_caja] [int] NULL,
 CONSTRAINT [PK_MOVIMIENTOCAJACIERRE] PRIMARY KEY CLUSTERED 
(
	[idcierrecaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OFERTAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OFERTAS](
	[Id_oferta] [int] IDENTITY(1,1) NOT NULL,
	[Id_presentacion_fraccionada] [int] NULL,
	[Cantidad_condicional] [numeric](18, 2) NULL,
	[Id_unidad_condicional] [int] NULL,
	[Descuento] [numeric](18, 2) NULL,
 CONSTRAINT [PK_OFERTAS] PRIMARY KEY CLUSTERED 
(
	[Id_oferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[permisos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permisos](
	[Id_Permiso] [int] IDENTITY(1,1) NOT NULL,
	[Id_Usuario] [int] NULL,
	[ventas] [int] NULL,
	[aplicar_descuentos] [int] NULL,
	[Devoluciones] [int] NULL,
	[cobros] [int] NULL,
	[Pagar] [int] NULL,
	[clientes_proveedores] [int] NULL,
	[productos] [int] NULL,
	[invetarios_kardex] [int] NULL,
	[configuraciones] [int] NULL,
	[usuarios] [int] NULL,
	[reportes] [int] NULL,
 CONSTRAINT [PK_p] PRIMARY KEY CLUSTERED 
(
	[Id_Permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto1]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto1](
	[Id_Producto1] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Imagen] [varchar](50) NULL,
	[Linea] [varchar](50) NULL,
	[Usa_inventarios] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Precio_de_compra] [numeric](18, 2) NULL,
	[Fecha_de_vencimiento] [varchar](50) NULL,
	[Precio_de_venta] [numeric](18, 2) NULL,
	[Codigo] [varchar](50) NULL,
	[Se_vende_a] [varchar](50) NULL,
	[Impuesto] [varchar](50) NULL,
	[Stock_minimo] [numeric](18, 2) NULL,
	[Precio_mayoreo] [numeric](18, 2) NULL,
	[Sub_total_pv]  AS ([Precio_de_venta]-([Precio_de_venta]*[Impuesto])/(100)),
	[Sub_total_pm]  AS ([Precio_mayoreo]-([Precio_mayoreo]*[Impuesto])/(100)),
 CONSTRAINT [PK_Producto1] PRIMARY KEY CLUSTERED 
(
	[Id_Producto1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[programacion_de_cuotas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[programacion_de_cuotas](
	[Id_Programacion_cuota] [int] IDENTITY(1,1) NOT NULL,
	[Monto_cuota] [decimal](18, 2) NULL,
	[Cuotas] [nchar](10) NULL,
	[Estado] [varchar](50) NULL,
	[Fechas_Programadas] [varchar](50) NULL,
	[Saldo] [decimal](18, 2) NULL,
	[Id_programacion_de_cuota_padre] [int] NULL,
 CONSTRAINT [PK_programacion_de_cuotas] PRIMARY KEY CLUSTERED 
(
	[Id_Programacion_cuota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROGRAMACION_DE_CUOTAS_PADRE]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROGRAMACION_DE_CUOTAS_PADRE](
	[Id_programacion_de_cuota_padre] [int] IDENTITY(1,1) NOT NULL,
	[Monto_total] [numeric](18, 2) NULL,
	[Porcentaje_de_inicial] [varchar](50) NULL,
	[Monto_inicial] [numeric](18, 2) NULL,
	[Total_a_financiar] [numeric](18, 2) NULL,
	[Modalidad_de_cuotas] [varchar](50) NULL,
	[Tasa_de_interes_anual] [varchar](50) NULL,
	[Cuotas_totales] [int] NULL,
	[Id_venta] [int] NULL,
	[Valor_final] [numeric](18, 2) NULL,
	[Banco_financiero] [varchar](50) NULL,
	[Bono_de_buen_pagador] [numeric](18, 2) NULL,
	[Estado_de_cobro_de_bono] [varchar](50) NULL,
 CONSTRAINT [PK_PROGRAMACION_DE_CUOTAS_PADRE] PRIMARY KEY CLUSTERED 
(
	[Id_programacion_de_cuota_padre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMOCIONES]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOCIONES](
	[Id_promocion] [int] IDENTITY(1,1) NOT NULL,
	[Id_Producto] [int] NULL,
	[A_partir_de] [numeric](18, 2) NULL,
	[Precio_de_promocion] [numeric](18, 2) NULL,
 CONSTRAINT [PK_PROMOCIONES] PRIMARY KEY CLUSTERED 
(
	[Id_promocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Serializacion]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Serializacion](
	[Id_serializacion] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [varchar](50) NULL,
	[numeroinicio] [varchar](50) NULL,
	[numerofin] [varchar](50) NULL,
	[Destino] [varchar](50) NULL,
	[Id_tipodoc] [varchar](50) NULL,
 CONSTRAINT [PK_Serializacion] PRIMARY KEY CLUSTERED 
(
	[Id_serializacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id_ticket] [int] IDENTITY(1,1) NOT NULL,
	[Id_empresa] [int] NULL,
	[Empresa_Ruc] [varchar](max) NULL,
	[Direccion] [varchar](max) NULL,
	[Provincia] [varchar](max) NULL,
	[Moneda_string] [varchar](max) NULL,
	[Agradecimiento] [varchar](max) NULL,
	[pagina_Web_Facebook] [varchar](max) NULL,
	[Extra] [varchar](max) NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIO2]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIO2](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_y_Apelllidos] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_USUARIO2] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ventas](
	[idventa] [int] IDENTITY(1,1) NOT NULL,
	[idclientev] [int] NULL,
	[fecha_venta] [datetime] NULL,
	[Numero_de_doc] [varchar](50) NULL,
	[Monto_total] [numeric](18, 1) NULL,
	[Tipo_de_pago] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[IGV] [numeric](18, 1) NULL,
	[Comprobante] [varchar](50) NULL,
	[Id_usuario] [int] NULL,
	[Fecha_de_pago] [varchar](50) NULL,
	[ACCION] [varchar](50) NULL,
	[Saldo] [numeric](18, 2) NULL,
	[Pago_con] [numeric](18, 2) NULL,
	[Porcentaje_IGV] [numeric](18, 2) NULL,
	[Id_caja] [int] NULL,
 CONSTRAINT [PK_ventas] PRIMARY KEY CLUSTERED 
(
	[idventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ASISTENCIAS]  WITH CHECK ADD  CONSTRAINT [FK_ASISTENCIAS_USUARIO2] FOREIGN KEY([Id_personal])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ASISTENCIAS] CHECK CONSTRAINT [FK_ASISTENCIAS_USUARIO2]
GO
ALTER TABLE [dbo].[CONTROL_DE_COBROS]  WITH CHECK ADD  CONSTRAINT [FK_CONTROL_DE_COBROS_ventas] FOREIGN KEY([Id_venta])
REFERENCES [dbo].[ventas] ([idventa])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CONTROL_DE_COBROS] CHECK CONSTRAINT [FK_CONTROL_DE_COBROS_ventas]
GO
ALTER TABLE [dbo].[DETALLE_CONTROL_DE_COBROS]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_CONTROL_DE_COBROS_clientes] FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[clientes] ([idclientev])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DETALLE_CONTROL_DE_COBROS] CHECK CONSTRAINT [FK_DETALLE_CONTROL_DE_COBROS_clientes]
GO
ALTER TABLE [dbo].[DETALLE_CONTROL_DE_COBROS]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_CONTROL_DE_COBROS_USUARIO2] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DETALLE_CONTROL_DE_COBROS] CHECK CONSTRAINT [FK_DETALLE_CONTROL_DE_COBROS_USUARIO2]
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_ventas1] FOREIGN KEY([idventa])
REFERENCES [dbo].[ventas] ([idventa])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [FK_detalle_venta_ventas1]
GO
ALTER TABLE [dbo].[INGRESOSVARIOS]  WITH CHECK ADD  CONSTRAINT [FK_INGRESOSVARIOS_CONCEPTOS] FOREIGN KEY([Id_concepto])
REFERENCES [dbo].[CONCEPTOS] ([Id_concepto])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[INGRESOSVARIOS] CHECK CONSTRAINT [FK_INGRESOSVARIOS_CONCEPTOS]
GO
ALTER TABLE [dbo].[KARDEX]  WITH CHECK ADD  CONSTRAINT [FK_KARDEX_Producto1] FOREIGN KEY([Id_producto])
REFERENCES [dbo].[Producto1] ([Id_Producto1])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KARDEX] CHECK CONSTRAINT [FK_KARDEX_Producto1]
GO
ALTER TABLE [dbo].[KARDEX]  WITH CHECK ADD  CONSTRAINT [FK_KARDEX_USUARIO2] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KARDEX] CHECK CONSTRAINT [FK_KARDEX_USUARIO2]
GO
ALTER TABLE [dbo].[MOVIMIENTOCAJACIERRE]  WITH CHECK ADD  CONSTRAINT [FK_MOVIMIENTOCAJACIERRE_Caja] FOREIGN KEY([Id_caja])
REFERENCES [dbo].[Caja] ([Id_Caja])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MOVIMIENTOCAJACIERRE] CHECK CONSTRAINT [FK_MOVIMIENTOCAJACIERRE_Caja]
GO
ALTER TABLE [dbo].[MOVIMIENTOCAJACIERRE]  WITH CHECK ADD  CONSTRAINT [FK_MOVIMIENTOCAJACIERRE_USUARIO2] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[MOVIMIENTOCAJACIERRE] CHECK CONSTRAINT [FK_MOVIMIENTOCAJACIERRE_USUARIO2]
GO
ALTER TABLE [dbo].[permisos]  WITH CHECK ADD  CONSTRAINT [FK_permisos_USUARIO2] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[permisos] CHECK CONSTRAINT [FK_permisos_USUARIO2]
GO
ALTER TABLE [dbo].[programacion_de_cuotas]  WITH CHECK ADD  CONSTRAINT [FK_programacion_de_cuotas_PROGRAMACION_DE_CUOTAS_PADRE] FOREIGN KEY([Id_programacion_de_cuota_padre])
REFERENCES [dbo].[PROGRAMACION_DE_CUOTAS_PADRE] ([Id_programacion_de_cuota_padre])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[programacion_de_cuotas] CHECK CONSTRAINT [FK_programacion_de_cuotas_PROGRAMACION_DE_CUOTAS_PADRE]
GO
ALTER TABLE [dbo].[PROGRAMACION_DE_CUOTAS_PADRE]  WITH CHECK ADD  CONSTRAINT [FK_PROGRAMACION_DE_CUOTAS_PADRE_ventas] FOREIGN KEY([Id_venta])
REFERENCES [dbo].[ventas] ([idventa])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PROGRAMACION_DE_CUOTAS_PADRE] CHECK CONSTRAINT [FK_PROGRAMACION_DE_CUOTAS_PADRE_ventas]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_USUARIO2] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_USUARIO2]
GO
/****** Object:  StoredProcedure [dbo].[activar_la_escritura_de_mdf]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[activar_la_escritura_de_mdf]
as
ALTER DATABASE   BASEMAGBRI Set Read_write
GO
/****** Object:  StoredProcedure [dbo].[actualizar_estado_de_cuota]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[actualizar_estado_de_cuota]
@idprogramacioncuota as integer

as 
update  programacion_de_cuotas  set Estado='PAGADO'
where Id_Programacion_cuota=@idprogramacioncuota AND Saldo  = 0 AND Estado='DEUDA'

GO
/****** Object:  StoredProcedure [dbo].[actualizar_serializacion_mas_uno]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[actualizar_serializacion_mas_uno]

@idserie as int  ,

@numero varchar(50),
@numerofin as numeric(18,0)  
as 
if EXISTS (SELECT Comprobante ,Numero_de_doc FROM ventas  where  Comprobante +' '+Numero_de_doc =@numero  )
RAISERROR ('YA EXISTE ESTE NUMERO DE COMPROBANTE INGRESE UNO NUEVO', 16,1)
else
update Serializacion set  numerofin=@numerofin            
where Id_serializacion=@idserie 


GO
/****** Object:  StoredProcedure [dbo].[actualizarestado_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizarestado_venta]

@resto as decimal(18,2),
@idventa as int
as
if @resto <>0.00
update ventas  set Estado='DEUDA'
where Estado='DEUDA' and idventa  =@idventa
else
update ventas set Estado='CREDITO PAGADO'
where  Estado='DEUDA' and idventa  =@idventa

GO
/****** Object:  StoredProcedure [dbo].[actualizartotal_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizartotal_venta]
@idventa int,
@montototal as numeric(18,1),
@IGV as numeric(18,1)

,@Saldo numeric(18,2),
@Tipo_de_pago varchar(50),
@Estado varchar(50),
@Id_series varchar(50),
@Numero_de_doc varchar(50),
@fecha_venta datetime,
@ACCION varchar(50),
@Fecha_de_pago varchar(50),
@idcliente int,
@Pago_con numeric(18,2)
as
if @montototal <>0
update ventas set Monto_total  =@montototal, IGV=@IGV ,Saldo=@Saldo,
Tipo_de_pago=@Tipo_de_pago 
,Estado=@Estado ,
Comprobante =@Id_series ,
Numero_de_doc=@Numero_de_doc ,
fecha_venta=@fecha_venta ,
ACCION=@ACCION ,Fecha_de_pago =@Fecha_de_pago ,idclientev=@idcliente ,
Pago_con=@Pago_con
where idventa =@idventa 
else
begin 
delete
from ventas
where idventa=@idventa 
end




GO
/****** Object:  StoredProcedure [dbo].[actualizarventasfacturaspagadas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizarventasfacturaspagadas]
@idcliente as integer

as
update ventas set Estado = 'PAGADO'  
where idclientev=@idcliente 




GO
/****** Object:  StoredProcedure [dbo].[aumentar_saldo_a_cliente]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[aumentar_saldo_a_cliente]
@idcliente as integer,
@Saldo numeric(18,2)
          
as 
update clientes set 

          
			Saldo =Saldo+@Saldo 
where idclientev =@idcliente 




GO
/****** Object:  StoredProcedure [dbo].[aumentar_stock]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aumentar_stock]
@Id_presentacionfraccionada as INT,
@cantidad as decimal (18,2)

as
update Producto1   set Stock=Stock+@cantidad where Id_Producto1  =@Id_presentacionfraccionada AND Usa_inventarios ='SI'


GO
/****** Object:  StoredProcedure [dbo].[aumentar_stock_en_detalle_de_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aumentar_stock_en_detalle_de_venta]
@Id_presentacionfraccionada as varchar(50),
@cantidad as decimal (18,2)

as
update detalle_venta   set Stock=Stock+@cantidad where Id_producto   =@Id_presentacionfraccionada AND Stock  <>'Ilimitado' AND Estado ='EN ESPERA'
GO
/****** Object:  StoredProcedure [dbo].[AUTORIZAR_A_USUARIOS_PARA_QUE_PROPIETARIO_DE_BASE_DE_DATOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AUTORIZAR_A_USUARIOS_PARA_QUE_PROPIETARIO_DE_BASE_DE_DATOS]
AS
Alter authorization on database::BASEUP to peruinka
GO
/****** Object:  StoredProcedure [dbo].[backup_base]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[backup_base]
@ruta as varchar(max)
as
BACKUP DATABASE [BASEADA]
TO DISK =N'C:\BASE_MAESTRA_PERUINKA_INDUSTRIAS\BASE\BASEADA.bak'
WITH DESCRIPTION =N'respaldo de la base de datos de BASEADA',
NOFORMAT,
INIT,
NAME=N'BASEADA',
SKIP,
NOREWIND,
NOUNLOAD,
STATS=10,
CHECKSUM
GO
/****** Object:  StoredProcedure [dbo].[Buscar__id_cajas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Buscar__id_cajas]
@Caja varchar(50)
as
select * from Caja 
where Descripcion =@Caja
order by Id_Caja desc
GO
/****** Object:  StoredProcedure [dbo].[buscar_ASISTENCIAS_por_id]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_ASISTENCIAS_por_id]
--declare @fecha_sistema date set @fecha_sistema = (SELECT GETDATE())
@letra int
AS 

SELECT        *
FROM            dbo.ASISTENCIAS 						 
WHEre Id_personal=@letra AND Estado='ENTRADA'


GO
/****** Object:  StoredProcedure [dbo].[buscar_ASISTENCIAS_por_id_para_horas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_ASISTENCIAS_por_id_para_horas]
@letra int
AS 
declare @fecha_sistema date set @fecha_sistema = (SELECT GETDATE())
SELECT        *
FROM            dbo.ASISTENCIAS 						 
WHEre Id_personal=@letra and convert(date,Fecha_entrada)=@fecha_sistema 


GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_COBROS]

@letra VARCHAR(50)
AS BEGIN
SELECT       dbo.clientes .Nombre ,dbo.clientes.idclientev ,Saldo 
FROM            clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Cliente  ='SI' 
END

GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_COMPRAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_COMPRAS]

@letra VARCHAR(50)
AS BEGIN
SELECT       dbo.clientes .Nombre ,dbo.clientes.idclientev 
FROM            clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Proveedor ='SI' 
END

GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_PAGOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_PAGOS]

@letra VARCHAR(50)
AS BEGIN
SELECT       dbo.clientes .Nombre ,dbo.clientes.idclientev ,Saldo 
FROM            clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Proveedor   ='SI' 
END

GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS]

@letra VARCHAR(50)
AS BEGIN
SELECT        DBO.clientes.Nombre ,DBO.clientes.idclientev  
FROM            clientes 

WHEre Nombre  LIKE  '%' + @letra+'%' and Cliente='SI'  
END
GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS_buscador]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS_buscador]

@letra VARCHAR(50)
AS BEGIN
SELECT        DBO.clientes.Nombre  ,clientes.idclientev,clientes.Saldo 
 
FROM         clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Cliente='SI' 
group by	DBO.clientes.Nombre ,clientes.idclientev,clientes.Saldo 
END


GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS_todos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS_todos]

@letra VARCHAR(50)
AS BEGIN
SELECT        DBO.clientes.Nombre ,DBO.clientes.idclientev ,Direccion_para_factura  ,movil  ,Ruc
FROM         clientes
WHEre Nombre+movil +Direccion_para_factura   LIKE  '%' + @letra+'%' and Cliente='SI'  ORDER BY idclientev desc
END
GO
/****** Object:  StoredProcedure [dbo].[buscar_cobros_x_vendedor_y_fecha]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[buscar_cobros_x_vendedor_y_fecha]
@idvendedor as int,
@fecha as date

as
SELECT       sum(DETALLE_CONTROL_DE_COBROS.Pago_realizado ) as TOTAL
						
FROM            DETALLE_CONTROL_DE_COBROS  
where Id_usuario =@idvendedor AND CONVERT(DATE,Fecha_que_pago )=@fecha 
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_CONCEPTOS_EN_GASTOS_VARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BUSCAR_CONCEPTOS_EN_GASTOS_VARIOS]
@letra VARCHAR(50)
AS BEGIN
SELECT        dbo.CONCEPTOS.Id_concepto, dbo.CONCEPTOS.Descripcion AS Concepto 
                      
FROM            dbo.CONCEPTOS 
						 WHERE CONCEPTOS.Descripcion   LIKE  '%' + @letra+'%' 
						 END

GO
/****** Object:  StoredProcedure [dbo].[buscar_creditos_x_vendedor_y_fecha]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_creditos_x_vendedor_y_fecha]
@idvendedor as int,
@fecha as date

as
SELECT       sum(ventas.Saldo ) as TOTAL
	FROM           
                         dbo.ventas 
						

     
where Id_usuario =@idvendedor AND CONVERT(DATE,ventas.fecha_venta   )=@fecha and
ventas.Estado='DEUDA' AND  ventas.Tipo_de_pago='CREDITO'
GO
/****** Object:  StoredProcedure [dbo].[buscar_Empresa]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_Empresa]
@letra varchar(50)
as
select LOGO, Nombre_Empresa as Empresa ,(Impuesto + ' ('+  CONVERT(VARCHAR(50),Porcentaje_impuesto) + ')') Impuesto ,Moneda , Id_empresa AS OKA ,Id_empresa  
,Porcentaje_impuesto  ,Impuesto ,Trabajas_con_impuestos,Modo_de_busqueda 
from Empresa
where EMPRESA.Nombre_Empresa =@letra

GO
/****** Object:  StoredProcedure [dbo].[buscar_linea]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_linea]
@linea as varchar(50)
as begin
select * from linea Where Linea LIKE @linea+'%'
end





GO
/****** Object:  StoredProcedure [dbo].[buscar_MOVIMIENTOS_DE_KARDEX]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_MOVIMIENTOS_DE_KARDEX]
@letra VARCHAR(50)
AS BEGIN
SELECT       KARDEX.Fecha ,Producto1.Descripcion ,KARDEX.Motivo as Movimiento, KARDEX.Habia ,KARDEX.Tipo ,KARDEX.Cantidad ,KARDEX.Hay ,USUARIO2.Nombre_y_Apelllidos as Cajero ,Producto1.Linea as Categoria

FROM            dbo.KARDEX INNER JOIN Producto1 on Producto1.Id_Producto1=KARDEX.Id_producto inner join USUARIO2 on USUARIO2.idUsuario =KARDEX.Id_usuario 
             
						 
WHEre Producto1.Descripcion +KARDEX.Motivo + convert(varchar(50),KARDEX.Habia) +KARDEX.Tipo +convert(varchar(50),KARDEX.Cantidad)+convert(varchar(50),KARDEX.Hay) +USUARIO2.Nombre_y_Apelllidos  +Producto1.Linea LIKE  '%' + @letra +'%'     order by KARDEX.Fecha Desc

END
GO
/****** Object:  StoredProcedure [dbo].[buscar_MOVIMIENTOS_DE_KARDEX_filtros ]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_MOVIMIENTOS_DE_KARDEX_filtros ]
@fecha date,
@tipo varchar(50),
@Id_caja int,
@letra varchar(50)
AS BEGIN
SELECT       KARDEX.Fecha ,Producto1.Descripcion ,KARDEX.Motivo as Movimiento, KARDEX.Habia ,KARDEX.Tipo ,KARDEX.Cantidad ,KARDEX.Hay ,USUARIO2.Nombre_y_Apelllidos as Cajero ,Producto1.Linea as Categoria
FROM            dbo.KARDEX INNER JOIN Producto1 on Producto1.Id_Producto1=KARDEX.Id_producto inner join USUARIO2 on USUARIO2.idUsuario =KARDEX.Id_usuario 
         
						 
WHEre KARDEX.Id_caja=@Id_caja and (KARDEX.Tipo=@tipo or @tipo  ='-Todos-') and convert(date,KARDEX.Fecha) =convert(date,@fecha )and Producto1.Descripcion+USUARIO2.Nombre_y_Apelllidos  LIKE  '%' + @letra+'%' 
END
GO
/****** Object:  StoredProcedure [dbo].[buscar_producto_por_descripcion]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_producto_por_descripcion]
@letra VARCHAR(50)
AS BEGIN
select Id_Producto1,Codigo ,Linea as Categoria,Descripcion ,Impuesto,Usa_inventarios ,Precio_de_compra AS P_Compra,Precio_mayoreo as P_mayoreo,Se_vende_a as Se_vende_por,Stock_minimo ,Fecha_de_vencimiento as F_vencimiento ,Stock,Precio_de_venta as P_venta 


FROM            dbo.Producto1 
              
WHEre (dbo.Producto1.Descripcion)+Codigo +Linea   LIKE  '%' + @letra+'%' ORDER BY DBO.Producto1.Descripcion  asc
 
END



GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_PRODUCTOS_KARDEX]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BUSCAR_PRODUCTOS_KARDEX]

@letrab VARCHAR(50)
AS BEGIN
SELECT        Id_Producto1, (Descripcion) AS Descripcion, Imagen, Linea, Usa_inventarios, Stock, Precio_de_compra, Fecha_de_vencimiento, Precio_de_venta, Codigo, Se_vende_a, Impuesto, Stock_minimo, Precio_mayoreo, Sub_total_pv, 
                         Sub_total_pm
FROM            dbo.Producto1 
                      
  
						 where  (Descripcion+linea + Codigo) LIKE  '%' + @letrab+'%' and Usa_inventarios ='SI'
end  
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_PRODUCTOS_oka]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BUSCAR_PRODUCTOS_oka]

@letrab VARCHAR(50)
AS BEGIN
SELECT        Id_Producto1, (Descripcion+' /Grupo: '+linea +' /Codigo: '+ Codigo  ) AS Descripcion, Imagen, Linea, Usa_inventarios, Stock, Precio_de_compra, Fecha_de_vencimiento, Precio_de_venta, Codigo, Se_vende_a, Impuesto, Stock_minimo, Precio_mayoreo, Sub_total_pv, 
                         Sub_total_pm,Descripcion as Descripcion2
FROM            dbo.Producto1 
                      
  
						 where  (Descripcion+' /Grupo: '+linea +' /Codigo: '+ Codigo) LIKE  '%' + @letrab+'%' 
end  
GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_PRODUCTOS_oka_por_teclado]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BUSCAR_PRODUCTOS_oka_por_teclado]

@letrab VARCHAR(50)
AS BEGIN
SELECT        Id_Producto1, (Descripcion+ Codigo  ) AS Descripcion, Imagen, Linea, Usa_inventarios, Stock, Precio_de_compra, Fecha_de_vencimiento, Precio_de_venta, Codigo, Se_vende_a, Impuesto, Stock_minimo, Precio_mayoreo, Sub_total_pv, 
                         Sub_total_pm
FROM            dbo.Producto1 
                      
  
						 where  (Descripcion+Codigo ) LIKE  '%' + @letrab+'%' 
end  
GO
/****** Object:  StoredProcedure [dbo].[buscar_proveedor_POR_nombre]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_proveedor_POR_nombre]

@letra VARCHAR(50)
AS BEGIN
SELECT   Nombre as Cliente , idclientev 
    
FROM   clientes        
                        
WHEre Nombre  LIKE  '%' + @letra+'%' and Proveedor ='SI'
END


GO
/****** Object:  StoredProcedure [dbo].[buscar_PROVEEDOR_POR_nombre_PARA_VENTAS_todos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_PROVEEDOR_POR_nombre_PARA_VENTAS_todos]

@letra VARCHAR(50)
AS BEGIN
SELECT        DBO.clientes.Nombre ,DBO.clientes.idclientev  ,movil  
FROM         clientes
WHEre Nombre+movil   LIKE  '%' + @letra+'%' and Proveedor ='SI'  ORDER BY idclientev desc
END
GO
/****** Object:  StoredProcedure [dbo].[buscar_Tipo_de_documentos_para_insertar_en_ventas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_Tipo_de_documentos_para_insertar_en_ventas]
@letra VARCHAR(50)
AS BEGIN

SELECT        Serializacion.Id_tipodoc  AS COMPROBANTE , Serializacion.Id_tipodoc  ,dbo.Serializacion.Serie ,dbo.Serializacion.numeroinicio , dbo.Serializacion.numerofin+1 ,dbo.Serializacion.Id_serializacion ,(dbo.Serializacion.Serie  +' - '+ dbo.Serializacion.numeroinicio + dbo.Serializacion.numerofin) as serie_completa,Serializacion.Id_tipodoc,Serializacion.Id_tipodoc 
FROM            dbo.Serializacion 
 
 WHEre Serializacion.Id_tipodoc LIKE  '%' + @letra+'%' and dbo.Serializacion .Destino  ='VENTAS'
 end
GO
/****** Object:  StoredProcedure [dbo].[buscar_USUARIO_por_nombre]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_USUARIO_por_nombre]
@letra VARCHAR(50),
@pas varchar(50)
AS BEGIN
SELECT        idUsuario, Nombre_y_Apelllidos,Password 
FROM            dbo.USUARIO2						 
WHEre Nombre_y_Apelllidos  LIKE  '%' + @letra+'%' AND Password=@pas
END

GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_a_credito_con_productos_x_vendedor_y_fecha]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_a_credito_con_productos_x_vendedor_y_fecha]
@idvendedor as int,
@fecha as date

as
SELECT       sum(ventas.Monto_total) as TOTAL
						
FROM            ventas
where Id_usuario =@idvendedor AND CONVERT(DATE,fecha_venta)=@fecha AND Estado='DEUDA' AND ACCION='VENTA'
GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_fecha]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_por_fecha]


@fi  date,
@ff date,
@usuario varchar(50)
AS BEGIN
SELECT        idventa , fecha_venta ,Comprobante +Numero_de_doc  ,Monto_total ,USUARIO2.Nombre_y_Apelllidos ,ventas.Pago_con
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  					 
WHEre  convert(date,ventas.fecha_venta) >=@fi and convert(date,ventas.fecha_venta)  <=@ff and USUARIO2.Nombre_y_Apelllidos =@usuario
END
GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_numero_de_comprobante]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_por_numero_de_comprobante]


@letra VARCHAR(50)
AS BEGIN
SELECT       ventas. idventa , fecha_venta ,Comprobante +' '+Numero_de_doc  ,Monto_total ,USUARIO2.Nombre_y_Apelllidos ,ventas.Pago_con
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  	inner join detalle_venta on detalle_venta.idventa=ventas.idventa 				 
WHEre Comprobante +Numero_de_doc    LIKE  '%' + @letra+'%' and ventas.Monto_total >0 AND ventas.Estado='CONFIRMADO'
END
GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_numero_usuario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_por_numero_usuario]


@letra VARCHAR(50)
AS BEGIN
SELECT        idventa , fecha_venta ,Comprobante +Numero_de_doc  ,Monto_total ,USUARIO2.Nombre_y_Apelllidos ,ventas.Pago_con
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  					 
WHEre USUARIO2.Nombre_y_Apelllidos    LIKE  '%' + @letra+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_numero_usuario_FILTRADO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_por_numero_usuario_FILTRADO]


@letra VARCHAR(50)
AS 
SELECT        idventa , fecha_venta ,Comprobante +Numero_de_doc  ,Monto_total ,USUARIO2.Nombre_y_Apelllidos ,ventas.Pago_con
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  					 
WHEre USUARIO2.Nombre_y_Apelllidos =@letra   

GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_usuario_sin_repeticion]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_ventas_por_usuario_sin_repeticion]

AS
SELECT USUARIO2.idUsuario ,USUARIO2.Nombre_y_Apelllidos,VENTAS.Tipo_de_pago ,ventas.Fecha_de_pago 
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  					 




GO
/****** Object:  StoredProcedure [dbo].[BuscarProducto]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarProducto] 
	-- Add the parameters for the stored procedure here
	@IdProducto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Producto
	WHERE IdProducto=@IdProducto
END







GO
/****** Object:  StoredProcedure [dbo].[Cambiar_Contraseña]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Cambiar_Contraseña]
@login varchar(50),
@Password varchar(50),
@NuevoPassword varchar(50)
as
update USUARIO2 set Password = @NuevoPassword
where Login = @login and Password = @Password





GO
/****** Object:  StoredProcedure [dbo].[CERRAR_CAJA]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CERRAR_CAJA]
@idcaja as integer,
@fechafin datetime,
@fechacierre datetime


		
as 
update MOVIMIENTOCAJACIERRE set 
Estado ='CAJA CERRADA'
where Id_caja =@idcaja AND Estado='CAJA APERTURADA'




GO
/****** Object:  StoredProcedure [dbo].[cerrar_caja_diaria]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cerrar_caja_diaria]

	 @fechafin datetime,
	 @fechacierre datetime, 
	  @ingresos numeric(18,2), 
    @egresos numeric(18,2),
	
	@saldo numeric(18,2),
	 @totalcaluclado numeric(18,2),
	  @totalreal real, 
	 @estado as varchar(50),
	 @diferencia numeric(18,2)
as BEGIN
if EXISTS (SELECT idcierrecaja   FROM MOVIMIENTOCAJACIERRE   where idcierrecaja   = idcierrecaja  and Estado='CAJA CERRADA' )
RAISERROR ('YA SE CERRO CAJA DIARIA; COORDINE CON EL ADMINISTRADOR A CARGO', 16,1)
else
BEGIN 

update MOVIMIENTOCAJACIERRE  set 
fechafin=@fechafin ,
fechacierre=@fechacierre,
ingresos=@ingresos,
egresos=@egresos  ,
Saldo_queda_en_caja =@saldo  ,
Total_calculado =@totalcaluclado  ,
Total_real =@totalreal  ,
Estado=@estado, 
Diferencia=@diferencia 
where idcierrecaja  =idcierrecaja


select*from MOVIMIENTOCAJACIERRE 
END
END



GO
/****** Object:  StoredProcedure [dbo].[cerrar_caja_por_turno]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cerrar_caja_por_turno]
@idcierrecaja as int,
	 @fechafin datetime,
	 @fechacierre datetime, 
	  @ingresos numeric(18,2), 
    @egresos numeric(18,2),	
	@saldo numeric(18,2),
	 @totalcaluclado numeric,
	  @totalreal real, 
	 @estado as varchar(50),
	 @diferencia numeric(18,2),
	 @idusuario as int
as 
update MOVIMIENTOCAJACIERRE  set 
fechafin=@fechafin ,
fechacierre=@fechacierre,
ingresos=@ingresos,
egresos=@egresos  ,
Saldo_queda_en_caja =@saldo  ,
Total_calculado =@totalcaluclado  ,
Total_real =@totalreal  ,
Estado=@estado, 
Diferencia=@diferencia 
where idcierrecaja  =@idcierrecaja






GO
/****** Object:  StoredProcedure [dbo].[cobrar_CONTROL_DE_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cobrar_CONTROL_DE_COBROS]
@Id_venta as int,

@Monto numeric(18,2)

as 
update CONTROL_DE_COBROS  set Monto=Monto - @Monto 
where Id_venta    =@Id_venta  

GO
/****** Object:  StoredProcedure [dbo].[contar_detalles_de_venta_en_espera]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[contar_detalles_de_venta_en_espera]
@id_producto int
as
BEGIN
SET NOCOUNT ON;
SELECT DISTINCT      detalle_venta .Stock 
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
where  ventas.Monto_total  =0 and detalle_venta.Id_producto =@id_producto
end
GO
/****** Object:  StoredProcedure [dbo].[contar_productos_en_espera]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[contar_productos_en_espera]
 as
 SELECT      count(detalle_venta.Id_producto  ) as id_producto
FROM            dbo.ventas inner join detalle_venta on detalle_venta.idventa =detalle_venta.idventa  
             
where  
 ventas.Estado='EN ESPERA'or  ventas.Estado='SIN CONFIRMAR'
GO
/****** Object:  StoredProcedure [dbo].[contar_ventas_en_espera]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[contar_ventas_en_espera]

AS 

 SELECT      ventas.idventa , count(detalle_venta.Id_producto  ) as id_producto,Comprobante ,ventas.fecha_venta 
FROM            dbo.ventas inner join detalle_venta on detalle_venta.idventa =detalle_venta.idventa  
     
where  
 ventas.Estado='EN ESPERA'or  ventas.Estado='SIN CONFIRMAR'

 group by ventas.idventa,Comprobante ,ventas.fecha_venta

GO
/****** Object:  StoredProcedure [dbo].[disminuir_stock]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[disminuir_stock]
@Id_presentacionfraccionada as varchar(50),
@cantidad as decimal (18,2)

as
update Producto1  set Stock=Stock-@cantidad where Id_Producto1  =@Id_presentacionfraccionada AND Usa_inventarios ='SI'
and Stock >= @cantidad 


GO
/****** Object:  StoredProcedure [dbo].[disminuir_stock_en_detalle_de_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[disminuir_stock_en_detalle_de_venta]
@Id_presentacionfraccionada as varchar(50),
@cantidad as decimal (18,2)

as
update detalle_venta   set Stock=Stock-@cantidad where Id_producto   =@Id_presentacionfraccionada AND Stock  <>'Ilimitado'



GO
/****** Object:  StoredProcedure [dbo].[disminuirmontocuota]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[disminuirmontocuota]
@Id_control_de_cobros as integer,
@montopagado as decimal(18,2)

as 
update  CONTROL_DE_COBROS   set Monto  =Monto -@montopagado 
where Id_control_de_cobros =@Id_control_de_cobros 

GO
/****** Object:  StoredProcedure [dbo].[disminuirSaldocliente]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[disminuirSaldocliente]
@Id_cliente as integer,
@montopagado as numeric(18,2)

as 
update  clientes    set Saldo   =Saldo  -@montopagado 
where idclientev  =@Id_cliente 

GO
/****** Object:  StoredProcedure [dbo].[editar_ASISTENCIAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_ASISTENCIAS]
@Id_personal as int,
@Fecha_salida DATETIME,
@Horas NUMERIC(18,2)
as 
update ASISTENCIAS set 
Fecha_salida =@Fecha_salida ,
Horas =@Horas ,
Estado='SALIDA'
where Id_personal   =@Id_personal  AND Estado='ENTRADA' 




GO
/****** Object:  StoredProcedure [dbo].[editar_caja]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_caja]
@idcaja integer,
@descripcion varchar(50)

        
           		
as 
update Caja set 
Descripcion  =@descripcion 

where Id_Caja    =@idcaja    


GO
/****** Object:  StoredProcedure [dbo].[editar_categoria]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_categoria]
@idcategoria integer,
@nombrecategoria varchar(50)
as 
update categoria set nombrecategoria = @nombrecategoria 
where idcategoria = @idcategoria 






GO
/****** Object:  StoredProcedure [dbo].[editar_cliente]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_cliente]
@idcliente as integer,
@Nombre varchar(MAX),
           @Direccion_para_factura varchar(MAX),
            @Ruc varchar(MAX),                      
            @movil varchar(50)
		
as 
update clientes set 
Nombre =@Nombre ,
          Direccion_para_factura = @Direccion_para_factura ,
           Ruc = @Ruc ,
          
          movil  = @movil 
where idclientev =@idcliente 




GO
/****** Object:  StoredProcedure [dbo].[editar_CONCEPTO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_CONCEPTO]
@Id_concepto as int,
@Descripcion varchar(50)
as 
update CONCEPTOS set 

Descripcion=@Descripcion 

where Id_concepto    =@Id_concepto


GO
/****** Object:  StoredProcedure [dbo].[editar_detalle_venta_restar]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_detalle_venta_restar]
@iddetalle_venta  int,
@cantidad as numeric(18, 2),
@Cantidad_mostrada  numeric(18, 2) 
        
           		
as 


 		   BEGIN
if EXISTS (SELECT cantidad ,Id_producto    FROM detalle_venta  where detalle_venta .iddetalle_venta   = @iddetalle_venta  AND cantidad <=0 )

delete from detalle_venta where detalle_venta .iddetalle_venta  =@iddetalle_venta
else
BEGIN
update detalle_venta set 
cantidad    =cantidad -@cantidad,   
Cantidad_mostrada=Cantidad_mostrada-@Cantidad_mostrada
where detalle_venta .iddetalle_venta      =@iddetalle_venta 
end
end  
GO
/****** Object:  StoredProcedure [dbo].[editar_detalle_venta_restar_en_Historial]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editar_detalle_venta_restar_en_Historial]
@Descripcion  varchar(50),
@cantidad as numeric(18, 2),
@Cantidad_mostrada  numeric(18, 2) 
      ,  @idventa int
           		
as 


 		   BEGIN
if EXISTS (SELECT cantidad ,Id_producto    FROM detalle_venta  where detalle_venta .Descripcion   = @Descripcion  AND cantidad <=0 )

delete from detalle_venta where detalle_venta .Descripcion  =@Descripcion 
else
BEGIN
update detalle_venta set 
cantidad    =cantidad -@cantidad,   
Cantidad_mostrada=Cantidad_mostrada-@Cantidad_mostrada
where detalle_venta .Descripcion      =@Descripcion and detalle_venta.idventa=@idventa 
end
end  
GO
/****** Object:  StoredProcedure [dbo].[editar_detalle_venta_sumar]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_detalle_venta_sumar]
@Descripcion  varchar(50),
@cantidad as numeric(18, 2),
@Cantidad_mostrada  numeric(18, 2)       
           		
as 



update detalle_venta set 
cantidad    =cantidad +@cantidad  , 
Cantidad_mostrada=Cantidad_mostrada+@Cantidad_mostrada
where  detalle_venta .Descripcion   =@Descripcion 
 
GO
/****** Object:  StoredProcedure [dbo].[editar_dinero_caja_inicial]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_dinero_caja_inicial]
@Id_caja as integer,
@saldo numeric(18,2)


as
update MOVIMIENTOCAJACIERRE  set  Saldo_queda_en_caja =@saldo
where Id_caja =@Id_caja AND Estado ='CAJA APERTURADA'




GO
/****** Object:  StoredProcedure [dbo].[editar_Empresa]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[editar_Empresa]
 @Id_empresa int,
@Nombre_Empresa  varchar(50),

@logo as image,
@Impuesto varchar(50),
@Porcentaje_impuesto numeric(18,0),
@Moneda varchar(50),
@Trabajas_con_impuestos VARCHAR(50),
@Modo_de_busqueda VARCHAR(50),

@Carpeta_para_copias_de_seguridad varchar(max),
@Correo_para_envio_de_reportes varchar(50)

as

update  EMPRESA set Nombre_Empresa=@Nombre_Empresa,Logo=@logo ,Impuesto=@Impuesto ,
Porcentaje_impuesto=@Porcentaje_impuesto,Moneda=@Moneda,Trabajas_con_impuestos=@Trabajas_con_impuestos
,Modo_de_busqueda=@Modo_de_busqueda 
,Carpeta_para_copias_de_seguridad =@Carpeta_para_copias_de_seguridad ,Correo_para_envio_de_reportes =@Correo_para_envio_de_reportes 
where Id_empresa=@Id_empresa 

GO
/****** Object:  StoredProcedure [dbo].[editar_Empresa_copia_de_seguridad]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[editar_Empresa_copia_de_seguridad]
 @Ultima_fecha_de_copia_de_seguridad varchar(50),
 @Carpeta_para_copias_de_seguridad varchar(max),
 @Ultima_fecha_de_copia_date datetime
as

update  EMPRESA set Ultima_fecha_de_copia_de_seguridad =@Ultima_fecha_de_copia_de_seguridad ,
Carpeta_para_copias_de_seguridad =@Carpeta_para_copias_de_seguridad ,Ultima_fecha_de_copia_date=@Ultima_fecha_de_copia_date

GO
/****** Object:  StoredProcedure [dbo].[editar_FORMATO_TICKET]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_FORMATO_TICKET]
      @Empresa_Ruc varchar(max),
           @Direccion varchar(max),
           @Provincia varchar(max),
           @Moneda_string varchar(max),
           @Agradecimiento varchar(max),
           @pagina_Web_Facebook varchar(max),
           @Extra varchar(max)   
    as
    update Ticket set  
	Empresa_Ruc=@Empresa_Ruc ,
          Direccion =@Direccion ,    
           Provincia=@Provincia ,
           Moneda_string=@Moneda_string ,
          Agradecimiento  =@Agradecimiento ,
          pagina_Web_Facebook = @pagina_Web_Facebook ,
         Extra =  @Extra  
GO
/****** Object:  StoredProcedure [dbo].[editar_frecuencia_y_carpeta_Empresa]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[editar_frecuencia_y_carpeta_Empresa]

@Carpeta_para_copias_de_seguridad varchar(max),
@Frecuencia_de_copias int
as

update  EMPRESA set Carpeta_para_copias_de_seguridad =@Carpeta_para_copias_de_seguridad  ,
Frecuencia_de_copias =@Frecuencia_de_copias 

GO
/****** Object:  StoredProcedure [dbo].[editar_gasto]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_gasto]
@idgasto int,
@fecha datetime,

@observacion varchar(500),
@Nro_Comprobante varchar(50),

@Tipo_de_Comprobante varchar(50),

@importe decimal(18,2),

@Id_concepto int


as 
update GASTOSVARIOS  set Nro_Comprobante=@Nro_Comprobante,
Tipo_de_Comprobante=@Tipo_de_Comprobante,
Fecha_del_Gasto=@fecha 
 ,Id_concepto =@Id_concepto 
  ,Importe =@importe  ,
  Descripcion =@observacion  

where Idgasto  =@idgasto  
GO
/****** Object:  StoredProcedure [dbo].[editar_IGV_Empresa]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[editar_IGV_Empresa]

@Impuesto varchar(50),
@Porcentaje_impuesto numeric(18,0),

@Trabajas_con_impuestos VARCHAR(50)
as

update  EMPRESA set Impuesto=@Impuesto ,
Porcentaje_impuesto=@Porcentaje_impuesto,Trabajas_con_impuestos=@Trabajas_con_impuestos



GO
/****** Object:  StoredProcedure [dbo].[editar_ingreso]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_ingreso]
@idgasto as int,
@fecha datetime,

@observacion varchar(500),
@Nro_Comprobante varchar(50),

@Tipo_de_Comprobante varchar(50),
@importe decimal(18,2),
@estado as varchar(50),
@Id_concepto INT
as 
update INGRESOSVARIOS  set Estado=@estado ,Nro_Comprobante=@Nro_Comprobante,Tipo_de_Comprobante=@Tipo_de_Comprobante,Fecha_del_Gasto=@fecha  ,Id_concepto =@Id_concepto  ,Importe =@importe  ,Observacion =@observacion  
where Idgasto  =@idgasto  




GO
/****** Object:  StoredProcedure [dbo].[editar_lineas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_lineas]
@Idline as integer,
@Linea varchar(50)
        
           		
as 
update linea set 
Linea =@Linea  

where Idline   =@Idline   


GO
/****** Object:  StoredProcedure [dbo].[editar_logo_de_EMPRESA]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_logo_de_EMPRESA]
@logo image
as 

update EMPRESA  set  Logo   =@logo            




GO
/****** Object:  StoredProcedure [dbo].[editar_Modo_de_busqueda]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_Modo_de_busqueda]
@Modo_de_busqueda as VARCHAR(50)

as 
update EMPRESA  set 
Modo_de_busqueda=@Modo_de_busqueda

GO
/****** Object:  StoredProcedure [dbo].[editar_nombre_de_EMPRESA]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_nombre_de_EMPRESA]
@nombre varchar(50),
@moneda varchar(50)
as 

update EMPRESA   set  Nombre_Empresa  =@nombre  ,Moneda=@moneda  
GO
/****** Object:  StoredProcedure [dbo].[editar_nombre_de_EMPRESA_con_imagen]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_nombre_de_EMPRESA_con_imagen]
@nombre varchar(50),

@Imagen image
as 

update EMPRESA   set  Nombre_Empresa  =@nombre  ,Logo =@Imagen 
GO
/****** Object:  StoredProcedure [dbo].[editar_permisos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_permisos]
   	@Id_Usuario  int ,
	@ventas int ,
	@aplicar_descuentos int ,
	@Devoluciones int ,
	@cobros int ,
	@Pagar int ,
	@clientes_proveedores int,
	@productos int,
	@invetarios_kardex int,
	@configuraciones int,
	@usuarios int,
	@reportes int
AS
update permisos  set 
ventas=@ventas,
	aplicar_descuentos =@aplicar_descuentos  ,
	Devoluciones =@Devoluciones  ,
	cobros =@cobros  ,
	Pagar =@Pagar  ,
	clientes_proveedores =@clientes_proveedores ,
	productos =@productos ,
	invetarios_kardex =@invetarios_kardex ,
	configuraciones = @configuraciones ,
	usuarios=@usuarios ,
	reportes=@reportes 


where Id_Usuario   =@Id_Usuario 

GO
/****** Object:  StoredProcedure [dbo].[editar_Producto1]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_Producto1]
@Id_Producto1 int,
 @Descripcion varchar(50),
		    @Imagen varchar(50),			         
         
          @Linea as varchar(50)	,
		  @Usa_inventarios varchar(50),
	  @Stock varchar(50),
           @Precio_de_compra numeric(18,2),
           @Fecha_de_vencimiento varchar(50),
           @Precio_de_venta numeric(18,2),
           @Codigo varchar(50),
           @Se_vende_a varchar(50),
           @Impuesto varchar(50),
           @Stock_minimo numeric(18,2),
           @Precio_mayoreo numeric(18,2)
		 
as 
update Producto1 set  

      Descripcion =@Descripcion ,
		  Imagen =  @Imagen ,			         
         
         Linea = @Linea 	,
		  Usa_inventarios =@Usa_inventarios ,
		  Stock = @Stock ,
           Precio_de_compra =@Precio_de_compra ,
        Fecha_de_vencimiento =   @Fecha_de_vencimiento ,
          Precio_de_venta = @Precio_de_venta ,
         Codigo =  @Codigo ,
         Se_vende_a =  @Se_vende_a ,
           Impuesto =@Impuesto,
           Stock_minimo =@Stock_minimo ,
         Precio_mayoreo =  @Precio_mayoreo 
where id_Producto1=@Id_Producto1






GO
/****** Object:  StoredProcedure [dbo].[editar_Producto1_SIN_CONTROL_DE_INVENTARIO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_Producto1_SIN_CONTROL_DE_INVENTARIO]
@Id_Producto1 int,
	  @Stock varchar(50),
          
           @Stock_minimo numeric(18,2),
		   @Usa_inventarios varchar(50),
          @Fecha_de_vencimiento varchar(50) 
		 
as 
update Producto1 set  

		  Usa_inventarios =@Usa_inventarios ,
		  Stock = @Stock ,
 
           Stock_minimo =@Stock_minimo 
  ,Fecha_de_vencimiento=@Fecha_de_vencimiento
where id_Producto1=@Id_Producto1
GO
/****** Object:  StoredProcedure [dbo].[editar_saldo_total]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_saldo_total]
@idcliente as integer,
@saldo as numeric(18,2)


as

update clientes  set  Saldo=@saldo
where idclientev=@idcliente 




GO
/****** Object:  StoredProcedure [dbo].[editar_serializacion]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_serializacion]
@serie VARCHAR(50)  ,
@numeroinicio AS VARCHAR(50)    ,
@numerofin as varchar(50) ,
@Id_tipodoc as varchar(50), 
@Destino varchar(50) ,
   @Id_serie as int
as 
update Serializacion set  Serie =@serie   ,numeroinicio=@numeroinicio ,numerofin=@numerofin   
         ,Destino=@Destino,Id_tipodoc=@Id_tipodoc 
where Id_serializacion=@Id_serie 


GO
/****** Object:  StoredProcedure [dbo].[editar_serializacion_TICKET]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_serializacion_TICKET]

@numeroinicio AS VARCHAR(50)    ,
@numerofin as varchar(50) 


as 
update Serializacion set  numeroinicio=@numeroinicio ,numerofin=@numerofin   

where Id_tipodoc ='TICKET'
GO
/****** Object:  StoredProcedure [dbo].[editar_usuario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_usuario]
@idusuario int,
@nombres varchar(50),

@paswor varchar(50)



as


update USUARIO2 set Nombre_y_Apelllidos= @nombres,Password =@paswor 
 where idUsuario = @idusuario

GO
/****** Object:  StoredProcedure [dbo].[editar_usuario_solo_nombre]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_usuario_solo_nombre]
@idusuario int,
@nombres varchar(50)
as
update USUARIO2 set Nombre_y_Apelllidos= @nombres
 where idUsuario = @idusuario

GO
/****** Object:  StoredProcedure [dbo].[editar_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_venta]
@idventa int,
@montototal as numeric(18,1),
@IGV as numeric(18,1)

as
if @montototal <>0
update ventas set Monto_total  =@montototal, IGV=@IGV 

where idventa =@idventa 
else
begin 
delete
from ventas 
where idventa=@idventa 
end




GO
/****** Object:  StoredProcedure [dbo].[eliminar_caja]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_caja]
@id integer
as
delete from Caja   where Id_Caja  =@id 


GO
/****** Object:  StoredProcedure [dbo].[eliminar_categoria]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[eliminar_categoria]
@idcategoria integer
as 
delete from categoria where idcategoria=@idcategoria






GO
/****** Object:  StoredProcedure [dbo].[eliminar_cliente]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_cliente]
@idcliente integer
as
delete from clientes where idclientev=@idcliente


GO
/****** Object:  StoredProcedure [dbo].[eliminar_concepto]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_concepto]
@idconcepto integer
as
delete from CONCEPTOS  where Id_concepto =@idconcepto 


GO
/****** Object:  StoredProcedure [dbo].[eliminar_DETALLE_CONTROL_DE_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_DETALLE_CONTROL_DE_COBROS]
@id as int
as
delete from DETALLE_CONTROL_DE_COBROS where Id_detalle_de_control_de_cobros =@id 






GO
/****** Object:  StoredProcedure [dbo].[eliminar_detalle_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_detalle_venta]
@iddetalleventa as int
as
delete from detalle_venta where iddetalle_venta=@iddetalleventa 


GO
/****** Object:  StoredProcedure [dbo].[eliminar_Empresa]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_Empresa]
@id_Empresa as int


as

delete from EMPRESA 
where id_Empresa=@id_Empresa





GO
/****** Object:  StoredProcedure [dbo].[eliminar_gasto]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_gasto]
@idgasto integer
as
delete from GASTOSVARIOS  where Idgasto =@idgasto 





GO
/****** Object:  StoredProcedure [dbo].[eliminar_ingreso]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_ingreso]
@idgasto integer
as
delete from INGRESOSVARIOS  where Idgasto =@idgasto 





GO
/****** Object:  StoredProcedure [dbo].[eliminar_producto]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_producto]
@idproducto  int
as
delete from Producto1  where Id_Producto1 =@idproducto 





GO
/****** Object:  StoredProcedure [dbo].[eliminar_PRODUCTO_DE_KARDEX]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_PRODUCTO_DE_KARDEX]
@id as int
as
delete from KARDEX  where Id_kardex  =@id


GO
/****** Object:  StoredProcedure [dbo].[eliminar_Producto1]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_Producto1]
@id int
as
delete  
from Producto1 

where 
Id_Producto1  =@id



--DELETE TablaConRegistrosAEliminar
       --FROM TablaConRegistrosAEliminar TDel INNER JOIN TablaParaCriterioDeEliminacion TFiltro
       --     ON TDel.idCampo_fk=TFiltro.idCampo_pk
       --WHERE TFiltro.criterio='Valor para filtrar'




GO
/****** Object:  StoredProcedure [dbo].[eliminar_usuario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_usuario]
@idusuario as int,
@login varchar(50)

as
	   BEGIN
if EXISTS (SELECT Login   FROM USUARIO2  where @login ='admin'  )
RAISERROR ('El Usuario *Admin* es Inborrable, si se borraria Eliminarias el Acceso al Sistema de porvida, Accion Denegada', 16,1)
else
BEGIN
delete from USUARIO2  where idUsuario =@idusuario and Login <>'admin' 
end
end



GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_venta]
@idventa as integer 
as
delete from ventas where idventa=@idventa 


GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta__en_cero]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_venta__en_cero]

as
delete from ventas where Monto_total=0

GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta_en_historial]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_venta_en_historial]
@Id_venta int
as
delete from ventas where  idventa=@Id_venta  AND Monto_total =0


GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta_incompletas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_venta_incompletas]

@idusuario int
as
delete from ventas where  Id_usuario =@idusuario and  Estado ='EN ESPERA'


GO
/****** Object:  StoredProcedure [dbo].[Insertar_ASISTENCIAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insertar_ASISTENCIAS]
   @Id_personal INT,
          @Fecha_entrada DATETIME,
         @Fecha_salida DATETIME,
           @Estado VARCHAR(50),
          
          @Horas VARCHAR(50)

as

insert into ASISTENCIAS values (   @Id_personal ,
          @Fecha_entrada ,
         @Fecha_salida ,
           @Estado ,
          
          @Horas)



GO
/****** Object:  StoredProcedure [dbo].[Insertar_caja]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insertar_caja]

	
	@descripcion varchar(50),


	 @Tema varchar(50),
	  @Serial_PC varchar(50)
	   
    as
	BEGIN
if EXISTS (SELECT  Descripcion     FROM Caja    where  Descripcion=@descripcion   )
RAISERROR ('YA EXISTE UNA CAJA REGISTRADA CON ESE NOMBRE, Ingrese un nombre diferente', 16,1)
else
BEGIN
    INSERT INTO Caja values 
	(@descripcion,@Tema ,@Serial_PC )

	end
	end
GO
/****** Object:  StoredProcedure [dbo].[insertar_categoria]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_categoria]
@nombrecategoria varchar(50)
as
insert into categoria (nombrecategoria) values (@nombrecategoria)






GO
/****** Object:  StoredProcedure [dbo].[insertar_cliente]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  procedure [dbo].[insertar_cliente]
@Nombre varchar(MAX),
           @Direccion_para_factura varchar(MAX),
            @Ruc varchar(MAX),                      
            @movil varchar(50),               
            @Cliente varchar(50),
            @Proveedor varchar(50),
			@Estado as varchar(50)
		,@Saldo numeric(18,2)
as

insert into clientes  values 
            (@Nombre
           ,@Direccion_para_factura
           ,@Ruc
           ,@movil     
          
           ,@Cliente
           ,@Proveedor
		   ,@Estado,
		   @Saldo
            )





GO
/****** Object:  StoredProcedure [dbo].[insertar_Conceptos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_Conceptos]
@Descripcion varchar(50)
as 


insert into CONCEPTOS 
values ( 

@Descripcion 
)


GO
/****** Object:  StoredProcedure [dbo].[insertar_CONEXION]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_CONEXION]

@Data_source_remoto varchar(max)
as
insert into CONEXION  values (@Data_source_remoto)






GO
/****** Object:  StoredProcedure [dbo].[insertar_control_de_cobros]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insertar_control_de_cobros]

         
            @monto as numeric(18,2) ,
			@Concepto varchar(MAX) ,
			 @Id_venta int    	
as

insert into CONTROL_DE_COBROS  values 
            (
        
            @monto,
			@Concepto ,
           
		    @Id_venta )

GO
/****** Object:  StoredProcedure [dbo].[insertar_DETALLE_cierre_de_caja]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertar_DETALLE_cierre_de_caja]	
	@fechaini datetime,
	 @fechafin datetime,
	 @fechacierre datetime, 
	  @ingresos numeric(18,2), 
    @egresos numeric(18,2),
	@saldo numeric(18,2),
	@idusuario int,
	 @totalcaluclado numeric(18,2),
	  @totalreal numeric(18,2), 
	 
	 @estado as varchar(50),
	 @diferencia as numeric(18,2)	,
	 @idcierrepadre as int   
  AS BEGIN

if EXISTS (SELECT Estado FROM MOVIMIENTOCAJACIERRE 
 where  MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA')
RAISERROR ('Ya Fue Iniciado el Turno de esta Caja', 16,1)
else
BEGIN
    INSERT INTO MOVIMIENTOCAJACIERRE values 
	(@fechaini ,
	 @fechafin ,
	 @fechacierre , 
	  @ingresos , 
    @egresos ,
	@saldo ,
	@idusuario ,
	 @totalcaluclado ,
	  @totalreal , 
	
	 @estado ,
	 @diferencia ,
	 @idcierrepadre )


	 end
	 end

GO
/****** Object:  StoredProcedure [dbo].[insertar_DETALLE_CONTROL_DE_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insertar_DETALLE_CONTROL_DE_COBROS]

@Pago_realizado as numeric(18,2),
@Fecha_que_pago as datetime,
@Tipo_de_cobro    as varchar(50) ,
@Detalle as varchar(max)  ,
@idcliente int   
  ,@Id_usuario int  ,
  @Id_caja int        	
as

insert into DETALLE_CONTROL_DE_COBROS  values 
            (
@Pago_realizado ,
@Fecha_que_pago ,
           @Tipo_de_cobro,
		   @Detalle ,@idcliente,@Id_usuario ,@Id_caja  )

GO
/****** Object:  StoredProcedure [dbo].[insertar_DETALLE_CONTROL_DE_pagos_de_proveedores]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insertar_DETALLE_CONTROL_DE_pagos_de_proveedores]
@Id_control_de_cobros int,
@Pago_realizado as numeric(18,2),
@Fecha_que_pago as datetime
,
@Tipo_de_cobro    as varchar(50)              
            	
as

insert into DETALLE_DE_PAGO_A_PROVEEDORES  values 
            (@Id_control_de_cobros ,
@Pago_realizado ,
@Fecha_que_pago ,
@Tipo_de_cobro
            )


GO
/****** Object:  StoredProcedure [dbo].[insertar_detalle_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_detalle_venta]
@idventa as integer,
@Id_presentacionfraccionada as int,
@cantidad as numeric(18, 2),
@preciounitario as numeric(18, 2),
@moneda as varchar(50),

@unidades as varchar(50),
@Cantidad_mostrada as numeric(18,2),
@Estado as varchar(50),
@Descripcion varchar(50),
@Codigo varchar(50),
@Stock varchar(50),
@Se_vende_a VARCHAR(50),
@Usa_inventarios VARCHAR(50),
@Costo numeric(18,2)
as

 		   BEGIN
if EXISTS (SELECT Id_producto,idventa   FROM detalle_venta inner join Producto1 on Producto1.Id_Producto1=detalle_venta.Id_producto 
  where Producto1. Id_Producto1  = @Id_presentacionfraccionada AND idventa=@idventa  )

  
update detalle_venta set 
cantidad    =cantidad +@cantidad  , 
Cantidad_mostrada=Cantidad_mostrada+@Cantidad_mostrada
where Id_producto =@Id_presentacionfraccionada 


else
BEGIN

insert into detalle_venta 

 values (@idventa,@Id_presentacionfraccionada ,@cantidad,@preciounitario,@moneda,@unidades,@Cantidad_mostrada
,@Estado,@Descripcion,@Codigo,@Stock ,@Se_vende_a ,@Usa_inventarios,@Costo)


END
END

GO
/****** Object:  StoredProcedure [dbo].[insertar_Empresa]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_Empresa]

@Nombre_Empresa  varchar(50),

@logo as image,
@Impuesto varchar(50),
@Porcentaje_impuesto numeric(18,0),
@Moneda varchar(50),

@Trabajas_con_impuestos VARCHAR(50),
@Modo_de_busqueda VARCHAR(50),
@Carpeta_para_copias_de_seguridad varchar(max),
@Correo_para_envio_de_reportes varchar(50),
@Ultima_fecha_de_copia_de_seguridad varchar(50),

@Ultima_fecha_de_copia_date datetime,
@Frecuencia_de_copias int,
@Estado varchar(50)
as 
 BEGIN
if EXISTS (SELECT Nombre_Empresa   FROM EMPRESA   where Nombre_Empresa  = @Nombre_Empresa   )
RAISERROR ('YA EXISTE UNA EMPRESA CON ESE NOMBRE, Ingrese un nombre diferente', 16,1)
else
BEGIN
insert into EMPRESA  
values (@Nombre_Empresa,@logo,@Impuesto,@Porcentaje_impuesto,@Moneda ,@Trabajas_con_impuestos,@Modo_de_busqueda,
@Carpeta_para_copias_de_seguridad,@Correo_para_envio_de_reportes,@Ultima_fecha_de_copia_de_seguridad,
@Ultima_fecha_de_copia_date ,
@Frecuencia_de_copias ,
@Estado )

END
END

GO
/****** Object:  StoredProcedure [dbo].[Insertar_FORMATO_TICKET]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insertar_FORMATO_TICKET]
@Id_empresa int,
      @Empresa_Ruc varchar(max),
           @Direccion varchar(max),
         
           @Provincia varchar(max),
           @Moneda_string varchar(max),
           @Agradecimiento varchar(max),
           @pagina_Web_Facebook varchar(max),
           @Extra varchar(max)
	   
    as

    INSERT INTO Ticket values 
	(  @Id_empresa,
	@Empresa_Ruc ,
           @Direccion ,
          
           @Provincia ,
           @Moneda_string ,
           @Agradecimiento ,
           @pagina_Web_Facebook ,
           @Extra  )
GO
/****** Object:  StoredProcedure [dbo].[insertar_gasto_sin_comprobante]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_gasto_sin_comprobante]

@fecha datetime,
@Nro_Comprobante varchar(50),
@Tipo_de_Comprobante varchar(50),
@importe decimal(18,2),
@Descripcion varchar(500),
@Id_concepto int,
@Id_usuario int,
@TIPO VARCHAR(50),
@Id_caja int
as 

insert into GASTOSVARIOS 
values (@fecha,@Nro_Comprobante,@Tipo_de_Comprobante   , @importe,@Descripcion ,@Id_concepto,@Id_usuario,@TIPO,@Id_caja )





GO
/****** Object:  StoredProcedure [dbo].[insertar_HORARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[insertar_HORARIOS]

           @Cargo varchar(50),
     @Horas_laborales_diarias numeric(18,1)
           ,@Costo_hora_normal numeric(18,2)
           ,@Costo_hora_extra numeric(18,2)
           ,@Horas_libres_diarias numeric(18,1)
           ,@lunes int
           ,@martes int
           ,@miercoles int
           ,@jueves int
           ,@viernes int
           ,@sabado int
           ,@domingo int
		   as
insert into HORARIOS  VALUES(@Cargo ,
           @Horas_laborales_diarias
           , @Costo_hora_normal
           , @Costo_hora_extra
           , @Horas_libres_diarias
           , @lunes
           , @martes
           , @miercoles
           , @jueves
           , @viernes
           , @sabado
           , @domingo)    

GO
/****** Object:  StoredProcedure [dbo].[insertar_ingreso_sin_comprobante]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_ingreso_sin_comprobante]

@fecha datetime,

@observacion varchar(500),
@Nro_Comprobante varchar(50),

@Tipo_de_Comprobante varchar(50),

@importe decimal(18,2),
@estado as varchar(50),
@Id_concepto int
as 

insert into INGRESOSVARIOS (Estado,Fecha_del_Gasto ,Id_concepto,Importe, Observacion,Nro_Comprobante,Tipo_de_Comprobante)
values (@estado,@fecha,@Id_concepto   , @importe,@observacion ,@Nro_Comprobante,@Tipo_de_Comprobante)





GO
/****** Object:  StoredProcedure [dbo].[insertar_KARDEX_SALIDA]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_KARDEX_SALIDA]                
           @Fecha datetime,
		    @Motivo varchar(200),			         
         
          @Cantidad as numeric(18,0)	,
	
	  @Id_producto int	,
	   @Id_usuario as int,	
	   @Tipo as varchar(50),
	   @Estado varchar(50)	,
	   
	    @Costo_unt numeric(18,2),
		@Habia numeric(18,2),
		@Hay numeric(18,2),
		@Id_caja int
		  AS 
		   INSERT INTO KARDEX
     VALUES
		    (

        @Fecha ,
		    @Motivo ,			         
         
          @Cantidad 	,

	  @Id_producto 	,
	   @Id_usuario ,	
	   @Tipo,
			
		@Estado ,@Costo_unt, @Habia,@Hay ,@Id_caja)


GO
/****** Object:  StoredProcedure [dbo].[insertar_linea]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertar_linea]
@Linea varchar(50)

as

insert into linea  values (@Linea)



GO
/****** Object:  StoredProcedure [dbo].[Insertar_marcan]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insertar_marcan]

	
	@s varchar(50),
	@f varchar(MAX)
    as
	
    INSERT INTO Marcan values 
	(@s,@f )

GO
/****** Object:  StoredProcedure [dbo].[insertar_permisos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insertar_permisos]
	@Id_Usuario  int ,
	@ventas int ,
	@aplicar_descuentos int ,
	@Devoluciones int ,
	@cobros int ,
	@Pagar int ,
	@clientes_proveedores int,
	@productos int,
	@invetarios_kardex int,
	@configuraciones int,
	@usuarios int,
	@reportes int
as
insert into permisos 
 values (	@Id_Usuario  ,
	@ventas,
	@aplicar_descuentos ,
	@Devoluciones  ,
	@cobros  ,
	@Pagar  ,
	@clientes_proveedores ,
	@productos,
	@invetarios_kardex ,
	@configuraciones ,
	@usuarios ,
	@reportes 

)


GO
/****** Object:  StoredProcedure [dbo].[insertar_Producto]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_Producto]                
           @Descripcion varchar(50),
		    @Imagen varchar(50),			         
         
          @Linea as varchar(50)	,
		  @Usa_inventarios varchar(50),
		   @Stock varchar(50),
           @Precio_de_compra numeric(18,2),
           @Fecha_de_vencimiento varchar(50),
           @Precio_de_venta numeric(18,2),
           @Codigo varchar(50),
           @Se_vende_a varchar(50),
           @Impuesto varchar(50),
           @Stock_minimo numeric(18,2),
           @Precio_mayoreo numeric(18,2)
	
		   AS 
		   BEGIN
if EXISTS (SELECT Descripcion,Codigo  FROM Producto1  where Descripcion = @Descripcion OR Codigo=@Codigo  )
RAISERROR ('YA EXISTE UN PRODUCTO  CON ESTE NOMBRE/CODIGO, POR FAVOR INGRESE DE NUEVO/ SE GENERARA CODIGO AUTOMATICO', 16,1)
else
BEGIN
		   INSERT INTO Producto1
     VALUES
		    (

           @Descripcion
  
         
          
           ,@Imagen
           
          
		    
	
		  
		    ,@Linea 
		,@Usa_inventarios	,


		@Stock ,
           @Precio_de_compra ,
           @Fecha_de_vencimiento ,
           @Precio_de_venta ,
           @Codigo ,
           @Se_vende_a ,
           @Impuesto ,
           @Stock_minimo ,
           @Precio_mayoreo
		 )
		    --RAISERROR ('Registrado correctamente', 16,1)
END
END


GO
/****** Object:  StoredProcedure [dbo].[insertar_Serializacion]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertar_Serializacion]

@Serie varchar (50),
@numeroinicio as varchar (50),
@numerofin as varchar (50),
@Destino as varchar(50),
@Id_tipodoc varchar(50)
as BEGIN
if EXISTS (SELECT Id_tipodoc  FROM Serializacion  where  Id_tipodoc= @Id_tipodoc )
RAISERROR ('YA EXISTE ESTE COMPROBANTE INGRESE UNO NUEVO', 16,1)
else
BEGIN
insert into Serializacion  values (@Serie ,
@numeroinicio ,
@numerofin,@Destino ,@Id_tipodoc )

END
END
GO
/****** Object:  StoredProcedure [dbo].[insertar_tipo_de_producto]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_tipo_de_producto]


@descripcion varchar(50),
@Ventas varchar(50),
@Compras varchar(50),
@Almacen varchar(50),
@Puede_tener_formulaciones varchar(50)  


as

insert into Tipos_De_productos

values (
@descripcion ,
@Ventas,
@Compras ,
@Almacen ,
@Puede_tener_formulaciones     )



GO
/****** Object:  StoredProcedure [dbo].[insertar_usuario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_usuario]
@nombres varchar(50),


@Login varchar(50),
@Password varchar(50)



as 
if EXISTS (SELECT Login FROM USUARIO2 where Login = @login )
RAISERROR ('YA EXISTE UN USUARIO CON ESE LOGIN, POR FAVOR INGRESE DE NUEVO', 16,1)
else
insert into USUARIO2 (Nombre_y_Apelllidos,  Login, Password ) 
values (@nombres, @Login, @Password )


GO
/****** Object:  StoredProcedure [dbo].[insertar_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_venta]
@idcliente as integer,
@fecha_venta as datetime,

@nume_documento as varchar(50),
@montototal  as numeric(18,1),
@Tipo_de_pago as varchar(50),
@estado as varchar(50),
@IGV as numeric(18, 1),

@Comprobante as VARCHAR(50),
@id_usuario as int,
@Fecha_de_pago as varchar(50),
@ACCION VARCHAR(50),
@Saldo numeric(18,2),
@Pago_con numeric(18,2),
@Porcentaje_IGV numeric(18,2),
@Id_caja int
as 
insert into ventas 
values (@idcliente,@fecha_venta,@nume_documento ,@montototal ,@Tipo_de_pago,@estado ,@IGV 
,@Comprobante,@id_usuario,@Fecha_de_pago,@ACCION ,@Saldo,@Pago_con,@Porcentaje_IGV,@Id_caja)




GO
/****** Object:  StoredProcedure [dbo].[Limpiar_base_De_datos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Limpiar_base_De_datos]
@ventas int,
@productos int,
@clientes int,
@gastos int,
@movimientos_de_caja int
as
delete from ventas   where @ventas = 1
delete from Producto1   where @productos  = 1
delete from clientes where @clientes  = 1
delete from MOVIMIENTOCAJACIERRE where @movimientos_de_caja = 1
delete from MOVIMIENTOCAJA where @movimientos_de_caja = 1
delete from GASTOSVARIOS where @gastos  = 1

GO
/****** Object:  StoredProcedure [dbo].[ListarCategorias]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarCategorias]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Categoria
	ORDER BY nombrecategoria
END





GO
/****** Object:  StoredProcedure [dbo].[mostrar_5_productos_mas_rentables]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_5_productos_mas_rentables]
as
SELECT      TOP 5 convert(varchar(50),convert(numeric(18,0),sum(detalle_venta.Ganancia)) ),Producto1.Descripcion 
FROM            dbo.ventas inner join detalle_venta  ON detalle_venta .idventa =ventas.idventa INNER JOIN
Producto1 ON Producto1.Id_Producto1=detalle_venta.Id_producto 

                       
Group by Producto1.Descripcion  
order by convert(numeric(18,0),sum(detalle_venta.Ganancia))  desc
GO
/****** Object:  StoredProcedure [dbo].[mostrar_5_productos_mas_vendidos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_5_productos_mas_vendidos]
as
SELECT      TOP 5 COUNT(detalle_venta.Id_producto) ,Producto1.Descripcion 
FROM            dbo.ventas inner join detalle_venta  ON detalle_venta .idventa =ventas.idventa INNER JOIN
Producto1 ON Producto1.Id_Producto1=detalle_venta.Id_producto 

                       
Group by detalle_venta.Id_producto  ,Producto1.Descripcion  

GO
/****** Object:  StoredProcedure [dbo].[mostrar_APERTURAs_de_caja_para_cerrar_turno]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_APERTURAs_de_caja_para_cerrar_turno]

@idcierre AS INT
as
SELECT        dbo.MOVIMIENTOCAJACIERRE.*, dbo.USUARIO2.Nombre_y_Apelllidos
FROM            dbo.MOVIMIENTOCAJACIERRE INNER JOIN
                         dbo.USUARIO2 ON dbo.MOVIMIENTOCAJACIERRE.Id_usuario = dbo.USUARIO2.idUsuario
						  where Estado='CAJA APERTURADA' AND dbo.MOVIMIENTOCAJACIERRE.idcierrecaja =@idcierre 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_APERTURAS_DE_CAJA_SEGUN_PARA_CONTROL_DE_ACCESO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_APERTURAS_DE_CAJA_SEGUN_PARA_CONTROL_DE_ACCESO]
@Id_usuario int,
@IDCAJA AS INT
as
SELECT        dbo.MOVIMIENTOCAJACIERRE.*, dbo.USUARIO2.Nombre_y_Apelllidos
FROM            dbo.MOVIMIENTOCAJACIERRE INNER JOIN
                         dbo.USUARIO2 ON dbo.MOVIMIENTOCAJACIERRE.Id_usuario = dbo.USUARIO2.idUsuario
						  where Id_usuario =@Id_usuario and Estado='CAJA APERTURADA' AND Id_caja=@IDCAJA 
GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_cajas]
as
select * from Caja order by Id_Caja desc

GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas_por_empresa]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_cajas_por_empresa]
@empresa varchar(50),
@ip varchar(50)
as
select Caja.Id_Caja ,Caja.Descripcion
from Caja 
GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas_por_empresa_por_serial]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_cajas_por_empresa_por_serial]



@serial varchar(50)

AS
SELECT Caja.Id_Caja ,Caja.Descripcion ,
Serial_PC from Caja
 where Caja.Serial_PC = @serial 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas_por_empresa_sin_ip]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_cajas_por_empresa_sin_ip]

as
select Caja.Id_Caja ,Caja.Descripcion from Caja 
GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_cajas_por_serial]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_cajas_por_serial]

@serial varchar(50)

AS
SELECT Descripcion,Tema, Id_Caja,Serial_PC   from Caja
 where Caja.Serial_PC = @serial 
GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas_por_Serial_de_DiscoDuro]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_cajas_por_Serial_de_DiscoDuro]
@Serial as varchar(50)
as
select Caja.Id_Caja  ,Descripcion 
from Caja 
where caja.Serial_PC =@Serial
GO
/****** Object:  StoredProcedure [dbo].[mostrar_cargos_sin_repetir]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_cargos_sin_repetir]

AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
      Cargo,Id_horarios
FROM           HORARIOS 
                       
end


GO
/****** Object:  StoredProcedure [dbo].[mostrar_categoria]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_categoria]
as
select * from categoria order by idcategoria desc






GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_CIERRE_DE_CAJA_PENDIENTE]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_CIERRE_DE_CAJA_PENDIENTE]

@serial varchar(50)

AS
SELECT MOVIMIENTOCAJACIERRE.fechainicio,MOVIMIENTOCAJACIERRE.fechafin,caja.Id_Caja  FROM MOVIMIENTOCAJACIERRE inner join USUARIO2 on USUARIO2.idUsuario=MOVIMIENTOCAJACIERRE.Id_usuario
 inner join Caja on Caja.Id_Caja =MOVIMIENTOCAJACIERRE.Id_caja 
 where Caja.Serial_PC = @serial    AND MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA' 
GO
/****** Object:  StoredProcedure [dbo].[mostrar_cliente]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_cliente]
as
SELECT        idclientev, Nombre, Direccion_para_factura as Direccion, Ruc,  movil as Celular, Cliente, Proveedor, 
                    clientes.Saldo ,     Estado as Activo
FROM            dbo.clientes 
WHERE clientes.Cliente='SI' order by Nombre  asc 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_COBROS]

as 
SELECT       * from ventas 
WHERE Estado ='DEUDA'

GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_CONCEPTOS_EN_GASTOS_VARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_CONCEPTOS_EN_GASTOS_VARIOS]
AS
SELECT        dbo.CONCEPTOS.Id_concepto, dbo.CONCEPTOS.Descripcion AS Concepto 
                      
FROM            dbo.CONCEPTOS 
						
						
GO
/****** Object:  StoredProcedure [dbo].[mostrar_descripcion_produco_sin_repetir]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_descripcion_produco_sin_repetir]

@buscar varchar(50)
as begin
select Descripcion  from Producto1  Where Descripcion  LIKE  '%' + @buscar +'%'
end



GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_DESPACHOS_DE_MERCADERIAS_PENDIENTES]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_DESPACHOS_DE_MERCADERIAS_PENDIENTES]
AS
select * from detalle_venta where Estado='DESPACHO PENDIENTE'

GO
/****** Object:  StoredProcedure [dbo].[mostrar_DETALLE_CONTROL_DE_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_DETALLE_CONTROL_DE_COBROS]
@id int
as
SELECT  Id_detalle_de_control_de_cobros ,Pago_realizado as [Importe],Tipo_de_cobro as [Tipo], Fecha_que_pago as Fecha  from DETALLE_CONTROL_DE_COBROS 

where Id_cliente=@id
GO
/****** Object:  StoredProcedure [dbo].[mostrar_DETALLE_CONTROL_DE_PAGOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_DETALLE_CONTROL_DE_PAGOS]
@id int
as
SELECT  Id_detalle_de_control_de_cobros ,Pago_realizado as [Importe],Tipo_de_cobro as [Tipo], Fecha_que_pago as Fecha  from DETALLE_CONTROL_DE_COBROS 

where Id_cliente=@id and DETALLE_CONTROL_DE_COBROS.Detalle ='PAGO'
GO
/****** Object:  StoredProcedure [dbo].[mostrar_Empresa]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Empresa]
as
select LOGO, Nombre_Empresa as Empresa ,(Impuesto + ' ('+  CONVERT(VARCHAR(50),Porcentaje_impuesto) + ')') Impuesto ,Moneda  ,Id_empresa  
,Porcentaje_impuesto  ,Impuesto ,Modo_de_busqueda ,Trabajas_con_impuestos ,Trabajas_con_impuestos,Correo_para_envio_de_reportes,
Carpeta_para_copias_de_seguridad 
from Empresa

GO
/****** Object:  StoredProcedure [dbo].[mostrar_Empresa_igv]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Empresa_igv]
@empresa as varchar(50)
as
select Porcentaje_impuesto , 'IGV'+' ('+CONVERT(VARCHAR(50),Porcentaje_impuesto)+'%)' as IGV FROM EMPRESA

WHERE Nombre_Empresa=@empresa 




GO
/****** Object:  StoredProcedure [dbo].[mostrar_estado_de_cuenta_de_cliente]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_estado_de_cuenta_de_cliente]
@Id_cliente as int
as 
SELECT      ( detalle_venta .Descripcion ) as Descripcion, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as [Precio Unit] ,dbo.detalle_venta.Total_a_pagar as Total
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
                       INNER JOIN
                         dbo.clientes ON dbo.ventas.idclientev = dbo.clientes.idclientev 
                       
						 where dbo.clientes.idclientev=@Id_cliente and dbo.ventas.Tipo_de_pago ='CREDITO' AND ((ventas.ACCION='VENTA') or (ventas.ACCION='POR COBRAR OTROS'))

GO
/****** Object:  StoredProcedure [dbo].[mostrar_estado_de_cuenta_de_proveedores]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_estado_de_cuenta_de_proveedores]
@Id_proveedor as int
as 
SELECT      ( detalle_venta .Descripcion ) as Descripcion, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as [Precio Unit] ,dbo.detalle_venta.Total_a_pagar as Total
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
                       INNER JOIN
                         dbo.clientes ON dbo.ventas.idclientev = dbo.clientes.idclientev 
                       
						 where dbo.clientes.idclientev=@Id_proveedor and dbo.ventas.Tipo_de_pago ='CREDITO' AND ventas.ACCION='POR PAGAR OTROS'

GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_FONDO_DE_CAJA_INICIAL]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_FONDO_DE_CAJA_INICIAL]
@id_caja int,
@fi as DATE,
@ff as DATEtime
AS
SELECT MOVIMIENTOCAJACIERRE.Saldo_queda_en_caja  FROM MOVIMIENTOCAJACIERRE inner join USUARIO2 on USUARIO2.idUsuario=MOVIMIENTOCAJACIERRE.Id_usuario
  inner join Caja on Caja.Id_Caja =MOVIMIENTOCAJACIERRE.Id_caja 
 where Caja.Id_Caja  = @id_caja    AND MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA'  
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_formato_ticket]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Mostrar_formato_ticket]
as
select*from Ticket 
GO
/****** Object:  StoredProcedure [dbo].[mostrar_Formato_ticket_con_datos_de_detalleventa]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[mostrar_Formato_ticket_con_datos_de_detalleventa]
@Subtotal as varchar(50),
@Total varchar (50),
@Descuento varchar(50),
@Son varchar(50),
@Impuesto varchar(50),
@Monto_impuesto varchar(50),
@Numero_comprobante as varchar(50),
@Cliente varchar(50),
@Cajero varchar(50)
as
Select *,@Subtotal as Subtotal,@Total as total,@Descuento as descuento,@Son as son , @Impuesto as impuesto
,@Monto_impuesto as monto_impuesto,@Numero_comprobante as numero_comprobante,@Cliente as cliente,@Cajero as cajero  from Ticket 

GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_GANANCIAS_DE_VENTAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MOSTRAR_GANANCIAS_DE_VENTAS]
as
select CONVERT(NUMERIC(18,1),SUM(Ganancia ) ) from detalle_venta  INNER JOIN VENTAS ON detalle_venta.idventa =ventas.idventa 


GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_Ganancias_por_fecha]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_Ganancias_por_fecha]
@FI AS DATE,
@FF AS DATE
as
select CONVERT(NUMERIC(18,1),sum( Ganancia )) 
FROM            dbo.detalle_venta  inner join ventas on ventas.idventa=detalle_venta.idventa 
WHERE convert(date,ventas.fecha_venta)>= @FI    AND   convert(date,ventas.fecha_venta)<= @FF 
                       
GO
/****** Object:  StoredProcedure [dbo].[mostrar_gastos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_gastos]
as
SELECT        dbo.CONCEPTOS.Descripcion AS Concepto, dbo.GASTOSVARIOS.Idgasto, dbo.GASTOSVARIOS.Fecha_del_Gasto, 
                         dbo.GASTOSVARIOS.Tipo_de_Comprobante + ' '+dbo.GASTOSVARIOS.Nro_Comprobante AS Comprobante, dbo.GASTOSVARIOS.Importe, 
						 dbo.GASTOSVARIOS.Descripcion  as Detalle, 
                         dbo.GASTOSVARIOS.Id_concepto,USUARIO2.Nombre_y_Apelllidos as Usuario
,GASTOSVARIOS.Nro_Comprobante ,GASTOSVARIOS.Tipo_de_Comprobante 
FROM            dbo.CONCEPTOS INNER JOIN
                         dbo.GASTOSVARIOS ON dbo.CONCEPTOS.Id_concepto = dbo.GASTOSVARIOS.Id_concepto inner join USUARIO2 
						 on USUARIO2.idUsuario=GASTOSVARIOS.Id_usuario 
 where GASTOSVARIOS.TIPO='SALIDA'
 order by Fecha_del_Gasto   desc
GO
/****** Object:  StoredProcedure [dbo].[mostrar_gastos_por_año_en_comboboxAño]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_gastos_por_año_en_comboboxAño]

AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
      DATEPART (year,Fecha_del_Gasto) as año
FROM           GASTOSVARIOS 
WHERE GASTOSVARIOS.TIPO ='SALIDA' 
end


GO
/****** Object:  StoredProcedure [dbo].[mostrar_gastos_por_MES_en_comboboxMES]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_gastos_por_MES_en_comboboxMES]
@año int
AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
      datename(month,Fecha_del_Gasto) as mes
FROM           GASTOSVARIOS 
WHERE GASTOSVARIOS.TIPO ='SALIDA'  and DATEPART (year,Fecha_del_Gasto) =@año
end


GO
/****** Object:  StoredProcedure [dbo].[mostrar_gastos_por_usuario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_gastos_por_usuario]
@idusuario int,
@fecha date
as
select*from GASTOSVARIOS 
where Id_usuario=@idusuario and convert(date,Fecha_del_Gasto) =@fecha 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_HORARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_HORARIOS]
as
SELECT        *FROM HORARIOS
GO
/****** Object:  StoredProcedure [dbo].[mostrar_horas_dia]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[mostrar_horas_dia]
@idpersonal int,
@fecha_sistema date
AS 

SELECT       sum(Horas ) as  Horas
FROM            dbo.ASISTENCIAS 						 
WHEre Id_personal=@idpersonal and (convert(date,Fecha_salida )=@fecha_sistema or convert(date,Fecha_entrada  )=@fecha_sistema)


GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_Inventarios_bajo_minimo]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_Inventarios_bajo_minimo]
AS
select  Codigo,Descripcion,Precio_de_compra,Linea as Categoria, Stock ,Stock_minimo,linea from Producto1 
				where Stock <= Stock_minimo 	and Usa_inventarios ='SI'
GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_Inventarios_bajo_minimo_COUNT]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_Inventarios_bajo_minimo_COUNT]
AS
select  count(Id_Producto1 ) from Producto1 
				where Stock <= Stock_minimo 	and Usa_inventarios ='SI'
GO
/****** Object:  StoredProcedure [dbo].[mostrar_inventarios_todos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_inventarios_todos]

@letra varchar(50)
AS 
SELECT    Codigo ,Descripcion,Precio_de_compra as Costo,Precio_de_venta as Precio_Venta, Stock, Stock_minimo as Stock_Minimo
,linea ,convert(numeric(18,2),Precio_de_compra*Stock) as Importe
FROM         
						 dbo.Producto1 


where Descripcion+linea  LIKE  '%' + @letra+'%' AND Producto1.Usa_inventarios ='SI'
GO
/****** Object:  StoredProcedure [dbo].[mostrar_lineas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_lineas]
as
select * from linea order by Idline desc 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_lineas_sin_repetir]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_lineas_sin_repetir]

AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
      Linea
FROM           Producto1 
end


GO
/****** Object:  StoredProcedure [dbo].[mostrar_mayores_GASTOS_POR_CONCEPTO_por_año]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_mayores_GASTOS_POR_CONCEPTO_por_año]
@año as integer
as

SELECT    top 5 CONCEPTOS.Descripcion  , convert(varchar(50),SUM(Importe))    FROM GASTOSVARIOS INNER JOIN CONCEPTOS ON CONCEPTOS.Id_concepto =GASTOSVARIOS.Id_concepto 
WHERE GASTOSVARIOS.TIPO ='SALIDA' and DATEPART (year,Fecha_del_Gasto) =@año
GROUP BY CONCEPTOS.Descripcion 
Order by SUM(Importe) desc
GO
/****** Object:  StoredProcedure [dbo].[mostrar_mayores_GASTOS_POR_CONCEPTO_por_mes_de_año]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_mayores_GASTOS_POR_CONCEPTO_por_mes_de_año]
@mes as varchar(50),
@año as integer
as

SELECT    top 5 CONCEPTOS.Descripcion  , convert(varchar(50),SUM(Importe))    FROM GASTOSVARIOS INNER JOIN CONCEPTOS ON CONCEPTOS.Id_concepto =GASTOSVARIOS.Id_concepto 
WHERE GASTOSVARIOS.TIPO ='SALIDA' and datename(month,Fecha_del_Gasto) =@mes and DATEPART (year,Fecha_del_Gasto) =@año
GROUP BY CONCEPTOS.Descripcion 
Order by SUM(Importe) desc
GO
/****** Object:  StoredProcedure [dbo].[mostrar_MOTIVOS_sin_repetir]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_MOTIVOS_sin_repetir]
@letrab VARCHAR(50)
AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
      Motivo 
FROM           KARDEX  
 where  (Motivo) LIKE  '%' + @letrab+'%'     AND Tipo = 'ENTRADA'             
end


GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL]

@serial varchar(50)

AS
SELECT USUARIO2.Login,USUARIO2.Nombre_y_Apelllidos    FROM MOVIMIENTOCAJACIERRE inner join USUARIO2 on USUARIO2.idUsuario=MOVIMIENTOCAJACIERRE.Id_usuario
 inner join Caja on Caja.Id_Caja =MOVIMIENTOCAJACIERRE.Id_caja 
 where Caja.Serial_PC = @serial    AND MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA' 


GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL_y_usuario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL_y_usuario]

@serial varchar(50),
@idusuario int

AS
SELECT USUARIO2.Login,USUARIO2.Nombre_y_Apelllidos    FROM MOVIMIENTOCAJACIERRE inner join USUARIO2 on USUARIO2.idUsuario=MOVIMIENTOCAJACIERRE.Id_usuario
 inner join Caja on Caja.Id_Caja =MOVIMIENTOCAJACIERRE.Id_caja 
 where Caja.Serial_PC = @serial    AND MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA' and MOVIMIENTOCAJACIERRE.Id_usuario =@idusuario 
GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_MOVIMIENTOS_DE_KARDEX]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_MOVIMIENTOS_DE_KARDEX]
@letra varchar(50)
AS
SELECT       KARDEX.Fecha ,Producto1.Descripcion ,KARDEX.Motivo as Movimiento, KARDEX.Habia ,KARDEX.Tipo ,KARDEX.Cantidad ,KARDEX.Hay ,USUARIO2.Nombre_y_Apelllidos as Cajero ,Producto1.Linea as Categoria, KARDEX.Costo_unt , KARDEX.Total 
,Producto1.linea 
FROM            dbo.KARDEX INNER JOIN Producto1 on Producto1.Id_Producto1=KARDEX.Id_producto inner join USUARIO2 on USUARIO2.idUsuario =KARDEX.Id_usuario 
             
			where Producto1.  Usa_inventarios ='SI' and Producto1.Descripcion+Producto1.linea +Producto1.Codigo  LIKE  '%' + @letra+'%'
			 order by KARDEX.Fecha Desc

					
GO
/****** Object:  StoredProcedure [dbo].[mostrar_permisos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_permisos]
@idusuario int
as
SELECT        dbo.permisos.*
FROM            dbo.USUARIO2 INNER JOIN
                         dbo.permisos ON dbo.USUARIO2.idUsuario = dbo.permisos.Id_Usuario
						 where dbo.USUARIO2.idUsuario =@idusuario 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_permisos_por_usuario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_permisos_por_usuario]
@id int
as 
select USUARIO2 .idUsuario,USUARIO2.Nombre_y_Apelllidos as [Nombres] ,USUARIO2 .Login as Usuario,USUARIO2.Password as Contraseña,permisos.*
from USUARIO2 inner join permisos on permisos.Id_Usuario =USUARIO2.idUsuario 
where USUARIO2.idUsuario =@id 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_Producto1]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Producto1]
as

select Id_Producto1,Codigo ,Linea as Categoria,Descripcion ,Impuesto,Usa_inventarios ,Precio_de_compra AS P_Compra,Precio_mayoreo as P_mayoreo,Se_vende_a as Se_vende_por,Stock_minimo ,Fecha_de_vencimiento as F_vencimiento ,Stock,Precio_de_venta as P_venta  from Producto1 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_agregados_a_venta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_productos_agregados_a_venta]
@idventa as int
as
SELECT      detalle_venta . Codigo ,( detalle_venta .Descripcion ) as Producto, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as P_Unit ,convert(numeric(18,2),dbo.detalle_venta.Total_a_pagar) as Importe, detalle_venta .Id_producto  ,DBO.detalle_venta.iddetalle_venta ,dbo.ventas.Estado 
						 , detalle_venta .Stock ,dbo.detalle_venta.cantidad ,ventas.idclientev 
						 , detalle_venta .Stock ,detalle_venta .Stock ,Usa_inventarios ,Se_vende_a 
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
where dbo.detalle_venta .idventa =@idventa AND detalle_venta.cantidad >0 order by detalle_venta.iddetalle_venta desc

GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_agregados_a_venta_en_espera]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_productos_agregados_a_venta_en_espera]
@idventa as int
as
SELECT      ( detalle_venta .Descripcion ) as Producto, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as P_Unit ,dbo.detalle_venta.Total_a_pagar as Importe
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
where dbo.detalle_venta .idventa =@idventa AND detalle_venta.cantidad >0

GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_agregados_a_venta_historial]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_productos_agregados_a_venta_historial]
@idventa as int
as
SELECT      detalle_venta . Codigo ,dbo.detalle_venta.Cantidad_mostrada as Cant,( detalle_venta .Descripcion ) as Descripcion, 
                         dbo.detalle_venta.preciounitario as P_Unit ,convert(numeric(18,2),dbo.detalle_venta.Total_a_pagar) as Importe, detalle_venta .Id_producto  ,DBO.detalle_venta.iddetalle_venta ,dbo.ventas.Estado 
						 , detalle_venta .Stock ,dbo.detalle_venta.cantidad ,ventas.idclientev
						  ,Usa_inventarios ,Se_vende_a ,ventas.Porcentaje_IGV,ventas.idventa
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa  
where dbo.detalle_venta .idventa =@idventa AND detalle_venta.cantidad >0 and ventas.Estado ='CONFIRMADO'
GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_para_ventas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_productos_para_ventas]
as
SELECT        (dbo.Producto1.Descripcion +' '+dbo.Presentaciones.Presentacion+ ' x'+dbo.Presentaciones.Cantidad_por_presentacion+ dbo.Presentaciones.Unidad_de_medida) as Descripcion,dbo.Producto1.Id_Producto1 ,
                       
                        dbo.Producto1.Imagen ,Presentaciones_fraccionadas.Id_presentacionfraccionada 
                  
FROM            
                         dbo.Producto1 INNER JOIN
                         dbo.Presentaciones_fraccionadas ON dbo.Producto1.Id_Producto1 = dbo.Presentaciones_fraccionadas.Id_producto INNER JOIN
                         dbo.Presentaciones ON dbo.Presentaciones_fraccionadas.Id_presentacion = dbo.Presentaciones.Id_Presentacion


GO
/****** Object:  StoredProcedure [dbo].[mostrar_PROVEEEDOR]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_PROVEEEDOR]
as
SELECT        idclientev, Nombre, Direccion_para_factura as Direccion, Ruc, movil as Celular, Cliente, Proveedor, 
                    clientes.Saldo ,     Estado as Activo
FROM            dbo.clientes 
WHERE clientes.Proveedor ='SI' order by Nombre  asc 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_solo_saldo_cliente_proveedor]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrar_solo_saldo_cliente_proveedor]
@id int
as
SELECT  Saldo  from clientes  
where idclientev =@id
GO
/****** Object:  StoredProcedure [dbo].[mostrar_stock_de_detalle_de_ventas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_stock_de_detalle_de_ventas]
@Id_producto int 
as
select detalle_venta.Stock,detalle_venta.Descripcion   from ventas inner join detalle_venta on detalle_venta.idventa=ventas.idventa  
where ventas.Estado ='EN ESPERA' and detalle_venta.Id_producto =@Id_producto and detalle_venta.Usa_inventarios ='SI'
GO
/****** Object:  StoredProcedure [dbo].[mostrar_ticket_impreso]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ticket_impreso]
@idventa as int,
@cliente varchar(50),
@efectivo varchar(50),
@vuelto varchar(50)

as
SELECT      detalle_venta . Codigo ,( detalle_venta .Descripcion ) as Producto, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as P_Unit ,convert(numeric(18,2),dbo.detalle_venta.Total_a_pagar) as Importe, detalle_venta .Id_producto  ,DBO.detalle_venta.iddetalle_venta ,dbo.ventas.Estado 
						 , detalle_venta .Stock ,dbo.detalle_venta.cantidad ,ventas.idclientev 
						 , detalle_venta .Stock ,detalle_venta .Stock ,Usa_inventarios ,Se_vende_a ,ventas.idventa,Empresa.Nombre_Empresa as Empresa
,Empresa.Logo,Ticket.Empresa_Ruc,Ticket.Direccion,Ticket.Provincia,Ticket.Moneda_string,
Ticket.Agradecimiento,Ticket.pagina_Web_Facebook,Ticket.Extra,ventas.Numero_de_doc ,convert(date,ventas.fecha_venta) as fecha
,Empresa.Impuesto +'('+ convert(varchar(50),EMPRESA.Porcentaje_impuesto) +'%):' as Impuesto
,convert(numeric (18,1),(ventas.Monto_total*ventas.Porcentaje_IGV)/100 )as SubTotal,
ventas.Monto_total ,USUARIO2.Nombre_y_Apelllidos as Usuario, @cliente as cliente,
@efectivo as Efectivo , @vuelto as Vuelto 
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa inner join usuario2 on Usuario2.idUsuario=ventas.Id_usuario 
						  cross join Empresa
						 cross join Ticket
where dbo.detalle_venta .idventa =@idventa  And ventas.Monto_total >0 order by detalle_venta.iddetalle_venta desc

GO
/****** Object:  StoredProcedure [dbo].[mostrar_Tipo_de_documentos_para_insertar_en_ventas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Tipo_de_documentos_para_insertar_en_ventas]
as

SELECT        Serializacion.Id_tipodoc AS COMPROBANTE , Serializacion.Id_tipodoc  ,dbo.Serializacion.Serie ,dbo.Serializacion.numeroinicio , dbo.Serializacion.numerofin+1 ,dbo.Serializacion.Id_serializacion ,(dbo.Serializacion.Serie  +' - '+ dbo.Serializacion.numeroinicio + dbo.Serializacion.numerofin) as serie_completa,Serializacion.Id_tipodoc,Serializacion.Id_tipodoc 
FROM            dbo.Serializacion 
 where dbo.Serializacion .Destino  ='VENTAS'

GO
/****** Object:  StoredProcedure [dbo].[mostrar_Tipo_de_documentos_para_insertar_estos_mismos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Tipo_de_documentos_para_insertar_estos_mismos]
as

SELECT       dbo.Serializacion.Serie ,dbo.Serializacion.numeroinicio , dbo.Serializacion.numerofin ,dbo.Serializacion.Id_serializacion ,(dbo.Serializacion.Serie  +' - '+ dbo.Serializacion.numeroinicio + dbo.Serializacion.numerofin) as serie_completa,Serializacion.Id_tipodoc AS COMPROBANTE

FROM            dbo.Serializacion 
GO
/****** Object:  StoredProcedure [dbo].[mostrar_usuario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_usuario]
as 
select USUARIO2 .idUsuario,USUARIO2.Nombre_y_Apelllidos as [Nombres] ,USUARIO2 .Login as Usuario,USUARIO2.Password as Contraseña,permisos.*
from USUARIO2 inner join permisos on permisos.Id_Usuario =USUARIO2.idUsuario 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_usuario_POR_ID]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_usuario_POR_ID]
@ID INT
as 
select *
from USUARIO2 inner join Permisos on Permisos. Id_Usuario=USUARIO2.idUsuario

WHERE USUARIO2.idUsuario=@ID 
order by USUARIO2.idUsuario desc



GO
/****** Object:  StoredProcedure [dbo].[mostrar_USUARIO_por_nombre_contraseña]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_USUARIO_por_nombre_contraseña]
@letra VARCHAR(50),
@pas varchar(50)
AS BEGIN
SELECT        idUsuario, Login ,Password ,Nombre_y_Apelllidos 
FROM            dbo.USUARIO2						 
WHEre Login =@letra  AND Password=@pas
END

GO
/****** Object:  StoredProcedure [dbo].[mostrar_vendedores]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_vendedores]
as 
select * from USUARIO2






GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_en_espera]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_en_espera]

as
SELECT      count(ventas.idventa ) as id_ventas, count(ventas.idventa ) as id_producto
FROM            dbo.ventas
             
where  
 ventas.Estado='EN ESPERA'or  ventas.Estado='SIN CONFIRMAR'

 union 
 SELECT      count(ventas.idventa  ) as id_ventas,count(ventas.idventa ) as id_producto
FROM            dbo.ventas inner join detalle_venta on detalle_venta.idventa =detalle_venta.idventa  
             
where  
 ventas.Estado='EN ESPERA'or  ventas.Estado='SIN CONFIRMAR'
GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_en_espera_con_fecha_y_monto]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_en_espera_con_fecha_y_monto]

		AS   

SELECT    ventas. idventa,ventas.Comprobante,ventas.fecha_venta
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa         
where  (ventas.Estado='EN ESPERA') 








GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_realizadas]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_realizadas]
as
SELECT        datename(MONTH ,convert(date,fecha_venta)) +' '+ convert(varchar(50),datepart(year ,convert(date,fecha_venta)))  as fecha,convert(varchar(50),sum( Monto_total) ) 
FROM            dbo.ventas 
                       
group by convert(date,fecha_venta)
GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_realizadas_CANTIDADES]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_realizadas_CANTIDADES]
as
SELECT        convert(varchar(50),convert(date,fecha_venta)) as fecha,COUNT(ventas.idventa ) 
FROM            dbo.ventas 
                       
group by convert(date,fecha_venta)
GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_realizadas_POR_FECHA]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_realizadas_POR_FECHA]
@FI AS DATE,
@FF AS DATE
as
select CONVERT(NUMERIC(18,1),sum( Monto_total  )) 
FROM            dbo.ventas   
 WHERE convert(date,fecha_venta)>= @FI    AND   convert(date,fecha_venta)<= @FF 

GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_realizadas_POR_FECHAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_realizadas_POR_FECHAS]
@FI AS DATE,
@FF AS DATE
as
SELECT        datename(MONTH ,convert(date,fecha_venta)) +' '+ convert(varchar(50),datepart(year ,convert(date,fecha_venta)))  as fecha,convert(varchar(50),sum( Monto_total) ) 
FROM            dbo.ventas 
     WHERE convert(date,fecha_venta)>= @FI    AND   convert(date,fecha_venta)<= @FF            
group by convert(date,fecha_venta)

GO
/****** Object:  StoredProcedure [dbo].[mostras_ventaspormeses]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostras_ventaspormeses]

as
select month(dbo.ventas.fecha_venta )as mes , sum(dbo.ventas.Monto_total) as importe
from dbo.ventas 
where month(dbo.ventas.fecha_venta)  BETWEEN 0 AND 12 GROUP BY MONTH(dbo.ventas.fecha_venta ) 





GO
/****** Object:  StoredProcedure [dbo].[NOTIFICADOR_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[NOTIFICADOR_COBROS]

as 
SELECT       Saldo ,Nombre 
FROM          
                         dbo.clientes 
						 WHERE Saldo >0 AND Cliente ='SI'
GO
/****** Object:  StoredProcedure [dbo].[NOTIFICADOR_PAGOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[NOTIFICADOR_PAGOS]

as 
SELECT       Saldo ,Nombre 
FROM          
                         dbo.clientes 
						 WHERE Saldo >0 AND Proveedor  ='SI'
GO
/****** Object:  StoredProcedure [dbo].[Poner_nombre_a_venta_en_espera]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Poner_nombre_a_venta_en_espera]
@id_venta int,
@nombre as varchar(50)
as
update ventas   set Comprobante=@nombre, Estado = 'EN ESPERA' where idventa   =@id_venta 
GO
/****** Object:  StoredProcedure [dbo].[PRUEBA_DE_NOTIFIC]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[PRUEBA_DE_NOTIFIC]
 AS
 select COUNT (iddetalle_venta  )as idprod from detalle_venta 
GO
/****** Object:  StoredProcedure [dbo].[REPORT_CIERRE_DE_CAJA_diaria_por_TURNOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_CIERRE_DE_CAJA_diaria_por_TURNOS]
@id_caja AS INT,
@fi as DATE,
@ff as DATEtime
as

select SUM(Monto_total)  from ventas 
where Tipo_de_pago ='EFECTIVO' AND 
(fecha_venta >=@fi and fecha_venta<=@ff )AND Id_caja=@id_caja
GO
/****** Object:  StoredProcedure [dbo].[REPORT_COBROS_EN_EFECTIVO_por_turnos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_COBROS_EN_EFECTIVO_por_turnos]
@id_caja AS INT,
@fi as DATE,
@ff as DATETIME
as

select SUM(Pago_realizado )  from DETALLE_CONTROL_DE_COBROS     where  
(Fecha_que_pago >=@fi AND Fecha_que_pago<=@ff )AND Id_caja=@id_caja AND Tipo_de_cobro ='EFECTIVO' and DETALLE_CONTROL_DE_COBROS.Detalle ='COBRO'


GO
/****** Object:  StoredProcedure [dbo].[REPORT_GANANCIAS_DE_VENTAS_por_TURNOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_GANANCIAS_DE_VENTAS_por_TURNOS]
@id_caja AS INT,
@fi as DATE,
@ff as DATEtime
as

select SUM(Ganancia )  from detalle_venta  INNER JOIN VENTAS ON detalle_venta.idventa =ventas.idventa 
where
(ventas.fecha_venta  >=@fi and ventas.fecha_venta<=@ff )AND VENTAS.Id_caja=@id_caja

GO
/****** Object:  StoredProcedure [dbo].[REPORT_GASTOS_VARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_GASTOS_VARIOS]
@id_caja AS INT,
@fi as DATE,
@ff as DATE
as

select SUM(Importe)  from GASTOSVARIOS INNER JOIN CONCEPTOS ON CONCEPTOS.Id_concepto =GASTOSVARIOS.Id_concepto   where  
(Fecha_del_Gasto >=@fi OR Fecha_del_Gasto<=@ff )AND Id_caja=@id_caja AND TIPO='SALIDA'


GO
/****** Object:  StoredProcedure [dbo].[REPORT_GASTOS_VARIOS_por_turnos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_GASTOS_VARIOS_por_turnos]
@id_caja AS INT,
@fi as DATE,
@ff as DATEtime
as

select SUM(Importe)  from GASTOSVARIOS INNER JOIN CONCEPTOS ON CONCEPTOS.Id_concepto =GASTOSVARIOS.Id_concepto   where  
(Fecha_del_Gasto >=@fi AND Fecha_del_Gasto<=@ff )AND Id_caja=@id_caja AND TIPO='SALIDA'


GO
/****** Object:  StoredProcedure [dbo].[REPORT_INGRESOS_VARIOS_por_turnos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_INGRESOS_VARIOS_por_turnos]
@id_caja AS INT,
@fi as DATE,
@ff as DATEtime
as

select SUM(Importe)  from GASTOSVARIOS   where  
(Fecha_del_Gasto >=@fi AND Fecha_del_Gasto<=@ff )AND Id_caja=@id_caja AND GASTOSVARIOS . TIPO='INGRESO'


GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAGOS_EN_EFECTIVO_por_turnos]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_PAGOS_EN_EFECTIVO_por_turnos]
@id_caja AS INT,
@fi as DATE,
@ff as DATETIME
as
select SUM(Pago_realizado )  from DETALLE_CONTROL_DE_COBROS     where  
(Fecha_que_pago >=@fi AND Fecha_que_pago<=@ff )AND Id_caja=@id_caja AND Tipo_de_cobro ='EFECTIVO' and Detalle ='PAGO'


GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_POR_PERIODOS_EN_GENERAL_DE_KARDEX]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_POR_PERIODOS_EN_GENERAL_DE_KARDEX]
@fecha_inicial as date,
@fecha_final as date
as

SELECT       convert(date,KARDEX.Fecha) ,KARDEX.Total ,KARDEX.Motivo 
					,@fecha_inicial,@fecha_final
FROM            dbo.KARDEX 

						 where 
						Cast(dbo.KARDEX   .Fecha    As Date) >=@fecha_inicial 
				AND Cast(dbo.KARDEX   .Fecha   As Date) <= @fecha_final 
						 
						 AND (KARDEX.Motivo ='DESPACHO DIARIO DE VENDEDORES...'
						 or KARDEX.Motivo ='RECHAZO DIARIO')and (KARDEX.Total >0 or KARDEX.Total  <0)







GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_por_TURNOS_en_EFECTIVO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_por_TURNOS_en_EFECTIVO]
@id_caja AS INT,
@fi as DATE,
@ff as DATEtime
as

select SUM(Monto_total)  from ventas 
where Tipo_de_pago ='EFECTIVO' AND 
(fecha_venta >=@fi and fecha_venta<=@ff )AND Id_caja=@id_caja
GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_por_TURNOS_Por_Credito]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_por_TURNOS_Por_Credito]
@id_caja AS INT,
@fi as DATE,
@ff as DATEtime
as

select SUM(Monto_total)  from ventas 
where Tipo_de_pago ='CREDITO' AND 
(fecha_venta >=@fi and fecha_venta<=@ff )AND Id_caja=@id_caja
GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_por_TURNOS_Por_tarjeta]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_por_TURNOS_Por_tarjeta]
@id_caja AS INT,
@fi as DATE,
@ff as DATEtime
as

select SUM(Monto_total)  from ventas 
where Tipo_de_pago ='TARJETA' AND 
(fecha_venta >=@fi and fecha_venta<=@ff )AND Id_caja=@id_caja
GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_POR_VENDEDOR_VENTAS_AL_CONTADO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_POR_VENDEDOR_VENTAS_AL_CONTADO]
@fecha_inicial as date,
@fecha_final as date,
@Id_usuario int
as
SELECT      sum(dbo.ventas.Monto_total)AS VENTAS_TOTAL_CONTADO 
                         					 
FROM            dbo.ventas INNER JOIN
                         
                         dbo.USUARIO2 ON dbo.ventas.Id_usuario = dbo.USUARIO2.idUsuario
					
						  where dbo.USUARIO2.idUsuario =@Id_usuario  and Cast(dbo.ventas .fecha_venta   As Date) >=@fecha_inicial AND Cast(dbo.ventas .fecha_venta   As Date) <= @fecha_final AND Tipo_de_pago  ='CONTADO'

						  group by dbo.ventas.Monto_total

GO
/****** Object:  StoredProcedure [dbo].[REPORTEcierredecajaGASTOSVARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[REPORTEcierredecajaGASTOSVARIOS]
 @fechaini DATE,
 @fechafin DATE
 as
select month(dbo.GASTOSVARIOS.Fecha_del_Gasto ) as Mes, year(dbo.GASTOSVARIOS.Fecha_del_Gasto) as año,
  sum(dbo.GASTOSVARIOS.Importe  ) as Egresos_Gastos_varios

 from dbo.GASTOSVARIOS 
 where     Fecha_del_Gasto >= @fechaini AND   Fecha_del_Gasto <= @fechafin  GROUP BY MONTH(dbo.GASTOSVARIOS.Fecha_del_Gasto  ), YEAR(dbo.GASTOSVARIOS.Fecha_del_Gasto ) ORDER BY YEAR(dbo.GASTOSVARIOS.Fecha_del_Gasto ) asc





GO
/****** Object:  StoredProcedure [dbo].[REPORTEcierredecajaGASTOSVARIOS_diario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[REPORTEcierredecajaGASTOSVARIOS_diario]
 @fechaini DATE
 as
select month(dbo.GASTOSVARIOS.Fecha_del_Gasto ) as Mes, year(dbo.GASTOSVARIOS.Fecha_del_Gasto) as año,
  sum(dbo.GASTOSVARIOS.Importe  ) as Egresos_Gastos_varios, day(dbo.GASTOSVARIOS.Fecha_del_Gasto) as dia

 from dbo.GASTOSVARIOS 
 where     Fecha_del_Gasto = @fechaini   GROUP BY MONTH(dbo.GASTOSVARIOS.Fecha_del_Gasto  ), day(dbo.GASTOSVARIOS.Fecha_del_Gasto),YEAR(dbo.GASTOSVARIOS.Fecha_del_Gasto ) ORDER BY YEAR(dbo.GASTOSVARIOS.Fecha_del_Gasto ) asc





GO
/****** Object:  StoredProcedure [dbo].[REPORTEcierredecajaVENTAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[REPORTEcierredecajaVENTAS]
 @fechaini DATE,
 @fechafin DATE
 as
 --LEFT( CONVERT( VARCHAR, d.fecha, 112 ),6)+'01' as fechaVenta
 select month(dbo.ventas.fecha_venta) as Mes, year(dbo.ventas.fecha_venta) as año,
  sum(dbo.ventas.Monto_total) as Ingreso_de_Ventas

 from dbo.ventas
 where      fecha_venta >= @fechaini AND    fecha_venta <= @fechafin and Estado='PAGADO' GROUP BY MONTH(dbo.ventas.fecha_venta ), YEAR(dbo.ventas.fecha_venta ) ORDER BY YEAR(dbo.ventas.fecha_venta ) asc




GO
/****** Object:  StoredProcedure [dbo].[restar_saldo_a_cliente_por_eliminacion]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[restar_saldo_a_cliente_por_eliminacion]
@idventa int,
@montototal as numeric(18,1)


as

update CONTROL_DE_COBROS set Monto  =Monto - @montototal
where Id_venta =@idventa 


GO
/****** Object:  StoredProcedure [dbo].[restar_total_venta_por_eliminacion]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[restar_total_venta_por_eliminacion]
@idventa int,
@montototal as numeric(18,2)


as

update ventas set Monto_total  =Monto_total - @montototal
where idventa =@idventa 


GO
/****** Object:  StoredProcedure [dbo].[sumar_COBROS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_COBROS]
@FI as date,
@FF as date
as
select sum(dbo.DETALLE_CONTROL_DE_COBROS  .Pago_realizado   )
from dbo.DETALLE_CONTROL_DE_COBROS 
 where DETALLE_CONTROL_DE_COBROS.Detalle='COBRO'  AND CONVERT(DATE,Fecha_que_pago)  >= @FI and CONVERT(DATE,Fecha_que_pago)  <= @FF


GO
/****** Object:  StoredProcedure [dbo].[sumar_cobros_POR_TURNO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_cobros_POR_TURNO]
@fechainicio as datetime,
@fechafin as datetime
as
select sum(dbo.DETALLE_CONTROL_DE_COBROS.Pago_realizado)
from dbo.DETALLE_CONTROL_DE_COBROS  
 where  Fecha_que_pago  >= @fechainicio and Fecha_que_pago  <=@fechafin

GO
/****** Object:  StoredProcedure [dbo].[sumar_compras_POR_TURNO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_compras_POR_TURNO]
@FI as date,
@FF as date
as
select sum(dbo.ventas  .Monto_total  )
from dbo.ventas 
 where (ventas.ACCION='COMPRA' OR ventas.ACCION='PEDIDO DE COMPRA' ) AND ventas.Tipo_de_pago  ='CONTADO' AND CONVERT(DATE,fecha_venta)  >= @FI and CONVERT(DATE,fecha_venta)  <= @FF


GO
/****** Object:  StoredProcedure [dbo].[sumar_gastos_POR_TURNO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_gastos_POR_TURNO]
@FI as date,
@FF as date
as
select sum(dbo.GASTOSVARIOS    .Importe    )
from dbo.GASTOSVARIOS   
 where GASTOSVARIOS .TIPO    ='SALIDA'  AND CONVERT(DATE,Fecha_del_Gasto )  >= @FI and CONVERT(DATE,Fecha_del_Gasto)  <= @FF


GO
/****** Object:  StoredProcedure [dbo].[sumar_INGRESOS_VARIOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_INGRESOS_VARIOS]
@FI as date,
@FF as date
as
select sum(dbo.GASTOSVARIOS    .Importe    )
from dbo.GASTOSVARIOS   
 where GASTOSVARIOS .TIPO    ='INGRESO'  AND CONVERT(DATE,Fecha_del_Gasto )  >= @FI and CONVERT(DATE,Fecha_del_Gasto)  <= @FF


GO
/****** Object:  StoredProcedure [dbo].[sumar_INGRESOS_VARIOS_POR_TURNO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_INGRESOS_VARIOS_POR_TURNO]
@fechainicio as datetime,
@fechafin as datetime
as
select sum(dbo.INGRESOSVARIOS .Importe )
from dbo.INGRESOSVARIOS
 where Estado='PAGADO' AND Fecha_del_Gasto >= @fechainicio and Fecha_del_Gasto <=@fechafin 

GO
/****** Object:  StoredProcedure [dbo].[sumar_INGRESOS-VARIOS_POR_TURNO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_INGRESOS-VARIOS_POR_TURNO]
@fechainicio as datetime,
@fechafin as datetime
as
select sum(dbo.INGRESOSVARIOS .Importe + 0) 
from dbo.INGRESOSVARIOS
 where Estado='PAGADO' AND Fecha_del_Gasto >= @fechainicio and Fecha_del_Gasto <=@fechafin 

GO
/****** Object:  StoredProcedure [dbo].[sumar_KARDEX_RECHASOS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_KARDEX_RECHASOS]
@FI as date,
@FF as date
as
select sum(dbo.KARDEX   .Total   )
from dbo.KARDEX  
 where KARDEX .Motivo   ='RECHAZO DIARIO' AND CONVERT(DATE,Fecha)  >= @FI and CONVERT(DATE,Fecha)  <= @FF


GO
/****** Object:  StoredProcedure [dbo].[sumar_KARDEX_VENTAS]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_KARDEX_VENTAS]
@FI as date,
@FF as date
as
select sum(dbo.KARDEX   .Total   )
from dbo.KARDEX  
 where (KARDEX .Motivo   ='DESPACHO DIARIO DE VENDEDORES...'  OR   KARDEX .Motivo   ='DESPACHO DE PEDIDOS...' )AND CONVERT(DATE,Fecha)  >= @FI and CONVERT(DATE,Fecha)  <= @FF


GO
/****** Object:  StoredProcedure [dbo].[sumar_pagos_POR_TURNO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_pagos_POR_TURNO]
@FI as date,
@FF as date
as
select sum(dbo.DETALLE_CONTROL_DE_COBROS  .Pago_realizado   )
from dbo.DETALLE_CONTROL_DE_COBROS 
 where DETALLE_CONTROL_DE_COBROS.Detalle='PAGO'  AND CONVERT(DATE,Fecha_que_pago)  >= @FI and CONVERT(DATE,Fecha_que_pago)  <= @FF


GO
/****** Object:  StoredProcedure [dbo].[SUMAR_POR_COBRAR]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SUMAR_POR_COBRAR]
@FI as date,
@FF as date
as
SELECT    SUM(   clientes.Saldo )

FROM           clientes  
						
 where clientes .Cliente='SI' 
GO
/****** Object:  StoredProcedure [dbo].[SUMAR_POR_COBRAR_OK]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SUMAR_POR_COBRAR_OK]

as
SELECT    SUM(   clientes.Saldo )

FROM           clientes  
						
 where clientes .Cliente='SI' 
GO
/****** Object:  StoredProcedure [dbo].[SUMAR_POR_PAGAR_OK]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SUMAR_POR_PAGAR_OK]

as
SELECT    SUM(   clientes.Saldo )

FROM           clientes  
						
 where clientes .Proveedor ='SI' 
GO
/****** Object:  StoredProcedure [dbo].[sumar_ventas_POR_TURNO]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_ventas_POR_TURNO]
@FI as date,
@FF as date
as
select sum(dbo.ventas  .Monto_total  )
from dbo.ventas 
 where (ventas.ACCION='VENTA' OR ventas.ACCION='PEDIDO DE VENTA' )AND ventas.Tipo_de_pago  ='CONTADO' AND CONVERT(DATE,fecha_venta)  >= @FI and CONVERT(DATE,fecha_venta)  <= @FF


GO
/****** Object:  StoredProcedure [dbo].[Tema]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Tema]
@Id_caja int,
@Tema varchar(50)
as 

update Caja   set  Tema  =@Tema  where Id_Caja=@Id_caja 
GO
/****** Object:  StoredProcedure [dbo].[validar_usuario]    Script Date: 30/01/2019 16:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[validar_usuario]
@login varchar(50),
@password varchar(50)
as
select * from USUARIO2
where Login=@login and Password   = @password 





GO
USE [master]
GO
ALTER DATABASE [BASEADA] SET  READ_WRITE 
GO
