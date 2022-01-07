; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_set_cck_nil.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_set_cck_nil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ani_ofdm_level_entry = type { i64 }
%struct.ani_cck_level_entry = type { i64, i64 }
%struct.ath_hw = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ar5416AniState }
%struct.ar5416AniState = type { i64, i64, i64, i64 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"**** ccklevel %d=>%d, rssi=%d[lo=%d hi=%d]\0A\00", align 1
@ATH9K_ANI_RSSI_THR_LOW = common dso_local global i64 0, align 8
@ATH9K_ANI_RSSI_THR_HIGH = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI = common dso_local global i64 0, align 8
@ofdm_level_table = common dso_local global %struct.ani_ofdm_level_entry* null, align 8
@cck_level_table = common dso_local global %struct.ani_cck_level_entry* null, align 8
@ATH9K_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4
@ATH9K_ANI_MRC_CCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64, i32)* @ath9k_hw_set_cck_nil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_cck_nil(%struct.ath_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar5416AniState*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ani_ofdm_level_entry*, align 8
  %10 = alloca %struct.ani_cck_level_entry*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.ar5416AniState* %14, %struct.ar5416AniState** %7, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %8, align 8
  %17 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %18 = load i32, i32* @ANI, align 4
  %19 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %20 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = call i64 @BEACON_RSSI(%struct.ath_hw* %23)
  %25 = load i64, i64* @ATH9K_ANI_RSSI_THR_LOW, align 8
  %26 = load i32, i32* @ATH9K_ANI_RSSI_THR_HIGH, align 4
  %27 = call i32 @ath_dbg(%struct.ath_common* %17, i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22, i64 %24, i64 %25, i32 %26)
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %35 = call i64 @BEACON_RSSI(%struct.ath_hw* %34)
  %36 = load i64, i64* @ATH9K_ANI_RSSI_THR_LOW, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @ATH9K_ANI_CCK_MAX_LEVEL_LOW_RSSI, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %38, %33, %3
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %50 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** @ofdm_level_table, align 8
  %53 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %54 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %52, i64 %55
  store %struct.ani_ofdm_level_entry* %56, %struct.ani_ofdm_level_entry** %9, align 8
  %57 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** @cck_level_table, align 8
  %58 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %59 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %57, i64 %60
  store %struct.ani_cck_level_entry* %61, %struct.ani_cck_level_entry** %10, align 8
  %62 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %63 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %66 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %51
  %70 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %71 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %74 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %79 = load i32, i32* @ATH9K_ANI_FIRSTEP_LEVEL, align 4
  %80 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %81 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %78, i32 %79, i64 %82)
  br label %84

84:                                               ; preds = %77, %69, %51
  %85 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %86 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %90 = call i64 @AR_SREV_9485(%struct.ath_hw* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %94 = call i64 @AR_SREV_9565(%struct.ath_hw* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %88, %84
  br label %112

97:                                               ; preds = %92
  %98 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %99 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %102 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %107 = load i32, i32* @ATH9K_ANI_MRC_CCK, align 4
  %108 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %109 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %106, i32 %107, i64 %110)
  br label %112

112:                                              ; preds = %96, %105, %97
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64, i64, i64, i32) #1

declare dso_local i64 @BEACON_RSSI(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_control(%struct.ath_hw*, i32, i64) #1

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
