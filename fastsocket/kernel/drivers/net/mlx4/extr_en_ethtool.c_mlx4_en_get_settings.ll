; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @mlx4_en_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx4_en_priv* %9, %struct.mlx4_en_priv** %6, align 8
  %10 = load i32, i32* @AUTONEG_DISABLE, align 4
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %14 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %17 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @mlx4_en_QUERY_PORT(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %106

30:                                               ; preds = %2
  %31 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i64 @netif_carrier_ok(%struct.net_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %39, i32 %43)
  %45 = load i32, i32* @DUPLEX_FULL, align 4
  %46 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %53

48:                                               ; preds = %30
  %49 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %50 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %49, i32 -1)
  %51 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %38
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp sle i32 %57, 12
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32, i32* @PORT_FIBRE, align 4
  %61 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @XCVR_EXTERNAL, align 4
  %64 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %67 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %72 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %105

76:                                               ; preds = %56, %53
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @PORT_TP, align 4
  %84 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @XCVR_INTERNAL, align 4
  %87 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @SUPPORTED_TP, align 4
  %90 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @ADVERTISED_TP, align 4
  %95 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %104

99:                                               ; preds = %79
  %100 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %101 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %100, i32 0, i32 1
  store i32 -1, i32* %101, align 4
  %102 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %102, i32 0, i32 2
  store i32 -1, i32* %103, align 4
  br label %104

104:                                              ; preds = %99, %82
  br label %105

105:                                              ; preds = %104, %59
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %27
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mlx4_en_QUERY_PORT(i32, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
