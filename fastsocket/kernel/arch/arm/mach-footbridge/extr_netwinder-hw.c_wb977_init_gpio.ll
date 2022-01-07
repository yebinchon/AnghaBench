; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c_wb977_init_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-footbridge/extr_netwinder-hw.c_wb977_init_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_gpio_io = common dso_local global i32 0, align 4
@GPIO_DONE = common dso_local global i32 0, align 4
@GPIO_WDTIMER = common dso_local global i32 0, align 4
@GP1_IO_BASE = common dso_local global i32 0, align 4
@GP2_IO_BASE = common dso_local global i32 0, align 4
@nw_gpio_lock = common dso_local global i32 0, align 4
@GPIO_RED_LED = common dso_local global i32 0, align 4
@GPIO_FAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wb977_init_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb977_init_gpio() #0 {
  %1 = alloca i64, align 8
  store i32 -1, i32* @current_gpio_io, align 4
  %2 = load i32, i32* @GPIO_DONE, align 4
  %3 = load i32, i32* @GPIO_WDTIMER, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @__gpio_modify_io(i32 -1, i32 %4)
  %6 = call i32 @wb977_device_select(i32 7)
  %7 = load i32, i32* @GP1_IO_BASE, align 4
  %8 = call i32 @wb977_ww(i32 96, i32 %7)
  %9 = call i32 @wb977_ww(i32 98, i32 0)
  %10 = call i32 @wb977_ww(i32 100, i32 0)
  %11 = call i32 @wb977_wb(i32 112, i32 10)
  %12 = call i32 @wb977_wb(i32 113, i32 2)
  %13 = call i32 @wb977_wb(i32 224, i32 25)
  %14 = call i32 (...) @wb977_device_enable()
  %15 = call i32 @wb977_device_select(i32 8)
  %16 = load i32, i32* @GP2_IO_BASE, align 4
  %17 = call i32 @wb977_ww(i32 96, i32 %16)
  %18 = call i32 @wb977_wb(i32 242, i32 0)
  %19 = call i32 @wb977_wb(i32 243, i32 0)
  %20 = call i32 @wb977_wb(i32 244, i32 0)
  %21 = call i32 (...) @wb977_device_enable()
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @spin_lock_irqsave(i32* @nw_gpio_lock, i64 %22)
  %24 = load i32, i32* @GPIO_RED_LED, align 4
  %25 = load i32, i32* @GPIO_FAN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @nw_gpio_modify_op(i32 -1, i32 %26)
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @nw_gpio_lock, i64 %28)
  ret void
}

declare dso_local i32 @__gpio_modify_io(i32, i32) #1

declare dso_local i32 @wb977_device_select(i32) #1

declare dso_local i32 @wb977_ww(i32, i32) #1

declare dso_local i32 @wb977_wb(i32, i32) #1

declare dso_local i32 @wb977_device_enable(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nw_gpio_modify_op(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
