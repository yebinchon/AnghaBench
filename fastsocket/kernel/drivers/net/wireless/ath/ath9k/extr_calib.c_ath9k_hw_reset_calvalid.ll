; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_reset_calvalid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_reset_calvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_9__*, %struct.ath9k_cal_list* }
%struct.TYPE_9__ = type { i32 }
%struct.ath9k_cal_list = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ath_common = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@CAL_DONE = common dso_local global i64 0, align 8
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Calibration state incorrect, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Resetting Cal %d state for channel %u\0A\00", align 1
@CAL_WAITING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_reset_calvalid(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca %struct.ieee80211_conf*, align 8
  %6 = alloca %struct.ath9k_cal_list*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %4, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.ieee80211_conf* %12, %struct.ieee80211_conf** %5, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 2
  %15 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %14, align 8
  store %struct.ath9k_cal_list* %15, %struct.ath9k_cal_list** %6, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %23 = call i32 @AR_SREV_9100(%struct.ath_hw* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = call i32 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %90

30:                                               ; preds = %25, %21
  %31 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %6, align 8
  %32 = icmp eq %struct.ath9k_cal_list* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %90

34:                                               ; preds = %30
  %35 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %6, align 8
  %36 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CAL_DONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %42 = load i32, i32* @CALIBRATE, align 4
  %43 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %6, align 8
  %44 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %41, i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 1, i32* %2, align 4
  br label %90

48:                                               ; preds = %34
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %6, align 8
  %53 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %51, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %90

60:                                               ; preds = %48
  %61 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %62 = load i32, i32* @CALIBRATE, align 4
  %63 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %6, align 8
  %64 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %61, i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %73)
  %75 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %6, align 8
  %76 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %82 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %80
  store i32 %86, i32* %84, align 4
  %87 = load i64, i64* @CAL_WAITING, align 8
  %88 = load %struct.ath9k_cal_list*, %struct.ath9k_cal_list** %6, align 8
  %89 = getelementptr inbounds %struct.ath9k_cal_list, %struct.ath9k_cal_list* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %60, %59, %40, %33, %29, %20
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
