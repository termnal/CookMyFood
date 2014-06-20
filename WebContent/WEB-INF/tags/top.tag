<%@tag description="Topo do layout" pageEncoding="UTF-8"%>
<%@attribute name="titulo" fragment="true"%>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="/CookMyFood/css/bootstrap.min.css" rel="stylesheet">
<link href="/CookMyFood/font-awesome/css/font-awesome.css" rel="stylesheet">

<link href="/CookMyFood/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
<link href="/CookMyFood/css/plugins/timeline/timeline.css" rel="stylesheet">

<link href="/CookMyFood/css/sb-admin.css" rel="stylesheet">

<title><jsp:invoke fragment="titulo" /></title>

</head>

<body>

	<div id="wrapper">

		<nav class="navbar navbar-default navbar-fixed-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${linkTo[HomeController].index}">Sistema
					de Controle de Restaurante</a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i><%=request.getSession().getAttribute("user-name")%></a></li></li>
				<li class="divider"></li>
				<li><a href="${linkTo[HomeController].index}"><i class="fa fa-sign-out fa-fw"></i>
						Sair</a></li>
			</ul>
			<!-- /.dropdown-user -->
			</li>
			<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default navbar-static-side" role="navigation">
				<div class="sidebar-collapse">
					<ul class="nav" id="side-menu">

						<li class=""><a href="#"> <i class="fa fa-fw"></i>
								Cliente<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse" style="height: 0px;">
								<li><a href="${linkTo[ClienteController].index}">Listar</a></li>
								<li><a href="${linkTo[ClienteController].formulario}">Cadastrar</a></li>
							</ul> <!-- /.nav-second-level --></li>

						<li class=""><a href="#"> <i class="fa fa-fw"></i> Pedido
								Delivery<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse" style="height: 0px;">
								<li><a href="${linkTo[DeliveryController].index}">Pedidos</a></li>
								<li><a href="${linkTo[DeliveryController].formulario}">Novo pedido</a></li>
							</ul> <!-- /.nav-second-level --></li>


						<li class=""><a href="#"> <i class="fa fa-fw"></i> Funcionario<span
								class="fa arrow"></span></a>
							<ul class="nav nav-second-level collapse" style="height: 0px;">
								<li><a href="${linkTo[FuncionarioController].index}">Listar</a></li>
								<li><a href="${linkTo[FuncionarioController].formulario}">Cadastrar</a></li>
							</ul> <!-- /.nav-second-level --></li>

					</ul>
					<!-- /#side-menu -->
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header"><jsp:invoke fragment="titulo" /></h1>
				</div>
			</div>
			<div class="row">