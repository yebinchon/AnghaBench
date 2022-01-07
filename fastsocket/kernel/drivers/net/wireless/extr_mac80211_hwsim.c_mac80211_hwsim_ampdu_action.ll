; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*, i32, i32*, i32)* @mac80211_hwsim_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %11, align 4
  switch i32 %16, label %33 [
    i32 131, label %17
    i32 130, label %24
    i32 129, label %24
    i32 128, label %24
    i32 132, label %31
    i32 134, label %32
    i32 133, label %32
  ]

17:                                               ; preds = %7
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %18, i32 %21, i32 %22)
  br label %36

24:                                               ; preds = %7, %7, %7
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %25, i32 %28, i32 %29)
  br label %36

31:                                               ; preds = %7
  br label %36

32:                                               ; preds = %7, %7
  br label %36

33:                                               ; preds = %7
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %32, %31, %24, %17
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
