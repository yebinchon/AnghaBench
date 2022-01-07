; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_it8152.c_it8152_mask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_it8152.c_it8152_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IT8152_INTC_LDCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_LPCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_PDCNIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @it8152_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8152_mask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @IT8152_LD_IRQ(i32 0)
  %5 = icmp uge i32 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32, i32* @IT8152_INTC_LDCNIMR, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @IT8152_LD_IRQ(i32 0)
  %11 = sub i32 %9, %10
  %12 = shl i32 1, %11
  %13 = or i32 %8, %12
  %14 = load i32, i32* @IT8152_INTC_LDCNIMR, align 4
  %15 = call i32 @__raw_writel(i32 %13, i32 %14)
  br label %46

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @IT8152_LP_IRQ(i32 0)
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* @IT8152_INTC_LPCNIMR, align 4
  %22 = call i32 @__raw_readl(i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @IT8152_LP_IRQ(i32 0)
  %25 = sub i32 %23, %24
  %26 = shl i32 1, %25
  %27 = or i32 %22, %26
  %28 = load i32, i32* @IT8152_INTC_LPCNIMR, align 4
  %29 = call i32 @__raw_writel(i32 %27, i32 %28)
  br label %45

30:                                               ; preds = %16
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @IT8152_PD_IRQ(i32 0)
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* @IT8152_INTC_PDCNIMR, align 4
  %36 = call i32 @__raw_readl(i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @IT8152_PD_IRQ(i32 0)
  %39 = sub i32 %37, %38
  %40 = shl i32 1, %39
  %41 = or i32 %36, %40
  %42 = load i32, i32* @IT8152_INTC_PDCNIMR, align 4
  %43 = call i32 @__raw_writel(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %30
  br label %45

45:                                               ; preds = %44, %20
  br label %46

46:                                               ; preds = %45, %6
  ret void
}

declare dso_local i32 @IT8152_LD_IRQ(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @IT8152_LP_IRQ(i32) #1

declare dso_local i32 @IT8152_PD_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
