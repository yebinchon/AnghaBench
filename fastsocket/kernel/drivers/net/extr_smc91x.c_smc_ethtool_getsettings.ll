; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc91x.c_smc_ethtool_getsettings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc91x.c_smc_ethtool_getsettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.smc_local = type { i64, i32, i32, i32, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@TCR_SWFDUP = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @smc_ethtool_getsettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_ethtool_getsettings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.smc_local*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.smc_local* @netdev_priv(%struct.net_device* %7)
  store %struct.smc_local* %8, %struct.smc_local** %5, align 8
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %14 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %19 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %22 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %21, i32 0, i32 4
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %24 = call i32 @mii_ethtool_gset(i32* %22, %struct.ethtool_cmd* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %26 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %25, i32 0, i32 3
  %27 = call i32 @spin_unlock_irq(i32* %26)
  br label %79

28:                                               ; preds = %2
  %29 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %30 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SUPPORTED_TP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SUPPORTED_AUI, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %39 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load i32, i32* @SPEED_10, align 4
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  br label %56

46:                                               ; preds = %28
  %47 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %48 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 100
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @SPEED_100, align 4
  %53 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* @AUTONEG_DISABLE, align 4
  %58 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @XCVR_INTERNAL, align 4
  %61 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.smc_local*, %struct.smc_local** %5, align 8
  %66 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TCR_SWFDUP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i32, i32* @DUPLEX_FULL, align 4
  br label %75

73:                                               ; preds = %56
  %74 = load i32, i32* @DUPLEX_HALF, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %17
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.smc_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
