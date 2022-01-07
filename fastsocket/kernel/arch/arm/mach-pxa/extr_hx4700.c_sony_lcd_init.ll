; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_hx4700.c_sony_lcd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_hx4700.c_sony_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO84_HX4700_LCD_SQN = common dso_local global i32 0, align 4
@GPIO110_HX4700_LCD_LVDD_3V3_ON = common dso_local global i32 0, align 4
@GPIO111_HX4700_LCD_AVDD_3V3_ON = common dso_local global i32 0, align 4
@GPIO70_HX4700_LCD_SLIN1 = common dso_local global i32 0, align 4
@GPIO62_HX4700_LCD_nRESET = common dso_local global i32 0, align 4
@GPIO59_HX4700_LCD_PC1 = common dso_local global i32 0, align 4
@GPIO112_HX4700_LCD_N2V7_7V3_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sony_lcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_lcd_init() #0 {
  %1 = load i32, i32* @GPIO84_HX4700_LCD_SQN, align 4
  %2 = call i32 @gpio_set_value(i32 %1, i32 1)
  %3 = load i32, i32* @GPIO110_HX4700_LCD_LVDD_3V3_ON, align 4
  %4 = call i32 @gpio_set_value(i32 %3, i32 0)
  %5 = load i32, i32* @GPIO111_HX4700_LCD_AVDD_3V3_ON, align 4
  %6 = call i32 @gpio_set_value(i32 %5, i32 0)
  %7 = load i32, i32* @GPIO70_HX4700_LCD_SLIN1, align 4
  %8 = call i32 @gpio_set_value(i32 %7, i32 0)
  %9 = load i32, i32* @GPIO62_HX4700_LCD_nRESET, align 4
  %10 = call i32 @gpio_set_value(i32 %9, i32 0)
  %11 = call i32 @mdelay(i32 10)
  %12 = load i32, i32* @GPIO59_HX4700_LCD_PC1, align 4
  %13 = call i32 @gpio_set_value(i32 %12, i32 0)
  %14 = load i32, i32* @GPIO110_HX4700_LCD_LVDD_3V3_ON, align 4
  %15 = call i32 @gpio_set_value(i32 %14, i32 0)
  %16 = call i32 @mdelay(i32 20)
  %17 = load i32, i32* @GPIO110_HX4700_LCD_LVDD_3V3_ON, align 4
  %18 = call i32 @gpio_set_value(i32 %17, i32 1)
  %19 = call i32 @mdelay(i32 5)
  %20 = load i32, i32* @GPIO111_HX4700_LCD_AVDD_3V3_ON, align 4
  %21 = call i32 @gpio_set_value(i32 %20, i32 1)
  %22 = call i32 @mdelay(i32 5)
  %23 = load i32, i32* @GPIO70_HX4700_LCD_SLIN1, align 4
  %24 = call i32 @gpio_set_value(i32 %23, i32 1)
  %25 = call i32 @mdelay(i32 10)
  %26 = load i32, i32* @GPIO62_HX4700_LCD_nRESET, align 4
  %27 = call i32 @gpio_set_value(i32 %26, i32 1)
  %28 = call i32 @mdelay(i32 10)
  %29 = load i32, i32* @GPIO59_HX4700_LCD_PC1, align 4
  %30 = call i32 @gpio_set_value(i32 %29, i32 1)
  %31 = call i32 @mdelay(i32 10)
  %32 = load i32, i32* @GPIO112_HX4700_LCD_N2V7_7V3_ON, align 4
  %33 = call i32 @gpio_set_value(i32 %32, i32 1)
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
