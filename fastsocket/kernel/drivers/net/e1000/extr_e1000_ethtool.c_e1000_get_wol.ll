; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.e1000_adapter = type { i32, %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@E1000_WUFC_EX = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Interface does not support directed (unicast) frame wake-up packets\0A\00", align 1
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_WUFC_BC = common dso_local global i32 0, align 4
@E1000_WUFC_MAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @e1000_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %5, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 2
  store %struct.e1000_hw* %10, %struct.e1000_hw** %6, align 8
  %11 = load i32, i32* @WAKE_UCAST, align 4
  %12 = load i32, i32* @WAKE_MCAST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WAKE_BCAST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WAKE_MAGIC, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %23 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %24 = call i64 @e1000_wol_exclusion(%struct.e1000_adapter* %22, %struct.ethtool_wolinfo* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @device_can_wakeup(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26, %2
  br label %108

34:                                               ; preds = %26
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %55 [
    i32 128, label %38
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @WAKE_UCAST, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @E1000_WUFC_EX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @drv, align 4
  %53 = call i32 @e_err(i32 %52, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %38
  br label %56

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %54
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %58 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @E1000_WUFC_EX, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @WAKE_UCAST, align 4
  %65 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %71 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @E1000_WUFC_MC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @WAKE_MCAST, align 4
  %78 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %84 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @E1000_WUFC_BC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @WAKE_BCAST, align 4
  %91 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %92 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %82
  %96 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %97 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @E1000_WUFC_MAG, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i32, i32* @WAKE_MAGIC, align 4
  %104 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %105 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %33, %102, %95
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @e1000_wol_exclusion(%struct.e1000_adapter*, %struct.ethtool_wolinfo*) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

declare dso_local i32 @e_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
