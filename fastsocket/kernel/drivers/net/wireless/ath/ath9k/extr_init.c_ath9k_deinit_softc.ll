; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_deinit_softc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_deinit_softc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_3__ = type { i32* }

@ATH9K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_deinit_softc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_deinit_softc(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %5 = call i32 @ath9k_deinit_btcoex(%struct.ath_softc* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @ATH_TXQ_SETUP(%struct.ath_softc* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @ath_tx_cleanupq(%struct.ath_softc* %16, i32* %23)
  br label %25

25:                                               ; preds = %15, %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ath9k_hw_deinit(i32 %32)
  %34 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %42, align 8
  %44 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 %43(%struct.TYPE_4__* %46)
  br label %48

48:                                               ; preds = %38, %29
  %49 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %50 = call i32 @ath9k_eeprom_release(%struct.ath_softc* %49)
  ret void
}

declare dso_local i32 @ath9k_deinit_btcoex(%struct.ath_softc*) #1

declare dso_local i64 @ATH_TXQ_SETUP(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_tx_cleanupq(%struct.ath_softc*, i32*) #1

declare dso_local i32 @ath9k_hw_deinit(i32) #1

declare dso_local i32 @ath9k_eeprom_release(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
