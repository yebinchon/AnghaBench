; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_spectral_scan_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_spectral_scan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, %struct.TYPE_3__, %struct.ath_hw* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.ath_hw*, %struct.TYPE_3__*)*, i32 }

@.str = private unnamed_addr constant [52 x i8] c"spectrum analyzer not implemented on this hardware\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_spectral_scan_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.ath_softc*, %struct.ath_softc** %10, align 8
  store %struct.ath_softc* %11, %struct.ath_softc** %6, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 2
  %14 = load %struct.ath_hw*, %struct.ath_hw** %13, align 8
  store %struct.ath_hw* %14, %struct.ath_hw** %7, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %8, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %18 = call %struct.TYPE_4__* @ath9k_hw_ops(%struct.ath_hw* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %24 = call i32 @ath_err(%struct.ath_common* %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %62

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %45 [
    i32 129, label %27
    i32 131, label %31
    i32 130, label %38
    i32 128, label %38
  ]

27:                                               ; preds = %25
  %28 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %46

31:                                               ; preds = %25
  %32 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %46

38:                                               ; preds = %25, %25
  %39 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %43 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %46

45:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %62

46:                                               ; preds = %38, %31, %27
  %47 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %48 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %47)
  %49 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %50 = call %struct.TYPE_4__* @ath9k_hw_ops(%struct.ath_hw* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (%struct.ath_hw*, %struct.TYPE_3__*)*, i32 (%struct.ath_hw*, %struct.TYPE_3__*)** %51, align 8
  %53 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %54 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %55 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %54, i32 0, i32 1
  %56 = call i32 %52(%struct.ath_hw* %53, %struct.TYPE_3__* %55)
  %57 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %58 = call i32 @ath9k_ps_restore(%struct.ath_softc* %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %61 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %46, %45, %22
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local %struct.TYPE_4__* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
