; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_settime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wm8350 = type { i32 }

@WM8350_SET_TIME_RETRIES = common dso_local global i32 0, align 4
@WM8350_RTC_MINS_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_DAY_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_MTH_SHIFT = common dso_local global i32 0, align 4
@WM8350_RTC_YHUNDREDS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Setting: %04x %04x %04x %04x\0A\00", align 1
@WM8350_RTC_TIME_CONTROL = common dso_local global i32 0, align 4
@WM8350_RTC_SET = common dso_local global i32 0, align 4
@WM8350_RTC_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"timed out on set confirmation\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WM8350_RTC_SECONDS_MINUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @wm8350_rtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_rtc_settime(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.wm8350* @dev_get_drvdata(%struct.device* %11)
  store %struct.wm8350* %12, %struct.wm8350** %6, align 8
  %13 = load i32, i32* @WM8350_SET_TIME_RETRIES, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WM8350_RTC_MINS_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 16
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @WM8350_RTC_DAY_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* @WM8350_RTC_MTH_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1900
  %56 = sdiv i32 %55, 100
  %57 = load i32, i32* @WM8350_RTC_YHUNDREDS_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1900
  %64 = srem i32 %63, 100
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %72, i32 %74, i32 %76)
  %78 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %79 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %80 = load i32, i32* @WM8350_RTC_SET, align 4
  %81 = call i32 @wm8350_set_bits(%struct.wm8350* %78, i32 %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %2
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %128

86:                                               ; preds = %2
  br label %87

87:                                               ; preds = %103, %86
  %88 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %89 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %90 = call i32 @wm8350_reg_read(%struct.wm8350* %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = call i32 @msecs_to_jiffies(i32 1)
  %92 = call i32 @schedule_timeout_uninterruptible(i32 %91)
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @WM8350_RTC_STS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %97, %93
  %104 = phi i1 [ false, %93 ], [ %102, %97 ]
  br i1 %104, label %87, label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %128

113:                                              ; preds = %105
  %114 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %115 = load i32, i32* @WM8350_RTC_SECONDS_MINUTES, align 4
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %117 = call i32 @wm8350_block_write(%struct.wm8350* %114, i32 %115, i32 4, i32* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %128

122:                                              ; preds = %113
  %123 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %124 = load i32, i32* @WM8350_RTC_TIME_CONTROL, align 4
  %125 = load i32, i32* @WM8350_RTC_SET, align 4
  %126 = call i32 @wm8350_clear_bits(%struct.wm8350* %123, i32 %124, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %122, %120, %108, %84
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.wm8350* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @wm8350_block_write(%struct.wm8350*, i32, i32, i32*) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
