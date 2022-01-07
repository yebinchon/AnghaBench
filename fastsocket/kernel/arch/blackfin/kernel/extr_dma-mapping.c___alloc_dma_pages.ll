; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_dma-mapping.c___alloc_dma_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_dma-mapping.c___alloc_dma_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dma_initialized = common dso_local global i64 0, align 8
@_ramend = common dso_local global i64 0, align 8
@DMA_UNCACHED_REGION = common dso_local global i64 0, align 8
@dma_page_lock = common dso_local global i32 0, align 4
@dma_pages = common dso_local global i32 0, align 4
@dma_page = common dso_local global i32* null, align 8
@dma_base = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @__alloc_dma_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__alloc_dma_pages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* @dma_initialized, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i64, i64* @_ramend, align 8
  %11 = load i64, i64* @DMA_UNCACHED_REGION, align 8
  %12 = sub nsw i64 %10, %11
  %13 = load i64, i64* @_ramend, align 8
  %14 = call i32 @dma_alloc_init(i64 %12, i64 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @dma_page_lock, i64 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %55, %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @dma_pages, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32*, i32** @dma_page, align 8
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32*, i32** @dma_page, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 1, i32* %45, align 4
  br label %36

46:                                               ; preds = %36
  %47 = load i32, i32* @dma_base, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = add nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %3, align 8
  br label %56

53:                                               ; preds = %30
  br label %55

54:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %18

56:                                               ; preds = %46, %18
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @dma_page_lock, i64 %57)
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i32 @dma_alloc_init(i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
