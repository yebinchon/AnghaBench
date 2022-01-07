; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_brightness_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_led-class.c_led_brightness_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@LED_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @led_brightness_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @led_brightness_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.led_classdev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %9, align 8
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @simple_strtoul(i8* %18, i8** %11, i32 10)
  store i64 %19, i64* %12, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  store i64 %24, i64* %13, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @isspace(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %13, align 8
  br label %32

32:                                               ; preds = %29, %4
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @LED_OFF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %43 = call i32 @led_trigger_remove(%struct.led_classdev* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @led_set_brightness(%struct.led_classdev* %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %32
  %49 = load i64, i64* %10, align 8
  ret i64 %49
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @led_trigger_remove(%struct.led_classdev*) #1

declare dso_local i32 @led_set_brightness(%struct.led_classdev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
