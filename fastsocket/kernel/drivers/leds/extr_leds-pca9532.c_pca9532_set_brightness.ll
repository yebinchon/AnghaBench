; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_set_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.pca9532_led = type { i32, i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@PCA9532_OFF = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@PCA9532_ON = common dso_local global i32 0, align 4
@PCA9532_PWM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @pca9532_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca9532_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pca9532_led*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.pca9532_led* @ldev_to_led(%struct.led_classdev* %7)
  store %struct.pca9532_led* %8, %struct.pca9532_led** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LED_OFF, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @PCA9532_OFF, align 4
  %14 = load %struct.pca9532_led*, %struct.pca9532_led** %6, align 8
  %15 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @LED_FULL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @PCA9532_ON, align 4
  %22 = load %struct.pca9532_led*, %struct.pca9532_led** %6, align 8
  %23 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %37

24:                                               ; preds = %16
  %25 = load i32, i32* @PCA9532_PWM0, align 4
  %26 = load %struct.pca9532_led*, %struct.pca9532_led** %6, align 8
  %27 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pca9532_led*, %struct.pca9532_led** %6, align 8
  %29 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pca9532_calcpwm(i32 %30, i32 0, i32 0, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %42

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %12
  %39 = load %struct.pca9532_led*, %struct.pca9532_led** %6, align 8
  %40 = getelementptr inbounds %struct.pca9532_led, %struct.pca9532_led* %39, i32 0, i32 0
  %41 = call i32 @schedule_work(i32* %40)
  br label %42

42:                                               ; preds = %38, %35
  ret void
}

declare dso_local %struct.pca9532_led* @ldev_to_led(%struct.led_classdev*) #1

declare dso_local i32 @pca9532_calcpwm(i32, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
