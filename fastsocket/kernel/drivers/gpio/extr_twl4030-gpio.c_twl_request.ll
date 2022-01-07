; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_twl4030-gpio.c_twl_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_twl4030-gpio.c_twl_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.twl4030_gpio_platform_data* }
%struct.twl4030_gpio_platform_data = type { i32 }

@gpio_lock = common dso_local global i32 0, align 4
@TWL4030_GPIO_MAX = common dso_local global i32 0, align 4
@LEDEN_LEDAON = common dso_local global i32 0, align 4
@LEDEN_LEDAEXT = common dso_local global i32 0, align 4
@LEDEN_LEDAPWM = common dso_local global i32 0, align 4
@LEDEN_PWM_LENGTHA = common dso_local global i32 0, align 4
@TWL4030_MODULE_PWMA = common dso_local global i32 0, align 4
@TWL4030_MODULE_PWMB = common dso_local global i32 0, align 4
@TWL4030_PWMx_PWMxOFF = common dso_local global i32 0, align 4
@TWL4030_PWMx_PWMxON = common dso_local global i32 0, align 4
@TWL4030_MODULE_LED = common dso_local global i32 0, align 4
@cached_leden = common dso_local global i32 0, align 4
@TWL4030_LED_LEDEN = common dso_local global i32 0, align 4
@gpio_usage_count = common dso_local global i32 0, align 4
@MASK_GPIO_CTRL_GPIO_ON = common dso_local global i32 0, align 4
@REG_GPIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @twl_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.twl4030_gpio_platform_data*, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = call i32 @mutex_lock(i32* @gpio_lock)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %2
  %15 = load i32, i32* @LEDEN_LEDAON, align 4
  %16 = load i32, i32* @LEDEN_LEDAEXT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @LEDEN_LEDAPWM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LEDEN_PWM_LENGTHA, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @TWL4030_MODULE_PWMA, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sub i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @TWL4030_MODULE_PWMB, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %14
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TWL4030_PWMx_PWMxOFF, align 4
  %35 = call i32 @twl4030_i2c_write_u8(i32 %33, i32 127, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %95

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @TWL4030_PWMx_PWMxON, align 4
  %42 = call i32 @twl4030_i2c_write_u8(i32 %40, i32 127, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %95

46:                                               ; preds = %39
  %47 = load i32, i32* @TWL4030_MODULE_LED, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @TWL4030_LED_LEDEN, align 4
  %50 = call i32 @twl4030_i2c_read_u8(i32 %48, i32* @cached_leden, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %95

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @cached_leden, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* @cached_leden, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @cached_leden, align 4
  %61 = load i32, i32* @TWL4030_LED_LEDEN, align 4
  %62 = call i32 @twl4030_i2c_write_u8(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %95

66:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %95

67:                                               ; preds = %2
  %68 = load i32, i32* @gpio_usage_count, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @MASK_GPIO_CTRL_GPIO_ON, align 4
  store i32 %71, i32* %9, align 4
  %72 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %73 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %75, align 8
  store %struct.twl4030_gpio_platform_data* %76, %struct.twl4030_gpio_platform_data** %8, align 8
  %77 = load %struct.twl4030_gpio_platform_data*, %struct.twl4030_gpio_platform_data** %8, align 8
  %78 = getelementptr inbounds %struct.twl4030_gpio_platform_data, %struct.twl4030_gpio_platform_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 3
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* @REG_GPIO_CTRL, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @gpio_twl4030_write(i32 %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %70, %67
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* @gpio_usage_count, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* @gpio_usage_count, align 4
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %94, %66, %65, %53, %45, %38
  %96 = call i32 @mutex_unlock(i32* @gpio_lock)
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @twl4030_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @twl4030_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @gpio_twl4030_write(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
