; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_queue_recovery_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_queue_recovery_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, i32, i32 }

@WL1271_FLAG_INTENDED_FW_RECOVERY = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WLCORE_STATE_RESTARTING = common dso_local global i64 0, align 8
@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl12xx_queue_recovery_work(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %3 = load i32, i32* @WL1271_FLAG_INTENDED_FW_RECOVERY, align 4
  %4 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %5 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %4, i32 0, i32 3
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WLCORE_STATE_ON, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load i64, i64* @WLCORE_STATE_RESTARTING, align 8
  %18 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %21 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 3
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %25 = call i32 @wlcore_disable_interrupts_nosync(%struct.wl1271* %24)
  %26 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 1
  %31 = call i32 @ieee80211_queue_work(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wlcore_disable_interrupts_nosync(%struct.wl1271*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
