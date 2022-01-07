; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_set_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i64, i64, i64 }
%struct.mlx4_en_priv = type { i32, i32, i64, i64, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }

@MLX4_EN_MAX_TX_RING_P_UP = common dso_local global i32 0, align 4
@MAX_RX_RINGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MLX4_EN_NUM_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed reallocating port resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Using %d TX rings\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Using %d RX rings\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed starting port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @mlx4_en_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %6, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 4
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %13, align 8
  store %struct.mlx4_en_dev* %14, %struct.mlx4_en_dev** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %2
  %20 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %19
  %25 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MLX4_EN_MAX_TX_RING_P_UP, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAX_RX_RINGS, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %36, %30, %24, %19, %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %131

49:                                               ; preds = %41
  %50 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @mlx4_en_stop_port(%struct.net_device* %58, i32 1)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %62 = call i32 @mlx4_en_free_resources(%struct.mlx4_en_priv* %61)
  %63 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MLX4_EN_NUM_UP, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %81 = call i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %60
  %85 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %86 = call i32 @en_err(%struct.mlx4_en_priv* %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %126

87:                                               ; preds = %60
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %90 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %88, i32 %91)
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %93, i64 %96)
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = load i32, i32* @MLX4_EN_NUM_UP, align 4
  %100 = call i32 @mlx4_en_setup_tc(%struct.net_device* %98, i32 %99)
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %102 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %103 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = call i32 @en_warn(%struct.mlx4_en_priv* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  %107 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %108 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @en_warn(%struct.mlx4_en_priv* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %110)
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %87
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = call i32 @mlx4_en_start_port(%struct.net_device* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %121 = call i32 @en_err(%struct.mlx4_en_priv* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %114
  br label %123

123:                                              ; preds = %122, %87
  %124 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %125 = call i32 @mlx4_en_moderation_update(%struct.mlx4_en_priv* %124)
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %123, %84
  %127 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %128 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %126, %46
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_free_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i64) #1

declare dso_local i32 @mlx4_en_setup_tc(%struct.net_device*, i32) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*, i64) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_moderation_update(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
