; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_prepare_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath_prepare_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i64, i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_prepare_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_prepare_reset(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 3
  %7 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  store %struct.ath_hw* %7, %struct.ath_hw** %3, align 8
  store i32 1, i32* %4, align 4
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ieee80211_stop_queues(i32 %10)
  %12 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = call i32 @ath_stop_ani(%struct.ath_softc* %14)
  %16 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = call i32 @ath9k_debug_samp_bb_mac(%struct.ath_softc* %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = call i32 @ath9k_hw_disable_interrupts(%struct.ath_hw* %21)
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = call i32 @ath_drain_all_txq(%struct.ath_softc* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %29 = call i32 @ath_stoprecv(%struct.ath_softc* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i32 @ath_stop_ani(%struct.ath_softc*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ath9k_debug_samp_bb_mac(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_disable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath_drain_all_txq(%struct.ath_softc*) #1

declare dso_local i32 @ath_stoprecv(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
