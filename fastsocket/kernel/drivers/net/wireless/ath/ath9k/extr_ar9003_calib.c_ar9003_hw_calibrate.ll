; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_calibrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_cal_list* }
%struct.ath9k_cal_list = type { i64, %struct.ath9k_cal_list* }
%struct.ath9k_channel = type { i32 }

@CAL_RUNNING = common dso_local global i64 0, align 8
@CAL_WAITING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*, i32, i32)* @ar9003_hw_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_calibrate(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath9k_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath9k_cal_list*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 1
  %13 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %12, align 8
  store %struct.ath9k_cal_list* %13, %struct.ath9k_cal_list** %10, align 8
  %14 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %15 = icmp ne %struct.ath9k_cal_list* %14, null
  br i1 %15, label %16, label %53

16:                                               ; preds = %4
  %17 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %18 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CAL_RUNNING, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %24 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CAL_WAITING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22, %16
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %33 = call i32 @ar9003_hw_per_calibration(%struct.ath_hw* %29, %struct.ath9k_channel* %30, i32 %31, %struct.ath9k_cal_list* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %38 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %37, i32 0, i32 1
  %39 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %38, align 8
  store %struct.ath9k_cal_list* %39, %struct.ath9k_cal_list** %10, align 8
  %40 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 1
  store %struct.ath9k_cal_list* %39, %struct.ath9k_cal_list** %41, align 8
  %42 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %43 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CAL_WAITING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  %48 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %49 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %10, align 8
  %50 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %48, %struct.ath9k_cal_list* %49)
  br label %51

51:                                               ; preds = %47, %36
  br label %52

52:                                               ; preds = %51, %28
  br label %53

53:                                               ; preds = %52, %22, %4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %58 = load %struct.ath9k_channel*, %struct.ath9k_channel** %6, align 8
  %59 = call i64 @ath9k_hw_getnf(%struct.ath_hw* %57, %struct.ath9k_channel* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %63 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %64 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ath9k_hw_loadnf(%struct.ath_hw* %62, i32 %65)
  %67 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %68 = call i32 @ath9k_hw_start_nfcal(%struct.ath_hw* %67, i32 0)
  br label %69

69:                                               ; preds = %61, %56, %53
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @ar9003_hw_per_calibration(%struct.ath_hw*, %struct.ath9k_channel*, i32, %struct.ath9k_cal_list*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, %struct.ath9k_cal_list*) #1

declare dso_local i64 @ath9k_hw_getnf(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_start_nfcal(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
