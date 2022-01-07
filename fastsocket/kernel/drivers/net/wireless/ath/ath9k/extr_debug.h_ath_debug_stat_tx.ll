; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_debug.h_ath_debug_stat_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_debug.h_ath_debug_stat_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_buf = type { i32 }
%struct.ath_tx_status = type { i32 }
%struct.ath_txq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_buf*, %struct.ath_tx_status*, %struct.ath_txq*, i32)* @ath_debug_stat_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_debug_stat_tx(%struct.ath_softc* %0, %struct.ath_buf* %1, %struct.ath_tx_status* %2, %struct.ath_txq* %3, i32 %4) #0 {
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_buf*, align 8
  %8 = alloca %struct.ath_tx_status*, align 8
  %9 = alloca %struct.ath_txq*, align 8
  %10 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %6, align 8
  store %struct.ath_buf* %1, %struct.ath_buf** %7, align 8
  store %struct.ath_tx_status* %2, %struct.ath_tx_status** %8, align 8
  store %struct.ath_txq* %3, %struct.ath_txq** %9, align 8
  store i32 %4, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
