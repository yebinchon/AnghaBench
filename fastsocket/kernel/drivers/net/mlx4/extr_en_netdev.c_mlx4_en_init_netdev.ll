; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_init_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_init_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_dev = type { i32, %struct.TYPE_20__*, %struct.net_device**, i64, %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i32, i64, i32, i32*, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32, i32, i32* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.mlx4_en_port_profile = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.net_device*, i32, i32, %struct.mlx4_en_dev*, i32, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.mlx4_en_port_profile*, i32* }
%struct.TYPE_13__ = type { i32, i32, i64 }

@MAX_TX_RINGS = common dso_local global i32 0, align 4
@MAX_RX_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Net device allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX4_EN_MSG_LEVEL = common dso_local global i32 0, align 4
@mlx4_en_do_set_rx_mode = common dso_local global i32 0, align 4
@mlx4_en_restart = common dso_local global i32 0, align 4
@mlx4_en_linkstate = common dso_local global i32 0, align 4
@mlx4_en_do_get_stats = common dso_local global i32 0, align 4
@mlx4_en_service_task = common dso_local global i32 0, align 4
@MLX4_EN_MAC_HASH_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Assigned random MAC address %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Port: %d, invalid mac burned: %pM, quiting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DS_SIZE = common dso_local global i32 0, align 4
@MLX4_EN_MAX_RX_FRAGS = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@MLX4_EN_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to allocate page for rx qps\0A\00", align 1
@mlx4_netdev_ops_master = common dso_local global i32 0, align 4
@mlx4_netdev_ops = common dso_local global i32 0, align 4
@MLX4_EN_WATCHDOG_TIMEOUT = common dso_local global i32 0, align 4
@MLX4_EN_NUM_UP = common dso_local global i32 0, align 4
@mlx4_en_ethtool_ops = common dso_local global i32 0, align 4
@mlx4_en_ethtool_ops_ext = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Netdev registration failed for port %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Using %d TX rings\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Using %d RX rings\0A\00", align 1
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [71 x i8] c"Failed setting port general configurations for port %d, with error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Initializing port\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed Initializing port\0A\00", align 1
@STATS_DELAY = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_TS = common dso_local global i32 0, align 4
@SERVICE_TASK_DELAY = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_SET_ETH_SCHED = common dso_local global i32 0, align 4
@mlx4_en_dcbnl_ops = common dso_local global i32 0, align 4
@mlx4_en_dcbnl_pfc_ops = common dso_local global i32 0, align 4
@mlx4_en_filter_rfs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_init_netdev(%struct.mlx4_en_dev* %0, i32 %1, %struct.mlx4_en_port_profile* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_port_profile*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mlx4_en_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_en_dev* %0, %struct.mlx4_en_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_en_port_profile* %2, %struct.mlx4_en_port_profile** %7, align 8
  %13 = load i32, i32* @MAX_TX_RINGS, align 4
  %14 = load i32, i32* @MAX_RX_RINGS, align 4
  %15 = call %struct.net_device* @alloc_etherdev_mqs(i32 192, i32 %13, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = icmp eq %struct.net_device* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %20 = call i32 @mlx4_err(%struct.mlx4_en_dev* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %567

23:                                               ; preds = %3
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %24, i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %29, i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = call i32 @SET_NETDEV_DEV(%struct.net_device* %34, i32* %40)
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.net_device*, %struct.net_device** %8, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %46)
  store %struct.mlx4_en_priv* %47, %struct.mlx4_en_priv** %9, align 8
  %48 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %49 = call i32 @memset(%struct.mlx4_en_priv* %48, i32 0, i32 192)
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 10
  store %struct.net_device* %50, %struct.net_device** %52, align 8
  %53 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %54, i32 0, i32 13
  store %struct.mlx4_en_dev* %53, %struct.mlx4_en_dev** %55, align 8
  %56 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %56, i32 0, i32 5
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %60, i32 0, i32 32
  store i32* %59, i32** %61, align 8
  %62 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 31
  store %struct.mlx4_en_port_profile* %62, %struct.mlx4_en_port_profile** %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %75, i32 0, i32 30
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %81, i32 0, i32 29
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %86, i32 0, i32 12
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @MAX_TX_RINGS, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @kzalloc(i32 %91, i32 %92)
  %94 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %94, i32 0, i32 28
  store i8* %93, i8** %95, align 8
  %96 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %96, i32 0, i32 28
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %23
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %563

103:                                              ; preds = %23
  %104 = load i32, i32* @MAX_TX_RINGS, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i8* @kzalloc(i32 %107, i32 %108)
  %110 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %110, i32 0, i32 27
  store i8* %109, i8** %111, align 8
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %112, i32 0, i32 27
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %103
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %11, align 4
  br label %563

119:                                              ; preds = %103
  %120 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %121 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %123, i32 0, i32 11
  store i32 %122, i32* %124, align 8
  %125 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %126 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %125, i32 0, i32 1
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 64
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %137 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %136, i32 0, i32 4
  store i32 -1, i32* %137, align 8
  %138 = load i32, i32* @MLX4_EN_MSG_LEVEL, align 4
  %139 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %140 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %139, i32 0, i32 26
  store i32 %138, i32* %140, align 8
  %141 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %142 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %141, i32 0, i32 25
  %143 = call i32 @spin_lock_init(i32* %142)
  %144 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %145 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %144, i32 0, i32 24
  %146 = load i32, i32* @mlx4_en_do_set_rx_mode, align 4
  %147 = call i32 @INIT_WORK(i32* %145, i32 %146)
  %148 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %148, i32 0, i32 23
  %150 = load i32, i32* @mlx4_en_restart, align 4
  %151 = call i32 @INIT_WORK(i32* %149, i32 %150)
  %152 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %153 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %152, i32 0, i32 22
  %154 = load i32, i32* @mlx4_en_linkstate, align 4
  %155 = call i32 @INIT_WORK(i32* %153, i32 %154)
  %156 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %157 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %156, i32 0, i32 8
  %158 = load i32, i32* @mlx4_en_do_get_stats, align 4
  %159 = call i32 @INIT_DELAYED_WORK(i32* %157, i32 %158)
  %160 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %161 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %160, i32 0, i32 7
  %162 = load i32, i32* @mlx4_en_service_task, align 4
  %163 = call i32 @INIT_DELAYED_WORK(i32* %161, i32 %162)
  store i32 0, i32* %10, align 4
  br label %164

164:                                              ; preds = %176, %119
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @MLX4_EN_MAC_HASH_SIZE, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %170 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %169, i32 0, i32 21
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = call i32 @INIT_HLIST_HEAD(i32* %174)
  br label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %164

179:                                              ; preds = %164
  %180 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %181 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %180, i32 0, i32 1
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %187 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %193 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %192, i32 0, i32 20
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* @ETH_ALEN, align 4
  %195 = load %struct.net_device*, %struct.net_device** %8, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 4
  %197 = load %struct.net_device*, %struct.net_device** %8, align 8
  %198 = getelementptr inbounds %struct.net_device, %struct.net_device* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %201 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %200, i32 0, i32 1
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %207 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @mlx4_en_u64_to_mac(i32 %199, i32 %211)
  %213 = load %struct.net_device*, %struct.net_device** %8, align 8
  %214 = getelementptr inbounds %struct.net_device, %struct.net_device* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @is_valid_ether_addr(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %262, label %218

218:                                              ; preds = %179
  %219 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %220 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %219, i32 0, i32 13
  %221 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %220, align 8
  %222 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %221, i32 0, i32 1
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = call i64 @mlx4_is_slave(%struct.TYPE_20__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %250

226:                                              ; preds = %218
  %227 = load %struct.net_device*, %struct.net_device** %8, align 8
  %228 = call i32 @eth_hw_addr_random(%struct.net_device* %227)
  %229 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %230 = load %struct.net_device*, %struct.net_device** %8, align 8
  %231 = getelementptr inbounds %struct.net_device, %struct.net_device* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %229, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %232)
  %234 = load %struct.net_device*, %struct.net_device** %8, align 8
  %235 = getelementptr inbounds %struct.net_device, %struct.net_device* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @mlx4_en_mac_to_u64(i32 %236)
  store i32 %237, i32* %12, align 4
  %238 = load i32, i32* %12, align 4
  %239 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %240 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %239, i32 0, i32 1
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 4
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %246 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  store i32 %238, i32* %249, align 4
  br label %261

250:                                              ; preds = %218
  %251 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %252 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %253 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.net_device*, %struct.net_device** %8, align 8
  %256 = getelementptr inbounds %struct.net_device, %struct.net_device* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %251, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %254, i32 %257)
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %11, align 4
  br label %563

261:                                              ; preds = %226
  br label %262

262:                                              ; preds = %261, %179
  %263 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %264 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %263, i32 0, i32 19
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.net_device*, %struct.net_device** %8, align 8
  %267 = getelementptr inbounds %struct.net_device, %struct.net_device* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @memcpy(i32 %265, i32 %268, i32 4)
  %270 = load i32, i32* @DS_SIZE, align 4
  %271 = load i32, i32* @MLX4_EN_MAX_RX_FRAGS, align 4
  %272 = mul nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = add i64 4, %273
  %275 = trunc i64 %274 to i32
  %276 = call i32 @roundup_pow_of_two(i32 %275)
  %277 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %278 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %277, i32 0, i32 18
  store i32 %276, i32* %278, align 8
  %279 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %280 = call i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv* %279)
  store i32 %280, i32* %11, align 4
  %281 = load i32, i32* %11, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %262
  br label %563

284:                                              ; preds = %262
  %285 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %286 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %285, i32 0, i32 15
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 2
  store i64 0, i64* %287, align 8
  %288 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %289 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %290 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %289, i32 0, i32 15
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 1
  store i32 %288, i32* %291, align 4
  %292 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %293 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %294 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %293, i32 0, i32 15
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  store i32 %292, i32* %295, align 8
  %296 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %297 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %296, i32 0, i32 1
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %297, align 8
  %299 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %300 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %299, i32 0, i32 14
  %301 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %302 = load i32, i32* @MLX4_EN_PAGE_SIZE, align 4
  %303 = call i32 @mlx4_alloc_hwq_res(%struct.TYPE_20__* %298, i32* %300, i32 %301, i32 %302)
  store i32 %303, i32* %11, align 4
  %304 = load i32, i32* %11, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %284
  %307 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %308 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %307, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %563

309:                                              ; preds = %284
  %310 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %311 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %310, i32 0, i32 5
  store i32 1, i32* %311, align 4
  %312 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %313 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %312, i32 0, i32 13
  %314 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %313, align 8
  %315 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %314, i32 0, i32 1
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %315, align 8
  %317 = call i64 @mlx4_is_master(%struct.TYPE_20__* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %309
  %320 = load %struct.net_device*, %struct.net_device** %8, align 8
  %321 = getelementptr inbounds %struct.net_device, %struct.net_device* %320, i32 0, i32 4
  store i32* @mlx4_netdev_ops_master, i32** %321, align 8
  br label %325

322:                                              ; preds = %309
  %323 = load %struct.net_device*, %struct.net_device** %8, align 8
  %324 = getelementptr inbounds %struct.net_device, %struct.net_device* %323, i32 0, i32 4
  store i32* @mlx4_netdev_ops, i32** %324, align 8
  br label %325

325:                                              ; preds = %322, %319
  %326 = load i32, i32* @MLX4_EN_WATCHDOG_TIMEOUT, align 4
  %327 = load %struct.net_device*, %struct.net_device** %8, align 8
  %328 = getelementptr inbounds %struct.net_device, %struct.net_device* %327, i32 0, i32 3
  store i32 %326, i32* %328, align 4
  %329 = load %struct.net_device*, %struct.net_device** %8, align 8
  %330 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %331 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %330, i32 0, i32 12
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %329, i32 %332)
  %334 = load %struct.net_device*, %struct.net_device** %8, align 8
  %335 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %336 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %335, i32 0, i32 11
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %334, i32 %337)
  %339 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %340 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %325
  %345 = load %struct.net_device*, %struct.net_device** %8, align 8
  %346 = load i32, i32* @MLX4_EN_NUM_UP, align 4
  %347 = call i32 @mlx4_en_setup_tc(%struct.net_device* %345, i32 %346)
  br label %348

348:                                              ; preds = %344, %325
  %349 = load %struct.net_device*, %struct.net_device** %8, align 8
  %350 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %349, i32* @mlx4_en_ethtool_ops)
  %351 = load %struct.net_device*, %struct.net_device** %8, align 8
  %352 = call i32 @set_ethtool_ops_ext(%struct.net_device* %351, i32* @mlx4_en_ethtool_ops_ext)
  %353 = load i32, i32* @NETIF_F_SG, align 4
  %354 = load %struct.net_device*, %struct.net_device** %8, align 8
  %355 = getelementptr inbounds %struct.net_device, %struct.net_device* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 4
  %358 = load i32, i32* @NETIF_F_SG, align 4
  %359 = load %struct.net_device*, %struct.net_device** %8, align 8
  %360 = getelementptr inbounds %struct.net_device, %struct.net_device* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  %363 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %364 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %365 = or i32 %363, %364
  %366 = load %struct.net_device*, %struct.net_device** %8, align 8
  %367 = getelementptr inbounds %struct.net_device, %struct.net_device* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %365
  store i32 %369, i32* %367, align 4
  %370 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %371 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %372 = or i32 %370, %371
  %373 = load %struct.net_device*, %struct.net_device** %8, align 8
  %374 = getelementptr inbounds %struct.net_device, %struct.net_device* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 8
  %377 = load i32, i32* @NETIF_F_RXHASH, align 4
  %378 = load %struct.net_device*, %struct.net_device** %8, align 8
  %379 = getelementptr inbounds %struct.net_device, %struct.net_device* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 4
  %382 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %383 = load %struct.net_device*, %struct.net_device** %8, align 8
  %384 = getelementptr inbounds %struct.net_device, %struct.net_device* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 4
  %387 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %388 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %389 = or i32 %387, %388
  %390 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %391 = or i32 %389, %390
  %392 = load %struct.net_device*, %struct.net_device** %8, align 8
  %393 = getelementptr inbounds %struct.net_device, %struct.net_device* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 4
  %396 = load i32, i32* @NETIF_F_GRO, align 4
  %397 = load %struct.net_device*, %struct.net_device** %8, align 8
  %398 = getelementptr inbounds %struct.net_device, %struct.net_device* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = or i32 %399, %396
  store i32 %400, i32* %398, align 4
  %401 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %402 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %401, i32 0, i32 3
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %426

405:                                              ; preds = %348
  %406 = load i32, i32* @NETIF_F_TSO, align 4
  %407 = load %struct.net_device*, %struct.net_device** %8, align 8
  %408 = getelementptr inbounds %struct.net_device, %struct.net_device* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = or i32 %409, %406
  store i32 %410, i32* %408, align 4
  %411 = load i32, i32* @NETIF_F_TSO6, align 4
  %412 = load %struct.net_device*, %struct.net_device** %8, align 8
  %413 = getelementptr inbounds %struct.net_device, %struct.net_device* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 4
  %416 = load i32, i32* @NETIF_F_TSO, align 4
  %417 = load %struct.net_device*, %struct.net_device** %8, align 8
  %418 = getelementptr inbounds %struct.net_device, %struct.net_device* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = or i32 %419, %416
  store i32 %420, i32* %418, align 8
  %421 = load i32, i32* @NETIF_F_TSO6, align 4
  %422 = load %struct.net_device*, %struct.net_device** %8, align 8
  %423 = getelementptr inbounds %struct.net_device, %struct.net_device* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = or i32 %424, %421
  store i32 %425, i32* %423, align 8
  br label %426

426:                                              ; preds = %405, %348
  %427 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %428 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %427, i32 0, i32 1
  %429 = load %struct.TYPE_20__*, %struct.TYPE_20__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 2
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %434 = icmp eq i64 %432, %433
  br i1 %434, label %435, label %441

435:                                              ; preds = %426
  %436 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %437 = load %struct.net_device*, %struct.net_device** %8, align 8
  %438 = getelementptr inbounds %struct.net_device, %struct.net_device* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = or i32 %439, %436
  store i32 %440, i32* %438, align 4
  br label %441

441:                                              ; preds = %435, %426
  %442 = load %struct.net_device*, %struct.net_device** %8, align 8
  %443 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %444 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %443, i32 0, i32 2
  %445 = load %struct.net_device**, %struct.net_device*** %444, align 8
  %446 = load i32, i32* %6, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.net_device*, %struct.net_device** %445, i64 %447
  store %struct.net_device* %442, %struct.net_device** %448, align 8
  %449 = load %struct.net_device*, %struct.net_device** %8, align 8
  %450 = call i32 @netif_carrier_off(%struct.net_device* %449)
  %451 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %452 = call i32 @mlx4_en_set_default_moderation(%struct.mlx4_en_priv* %451)
  %453 = load %struct.net_device*, %struct.net_device** %8, align 8
  %454 = call i32 @register_netdev(%struct.net_device* %453)
  store i32 %454, i32* %11, align 4
  %455 = load i32, i32* %11, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %441
  %458 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %459 = load i32, i32* %6, align 4
  %460 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %458, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %459)
  br label %563

461:                                              ; preds = %441
  %462 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %463 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %462, i32 0, i32 6
  store i32 1, i32* %463, align 8
  %464 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %465 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %466 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %465, i32 0, i32 5
  %467 = load i32, i32* %466, align 4
  %468 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %467)
  %469 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %470 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %471 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 4
  %473 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %469, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %472)
  %474 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %475 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %474, i32 0, i32 10
  %476 = load %struct.net_device*, %struct.net_device** %475, align 8
  %477 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %478 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %477, i32 0, i32 10
  %479 = load %struct.net_device*, %struct.net_device** %478, align 8
  %480 = getelementptr inbounds %struct.net_device, %struct.net_device* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @mlx4_en_update_loopback_state(%struct.net_device* %476, i32 %481)
  %483 = load %struct.net_device*, %struct.net_device** %8, align 8
  %484 = call i32 @mlx4_en_calc_rx_buf(%struct.net_device* %483)
  %485 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %486 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %485, i32 0, i32 1
  %487 = load %struct.TYPE_20__*, %struct.TYPE_20__** %486, align 8
  %488 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %489 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = sext i32 %490 to i64
  %492 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %493 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %492, i32 0, i32 9
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @ETH_FCS_LEN, align 8
  %496 = add nsw i64 %494, %495
  %497 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %498 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %501 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %504 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %507 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @mlx4_SET_PORT_general(%struct.TYPE_20__* %487, i64 %491, i64 %496, i32 %499, i32 %502, i32 %505, i32 %508)
  store i32 %509, i32* %11, align 4
  %510 = load i32, i32* %11, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %519

512:                                              ; preds = %461
  %513 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %514 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %515 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = load i32, i32* %11, align 4
  %518 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %513, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i32 %516, i32 %517)
  br label %563

519:                                              ; preds = %461
  %520 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %521 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_warn(%struct.mlx4_en_priv* %520, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %522 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %523 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %522, i32 0, i32 1
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** %523, align 8
  %525 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %526 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = sext i32 %527 to i64
  %529 = call i32 @mlx4_INIT_PORT(%struct.TYPE_20__* %524, i64 %528)
  store i32 %529, i32* %11, align 4
  %530 = load i32, i32* %11, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %535

532:                                              ; preds = %519
  %533 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %534 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %533, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %563

535:                                              ; preds = %519
  %536 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %537 = call i32 @mlx4_en_set_default_moderation(%struct.mlx4_en_priv* %536)
  %538 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %539 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %542 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %541, i32 0, i32 8
  %543 = load i32, i32* @STATS_DELAY, align 4
  %544 = call i32 @queue_delayed_work(i32 %540, i32* %542, i32 %543)
  %545 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %546 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %545, i32 0, i32 1
  %547 = load %struct.TYPE_20__*, %struct.TYPE_20__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %548, i32 0, i32 3
  %550 = load i32, i32* %549, align 8
  %551 = load i32, i32* @MLX4_DEV_CAP_FLAG2_TS, align 4
  %552 = and i32 %550, %551
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %562

554:                                              ; preds = %535
  %555 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %556 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %559 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %558, i32 0, i32 7
  %560 = load i32, i32* @SERVICE_TASK_DELAY, align 4
  %561 = call i32 @queue_delayed_work(i32 %557, i32* %559, i32 %560)
  br label %562

562:                                              ; preds = %554, %535
  store i32 0, i32* %4, align 4
  br label %567

563:                                              ; preds = %532, %512, %457, %306, %283, %250, %116, %100
  %564 = load %struct.net_device*, %struct.net_device** %8, align 8
  %565 = call i32 @mlx4_en_destroy_netdev(%struct.net_device* %564)
  %566 = load i32, i32* %11, align 4
  store i32 %566, i32* %4, align 4
  br label %567

567:                                              ; preds = %563, %562, %18
  %568 = load i32, i32* %4, align 4
  ret i32 %568
}

declare dso_local %struct.net_device* @alloc_etherdev_mqs(i32, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_en_dev*, i8*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.mlx4_en_priv*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @mlx4_en_u64_to_mac(i32, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @mlx4_is_slave(%struct.TYPE_20__*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @mlx4_en_mac_to_u64(i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_alloc_hwq_res(%struct.TYPE_20__*, i32*, i32, i32) #1

declare dso_local i64 @mlx4_is_master(%struct.TYPE_20__*) #1

declare dso_local i32 @mlx4_en_setup_tc(%struct.net_device*, i32) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @set_ethtool_ops_ext(%struct.net_device*, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_set_default_moderation(%struct.mlx4_en_priv*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_update_loopback_state(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_calc_rx_buf(%struct.net_device*) #1

declare dso_local i32 @mlx4_SET_PORT_general(%struct.TYPE_20__*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_INIT_PORT(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mlx4_en_destroy_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
