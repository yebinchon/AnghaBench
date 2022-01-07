; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-gpio.c_gpio_trig_brightness_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-gpio.c_gpio_trig_brightness_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { %struct.gpio_trig_data* }
%struct.gpio_trig_data = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid value\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gpio_trig_brightness_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gpio_trig_brightness_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.led_classdev*, align 8
  %11 = alloca %struct.gpio_trig_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %10, align 8
  %16 = load %struct.led_classdev*, %struct.led_classdev** %10, align 8
  %17 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %16, i32 0, i32 0
  %18 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %17, align 8
  store %struct.gpio_trig_data* %18, %struct.gpio_trig_data** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ugt i32 %24, 255
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %36

31:                                               ; preds = %23
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %11, align 8
  %34 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
