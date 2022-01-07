; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beaconq_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beaconq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.ath_hw* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ath_txq** }
%struct.ath_txq = type { i32 }
%struct.ath_hw = type { i64, i64 }
%struct.ath_common = type { i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@IEEE80211_AC_BE = common dso_local global i64 0, align 8
@ATH9K_SLOT_TIME_20 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Unable to update h/w beacon queue parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_beaconq_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beaconq_config(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ath9k_tx_queue_info, align 8
  %6 = alloca %struct.ath9k_tx_queue_info, align 8
  %7 = alloca %struct.ath_txq*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 2
  %10 = load %struct.ath_hw*, %struct.ath_hw** %9, align 8
  store %struct.ath_hw* %10, %struct.ath_hw** %3, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %13, i32 %17, %struct.ath9k_tx_queue_info* %5)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %20, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 2
  store i64 0, i64* %29, align 8
  br label %65

30:                                               ; preds = %1
  %31 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.ath_txq**, %struct.ath_txq*** %33, align 8
  %35 = load i64, i64* @IEEE80211_AC_BE, align 8
  %36 = getelementptr inbounds %struct.ath_txq*, %struct.ath_txq** %34, i64 %35
  %37 = load %struct.ath_txq*, %struct.ath_txq** %36, align 8
  store %struct.ath_txq* %37, %struct.ath_txq** %7, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = load %struct.ath_txq*, %struct.ath_txq** %7, align 8
  %40 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %38, i32 %41, %struct.ath9k_tx_queue_info* %6)
  %43 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ATH9K_SLOT_TIME_20, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 2, %53
  %55 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  br label %61

56:                                               ; preds = %30
  %57 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 4, %58
  %60 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %6, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 2
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %26
  %66 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %67 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ath9k_hw_set_txq_props(%struct.ath_hw* %66, i32 %70, %struct.ath9k_tx_queue_info* %5)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %75 = call i32 @ath_err(%struct.ath_common* %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %83

76:                                               ; preds = %65
  %77 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %78 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ath9k_hw_resettxqueue(%struct.ath_hw* %77, i32 %81)
  br label %83

83:                                               ; preds = %76, %73
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_get_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath9k_hw_set_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_hw_resettxqueue(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
