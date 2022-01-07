; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_dma_running.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_dma_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP1610_DMA_LCD_CCR = common dso_local global i32 0, align 4
@OMAP_DMA_CCR_EN = common dso_local global i32 0, align 4
@dma_chan_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_dma_running() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 (...) @cpu_is_omap1510()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = call i32 @omap_readw(i32 -81920)
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 1, i32* %1, align 4
  br label %40

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %0
  %12 = call i64 (...) @cpu_is_omap16xx()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* @OMAP1610_DMA_LCD_CCR, align 4
  %16 = call i32 @omap_readw(i32 %15)
  %17 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %40

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %11
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @dma_chan_count, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @CCR(i32 %28)
  %30 = call i32 @dma_read(i32 %29)
  %31 = load i32, i32* @OMAP_DMA_CCR_EN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %1, align 4
  br label %40

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %23

39:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %39, %34, %20, %9
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i64 @cpu_is_omap1510(...) #1

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i64 @cpu_is_omap16xx(...) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
