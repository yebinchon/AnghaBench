; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, i32, i32, %struct.pch_gbe_hw, %struct.net_device* }
%struct.pch_gbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"right now = %ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ETHTOOL_GSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ethtool get setting Error\0A\00", align 1
@PCH_GBE_WATCHDOG_PERIOD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Link is Up %d Mbps %s-Duplex\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @pch_gbe_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_watchdog(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pch_gbe_hw*, align 8
  %6 = alloca %struct.ethtool_cmd, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.pch_gbe_adapter*
  store %struct.pch_gbe_adapter* %8, %struct.pch_gbe_adapter** %3, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 4
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %12, i32 0, i32 3
  store %struct.pch_gbe_hw* %13, %struct.pch_gbe_hw** %5, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %17 = call i32 @pch_gbe_update_stats(%struct.pch_gbe_adapter* %16)
  %18 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %18, i32 0, i32 1
  %20 = call i64 @mii_link_ok(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i64 @netif_carrier_ok(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %94, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 1
  %29 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %29, i32* %28, align 8
  %30 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %35, i32 0, i32 1
  %37 = call i64 @mii_ethtool_gset(i32* %36, %struct.ethtool_cmd* %6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %26
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %41, i32 0, i32 0
  %43 = load i64, i64* @jiffies, align 8
  %44 = load i64, i64* @PCH_GBE_WATCHDOG_PERIOD, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @round_jiffies(i64 %45)
  %47 = call i32 @mod_timer(i32* %42, i32 %46)
  br label %127

48:                                               ; preds = %26
  %49 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %6)
  %50 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %59 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %60 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %64 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @pch_gbe_set_rgmii_ctrl(%struct.pch_gbe_adapter* %58, i32 %62, i64 %66)
  %68 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %69 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %70 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %74 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @pch_gbe_set_mode(%struct.pch_gbe_adapter* %68, i32 %72, i64 %76)
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DUPLEX_FULL, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %89 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %82, i8* %88)
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @netif_carrier_on(%struct.net_device* %90)
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = call i32 @netif_wake_queue(%struct.net_device* %92)
  br label %119

94:                                               ; preds = %22, %1
  %95 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %95, i32 0, i32 1
  %97 = call i64 @mii_link_ok(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %94
  %100 = load %struct.net_device*, %struct.net_device** %4, align 8
  %101 = call i64 @netif_carrier_ok(%struct.net_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @SPEED_10, align 4
  %107 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %108 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 8
  %110 = load i64, i64* @DUPLEX_HALF, align 8
  %111 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %112 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = call i32 @netif_carrier_off(%struct.net_device* %114)
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = call i32 @netif_stop_queue(%struct.net_device* %116)
  br label %118

118:                                              ; preds = %103, %99, %94
  br label %119

119:                                              ; preds = %118, %48
  %120 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %120, i32 0, i32 0
  %122 = load i64, i64* @jiffies, align 8
  %123 = load i64, i64* @PCH_GBE_WATCHDOG_PERIOD, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @round_jiffies(i64 %124)
  %126 = call i32 @mod_timer(i32* %121, i32 %125)
  br label %127

127:                                              ; preds = %119, %39
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @pch_gbe_update_stats(%struct.pch_gbe_adapter*) #1

declare dso_local i64 @mii_link_ok(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @pch_gbe_set_rgmii_ctrl(%struct.pch_gbe_adapter*, i32, i64) #1

declare dso_local i32 @pch_gbe_set_mode(%struct.pch_gbe_adapter*, i32, i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
