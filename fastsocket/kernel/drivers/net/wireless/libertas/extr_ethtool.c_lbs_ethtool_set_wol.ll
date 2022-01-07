; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_ethtool.c_lbs_ethtool_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_ethtool.c_lbs_ethtool_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.lbs_private* }
%struct.lbs_private = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.wol_config = type { i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EHS_WAKE_ON_UNICAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_MULTICAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_BROADCAST_DATA = common dso_local global i32 0, align 4
@EHS_WAKE_ON_MAC_EVENT = common dso_local global i32 0, align 4
@EHS_REMOVE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @lbs_ethtool_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_ethtool_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.lbs_private*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  store %struct.lbs_private* %10, %struct.lbs_private** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WAKE_UCAST, align 4
  %15 = load i32, i32* @WAKE_MCAST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WAKE_BCAST, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WAKE_PHY, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %13, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %84

27:                                               ; preds = %2
  %28 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WAKE_UCAST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @EHS_WAKE_ON_UNICAST_DATA, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WAKE_MCAST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @EHS_WAKE_ON_MULTICAST_DATA, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @WAKE_BCAST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @EHS_WAKE_ON_BROADCAST_DATA, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @WAKE_PHY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @EHS_WAKE_ON_MAC_EVENT, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @EHS_REMOVE_WAKEUP, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @lbs_host_sleep_cfg(%struct.lbs_private* %81, i32 %82, %struct.wol_config* null)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %24
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @lbs_host_sleep_cfg(%struct.lbs_private*, i32, %struct.wol_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
