; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beaconq_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beaconq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32*, %struct.ath_hw* }
%struct.ath_hw = type { i64, i64 }
%struct.ath9k_tx_queue_info = type { i32, i32, i64 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_AC_BE = common dso_local global i64 0, align 8
@ATH9K_SLOT_TIME_20 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unable to update beacon queue %u!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_beaconq_config(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_tx_queue_info, align 8
  %5 = alloca %struct.ath9k_tx_queue_info, align 8
  %6 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 2
  %9 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  store %struct.ath_hw* %9, %struct.ath_hw** %3, align 8
  %10 = call i32 @memset(%struct.ath9k_tx_queue_info* %4, i32 0, i32 16)
  %11 = call i32 @memset(%struct.ath9k_tx_queue_info* %5, i32 0, i32 16)
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %12, i32 %15, %struct.ath9k_tx_queue_info* %4)
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %17, i32 0, i32 2
  %19 = load %struct.ath_hw*, %struct.ath_hw** %18, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 2
  store i64 0, i64* %27, align 8
  br label %69

28:                                               ; preds = %1
  %29 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %30 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %29, i32 0, i32 2
  %31 = load %struct.ath_hw*, %struct.ath_hw** %30, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %28
  %37 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %38 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @IEEE80211_AC_BE, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %43, i32 %44, %struct.ath9k_tx_queue_info* %5)
  %46 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ATH9K_SLOT_TIME_20, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 2, %56
  %58 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  br label %64

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 4, %61
  %63 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %5, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %4, i32 0, i32 2
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %28
  br label %69

69:                                               ; preds = %68, %24
  %70 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %71 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %72 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ath9k_hw_set_txq_props(%struct.ath_hw* %70, i32 %73, %struct.ath9k_tx_queue_info* %4)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %78 = call i32 @ath9k_hw_common(%struct.ath_hw* %77)
  %79 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %80 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ath_err(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %89

83:                                               ; preds = %69
  %84 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %85 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %86 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ath9k_hw_resettxqueue(%struct.ath_hw* %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %76
  ret void
}

declare dso_local i32 @memset(%struct.ath9k_tx_queue_info*, i32, i32) #1

declare dso_local i32 @ath9k_hw_get_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath9k_hw_set_txq_props(%struct.ath_hw*, i32, %struct.ath9k_tx_queue_info*) #1

declare dso_local i32 @ath_err(i32, i8*, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_resettxqueue(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
