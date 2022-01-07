; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32, i32, i32 }

@ATH_STAT_INVALID = common dso_local global i32 0, align 4
@ATH5K_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"putting device to sleep\0A\00", align 1
@ATH_STAT_STARTED = common dso_local global i32 0, align 4
@ath5k_modparam_no_hw_rfkill_switch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %6, align 8
  store %struct.ath5k_hw* %7, %struct.ath5k_hw** %3, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %12 = call i32 @ath5k_stop_locked(%struct.ath5k_hw* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @ATH_STAT_INVALID, align 4
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @test_bit(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %24 = call i32 @ath5k_hw_on_hold(%struct.ath5k_hw* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %26 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %27 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %25, i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %15, %1
  %29 = call i32 (...) @mmiowb()
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 2
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %34 = call i32 @ath5k_stop_tasklets(%struct.ath5k_hw* %33)
  %35 = load i32, i32* @ATH_STAT_STARTED, align 4
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clear_bit(i32 %35, i32 %38)
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %40, i32 0, i32 0
  %42 = call i32 @cancel_delayed_work_sync(i32* %41)
  %43 = load i32, i32* @ath5k_modparam_no_hw_rfkill_switch, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %28
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %47 = call i32 @ath5k_rfkill_hw_stop(%struct.ath5k_hw* %46)
  br label %48

48:                                               ; preds = %45, %28
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath5k_stop_locked(%struct.ath5k_hw*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ath5k_hw_on_hold(%struct.ath5k_hw*) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath5k_stop_tasklets(%struct.ath5k_hw*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @ath5k_rfkill_hw_stop(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
