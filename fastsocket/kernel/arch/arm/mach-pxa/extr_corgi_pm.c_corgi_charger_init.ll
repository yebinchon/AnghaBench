; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_pm.c_corgi_charger_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_pm.c_corgi_charger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CORGI_GPIO_ADC_TEMP_ON = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@CORGI_GPIO_CHRG_ON = common dso_local global i32 0, align 4
@CORGI_GPIO_CHRG_UKN = common dso_local global i32 0, align 4
@CORGI_GPIO_KEY_INT = common dso_local global i32 0, align 4
@GPIO_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @corgi_charger_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corgi_charger_init() #0 {
  %1 = load i32, i32* @CORGI_GPIO_ADC_TEMP_ON, align 4
  %2 = load i32, i32* @GPIO_OUT, align 4
  %3 = or i32 %1, %2
  %4 = call i32 @pxa_gpio_mode(i32 %3)
  %5 = load i32, i32* @CORGI_GPIO_CHRG_ON, align 4
  %6 = load i32, i32* @GPIO_OUT, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @pxa_gpio_mode(i32 %7)
  %9 = load i32, i32* @CORGI_GPIO_CHRG_UKN, align 4
  %10 = load i32, i32* @GPIO_OUT, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @pxa_gpio_mode(i32 %11)
  %13 = load i32, i32* @CORGI_GPIO_KEY_INT, align 4
  %14 = load i32, i32* @GPIO_IN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @pxa_gpio_mode(i32 %15)
  ret void
}

declare dso_local i32 @pxa_gpio_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
