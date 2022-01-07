; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_alloc_ringmemory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_alloc_ringmemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@B43_DMA_64BIT = common dso_local global i64 0, align 8
@B43_DMA64_RINGMEMSIZE = common dso_local global i32 0, align 4
@B43_DMA32_RINGMEMSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_dmaring*)* @alloc_ringmemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ringmemory(%struct.b43_dmaring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_dmaring*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %3, align 8
  %5 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %6 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @B43_DMA_64BIT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @B43_DMA64_RINGMEMSIZE, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @B43_DMA32_RINGMEMSIZE, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %4, align 4
  %16 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %17 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %25 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %24, i32 0, i32 2
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* @__GFP_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @dma_alloc_coherent(i32 %22, i32 %23, i32* %25, i32 %28)
  %30 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %31 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.b43_dmaring*, %struct.b43_dmaring** %3, align 8
  %33 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %14
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
