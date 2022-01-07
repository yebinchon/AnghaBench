; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.igb_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WAKE_ARP = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IGB_FLAG_WOL_SUPPORTED = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@E1000_WUFC_EX = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@E1000_WUFC_BC = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@E1000_WUFC_MAG = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@E1000_WUFC_LNKC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @igb_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.igb_adapter* %8, %struct.igb_adapter** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAKE_ARP, align 4
  %13 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %114

20:                                               ; preds = %2
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IGB_FLAG_WOL_SUPPORTED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %20
  %28 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i32 [ %34, %32 ], [ 0, %35 ]
  store i32 %37, i32* %3, align 4
  br label %114

38:                                               ; preds = %20
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WAKE_UCAST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load i32, i32* @E1000_WUFC_EX, align 4
  %49 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %38
  %54 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @WAKE_MCAST, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* @E1000_WUFC_MC, align 4
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @WAKE_BCAST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @E1000_WUFC_BC, align 4
  %75 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WAKE_MAGIC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @E1000_WUFC_MAG, align 4
  %88 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %79
  %93 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @WAKE_PHY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load i32, i32* @E1000_WUFC_LNKC, align 4
  %101 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %102 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %92
  %106 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %107 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %111 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @device_set_wakeup_enable(i32* %109, i32 %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %36, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
