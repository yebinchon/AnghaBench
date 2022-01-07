; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_board-osk.c_osk_tps_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap1/extr_board-osk.c_osk_tps_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.i2c_client = type { i32 }

@OSK_TPS_GPIO_USB_PWR_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"n_vbus_en\00", align 1
@GPIO2 = common dso_local global i32 0, align 4
@HIGH = common dso_local global i32 0, align 4
@OSK_TPS_GPIO_LAN_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"smc_reset\00", align 1
@OSK_TPS_GPIO_DSP_PWR_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"dsp_power\00", align 1
@LED1 = common dso_local global i32 0, align 4
@BLINK = common dso_local global i32 0, align 4
@LED2 = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4
@TPS_LDO2_ENABLE = common dso_local global i32 0, align 4
@TPS_VLDO2_3_0V = common dso_local global i32 0, align 4
@TPS_LDO1_ENABLE = common dso_local global i32 0, align 4
@osk5912_tps_leds = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8*)* @osk_tps_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osk_tps_setup(%struct.i2c_client* %0, i8* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @OSK_TPS_GPIO_USB_PWR_EN, align 4
  %6 = call i32 @gpio_request(i32 %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @OSK_TPS_GPIO_USB_PWR_EN, align 4
  %8 = call i32 @gpio_direction_output(i32 %7, i32 1)
  %9 = load i32, i32* @GPIO2, align 4
  %10 = load i32, i32* @HIGH, align 4
  %11 = call i32 @tps65010_set_gpio_out_value(i32 %9, i32 %10)
  %12 = load i32, i32* @OSK_TPS_GPIO_LAN_RESET, align 4
  %13 = call i32 @gpio_request(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @OSK_TPS_GPIO_LAN_RESET, align 4
  %15 = call i32 @gpio_direction_output(i32 %14, i32 0)
  %16 = load i32, i32* @OSK_TPS_GPIO_DSP_PWR_EN, align 4
  %17 = call i32 @gpio_request(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @OSK_TPS_GPIO_DSP_PWR_EN, align 4
  %19 = call i32 @gpio_direction_output(i32 %18, i32 1)
  %20 = load i32, i32* @LED1, align 4
  %21 = load i32, i32* @BLINK, align 4
  %22 = call i32 @tps65010_set_led(i32 %20, i32 %21)
  %23 = load i32, i32* @LED2, align 4
  %24 = load i32, i32* @OFF, align 4
  %25 = call i32 @tps65010_set_led(i32 %23, i32 %24)
  %26 = load i32, i32* @ON, align 4
  %27 = call i32 @tps65010_set_low_pwr(i32 %26)
  %28 = load i32, i32* @TPS_LDO2_ENABLE, align 4
  %29 = load i32, i32* @TPS_VLDO2_3_0V, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @TPS_LDO1_ENABLE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @tps65010_config_vregs1(i32 %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  store i32* %35, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @osk5912_tps_leds, i32 0, i32 0, i32 0), align 8
  %36 = call i32 @platform_device_register(%struct.TYPE_5__* @osk5912_tps_leds)
  ret i32 0
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @tps65010_set_gpio_out_value(i32, i32) #1

declare dso_local i32 @tps65010_set_led(i32, i32) #1

declare dso_local i32 @tps65010_set_low_pwr(i32) #1

declare dso_local i32 @tps65010_config_vregs1(i32) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
