; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_clear_promisc_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_clear_promisc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, i32, i32 }
%struct.mlx4_en_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Leaving promiscuous mode\0A\00", align 1
@MLX4_EN_FLAG_PROMISC = common dso_local global i32 0, align 4
@MLX4_FS_ALL_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed disabling promiscuous mode\0A\00", align 1
@MLX4_EN_FLAG_MC_PROMISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed disabling unicast promiscuous mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed disabling multicast promiscuous mode\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed enabling VLAN filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_dev*)* @mlx4_en_clear_promisc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_clear_promisc_mode(%struct.mlx4_en_priv* %0, %struct.mlx4_en_dev* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_dev* %1, %struct.mlx4_en_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %7 = call i64 @netif_msg_rx_status(%struct.mlx4_en_priv* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %11 = call i32 @en_warn(%struct.mlx4_en_priv* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @MLX4_EN_FLAG_PROMISC, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %110 [
    i32 128, label %25
    i32 129, label %46
    i32 130, label %93
  ]

25:                                               ; preds = %12
  %26 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MLX4_FS_ALL_DEFAULT, align 4
  %33 = call i32 @mlx4_flow_steer_promisc_remove(%struct.TYPE_8__* %28, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %38 = call i32 @en_err(%struct.mlx4_en_priv* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %25
  %40 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %110

46:                                               ; preds = %12
  %47 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mlx4_unicast_promisc_remove(%struct.TYPE_8__* %49, i32 %52, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %61 = call i32 @en_err(%struct.mlx4_en_priv* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %46
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %62
  %70 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mlx4_multicast_promisc_remove(%struct.TYPE_8__* %72, i32 %75, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %84 = call i32 @en_err(%struct.mlx4_en_priv* %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %69
  %86 = load i32, i32* @MLX4_EN_FLAG_MC_PROMISC, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %62
  br label %110

93:                                               ; preds = %12
  %94 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %98 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %101 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_8__* %96, i32 %99, i32 %102, i32 0)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %108 = call i32 @en_err(%struct.mlx4_en_priv* %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %93
  br label %110

110:                                              ; preds = %12, %109, %92, %39
  %111 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %115 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %118 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @mlx4_SET_VLAN_FLTR(%struct.TYPE_8__* %113, i32 %116, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %110
  %124 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %125 = call i32 @en_err(%struct.mlx4_en_priv* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %110
  ret void
}

declare dso_local i64 @netif_msg_rx_status(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_flow_steer_promisc_remove(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_unicast_promisc_remove(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mlx4_multicast_promisc_remove(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_qpn_calc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @mlx4_SET_VLAN_FLTR(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
