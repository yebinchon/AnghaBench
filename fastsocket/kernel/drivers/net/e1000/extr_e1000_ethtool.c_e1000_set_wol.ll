; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.e1000_adapter = type { i32, %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }

@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Interface does not support directed (unicast) frame wake-up packets\0A\00", align 1
@E1000_WUFC_EX = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@E1000_WUFC_BC = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@E1000_WUFC_MAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @e1000_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %6, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 2
  store %struct.e1000_hw* %11, %struct.e1000_hw** %7, align 8
  %12 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WAKE_PHY, align 4
  %16 = load i32, i32* @WAKE_ARP, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %129

25:                                               ; preds = %2
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %27 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %28 = call i64 @e1000_wol_exclusion(%struct.e1000_adapter* %26, %struct.ethtool_wolinfo* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @device_can_wakeup(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ %44, %42 ], [ 0, %45 ]
  store i32 %47, i32* %3, align 4
  br label %129

48:                                               ; preds = %30
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %65 [
    i32 128, label %52
  ]

52:                                               ; preds = %48
  %53 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @WAKE_UCAST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @drv, align 4
  %61 = call i32 @e_err(i32 %60, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %129

64:                                               ; preds = %52
  br label %66

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @WAKE_UCAST, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i32, i32* @E1000_WUFC_EX, align 4
  %77 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %66
  %82 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WAKE_MCAST, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @E1000_WUFC_MC, align 4
  %90 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %91 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %81
  %95 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @WAKE_BCAST, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load i32, i32* @E1000_WUFC_BC, align 4
  %103 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %104 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %94
  %108 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @WAKE_MAGIC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load i32, i32* @E1000_WUFC_MAG, align 4
  %116 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %117 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %107
  %121 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %122 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %126 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @device_set_wakeup_enable(i32* %124, i32 %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %120, %59, %46, %22
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @e1000_wol_exclusion(%struct.e1000_adapter*, %struct.ethtool_wolinfo*) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
