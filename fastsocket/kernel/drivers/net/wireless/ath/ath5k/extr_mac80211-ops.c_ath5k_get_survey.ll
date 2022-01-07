; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_get_survey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.ath5k_hw* }
%struct.ieee80211_conf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ath5k_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.survey_info = type { i32, i32, i32 }
%struct.ath_common = type { i32, i32, %struct.ath_cycle_counters }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME_RX = common dso_local global i32 0, align 4
@SURVEY_INFO_CHANNEL_TIME_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @ath5k_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.ath5k_hw*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca %struct.ath_cycle_counters*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %14, align 8
  store %struct.ath5k_hw* %15, %struct.ath5k_hw** %8, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  store %struct.ieee80211_conf* %17, %struct.ieee80211_conf** %9, align 8
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %19 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %18)
  store %struct.ath_common* %19, %struct.ath_common** %10, align 8
  %20 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %21 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %20, i32 0, i32 2
  store %struct.ath_cycle_counters* %21, %struct.ath_cycle_counters** %11, align 8
  %22 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %23 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1000
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %114

31:                                               ; preds = %3
  %32 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %33 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %32, i32 0, i32 1
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %36 = call i32 @ath_hw_cycle_counters_update(%struct.ath_common* %35)
  %37 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %11, align 8
  %38 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ugt i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %31
  %42 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %11, align 8
  %43 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = udiv i32 %44, %45
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %48 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, %46
  store i32 %51, i32* %49, align 4
  %52 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %11, align 8
  %53 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = udiv i32 %54, %55
  %57 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %58 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %11, align 8
  %63 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = udiv i32 %64, %65
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %68 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %11, align 8
  %73 = getelementptr inbounds %struct.ath_cycle_counters, %struct.ath_cycle_counters* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %12, align 4
  %76 = udiv i32 %74, %75
  %77 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %78 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, %76
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %41, %31
  %83 = load %struct.ath_cycle_counters*, %struct.ath_cycle_counters** %11, align 8
  %84 = call i32 @memset(%struct.ath_cycle_counters* %83, i32 0, i32 16)
  %85 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %86 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock_bh(i32* %86)
  %88 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %89 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %90 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %89, i32 0, i32 1
  %91 = call i32 @memcpy(%struct.survey_info* %88, %struct.TYPE_4__* %90, i32 12)
  %92 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %93 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %97 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %99 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %102 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %104 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME_BUSY, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME_RX, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SURVEY_INFO_CHANNEL_TIME_TX, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %113 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %82, %28
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath_hw_cycle_counters_update(%struct.ath_common*) #1

declare dso_local i32 @memset(%struct.ath_cycle_counters*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @memcpy(%struct.survey_info*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
