; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"down\00", align 1
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"mac80211 stop\00", align 1
@WL1251_STATE_ON = common dso_local global i64 0, align 8
@WL1251_STATE_OFF = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@MAX_BSS_TYPE = common dso_local global i32 0, align 4
@STATION_ACTIVE_MODE = common dso_local global i32 0, align 4
@WL1251_DEFAULT_POWER_LEVEL = common dso_local global i32 0, align 4
@WL1251_DEFAULT_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @wl1251_op_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_op_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.wl1251*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  store %struct.wl1251* %6, %struct.wl1251** %3, align 8
  %7 = call i32 @wl1251_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @DEBUG_MAC80211, align 4
  %9 = call i32 @wl1251_debug(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %11 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %10, i32 0, i32 5
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %14 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WL1251_STATE_ON, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %21 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %26 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %25, i32 0, i32 21
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ieee80211_scan_completed(i32 %27, i32 1)
  %29 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %30 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %29, i32 0, i32 1
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %1
  %32 = load i64, i64* @WL1251_STATE_OFF, align 8
  %33 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %34 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %36 = call i32 @wl1251_disable_interrupts(%struct.wl1251* %35)
  %37 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %38 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %37, i32 0, i32 5
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %41 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %40, i32 0, i32 20
  %42 = call i32 @cancel_work_sync(i32* %41)
  %43 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %44 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %43, i32 0, i32 19
  %45 = call i32 @cancel_work_sync(i32* %44)
  %46 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %47 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %46, i32 0, i32 18
  %48 = call i32 @cancel_delayed_work_sync(i32* %47)
  %49 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %50 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %49, i32 0, i32 5
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %53 = call i32 @wl1251_tx_flush(%struct.wl1251* %52)
  %54 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %55 = call i32 @wl1251_power_off(%struct.wl1251* %54)
  %56 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %57 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %56, i32 0, i32 17
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i32 @memset(i32 %58, i32 0, i32 %59)
  %61 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %62 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* @MAX_BSS_TYPE, align 4
  %64 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %65 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %64, i32 0, i32 16
  store i32 %63, i32* %65, align 8
  %66 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %67 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %66, i32 0, i32 15
  store i64 0, i64* %67, align 8
  %68 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %69 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %68, i32 0, i32 14
  store i64 0, i64* %69, align 8
  %70 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %71 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %70, i32 0, i32 13
  store i64 0, i64* %71, align 8
  %72 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %73 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %72, i32 0, i32 12
  store i64 0, i64* %73, align 8
  %74 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %75 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %74, i32 0, i32 11
  store i64 0, i64* %75, align 8
  %76 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %77 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %76, i32 0, i32 10
  store i64 0, i64* %77, align 8
  %78 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %79 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %78, i32 0, i32 3
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* @STATION_ACTIVE_MODE, align 4
  %81 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %82 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %84 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %83, i32 0, i32 4
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* @WL1251_DEFAULT_POWER_LEVEL, align 4
  %86 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %87 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  %88 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %89 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %88, i32 0, i32 7
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @WL1251_DEFAULT_CHANNEL, align 4
  %91 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %92 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 4
  %93 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %94 = call i32 @wl1251_debugfs_reset(%struct.wl1251* %93)
  %95 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %96 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %95, i32 0, i32 5
  %97 = call i32 @mutex_unlock(i32* %96)
  ret void
}

declare dso_local i32 @wl1251_info(i8*) #1

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_scan_completed(i32, i32) #1

declare dso_local i32 @wl1251_disable_interrupts(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @wl1251_tx_flush(%struct.wl1251*) #1

declare dso_local i32 @wl1251_power_off(%struct.wl1251*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wl1251_debugfs_reset(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
