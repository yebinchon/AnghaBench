; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beaconq_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_beaconq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ath5k_txq_info = type { i32, i32, i32, i32 }

@AR5K_TXQ_FLAG_TXDESCINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TUNE_CWMAX = common dso_local global i32 0, align 4
@AR5K_TUNE_CWMIN = common dso_local global i32 0, align 4
@AR5K_TUNE_AIFS = common dso_local global i32 0, align 4
@AR5K_TX_QUEUE_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_beaconq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_beaconq_setup(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ath5k_txq_info, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %3, i32 0, i32 0
  %5 = load i32, i32* @AR5K_TXQ_FLAG_TXDESCINT_ENABLE, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %3, i32 0, i32 1
  %7 = load i32, i32* @AR5K_TUNE_CWMAX, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %3, i32 0, i32 2
  %9 = load i32, i32* @AR5K_TUNE_CWMIN, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %3, i32 0, i32 3
  %11 = load i32, i32* @AR5K_TUNE_AIFS, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %13 = load i32, i32* @AR5K_TX_QUEUE_BEACON, align 4
  %14 = call i32 @ath5k_hw_setup_tx_queue(%struct.ath5k_hw* %12, i32 %13, %struct.ath5k_txq_info* %3)
  ret i32 %14
}

declare dso_local i32 @ath5k_hw_setup_tx_queue(%struct.ath5k_hw*, i32, %struct.ath5k_txq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
