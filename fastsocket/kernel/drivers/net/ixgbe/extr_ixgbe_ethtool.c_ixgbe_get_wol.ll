; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.ixgbe_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@IXGBE_WUFC_EX = common dso_local global i32 0, align 4
@IXGBE_WUFC_MC = common dso_local global i32 0, align 4
@IXGBE_WUFC_BC = common dso_local global i32 0, align 4
@IXGBE_WUFC_MAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @ixgbe_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ixgbe_adapter* %7, %struct.ixgbe_adapter** %5, align 8
  %8 = load i32, i32* @WAKE_UCAST, align 4
  %9 = load i32, i32* @WAKE_MCAST, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WAKE_BCAST, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WAKE_MAGIC, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %20 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %21 = call i64 @ixgbe_wol_exclusion(%struct.ixgbe_adapter* %19, %struct.ethtool_wolinfo* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @device_can_wakeup(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %2
  br label %83

31:                                               ; preds = %23
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IXGBE_WUFC_EX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @WAKE_UCAST, align 4
  %40 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IXGBE_WUFC_MC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @WAKE_MCAST, align 4
  %53 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IXGBE_WUFC_BC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @WAKE_BCAST, align 4
  %66 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IXGBE_WUFC_MAG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @WAKE_MAGIC, align 4
  %79 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %80 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %30, %77, %70
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ixgbe_wol_exclusion(%struct.ixgbe_adapter*, %struct.ethtool_wolinfo*) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
