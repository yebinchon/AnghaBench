; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_free_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ep93xx_eth.c_ep93xx_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_priv = type { i32, %struct.TYPE_6__*, i32**, i32** }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_priv*)* @ep93xx_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_free_buffers(%struct.ep93xx_priv* %0) #0 {
  %2 = alloca %struct.ep93xx_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ep93xx_priv* %0, %struct.ep93xx_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %48, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @RX_QUEUE_ENTRIES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @dma_unmap_single(i32* null, i64 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %10
  %29 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %30 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %29, i32 0, i32 3
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %38, i32 0, i32 3
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = ptrtoint i32* %44 to i64
  %46 = call i32 @free_page(i64 %45)
  br label %47

47:                                               ; preds = %37, %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %3, align 4
  br label %6

51:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %94, %51
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %97

56:                                               ; preds = %52
  %57 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %58 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = load i32, i32* @DMA_TO_DEVICE, align 4
  %73 = call i32 @dma_unmap_single(i32* null, i64 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %56
  %75 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %76 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %74
  %84 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %85 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = ptrtoint i32* %90 to i64
  %92 = call i32 @free_page(i64 %91)
  br label %93

93:                                               ; preds = %83, %74
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %3, align 4
  br label %52

97:                                               ; preds = %52
  %98 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %99 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %2, align 8
  %102 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dma_free_coherent(i32* null, i32 4, %struct.TYPE_6__* %100, i32 %103)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
