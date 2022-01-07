; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_enable_must_enchance_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_enable_must_enchance_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_LCR = common dso_local global i64 0, align 8
@MOXA_MUST_ENTER_ENCHANCE = common dso_local global i32 0, align 4
@MOXA_MUST_EFR_REGISTER = common dso_local global i64 0, align 8
@MOXA_MUST_EFR_EFRB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mxser_enable_must_enchance_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_enable_must_enchance_mode(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @UART_LCR, align 8
  %7 = add i64 %5, %6
  %8 = call i32 @inb(i64 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @MOXA_MUST_ENTER_ENCHANCE, align 4
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @UART_LCR, align 8
  %12 = add i64 %10, %11
  %13 = call i32 @outb(i32 %9, i64 %12)
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @MOXA_MUST_EFR_REGISTER, align 8
  %16 = add i64 %14, %15
  %17 = call i32 @inb(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MOXA_MUST_EFR_EFRB_ENABLE, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @MOXA_MUST_EFR_REGISTER, align 8
  %24 = add i64 %22, %23
  %25 = call i32 @outb(i32 %21, i64 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @UART_LCR, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @outb(i32 %26, i64 %29)
  ret void
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
