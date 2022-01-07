; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_deinit_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_deinit_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_deinit_ah(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %4 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %4, i32 0, i32 2
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %7)
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %10 = call i32 @ath5k_desc_free(%struct.ath5k_hw* %9)
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %12 = call i32 @ath5k_txq_release(%struct.ath5k_hw* %11)
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ath5k_hw_release_tx_queue(%struct.ath5k_hw* %13, i32 %16)
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %19 = call i32 @ath5k_unregister_leds(%struct.ath5k_hw* %18)
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %21 = call i32 @ath5k_sysfs_unregister(%struct.ath5k_hw* %20)
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %23 = call i32 @ath5k_hw_deinit(%struct.ath5k_hw* %22)
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.ath5k_hw* %27)
  ret void
}

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ath5k_desc_free(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_txq_release(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_release_tx_queue(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_unregister_leds(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_sysfs_unregister(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_deinit(%struct.ath5k_hw*) #1

declare dso_local i32 @free_irq(i32, %struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
