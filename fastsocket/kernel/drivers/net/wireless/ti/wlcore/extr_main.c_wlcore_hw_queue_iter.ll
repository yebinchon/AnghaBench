; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_hw_queue_iter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_hw_queue_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32* }
%struct.wlcore_hw_queue_iter_data = type { i32, i32, %struct.ieee80211_vif* }

@IEEE80211_INVAL_HW_QUEUE = common dso_local global i32 0, align 4
@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @wlcore_hw_queue_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_hw_queue_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.wlcore_hw_queue_iter_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wlcore_hw_queue_iter_data*
  store %struct.wlcore_hw_queue_iter_data* %9, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IEEE80211_INVAL_HW_QUEUE, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.wlcore_hw_queue_iter_data*, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %23 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %28 = load %struct.wlcore_hw_queue_iter_data*, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %29 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %28, i32 0, i32 2
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %29, align 8
  %31 = icmp eq %struct.ieee80211_vif* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %21
  %33 = load %struct.wlcore_hw_queue_iter_data*, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %34 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %47

35:                                               ; preds = %26
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NUM_TX_QUEUES, align 4
  %42 = sdiv i32 %40, %41
  %43 = load %struct.wlcore_hw_queue_iter_data*, %struct.wlcore_hw_queue_iter_data** %7, align 8
  %44 = getelementptr inbounds %struct.wlcore_hw_queue_iter_data, %struct.wlcore_hw_queue_iter_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__set_bit(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %35, %32, %20
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
