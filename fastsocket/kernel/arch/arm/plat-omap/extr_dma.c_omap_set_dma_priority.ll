; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_priority.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_TC_OCPT1_PRIOR = common dso_local global i64 0, align 8
@OMAP_TC_OCPT2_PRIOR = common dso_local global i64 0, align 8
@OMAP_TC_EMIFF_PRIOR = common dso_local global i64 0, align 8
@OMAP_TC_EMIFS_PRIOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_set_dma_priority(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i64 (...) @cpu_class_is_omap1()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %22 [
    i32 129, label %14
    i32 128, label %16
    i32 131, label %18
    i32 130, label %20
  ]

14:                                               ; preds = %12
  %15 = load i64, i64* @OMAP_TC_OCPT1_PRIOR, align 8
  store i64 %15, i64* %7, align 8
  br label %24

16:                                               ; preds = %12
  %17 = load i64, i64* @OMAP_TC_OCPT2_PRIOR, align 8
  store i64 %17, i64* %7, align 8
  br label %24

18:                                               ; preds = %12
  %19 = load i64, i64* @OMAP_TC_EMIFF_PRIOR, align 8
  store i64 %19, i64* %7, align 8
  br label %24

20:                                               ; preds = %12
  %21 = load i64, i64* @OMAP_TC_EMIFS_PRIOR, align 8
  store i64 %21, i64* %7, align 8
  br label %24

22:                                               ; preds = %12
  %23 = call i32 (...) @BUG()
  br label %57

24:                                               ; preds = %20, %18, %16, %14
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @omap_readl(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, -3841
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 15
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @omap_writel(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %24, %3
  %38 = call i64 (...) @cpu_class_is_omap2()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @CCR(i32 %41)
  %43 = call i32 @dma_read(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, 64
  store i32 %48, i32* %9, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, -65
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @CCR(i32 %54)
  %56 = call i32 @dma_write(i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %22, %52, %37
  ret void
}

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @omap_readl(i64) #1

declare dso_local i32 @omap_writel(i32, i64) #1

declare dso_local i64 @cpu_class_is_omap2(...) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CCR(i32) #1

declare dso_local i32 @dma_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
