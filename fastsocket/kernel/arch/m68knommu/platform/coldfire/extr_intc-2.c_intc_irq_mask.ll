; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_intc-2.c_intc_irq_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_intc-2.c_intc_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCFINT_VECBASE = common dso_local global i32 0, align 4
@MCF_IPSBAR = common dso_local global i64 0, align 8
@MCFICM_INTC1 = common dso_local global i64 0, align 8
@MCFICM_INTC0 = common dso_local global i64 0, align 8
@MCFINTC_IMRH = common dso_local global i64 0, align 8
@MCFINTC_IMRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intc_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_irq_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @MCFINT_VECBASE, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %51

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @MCFINT_VECBASE, align 4
  %12 = add i32 %11, 128
  %13 = icmp ule i32 %10, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %9
  %15 = load i32, i32* @MCFINT_VECBASE, align 4
  %16 = load i32, i32* %2, align 4
  %17 = sub i32 %16, %15
  store i32 %17, i32* %2, align 4
  %18 = load i64, i64* @MCF_IPSBAR, align 8
  store i64 %18, i64* %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 64
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* @MCFICM_INTC1, align 8
  br label %26

24:                                               ; preds = %14
  %25 = load i64, i64* @MCFICM_INTC0, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* @MCFINTC_IMRH, align 8
  br label %37

35:                                               ; preds = %26
  %36 = load i64, i64* @MCFINTC_IMRL, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i64 [ %34, %33 ], [ %36, %35 ]
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %3, align 8
  %41 = load i32, i32* %2, align 4
  %42 = and i32 %41, 31
  %43 = shl i32 1, %42
  store i32 %43, i32* %5, align 4
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @__raw_readl(i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %46, %47
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @__raw_writel(i32 %48, i64 %49)
  br label %51

51:                                               ; preds = %37, %9, %1
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
