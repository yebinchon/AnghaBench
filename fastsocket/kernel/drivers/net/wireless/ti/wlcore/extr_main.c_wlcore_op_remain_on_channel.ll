; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32, %struct.ieee80211_vif*, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mac80211 roc %d (%d)\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WL12XX_MAX_ROLES = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel*, i32, i32)* @wlcore_op_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_op_remain_on_channel(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wl12xx_vif*, align 8
  %12 = alloca %struct.wl1271*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %16 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %15)
  store %struct.wl12xx_vif* %16, %struct.wl12xx_vif** %11, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 0
  %19 = load %struct.wl1271*, %struct.wl1271** %18, align 8
  store %struct.wl1271* %19, %struct.wl1271** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ieee80211_frequency_to_channel(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @DEBUG_MAC80211, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wl1271_debug(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WLCORE_STATE_ON, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  br label %93

42:                                               ; preds = %5
  %43 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 3
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %44, align 8
  %46 = icmp ne %struct.ieee80211_vif* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %52 = call i64 @find_first_bit(i32 %50, i64 %51)
  %53 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %54 = icmp slt i64 %52, %53
  br label %55

55:                                               ; preds = %47, %42
  %56 = phi i1 [ true, %42 ], [ %54, %47 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  br label %93

63:                                               ; preds = %55
  %64 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %65 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %93

69:                                               ; preds = %63
  %70 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %71 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %73 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @wl12xx_start_dev(%struct.wl1271* %70, %struct.wl12xx_vif* %71, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %90

80:                                               ; preds = %69
  %81 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %82 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 3
  store %struct.ieee80211_vif* %81, %struct.ieee80211_vif** %83, align 8
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %85 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %86 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %85, i32 0, i32 2
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @msecs_to_jiffies(i32 %87)
  %89 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %84, i32* %86, i32 %88)
  br label %90

90:                                               ; preds = %80, %79
  %91 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %92 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %91)
  br label %93

93:                                               ; preds = %90, %68, %60, %41
  %94 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %95 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %14, align 4
  ret i32 %97
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_start_dev(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
