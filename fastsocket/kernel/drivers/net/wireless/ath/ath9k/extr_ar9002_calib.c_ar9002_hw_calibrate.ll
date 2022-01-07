; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_cal_list*, %struct.TYPE_2__* }
%struct.ath9k_cal_list = type { i64, %struct.ath9k_cal_list* }
%struct.TYPE_2__ = type { i32 }
%struct.ath9k_channel = type { i32 }

@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NF = common dso_local global i32 0, align 4
@CAL_RUNNING = common dso_local global i64 0, align 8
@CAL_WAITING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32, i32)* @ar9002_hw_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_calibrate(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath9k_cal_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 1
  %15 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %14, align 8
  store %struct.ath9k_cal_list* %15, %struct.ath9k_cal_list** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %17 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %18 = call i32 @REG_READ(%struct.ath_hw* %16, i32 %17)
  %19 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %29, %4
  %36 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %37 = icmp ne %struct.ath9k_cal_list* %36, null
  br i1 %37, label %38, label %78

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %38
  %42 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %43 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CAL_RUNNING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %49 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CAL_WAITING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %47, %41
  %54 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %55 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %58 = call i32 @ar9002_hw_per_calibration(%struct.ath_hw* %54, %struct.ath9k_channel* %55, i32 %56, %struct.ath9k_cal_list* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  %62 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %63 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %62, i32 0, i32 1
  %64 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %63, align 8
  store %struct.ath9k_cal_list* %64, %struct.ath9k_cal_list** %10, align 8
  %65 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 1
  store %struct.ath9k_cal_list* %64, %struct.ath9k_cal_list** %66, align 8
  %67 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %68 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CAL_WAITING, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %74 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %75 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %73, %struct.ath9k_cal_list* %74)
  br label %76

76:                                               ; preds = %72, %61
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77, %47, %38, %35
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %81, %78
  %85 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %86 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %87 = call i64 @ath9k_hw_getnf(%struct.ath_hw* %85, %struct.ath9k_channel* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %91 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %92 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ath9k_hw_loadnf(%struct.ath_hw* %90, i32 %93)
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %100 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %99, i32 0)
  %101 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %102 = call i32 @ar9002_hw_pa_cal(%struct.ath_hw* %101, i32 0)
  %103 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %104 = call i32 @ar9002_hw_olc_temp_compensation(%struct.ath_hw* %103)
  br label %105

105:                                              ; preds = %98, %95
  br label %106

106:                                              ; preds = %105, %81
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9002_hw_per_calibration(%struct.ath_hw*, %struct.ath9k_channel*, i32, %struct.ath9k_cal_list*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, %struct.ath9k_cal_list*) #1

declare dso_local i64 @ath9k_hw_getnf(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9002_hw_pa_cal(%struct.ath_hw*, i32) #1

declare dso_local i32 @ar9002_hw_olc_temp_compensation(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
