; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_setalarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm831x.c_wm831x_rtc_setalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }
%struct.wm831x_rtc = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to convert time: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to stop alarm: %d\0A\00", align 1
@WM831X_RTC_ALARM_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to write ALARM_1: %d\0A\00", align 1
@WM831X_RTC_ALARM_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to write ALARM_2: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to start alarm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @wm831x_rtc_setalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_rtc_setalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.wm831x_rtc*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.wm831x_rtc* @dev_get_drvdata(%struct.device* %10)
  store %struct.wm831x_rtc* %11, %struct.wm831x_rtc** %6, align 8
  %12 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.wm831x_rtc, %struct.wm831x_rtc* %12, i32 0, i32 0
  %14 = load %struct.wm831x*, %struct.wm831x** %13, align 8
  store %struct.wm831x* %14, %struct.wm831x** %7, align 8
  %15 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %16 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %15, i32 0, i32 1
  %17 = call i32 @rtc_tm_to_time(i32* %16, i64* %9)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %79

25:                                               ; preds = %2
  %26 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %27 = call i32 @wm831x_rtc_stop_alarm(%struct.wm831x_rtc* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %79

35:                                               ; preds = %25
  %36 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %37 = load i32, i32* @WM831X_RTC_ALARM_1, align 4
  %38 = load i64, i64* %9, align 8
  %39 = lshr i64 %38, 16
  %40 = and i64 %39, 65535
  %41 = call i32 @wm831x_reg_write(%struct.wm831x* %36, i32 %37, i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %79

49:                                               ; preds = %35
  %50 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %51 = load i32, i32* @WM831X_RTC_ALARM_2, align 4
  %52 = load i64, i64* %9, align 8
  %53 = and i64 %52, 65535
  %54 = call i32 @wm831x_reg_write(%struct.wm831x* %50, i32 %51, i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %79

62:                                               ; preds = %49
  %63 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %64 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.wm831x_rtc*, %struct.wm831x_rtc** %6, align 8
  %69 = call i32 @wm831x_rtc_start_alarm(%struct.wm831x_rtc* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %79

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %62
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %72, %57, %44, %30, %20
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.wm831x_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtc_tm_to_time(i32*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wm831x_rtc_stop_alarm(%struct.wm831x_rtc*) #1

declare dso_local i32 @wm831x_reg_write(%struct.wm831x*, i32, i64) #1

declare dso_local i32 @wm831x_rtc_start_alarm(%struct.wm831x_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
