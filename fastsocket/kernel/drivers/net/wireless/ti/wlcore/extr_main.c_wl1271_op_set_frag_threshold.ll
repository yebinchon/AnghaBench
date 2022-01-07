; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_set_frag_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_set_frag_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32 }

@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"wl1271_op_set_frag_threshold failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @wl1271_op_set_frag_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_op_set_frag_threshold(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  store %struct.wl1271* %9, %struct.wl1271** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WLCORE_STATE_ON, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %42

24:                                               ; preds = %2
  %25 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %26 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %42

30:                                               ; preds = %24
  %31 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @wl1271_acx_frag_threshold(%struct.wl1271* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @wl1271_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %41 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %40)
  br label %42

42:                                               ; preds = %39, %29, %21
  %43 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_frag_threshold(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
