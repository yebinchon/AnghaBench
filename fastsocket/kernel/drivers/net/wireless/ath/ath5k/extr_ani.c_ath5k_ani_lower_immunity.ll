; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_lower_immunity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_ani.c_ath5k_ani_lower_immunity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32 }
%struct.ath5k_ani_state = type { i64, i64, i64, i32 }

@ATH5K_DEBUG_ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"lower immunity\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@ATH5K_ANI_RSSI_THR_HIGH = common dso_local global i32 0, align 4
@ATH5K_ANI_RSSI_THR_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ath5k_ani_state*)* @ath5k_ani_lower_immunity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_ani_lower_immunity(%struct.ath5k_hw* %0, %struct.ath5k_ani_state* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ath5k_ani_state*, align 8
  %5 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ath5k_ani_state* %1, %struct.ath5k_ani_state** %4, align 8
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %6, i32 0, i32 1
  %8 = call i32 @ewma_read(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = load i32, i32* @ATH5K_DEBUG_ANI, align 4
  %11 = call i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw* %9, i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %19 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %24 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %25 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %23, i64 %27)
  br label %99

29:                                               ; preds = %17
  br label %75

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ATH5K_ANI_RSSI_THR_HIGH, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %74

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ATH5K_ANI_RSSI_THR_LOW, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %41 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %46 = call i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw* %45, i32 1)
  br label %99

47:                                               ; preds = %39
  %48 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %49 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %54 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %55 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %53, i64 %57)
  br label %99

59:                                               ; preds = %47
  br label %73

60:                                               ; preds = %35
  %61 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %62 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %67 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %68 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 1
  %71 = call i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw* %66, i64 %70)
  br label %99

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %73, %34
  br label %75

75:                                               ; preds = %74, %29
  %76 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %77 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %82 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %83 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  %86 = call i32 @ath5k_ani_set_spur_immunity_level(%struct.ath5k_hw* %81, i64 %85)
  br label %99

87:                                               ; preds = %75
  %88 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %89 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %94 = load %struct.ath5k_ani_state*, %struct.ath5k_ani_state** %4, align 8
  %95 = getelementptr inbounds %struct.ath5k_ani_state, %struct.ath5k_ani_state* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %96, 1
  %98 = call i32 @ath5k_ani_set_noise_immunity_level(%struct.ath5k_hw* %93, i64 %97)
  br label %99

99:                                               ; preds = %22, %44, %52, %65, %80, %92, %87
  ret void
}

declare dso_local i32 @ewma_read(i32*) #1

declare dso_local i32 @ATH5K_DBG_UNLIMIT(%struct.ath5k_hw*, i32, i8*) #1

declare dso_local i32 @ath5k_ani_set_firstep_level(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_ani_set_ofdm_weak_signal_detection(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_ani_set_spur_immunity_level(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_ani_set_noise_immunity_level(%struct.ath5k_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
