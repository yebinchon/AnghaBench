; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.e1000_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FLAG_HAS_WOL = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@E1000_WUFC_EX = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_WUFC_BC = common dso_local global i32 0, align 4
@E1000_WUFC_MAG = common dso_local global i32 0, align 4
@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @e1000_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %6, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FLAG_HAS_WOL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @device_can_wakeup(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WAKE_UCAST, align 4
  %27 = load i32, i32* @WAKE_MCAST, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @WAKE_BCAST, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WAKE_MAGIC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @WAKE_PHY, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = and i32 %25, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22, %15, %2
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %117

41:                                               ; preds = %22
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WAKE_UCAST, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load i32, i32* @E1000_WUFC_EX, align 4
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %41
  %57 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WAKE_MCAST, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @E1000_WUFC_MC, align 4
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @WAKE_BCAST, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @E1000_WUFC_BC, align 4
  %78 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @WAKE_MAGIC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @E1000_WUFC_MAG, align 4
  %91 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %92 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %82
  %96 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @WAKE_PHY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %104 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %105 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %95
  %109 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %110 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %114 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @device_set_wakeup_enable(i32* %112, i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %108, %38
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
