; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.e1000_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FLAG_HAS_WOL = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@FLAG_NO_WAKE_UCAST = common dso_local global i32 0, align 4
@E1000_WUFC_EX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Interface does not support directed (unicast) frame wake-up packets\0A\00", align 1
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_WUFC_BC = common dso_local global i32 0, align 4
@E1000_WUFC_MAG = common dso_local global i32 0, align 4
@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @e1000_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.e1000_adapter* %7, %struct.e1000_adapter** %5, align 8
  %8 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FLAG_HAS_WOL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @device_can_wakeup(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %2
  br label %125

26:                                               ; preds = %18
  %27 = load i32, i32* @WAKE_UCAST, align 4
  %28 = load i32, i32* @WAKE_MCAST, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @WAKE_BCAST, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @WAKE_MAGIC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @WAKE_PHY, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FLAG_NO_WAKE_UCAST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %26
  %45 = load i32, i32* @WAKE_UCAST, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @E1000_WUFC_EX, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = call i32 @e_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %44
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @E1000_WUFC_EX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @WAKE_UCAST, align 4
  %69 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @E1000_WUFC_MC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @WAKE_MCAST, align 4
  %82 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %83 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @E1000_WUFC_BC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @WAKE_BCAST, align 4
  %95 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %101 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @E1000_WUFC_MAG, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @WAKE_MAGIC, align 4
  %108 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %109 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %99
  %113 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %114 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @WAKE_PHY, align 4
  %121 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %122 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %25, %119, %112
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

declare dso_local i32 @e_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
