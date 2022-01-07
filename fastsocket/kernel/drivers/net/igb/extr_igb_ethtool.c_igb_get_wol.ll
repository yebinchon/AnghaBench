; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.igb_adapter = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@IGB_FLAG_WOL_SUPPORTED = common dso_local global i32 0, align 4
@E1000_WUFC_EX = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_WUFC_BC = common dso_local global i32 0, align 4
@E1000_WUFC_MAG = common dso_local global i32 0, align 4
@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @igb_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.igb_adapter* %7, %struct.igb_adapter** %5, align 8
  %8 = load i32, i32* @WAKE_UCAST, align 4
  %9 = load i32, i32* @WAKE_MCAST, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WAKE_BCAST, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WAKE_MAGIC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAKE_PHY, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IGB_FLAG_WOL_SUPPORTED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %99

28:                                               ; preds = %2
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %33 [
  ]

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @E1000_WUFC_EX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @WAKE_UCAST, align 4
  %43 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @E1000_WUFC_MC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @WAKE_MCAST, align 4
  %56 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @E1000_WUFC_BC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @WAKE_BCAST, align 4
  %69 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @E1000_WUFC_MAG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @WAKE_MAGIC, align 4
  %82 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %83 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @WAKE_PHY, align 4
  %95 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %27, %93, %86
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
