; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_ns16550.c_ns16550_getc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_ns16550.c_ns16550_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_base = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i32 0, align 4
@reg_shift = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @ns16550_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @ns16550_getc() #0 {
  br label %1

1:                                                ; preds = %14, %0
  %2 = load i64, i64* @reg_base, align 8
  %3 = load i32, i32* @UART_LSR, align 4
  %4 = load i32, i32* @reg_shift, align 4
  %5 = shl i32 %3, %4
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %2, %6
  %8 = call zeroext i8 @in_8(i64 %7)
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @UART_LSR_DR, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %1

15:                                               ; preds = %1
  %16 = load i64, i64* @reg_base, align 8
  %17 = call zeroext i8 @in_8(i64 %16)
  ret i8 %17
}

declare dso_local zeroext i8 @in_8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
