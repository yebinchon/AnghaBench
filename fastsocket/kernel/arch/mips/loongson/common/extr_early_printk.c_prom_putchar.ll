; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/loongson/common/extr_early_printk.c_prom_putchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/loongson/common/extr_early_printk.c_prom_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOONGSON_UART_BASE = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_putchar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i32, i32* @LOONGSON_UART_BASE, align 4
  %5 = call i32 @ioremap_nocache(i32 %4, i32 8)
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %13, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @UART_LSR, align 4
  %9 = call i32 @serial_in(i32 %7, i32 %8)
  %10 = load i32, i32* @UART_LSR_THRE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %6

14:                                               ; preds = %6
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @UART_TX, align 4
  %17 = load i8, i8* %2, align 1
  %18 = call i32 @serial_out(i32 %15, i32 %16, i8 signext %17)
  ret void
}

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @serial_in(i32, i32) #1

declare dso_local i32 @serial_out(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
