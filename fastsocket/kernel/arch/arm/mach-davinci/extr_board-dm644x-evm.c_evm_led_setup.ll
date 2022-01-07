; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm644x-evm.c_evm_led_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_board-dm644x-evm.c_evm_led_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_led = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.i2c_client = type { i32 }

@evm_leds = common dso_local global %struct.gpio_led* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"leds-gpio\00", align 1
@evm_led_dev = common dso_local global %struct.TYPE_8__* null, align 8
@evm_led_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i8*)* @evm_led_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evm_led_setup(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.gpio_led*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.gpio_led*, %struct.gpio_led** @evm_leds, align 8
  store %struct.gpio_led* %11, %struct.gpio_led** %9, align 8
  br label %12

12:                                               ; preds = %16, %4
  %13 = load i32, i32* %7, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = load %struct.gpio_led*, %struct.gpio_led** %9, align 8
  %20 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.gpio_led*, %struct.gpio_led** %9, align 8
  %22 = getelementptr inbounds %struct.gpio_led, %struct.gpio_led* %21, i32 1
  store %struct.gpio_led* %22, %struct.gpio_led** %9, align 8
  br label %12

23:                                               ; preds = %12
  %24 = call %struct.TYPE_8__* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** @evm_led_dev, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evm_led_dev, align 8
  %26 = call i32 @platform_device_add_data(%struct.TYPE_8__* %25, i32* @evm_led_data, i32 4)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evm_led_dev, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evm_led_dev, align 8
  %33 = call i32 @platform_device_add(%struct.TYPE_8__* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evm_led_dev, align 8
  %38 = call i32 @platform_device_put(%struct.TYPE_8__* %37)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @evm_led_dev, align 8
  br label %39

39:                                               ; preds = %36, %23
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_8__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
