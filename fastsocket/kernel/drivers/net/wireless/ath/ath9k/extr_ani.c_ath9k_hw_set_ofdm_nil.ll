; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_set_ofdm_nil.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ani.c_ath9k_hw_set_ofdm_nil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ani_ofdm_level_entry = type { i64, i64, i32 }
%struct.ani_cck_level_entry = type { i64 }
%struct.ath_hw = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.ar5416AniState }
%struct.ar5416AniState = type { i64, i64, i64, i64, i32 }
%struct.ath_common = type { i32 }

@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"**** ofdmlevel %d=>%d, rssi=%d[lo=%d hi=%d]\0A\00", align 1
@ATH9K_ANI_RSSI_THR_LOW = common dso_local global i32 0, align 4
@ATH9K_ANI_RSSI_THR_HIGH = common dso_local global i64 0, align 8
@ofdm_level_table = common dso_local global %struct.ani_ofdm_level_entry* null, align 8
@cck_level_table = common dso_local global %struct.ani_cck_level_entry* null, align 8
@ATH9K_ANI_SPUR_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@ATH9K_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ATH9K_ANI_OFDM_WEAK_SIGNAL_DETECTION = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_DEF_LEVEL = common dso_local global i64 0, align 8
@ATH9K_ANI_OFDM_TRIG_HIGH = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_LOW_ABOVE_INI = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_HIGH_BELOW_INI = common dso_local global i32 0, align 4
@ATH9K_ANI_OFDM_TRIG_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i64, i32)* @ath9k_hw_set_ofdm_nil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_ofdm_nil(%struct.ath_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar5416AniState*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ani_ofdm_level_entry*, align 8
  %10 = alloca %struct.ani_cck_level_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.ar5416AniState* %15, %struct.ar5416AniState** %7, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %16)
  store %struct.ath_common* %17, %struct.ath_common** %8, align 8
  %18 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %19 = load i32, i32* @ANI, align 4
  %20 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %21 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = call i64 @BEACON_RSSI(%struct.ath_hw* %24)
  %26 = load i32, i32* @ATH9K_ANI_RSSI_THR_LOW, align 4
  %27 = load i64, i64* @ATH9K_ANI_RSSI_THR_HIGH, align 8
  %28 = call i32 @ath_dbg(%struct.ath_common* %18, i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23, i64 %25, i32 %26, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %34 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %3
  %36 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** @ofdm_level_table, align 8
  %37 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %38 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %36, i64 %39
  store %struct.ani_ofdm_level_entry* %40, %struct.ani_ofdm_level_entry** %9, align 8
  %41 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** @cck_level_table, align 8
  %42 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %43 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %41, i64 %44
  store %struct.ani_cck_level_entry* %45, %struct.ani_cck_level_entry** %10, align 8
  %46 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %47 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %50 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %35
  %54 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %55 = load i32, i32* @ATH9K_ANI_SPUR_IMMUNITY_LEVEL, align 4
  %56 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %57 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %54, i32 %55, i64 %58)
  br label %60

60:                                               ; preds = %53, %35
  %61 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %62 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %65 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  %69 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %70 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ani_cck_level_entry*, %struct.ani_cck_level_entry** %10, align 8
  %73 = getelementptr inbounds %struct.ani_cck_level_entry, %struct.ani_cck_level_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %78 = load i32, i32* @ATH9K_ANI_FIRSTEP_LEVEL, align 4
  %79 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %80 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %77, i32 %78, i64 %81)
  br label %83

83:                                               ; preds = %76, %68, %60
  %84 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %85 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %11, align 4
  %87 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %88 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %94 = call i64 @BEACON_RSSI(%struct.ath_hw* %93)
  %95 = load i64, i64* @ATH9K_ANI_RSSI_THR_HIGH, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %92, %83
  %99 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %100 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %106 = load i32, i32* @ATH9K_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %107 = load %struct.ani_ofdm_level_entry*, %struct.ani_ofdm_level_entry** %9, align 8
  %108 = getelementptr inbounds %struct.ani_ofdm_level_entry, %struct.ani_ofdm_level_entry* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = call i32 @ath9k_hw_ani_control(%struct.ath_hw* %105, i32 %106, i64 %110)
  br label %112

112:                                              ; preds = %104, %98
  %113 = load %struct.ar5416AniState*, %struct.ar5416AniState** %7, align 8
  %114 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ATH9K_ANI_OFDM_DEF_LEVEL, align 8
  %117 = icmp uge i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_HIGH, align 4
  %120 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %121 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_LOW_ABOVE_INI, align 4
  %124 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %125 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  br label %136

127:                                              ; preds = %112
  %128 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_HIGH_BELOW_INI, align 4
  %129 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %130 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @ATH9K_ANI_OFDM_TRIG_LOW, align 4
  %133 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %134 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  br label %136

136:                                              ; preds = %127, %118
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i64, i64, i32, i64) #1

declare dso_local i64 @BEACON_RSSI(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_ani_control(%struct.ath_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
