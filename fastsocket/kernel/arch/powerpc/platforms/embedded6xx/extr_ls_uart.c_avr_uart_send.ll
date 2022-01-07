; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/embedded6xx/extr_ls_uart.c_avr_uart_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/embedded6xx/extr_ls_uart.c_avr_uart_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@avr_addr = common dso_local global i64 0, align 8
@avr_clock = common dso_local global i32 0, align 4
@UART_TX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avr_uart_send(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i64, i64* @avr_addr, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @avr_clock, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %1
  br label %30

9:                                                ; preds = %5
  %10 = load i64, i64* @avr_addr, align 8
  %11 = load i64, i64* @UART_TX, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i8, i8* %2, align 1
  %14 = call i32 @out_8(i64 %12, i8 signext %13)
  %15 = load i64, i64* @avr_addr, align 8
  %16 = load i64, i64* @UART_TX, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i8, i8* %2, align 1
  %19 = call i32 @out_8(i64 %17, i8 signext %18)
  %20 = load i64, i64* @avr_addr, align 8
  %21 = load i64, i64* @UART_TX, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i8, i8* %2, align 1
  %24 = call i32 @out_8(i64 %22, i8 signext %23)
  %25 = load i64, i64* @avr_addr, align 8
  %26 = load i64, i64* @UART_TX, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i8, i8* %2, align 1
  %29 = call i32 @out_8(i64 %27, i8 signext %28)
  br label %30

30:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @out_8(i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
