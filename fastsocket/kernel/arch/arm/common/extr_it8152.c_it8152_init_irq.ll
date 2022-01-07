; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_it8152.c_it8152_init_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_it8152.c_it8152_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IT8152_INTC_PDCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_PDCNIRR = common dso_local global i32 0, align 4
@IT8152_INTC_LPCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_LPCNIRR = common dso_local global i32 0, align 4
@IT8152_INTC_LDCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_LDCNIRR = common dso_local global i32 0, align 4
@IT8152_LAST_IRQ = common dso_local global i32 0, align 4
@it8152_irq_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@IRQF_VALID = common dso_local global i32 0, align 4
@IRQF_PROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @it8152_init_irq() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @IT8152_INTC_PDCNIMR, align 4
  %3 = call i32 @__raw_writel(i32 65535, i32 %2)
  %4 = load i32, i32* @IT8152_INTC_PDCNIRR, align 4
  %5 = call i32 @__raw_writel(i32 0, i32 %4)
  %6 = load i32, i32* @IT8152_INTC_LPCNIMR, align 4
  %7 = call i32 @__raw_writel(i32 65535, i32 %6)
  %8 = load i32, i32* @IT8152_INTC_LPCNIRR, align 4
  %9 = call i32 @__raw_writel(i32 0, i32 %8)
  %10 = load i32, i32* @IT8152_INTC_LDCNIMR, align 4
  %11 = call i32 @__raw_writel(i32 65535, i32 %10)
  %12 = load i32, i32* @IT8152_INTC_LDCNIRR, align 4
  %13 = call i32 @__raw_writel(i32 0, i32 %12)
  %14 = call i32 @IT8152_IRQ(i32 0)
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %30, %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @IT8152_LAST_IRQ, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @set_irq_chip(i32 %20, i32* @it8152_irq_chip)
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @handle_level_irq, align 4
  %24 = call i32 @set_irq_handler(i32 %22, i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @IRQF_VALID, align 4
  %27 = load i32, i32* @IRQF_PROBE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @set_irq_flags(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %15

33:                                               ; preds = %15
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @IT8152_IRQ(i32) #1

declare dso_local i32 @set_irq_chip(i32, i32*) #1

declare dso_local i32 @set_irq_handler(i32, i32) #1

declare dso_local i32 @set_irq_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
