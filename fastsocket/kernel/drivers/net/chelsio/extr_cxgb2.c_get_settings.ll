; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_cxgb2.c_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.adapter* }
%struct.adapter = type { %struct.port_info* }
%struct.port_info = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@SUPPORTED_TP = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.port_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load %struct.port_info*, %struct.port_info** %11, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %12, i64 %15
  store %struct.port_info* %16, %struct.port_info** %6, align 8
  %17 = load %struct.port_info*, %struct.port_info** %6, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.port_info*, %struct.port_info** %6, align 8
  %24 = getelementptr inbounds %struct.port_info, %struct.port_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i64 @netif_carrier_ok(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %2
  %33 = load %struct.port_info*, %struct.port_info** %6, align 8
  %34 = getelementptr inbounds %struct.port_info, %struct.port_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.port_info*, %struct.port_info** %6, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %50

45:                                               ; preds = %2
  %46 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %46, i32 0, i32 1
  store i32 -1, i32* %47, align 4
  %48 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %48, i32 0, i32 2
  store i32 -1, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %32
  %51 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SUPPORTED_TP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @PORT_TP, align 4
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @PORT_FIBRE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 4
  %65 = load %struct.port_info*, %struct.port_info** %6, align 8
  %66 = getelementptr inbounds %struct.port_info, %struct.port_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @XCVR_EXTERNAL, align 4
  %74 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load %struct.port_info*, %struct.port_info** %6, align 8
  %77 = getelementptr inbounds %struct.port_info, %struct.port_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %83 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  ret i32 0
}

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
