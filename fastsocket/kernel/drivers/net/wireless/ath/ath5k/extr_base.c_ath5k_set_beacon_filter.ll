; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_set_beacon_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_set_beacon_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32 }

@AR5K_RX_FILTER_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_set_beacon_filter(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  store %struct.ath5k_hw* %9, %struct.ath5k_hw** %5, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %11 = call i32 @ath5k_hw_get_rx_filter(%struct.ath5k_hw* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @AR5K_RX_FILTER_BEACON, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @AR5K_RX_FILTER_BEACON, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ath5k_hw_set_rx_filter(%struct.ath5k_hw* %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @ath5k_hw_get_rx_filter(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_rx_filter(%struct.ath5k_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
