; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_it8152.c_it8152_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_it8152.c_it8152_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IT8152_INTC_LDCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_LPCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_PDCNIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @it8152_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8152_unmask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @IT8152_LD_IRQ(i32 0)
  %5 = icmp uge i32 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32, i32* @IT8152_INTC_LDCNIMR, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @IT8152_LD_IRQ(i32 0)
  %11 = sub i32 %9, %10
  %12 = shl i32 1, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %8, %13
  %15 = load i32, i32* @IT8152_INTC_LDCNIMR, align 4
  %16 = call i32 @__raw_writel(i32 %14, i32 %15)
  br label %49

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @IT8152_LP_IRQ(i32 0)
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i32, i32* @IT8152_INTC_LPCNIMR, align 4
  %23 = call i32 @__raw_readl(i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @IT8152_LP_IRQ(i32 0)
  %26 = sub i32 %24, %25
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %23, %28
  %30 = load i32, i32* @IT8152_INTC_LPCNIMR, align 4
  %31 = call i32 @__raw_writel(i32 %29, i32 %30)
  br label %48

32:                                               ; preds = %17
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @IT8152_PD_IRQ(i32 0)
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32, i32* @IT8152_INTC_PDCNIMR, align 4
  %38 = call i32 @__raw_readl(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @IT8152_PD_IRQ(i32 0)
  %41 = sub i32 %39, %40
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %38, %43
  %45 = load i32, i32* @IT8152_INTC_PDCNIMR, align 4
  %46 = call i32 @__raw_writel(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %32
  br label %48

48:                                               ; preds = %47, %21
  br label %49

49:                                               ; preds = %48, %6
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
