; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_get_antenna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_get_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32*, i32*)* @ath5k_get_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_get_antenna(%struct.ieee80211_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath5k_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %9, align 8
  store %struct.ath5k_hw* %10, %struct.ath5k_hw** %7, align 8
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %23 [
    i32 129, label %14
    i32 128, label %17
    i32 130, label %20
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  store i32 1, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 1, i32* %16, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  store i32 2, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 2, i32* %19, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  store i32 3, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 3, i32* %22, align 4
  br label %23

23:                                               ; preds = %3, %20, %17, %14
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
