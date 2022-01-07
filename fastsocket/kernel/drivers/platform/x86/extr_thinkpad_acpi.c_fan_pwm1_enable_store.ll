; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_fan_pwm1_enable_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_fan_pwm1_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"hwmon pwm1_enable\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"set fan mode to %lu\0A\00", align 1
@TP_EC_FAN_FULLSPEED = common dso_local global i32 0, align 4
@TPACPI_FAN_LAST_LEVEL = common dso_local global i32 0, align 4
@TP_EC_FAN_AUTO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_pwm1_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_pwm1_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i64 @parse_strtoul(i8* %13, i32 2, i64* %10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %55

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @tpacpi_disclose_usertask(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %10, align 8
  switch i64 %22, label %32 [
    i64 0, label %23
    i64 1, label %25
    i64 2, label %27
    i64 3, label %29
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* @TP_EC_FAN_FULLSPEED, align 4
  store i32 %24, i32* %12, align 4
  br label %35

25:                                               ; preds = %19
  %26 = load i32, i32* @TPACPI_FAN_LAST_LEVEL, align 4
  store i32 %26, i32* %12, align 4
  br label %35

27:                                               ; preds = %19
  %28 = load i32, i32* @TP_EC_FAN_AUTO, align 4
  store i32 %28, i32* %12, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %55

32:                                               ; preds = %19
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %55

35:                                               ; preds = %27, %25, %23
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @fan_set_level_safe(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %55

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %55

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = call i32 (...) @fan_watchdog_reset()
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %48, %42, %32, %29, %16
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @parse_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @tpacpi_disclose_usertask(i8*, i8*, i64) #1

declare dso_local i32 @fan_set_level_safe(i32) #1

declare dso_local i32 @fan_watchdog_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
