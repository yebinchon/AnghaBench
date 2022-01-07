; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_at32ap700x.c_configure_usart1_pins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_at32ap700x.c_configure_usart1_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATMEL_USART_RTS = common dso_local global i32 0, align 4
@ATMEL_USART_CTS = common dso_local global i32 0, align 4
@ATMEL_USART_CLK = common dso_local global i32 0, align 4
@PIOA = common dso_local global i32 0, align 4
@PERIPH_A = common dso_local global i32 0, align 4
@AT32_GPIOF_PULLUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @configure_usart1_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_usart1_pins(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 393216, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ATMEL_USART_RTS, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 524288
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @ATMEL_USART_CTS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 1048576
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @ATMEL_USART_CLK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, 65536
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* @PIOA, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PERIPH_A, align 4
  %31 = load i32, i32* @AT32_GPIOF_PULLUP, align 4
  %32 = call i32 @select_peripheral(i32 %28, i32 %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @select_peripheral(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
