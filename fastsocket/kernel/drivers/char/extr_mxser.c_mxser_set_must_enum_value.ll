; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_set_must_enum_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_set_must_enum_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_LCR = common dso_local global i64 0, align 8
@MOXA_MUST_ENTER_ENCHANCE = common dso_local global i32 0, align 4
@MOXA_MUST_EFR_REGISTER = common dso_local global i64 0, align 8
@MOXA_MUST_EFR_BANK_MASK = common dso_local global i32 0, align 4
@MOXA_MUST_EFR_BANK2 = common dso_local global i32 0, align 4
@MOXA_MUST_ENUM_REGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @mxser_set_must_enum_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_set_must_enum_value(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @UART_LCR, align 8
  %9 = add i64 %7, %8
  %10 = call i32 @inb(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @MOXA_MUST_ENTER_ENCHANCE, align 4
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @UART_LCR, align 8
  %14 = add i64 %12, %13
  %15 = call i32 @outb(i32 %11, i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @MOXA_MUST_EFR_REGISTER, align 8
  %18 = add i64 %16, %17
  %19 = call i32 @inb(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @MOXA_MUST_EFR_BANK_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @MOXA_MUST_EFR_BANK2, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @MOXA_MUST_EFR_REGISTER, align 8
  %30 = add i64 %28, %29
  %31 = call i32 @outb(i32 %27, i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @MOXA_MUST_ENUM_REGISTER, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @outb(i32 %32, i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @UART_LCR, align 8
  %40 = add i64 %38, %39
  %41 = call i32 @outb(i32 %37, i64 %40)
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
