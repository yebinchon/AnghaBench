; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_stop_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, i32, i32 }

@ATH5K_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"invalid %u\0A\00", align 1
@ATH_STAT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_stop_locked(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %3 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %4 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %5 = load i32, i32* @ATH_STAT_INVALID, align 4
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @test_bit(i32 %5, i32 %8)
  %10 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %3, i32 %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ieee80211_stop_queues(i32 %13)
  %15 = load i32, i32* @ATH_STAT_INVALID, align 4
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %1
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %23 = call i32 @ath5k_led_off(%struct.ath5k_hw* %22)
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %25 = call i32 @ath5k_hw_set_imr(%struct.ath5k_hw* %24, i32 0)
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @synchronize_irq(i32 %28)
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %31 = call i32 @ath5k_rx_stop(%struct.ath5k_hw* %30)
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %33 = call i32 @ath5k_hw_dma_stop(%struct.ath5k_hw* %32)
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %35 = call i32 @ath5k_drain_tx_buffs(%struct.ath5k_hw* %34)
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %37 = call i32 @ath5k_hw_phy_disable(%struct.ath5k_hw* %36)
  br label %38

38:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @ath5k_led_off(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_set_imr(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @ath5k_rx_stop(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_dma_stop(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_drain_tx_buffs(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_phy_disable(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
