; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_set_mmss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_set_mmss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wm831x_rtc = type { %struct.wm831x* }
%struct.wm831x = type { i32 }
%struct.rtc_time = type { i32 }

@WM831X_RTC_TIME_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to write TIME_1: %d\0A\00", align 1
@WM831X_RTC_TIME_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to write TIME_2: %d\0A\00", align 1
@WM831X_RTC_CONTROL = common dso_local global i32 0, align 4
@WM831X_RTC_SYNC_BUSY = common dso_local global i32 0, align 4
@WM831X_SET_TIME_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Timed out writing RTC update\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to convert time: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"RTC update not permitted by hardware\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @wm831x_rtc_set_mmss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_rtc_set_mmss(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wm831x_rtc*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca %struct.rtc_time, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.wm831x_rtc* @dev_get_drvdata(%struct.device* %12)
  store %struct.wm831x_rtc* %13, %struct.wm831x_rtc** %6, align 8
  %14 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %15 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %14, i32 0, i32 0
  %16 = load %struct.wm831x*, %struct.wm831x** %15, align 8
  store %struct.wm831x* %16, %struct.wm831x** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %18 = load i32, i32* @WM831X_RTC_TIME_1, align 4
  %19 = load i64, i64* %5, align 8
  %20 = lshr i64 %19, 16
  %21 = and i64 %20, 65535
  %22 = call i32 @wm831x_reg_write(%struct.wm831x* %17, i32 %18, i64 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %103

30:                                               ; preds = %2
  %31 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %32 = load i32, i32* @WM831X_RTC_TIME_2, align 4
  %33 = load i64, i64* %5, align 8
  %34 = and i64 %33, 65535
  %35 = call i32 @wm831x_reg_write(%struct.wm831x* %31, i32 %32, i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %103

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %64, %43
  %45 = call i32 @msleep(i32 1)
  %46 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %47 = load i32, i32* @WM831X_RTC_CONTROL, align 4
  %48 = call i32 @wm831x_reg_read(%struct.wm831x* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @WM831X_RTC_SYNC_BUSY, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @WM831X_RTC_SYNC_BUSY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @WM831X_SET_TIME_RETRIES, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  br i1 %65, label %44, label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @WM831X_RTC_SYNC_BUSY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %103

76:                                               ; preds = %66
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @wm831x_rtc_readtime(%struct.device* %77, %struct.rtc_time* %8)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %103

83:                                               ; preds = %76
  %84 = call i32 @rtc_tm_to_time(%struct.rtc_time* %8, i64* %9)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %103

92:                                               ; preds = %83
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %5, align 8
  %95 = sub i64 %93, %94
  %96 = icmp ugt i64 %95, 1
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @EPERM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %103

102:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %97, %87, %81, %71, %38, %25
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.wm831x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

declare dso_local i32 @wm831x_rtc_readtime(%struct.device*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
