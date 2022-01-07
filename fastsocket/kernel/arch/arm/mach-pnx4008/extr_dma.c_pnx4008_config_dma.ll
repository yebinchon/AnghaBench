; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_config_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_dma.c_pnx4008_config_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAC_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_config_dma(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @DMAC_CONFIG, align 4
  %9 = call i64 @__raw_readl(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %17 [
    i32 0, label %11
    i32 1, label %14
  ]

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = and i64 %12, -3
  store i64 %13, i64* %7, align 8
  br label %18

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = or i64 %15, 2
  store i64 %16, i64* %7, align 8
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %14, %11
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %26 [
    i32 0, label %20
    i32 1, label %23
  ]

20:                                               ; preds = %18
  %21 = load i64, i64* %7, align 8
  %22 = and i64 %21, -5
  store i64 %22, i64* %7, align 8
  br label %27

23:                                               ; preds = %18
  %24 = load i64, i64* %7, align 8
  %25 = or i64 %24, 4
  store i64 %25, i64* %7, align 8
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %23, %20
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %35 [
    i32 0, label %29
    i32 1, label %32
  ]

29:                                               ; preds = %27
  %30 = load i64, i64* %7, align 8
  %31 = and i64 %30, -2
  store i64 %31, i64* %7, align 8
  br label %36

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = or i64 %33, 1
  store i64 %34, i64* %7, align 8
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %32, %29
  %37 = call i32 (...) @pnx4008_dma_lock()
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @DMAC_CONFIG, align 4
  %40 = call i32 @__raw_writel(i64 %38, i32 %39)
  %41 = call i32 (...) @pnx4008_dma_unlock()
  ret i32 0
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @pnx4008_dma_lock(...) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @pnx4008_dma_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
