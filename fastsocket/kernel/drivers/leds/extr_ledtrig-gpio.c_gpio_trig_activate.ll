; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-gpio.c_gpio_trig_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_ledtrig-gpio.c_gpio_trig_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32, %struct.gpio_trig_data* }
%struct.gpio_trig_data = type { i32, %struct.led_classdev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@dev_attr_gpio = common dso_local global i32 0, align 4
@dev_attr_inverted = common dso_local global i32 0, align 4
@dev_attr_desired_brightness = common dso_local global i32 0, align 4
@gpio_trig_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*)* @gpio_trig_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_trig_activate(%struct.led_classdev* %0) #0 {
  %2 = alloca %struct.led_classdev*, align 8
  %3 = alloca %struct.gpio_trig_data*, align 8
  %4 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.gpio_trig_data* @kzalloc(i32 16, i32 %5)
  store %struct.gpio_trig_data* %6, %struct.gpio_trig_data** %3, align 8
  %7 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %3, align 8
  %8 = icmp ne %struct.gpio_trig_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %12 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @device_create_file(i32 %13, i32* @dev_attr_gpio)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %55

18:                                               ; preds = %10
  %19 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %20 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_create_file(i32 %21, i32* @dev_attr_inverted)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %50

26:                                               ; preds = %18
  %27 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %28 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_create_file(i32 %29, i32* @dev_attr_desired_brightness)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %45

34:                                               ; preds = %26
  %35 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %36 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %3, align 8
  %37 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %36, i32 0, i32 1
  store %struct.led_classdev* %35, %struct.led_classdev** %37, align 8
  %38 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %3, align 8
  %39 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %40 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %39, i32 0, i32 1
  store %struct.gpio_trig_data* %38, %struct.gpio_trig_data** %40, align 8
  %41 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %3, align 8
  %42 = getelementptr inbounds %struct.gpio_trig_data, %struct.gpio_trig_data* %41, i32 0, i32 0
  %43 = load i32, i32* @gpio_trig_work, align 4
  %44 = call i32 @INIT_WORK(i32* %42, i32 %43)
  br label %58

45:                                               ; preds = %33
  %46 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %47 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @device_remove_file(i32 %48, i32* @dev_attr_inverted)
  br label %50

50:                                               ; preds = %45, %25
  %51 = load %struct.led_classdev*, %struct.led_classdev** %2, align 8
  %52 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @device_remove_file(i32 %53, i32* @dev_attr_gpio)
  br label %55

55:                                               ; preds = %50, %17
  %56 = load %struct.gpio_trig_data*, %struct.gpio_trig_data** %3, align 8
  %57 = call i32 @kfree(%struct.gpio_trig_data* %56)
  br label %58

58:                                               ; preds = %55, %34, %9
  ret void
}

declare dso_local %struct.gpio_trig_data* @kzalloc(i32, i32) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @kfree(%struct.gpio_trig_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
