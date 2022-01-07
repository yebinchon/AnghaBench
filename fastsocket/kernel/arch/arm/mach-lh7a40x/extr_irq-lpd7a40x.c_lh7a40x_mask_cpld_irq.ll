; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-lh7a40x/extr_irq-lpd7a40x.c_lh7a40x_mask_cpld_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-lh7a40x/extr_irq-lpd7a40x.c_lh7a40x_mask_cpld_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPLD_INTERRUPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @lh7a40x_mask_cpld_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lh7a40x_mask_cpld_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %10 [
    i32 128, label %4
    i32 129, label %7
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @CPLD_INTERRUPTS, align 4
  %6 = or i32 %5, 4
  store i32 %6, i32* @CPLD_INTERRUPTS, align 4
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @CPLD_INTERRUPTS, align 4
  %9 = or i32 %8, 8
  store i32 %9, i32* @CPLD_INTERRUPTS, align 4
  br label %10

10:                                               ; preds = %1, %7, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
