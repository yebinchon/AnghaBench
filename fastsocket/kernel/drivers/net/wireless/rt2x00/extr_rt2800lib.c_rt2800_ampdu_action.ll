; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.rt2x00_sta = type { i64 }
%struct.rt2x00_dev = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown AMPDU action\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rt2x00_sta*, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.rt2x00_sta*
  store %struct.rt2x00_sta* %21, %struct.rt2x00_sta** %16, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.rt2x00_sta*, %struct.rt2x00_sta** %16, align 8
  %23 = getelementptr inbounds %struct.rt2x00_sta, %struct.rt2x00_sta* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %53

27:                                               ; preds = %7
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %45 [
    i32 134, label %29
    i32 133, label %29
    i32 131, label %30
    i32 130, label %37
    i32 129, label %37
    i32 128, label %37
    i32 132, label %44
  ]

29:                                               ; preds = %27, %27
  br label %51

30:                                               ; preds = %27
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %31, i32 %34, i32 %35)
  br label %51

37:                                               ; preds = %27, %27, %27
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %38, i32 %41, i32 %42)
  br label %51

44:                                               ; preds = %27
  br label %51

45:                                               ; preds = %27
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.rt2x00_dev*
  %50 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %44, %37, %30, %29
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %26
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
