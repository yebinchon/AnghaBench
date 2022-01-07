; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-s3c24xx.c_s3c24xx_led_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-s3c24xx.c_s3c24xx_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.s3c24xx_gpio_led = type { %struct.s3c24xx_led_platdata* }
%struct.s3c24xx_led_platdata = type { i32, i32 }

@S3C24XX_LEDF_ACTLOW = common dso_local global i32 0, align 4
@S3C24XX_LEDF_TRISTATE = common dso_local global i32 0, align 4
@S3C2410_GPIO_OUTPUT = common dso_local global i32 0, align 4
@S3C2410_GPIO_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @s3c24xx_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c24xx_gpio_led*, align 8
  %6 = alloca %struct.s3c24xx_led_platdata*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.s3c24xx_gpio_led* @to_gpio(%struct.led_classdev* %7)
  store %struct.s3c24xx_gpio_led* %8, %struct.s3c24xx_gpio_led** %5, align 8
  %9 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %10 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %9, i32 0, i32 0
  %11 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %10, align 8
  store %struct.s3c24xx_led_platdata* %11, %struct.s3c24xx_led_platdata** %6, align 8
  %12 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %6, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %6, align 8
  %20 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @S3C24XX_LEDF_ACTLOW, align 4
  %23 = and i32 %21, %22
  %24 = xor i32 %18, %23
  %25 = call i32 @s3c2410_gpio_setpin(i32 %14, i32 %24)
  %26 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %6, align 8
  %27 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @S3C24XX_LEDF_TRISTATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %2
  %33 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %6, align 8
  %34 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @S3C2410_GPIO_OUTPUT, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @S3C2410_GPIO_INPUT, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = call i32 @s3c2410_gpio_cfgpin(i32 %35, i32 %43)
  br label %45

45:                                               ; preds = %42, %2
  ret void
}

declare dso_local %struct.s3c24xx_gpio_led* @to_gpio(%struct.led_classdev*) #1

declare dso_local i32 @s3c2410_gpio_setpin(i32, i32) #1

declare dso_local i32 @s3c2410_gpio_cfgpin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
