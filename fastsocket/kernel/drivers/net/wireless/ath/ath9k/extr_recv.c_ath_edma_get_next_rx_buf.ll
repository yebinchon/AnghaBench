; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_edma_get_next_rx_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_edma_get_next_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_buf = type { i32 }
%struct.ath_softc = type { i32 }
%struct.ath_rx_status = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath_buf* (%struct.ath_softc*, %struct.ath_rx_status*, i32)* @ath_edma_get_next_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath_buf* @ath_edma_get_next_rx_buf(%struct.ath_softc* %0, %struct.ath_rx_status* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_buf*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_rx_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_buf*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ath_buf* null, %struct.ath_buf** %8, align 8
  br label %9

9:                                                ; preds = %18, %3
  %10 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %13 = call i64 @ath_edma_get_buffers(%struct.ath_softc* %10, i32 %11, %struct.ath_rx_status* %12, %struct.ath_buf** %8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %17 = icmp ne %struct.ath_buf* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %9

19:                                               ; preds = %15
  %20 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  store %struct.ath_buf* %20, %struct.ath_buf** %4, align 8
  br label %22

21:                                               ; preds = %9
  store %struct.ath_buf* null, %struct.ath_buf** %4, align 8
  br label %22

22:                                               ; preds = %21, %19
  %23 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  ret %struct.ath_buf* %23
}

declare dso_local i64 @ath_edma_get_buffers(%struct.ath_softc*, i32, %struct.ath_rx_status*, %struct.ath_buf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
