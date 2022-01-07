; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_per_calibration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_per_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath9k_cal_list = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*)* }

@CAL_RUNNING = common dso_local global i64 0, align 8
@AR_PHY_TIMING_CTRL4_DO_CAL = common dso_local global i32 0, align 4
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@CAL_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32, %struct.ath9k_cal_list*)* @ar9002_hw_per_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_per_calibration(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, %struct.ath9k_cal_list* %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath9k_cal_list*, align 8
  %9 = alloca %struct.ath9k_hw_cal_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ath9k_cal_list* %3, %struct.ath9k_cal_list** %8, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 1
  %15 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %14, align 8
  store %struct.ath9k_hw_cal_data* %15, %struct.ath9k_hw_cal_data** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %8, align 8
  %17 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CAL_RUNNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %94

21:                                               ; preds = %4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %23 = call i32 @AR_PHY_TIMING_CTRL4(i32 0)
  %24 = call i32 @REG_READ(%struct.ath_hw* %22, i32 %23)
  %25 = load i32, i32* @AR_PHY_TIMING_CTRL4_DO_CAL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %93, label %28

28:                                               ; preds = %21
  %29 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %8, align 8
  %30 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32 (%struct.ath_hw*)*, i32 (%struct.ath_hw*)** %32, align 8
  %34 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %35 = call i32 %33(%struct.ath_hw* %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %8, align 8
  %44 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %42, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %60, %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %8, align 8
  %69 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %71, align 8
  %73 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 %72(%struct.ath_hw* %73, i32 %74)
  %76 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %8, align 8
  %77 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %9, align 8
  %82 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i64, i64* @CAL_DONE, align 8
  %86 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %8, align 8
  %87 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  store i32 1, i32* %10, align 4
  br label %92

88:                                               ; preds = %28
  %89 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %90 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %8, align 8
  %91 = call i32 @ar9002_hw_setup_calibration(%struct.ath_hw* %89, %struct.ath9k_cal_list* %90)
  br label %92

92:                                               ; preds = %88, %67
  br label %93

93:                                               ; preds = %92, %21
  br label %110

94:                                               ; preds = %4
  %95 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %9, align 8
  %96 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %8, align 8
  %99 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %97, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %94
  %106 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %107 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %8, align 8
  %108 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %106, %struct.ath9k_cal_list* %107)
  br label %109

109:                                              ; preds = %105, %94
  br label %110

110:                                              ; preds = %109, %93
  %111 = load i32, i32* %10, align 4
  ret i32 %111
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY_TIMING_CTRL4(i32) #1

declare dso_local i32 @ar9002_hw_setup_calibration(%struct.ath_hw*, %struct.ath9k_cal_list*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, %struct.ath9k_cal_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
