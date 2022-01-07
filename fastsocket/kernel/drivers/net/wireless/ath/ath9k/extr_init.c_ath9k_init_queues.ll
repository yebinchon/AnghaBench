; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@ATH9K_TX_QUEUE_CAB = common dso_local global i32 0, align 4
@ATH_CABQ_READY_TIME = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@ATH9K_TX_QUEUE_DATA = common dso_local global i32 0, align 4
@ATH_MAX_QDEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath9k_init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_queues(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @ath9k_hw_beaconq_setup(i32 %6)
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %12 = load i32, i32* @ATH9K_TX_QUEUE_CAB, align 4
  %13 = call i8* @ath_txq_setup(%struct.ath_softc* %11, i32 %12, i32 0)
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load i32, i32* @ATH_CABQ_READY_TIME, align 4
  %18 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %22 = call i32 @ath_cabq_update(%struct.ath_softc* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %58, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %29 = load i32, i32* @ATH9K_TX_QUEUE_DATA, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i8* @ath_txq_setup(%struct.ath_softc* %28, i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_6__*
  %33 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %38
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %40, i32* %49, align 4
  %50 = load i32, i32* @ATH_MAX_QDEPTH, align 4
  %51 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %52 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %50, i32* %57, align 4
  br label %58

58:                                               ; preds = %27
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %23

61:                                               ; preds = %23
  ret i32 0
}

declare dso_local i32 @ath9k_hw_beaconq_setup(i32) #1

declare dso_local i8* @ath_txq_setup(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath_cabq_update(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
