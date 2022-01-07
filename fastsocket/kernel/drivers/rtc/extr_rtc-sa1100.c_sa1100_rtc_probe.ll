; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.rtc_device = type { i32 }

@timer_freq = common dso_local global i32 0, align 4
@RTTR = common dso_local global i64 0, align 8
@RTC_DEF_DIVIDER = common dso_local global i64 0, align 8
@RTC_DEF_TRIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"warning: initializing default clock divider/trim value\0A\00", align 1
@RCNR = common dso_local global i64 0, align 8
@sa1100_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sa1100_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 (...) @get_clock_tick_rate()
  store i32 %5, i32* @timer_freq, align 4
  %6 = load i64, i64* @RTTR, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i64, i64* @RTC_DEF_DIVIDER, align 8
  %10 = load i32, i32* @RTC_DEF_TRIM, align 4
  %11 = shl i32 %10, 16
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  store i64 %13, i64* @RTTR, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @RCNR, align 8
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @device_init_wakeup(i32* %19, i32 1)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* @THIS_MODULE, align 4
  %27 = call %struct.rtc_device* @rtc_device_register(i32 %23, i32* %25, i32* @sa1100_rtc_ops, i32 %26)
  store %struct.rtc_device* %27, %struct.rtc_device** %4, align 8
  %28 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %29 = call i64 @IS_ERR(%struct.rtc_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %33 = call i32 @PTR_ERR(%struct.rtc_device* %32)
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %17
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.rtc_device* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @get_clock_tick_rate(...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local %struct.rtc_device* @rtc_device_register(i32, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
