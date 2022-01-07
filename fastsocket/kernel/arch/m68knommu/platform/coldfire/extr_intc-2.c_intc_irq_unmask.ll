; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_intc-2.c_intc_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/coldfire/extr_intc-2.c_intc_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCFINT_VECBASE = common dso_local global i32 0, align 4
@MCF_IPSBAR = common dso_local global i64 0, align 8
@MCFICM_INTC1 = common dso_local global i64 0, align 8
@MCFICM_INTC0 = common dso_local global i64 0, align 8
@MCFINTC_IMRH = common dso_local global i64 0, align 8
@MCFINTC_IMRL = common dso_local global i64 0, align 8
@MCFINTC_ICR0 = common dso_local global i64 0, align 8
@intc_intpri = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intc_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_irq_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @MCFINT_VECBASE, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %77

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @MCFINT_VECBASE, align 4
  %14 = add i32 %13, 128
  %15 = icmp ule i32 %12, %14
  br i1 %15, label %16, label %77

16:                                               ; preds = %11
  %17 = load i32, i32* @MCFINT_VECBASE, align 4
  %18 = load i32, i32* %2, align 4
  %19 = sub i32 %18, %17
  store i32 %19, i32* %2, align 4
  %20 = load i64, i64* @MCF_IPSBAR, align 8
  store i64 %20, i64* %3, align 8
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* @MCFICM_INTC1, align 8
  br label %28

26:                                               ; preds = %16
  %27 = load i64, i64* @MCFICM_INTC0, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i64, i64* @MCFINTC_IMRH, align 8
  br label %40

38:                                               ; preds = %28
  %39 = load i64, i64* @MCFINTC_IMRL, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  %42 = add i64 %32, %41
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @MCFINTC_ICR0, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* %2, align 4
  %47 = and i32 %46, 63
  %48 = zext i32 %47 to i64
  %49 = add i64 %45, %48
  store i64 %49, i64* %5, align 8
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, 31
  %52 = shl i32 1, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %40
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @__raw_readb(i64 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @intc_intpri, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @intc_intpri, align 4
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @__raw_writeb(i32 %64, i64 %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @__raw_readl(i64 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @__raw_writel(i32 %74, i64 %75)
  br label %77

77:                                               ; preds = %68, %11, %1
  ret void
}

declare dso_local i64 @__raw_readb(i64) #1

declare dso_local i32 @__raw_writeb(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
