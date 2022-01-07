; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-s3c24xx.c_s3c24xx_led_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-s3c24xx.c_s3c24xx_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.s3c24xx_led_platdata* }
%struct.s3c24xx_led_platdata = type { i32, i32, i32, i32 }
%struct.s3c24xx_gpio_led = type { %struct.TYPE_5__, %struct.s3c24xx_led_platdata* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No memory for device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@s3c24xx_led_set = common dso_local global i32 0, align 4
@LED_CORE_SUSPENDRESUME = common dso_local global i32 0, align 4
@S3C24XX_LEDF_TRISTATE = common dso_local global i32 0, align 4
@S3C2410_GPIO_INPUT = common dso_local global i32 0, align 4
@S3C2410_GPIO_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"led_classdev_register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c24xx_led_platdata*, align 8
  %5 = alloca %struct.s3c24xx_gpio_led*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %9, align 8
  store %struct.s3c24xx_led_platdata* %10, %struct.s3c24xx_led_platdata** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.s3c24xx_gpio_led* @kzalloc(i32 24, i32 %11)
  store %struct.s3c24xx_gpio_led* %12, %struct.s3c24xx_gpio_led** %5, align 8
  %13 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %14 = icmp eq %struct.s3c24xx_gpio_led* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %96

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.s3c24xx_gpio_led* %23)
  %25 = load i32, i32* @s3c24xx_led_set, align 4
  %26 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %27 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %30 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %36 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @LED_CORE_SUSPENDRESUME, align 4
  %42 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %43 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  %47 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %48 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %49 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %48, i32 0, i32 1
  store %struct.s3c24xx_led_platdata* %47, %struct.s3c24xx_led_platdata** %49, align 8
  %50 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @S3C24XX_LEDF_TRISTATE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %21
  %57 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %58 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @s3c2410_gpio_setpin(i32 %59, i32 0)
  %61 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %62 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @S3C2410_GPIO_INPUT, align 4
  %65 = call i32 @s3c2410_gpio_cfgpin(i32 %63, i32 %64)
  br label %80

66:                                               ; preds = %21
  %67 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %68 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @s3c2410_gpio_pullup(i32 %69, i32 0)
  %71 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %72 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @s3c2410_gpio_setpin(i32 %73, i32 0)
  %75 = load %struct.s3c24xx_led_platdata*, %struct.s3c24xx_led_platdata** %4, align 8
  %76 = getelementptr inbounds %struct.s3c24xx_led_platdata, %struct.s3c24xx_led_platdata* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @S3C2410_GPIO_OUTPUT, align 4
  %79 = call i32 @s3c2410_gpio_cfgpin(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %66, %56
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %84 = getelementptr inbounds %struct.s3c24xx_gpio_led, %struct.s3c24xx_gpio_led* %83, i32 0, i32 0
  %85 = call i32 @led_classdev_register(%struct.TYPE_4__* %82, %struct.TYPE_5__* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(%struct.TYPE_4__* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.s3c24xx_gpio_led*, %struct.s3c24xx_gpio_led** %5, align 8
  %93 = call i32 @kfree(%struct.s3c24xx_gpio_led* %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %96

95:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %88, %15
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.s3c24xx_gpio_led* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c24xx_gpio_led*) #1

declare dso_local i32 @s3c2410_gpio_setpin(i32, i32) #1

declare dso_local i32 @s3c2410_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @s3c2410_gpio_pullup(i32, i32) #1

declare dso_local i32 @led_classdev_register(%struct.TYPE_4__*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.s3c24xx_gpio_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
