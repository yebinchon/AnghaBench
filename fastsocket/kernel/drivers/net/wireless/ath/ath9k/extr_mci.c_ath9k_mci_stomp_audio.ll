; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_stomp_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mci.c_ath9k_mci_stomp_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_btcoex, %struct.ath_hw* }
%struct.ath_btcoex = type { i64, %struct.ath_mci_profile }
%struct.ath_mci_profile = type { i32, i32 }
%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_mci_stomp_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_mci_stomp_audio(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_btcoex*, align 8
  %5 = alloca %struct.ath_mci_profile*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 1
  %8 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  store %struct.ath_hw* %8, %struct.ath_hw** %3, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 0
  store %struct.ath_btcoex* %10, %struct.ath_btcoex** %4, align 8
  %11 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %12 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %11, i32 0, i32 1
  store %struct.ath_mci_profile* %12, %struct.ath_mci_profile** %5, align 8
  %13 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %5, align 8
  %14 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %5, align 8
  %19 = getelementptr inbounds %struct.ath_mci_profile, %struct.ath_mci_profile* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %37

23:                                               ; preds = %17, %1
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 25
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %31 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %37

32:                                               ; preds = %23
  %33 = load %struct.ath_btcoex*, %struct.ath_btcoex** %4, align 8
  %34 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %32, %29, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
