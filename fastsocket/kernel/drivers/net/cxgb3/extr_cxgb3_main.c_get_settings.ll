; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.port_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SUPPORTED_TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.port_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.port_info* @netdev_priv(%struct.net_device* %6)
  store %struct.port_info* %7, %struct.port_info** %5, align 8
  %8 = load %struct.port_info*, %struct.port_info** %5, align 8
  %9 = getelementptr inbounds %struct.port_info, %struct.port_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.port_info*, %struct.port_info** %5, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i64 @netif_carrier_ok(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %25 = load %struct.port_info*, %struct.port_info** %5, align 8
  %26 = getelementptr inbounds %struct.port_info, %struct.port_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %24, i32 %28)
  %30 = load %struct.port_info*, %struct.port_info** %5, align 8
  %31 = getelementptr inbounds %struct.port_info, %struct.port_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %38 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %37, i32 -1)
  %39 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %23
  %42 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SUPPORTED_TP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @PORT_TP, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @PORT_FIBRE, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.port_info*, %struct.port_info** %5, align 8
  %57 = getelementptr inbounds %struct.port_info, %struct.port_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @XCVR_EXTERNAL, align 4
  %64 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.port_info*, %struct.port_info** %5, align 8
  %67 = getelementptr inbounds %struct.port_info, %struct.port_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  ret i32 0
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
