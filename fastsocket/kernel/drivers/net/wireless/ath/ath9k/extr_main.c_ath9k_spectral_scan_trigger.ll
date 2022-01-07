; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_spectral_scan_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_spectral_scan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*)* }

@.str = private unnamed_addr constant [52 x i8] c"spectrum analyzer not implemented on this hardware\0A\00", align 1
@ATH9K_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@ATH9K_RX_FILTER_PHYERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_spectral_scan_trigger(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  store %struct.ath_softc* %9, %struct.ath_softc** %3, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  store %struct.ath_hw* %12, %struct.ath_hw** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %13)
  store %struct.ath_common* %14, %struct.ath_common** %5, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call %struct.TYPE_2__* @ath9k_hw_ops(%struct.ath_hw* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %17, align 8
  %19 = icmp ne i32 (%struct.ath_hw*)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %22 = call i32 @ath_err(%struct.ath_common* %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %27 = call i32 @ath9k_hw_getrxfilter(%struct.ath_hw* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ATH9K_RX_FILTER_PHYRADAR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ATH9K_RX_FILTER_PHYERR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @ath9k_hw_setrxfilter(%struct.ath_hw* %28, i32 %33)
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %36 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ath9k_spectral_scan_config(%struct.ieee80211_hw* %35, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %41 = call %struct.TYPE_2__* @ath9k_hw_ops(%struct.ath_hw* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %42, align 8
  %44 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %45 = call i32 %43(%struct.ath_hw* %44)
  %46 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %47 = call i32 @ath9k_ps_restore(%struct.ath_softc* %46)
  br label %48

48:                                               ; preds = %23, %20
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local %struct.TYPE_2__* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_getrxfilter(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_setrxfilter(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_spectral_scan_config(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
