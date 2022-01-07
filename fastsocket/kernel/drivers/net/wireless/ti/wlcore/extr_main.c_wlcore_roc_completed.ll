; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_roc_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_roc_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"roc complete\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wlcore_roc_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_roc_completed(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %4 = load i32, i32* @DEBUG_MAC80211, align 4
  %5 = call i32 @wl1271_debug(i32 %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %10 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WLCORE_STATE_ON, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %22 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %31

26:                                               ; preds = %20
  %27 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %28 = call i32 @__wlcore_roc_completed(%struct.wl1271* %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %30 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %29)
  br label %31

31:                                               ; preds = %26, %25, %17
  %32 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @__wlcore_roc_completed(%struct.wl1271*) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
