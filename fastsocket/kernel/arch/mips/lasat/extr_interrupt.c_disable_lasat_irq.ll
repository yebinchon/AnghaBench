; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_interrupt.c_disable_lasat_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_interrupt.c_disable_lasat_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LASAT_IRQ_BASE = common dso_local global i64 0, align 8
@lasat_int_mask_shift = common dso_local global i32 0, align 4
@lasat_int_mask = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_lasat_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @LASAT_IRQ_BASE, align 8
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = sub nsw i64 %5, %3
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 1, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* @lasat_int_mask_shift, align 4
  %12 = shl i32 %10, %11
  %13 = load i32*, i32** @lasat_int_mask, align 8
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %12
  store i32 %15, i32* %13, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
