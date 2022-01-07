; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_op_sta_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_op_sta_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wl12xx_vif = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mac80211 sta %d state=%d->%d\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32)* @wl12xx_op_sta_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_op_sta_state(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wl1271*, align 8
  %13 = alloca %struct.wl12xx_vif*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.wl1271*, %struct.wl1271** %16, align 8
  store %struct.wl1271* %17, %struct.wl1271** %12, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %19 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %18)
  store %struct.wl12xx_vif* %19, %struct.wl12xx_vif** %13, align 8
  %20 = load i32, i32* @DEBUG_MAC80211, align 4
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @wl1271_debug(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WLCORE_STATE_ON, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %14, align 4
  br label %56

41:                                               ; preds = %5
  %42 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %43 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %56

47:                                               ; preds = %41
  %48 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %49 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %13, align 8
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @wl12xx_update_sta_state(%struct.wl1271* %48, %struct.wl12xx_vif* %49, %struct.ieee80211_sta* %50, i32 %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %55 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %54)
  br label %56

56:                                               ; preds = %47, %46, %38
  %57 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_update_sta_state(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
