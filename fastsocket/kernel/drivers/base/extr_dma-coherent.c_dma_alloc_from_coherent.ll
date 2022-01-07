; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-coherent.c_dma_alloc_from_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-coherent.c_dma_alloc_from_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.dma_coherent_mem* }
%struct.dma_coherent_mem = type { i32, i32, i8*, i64, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@DMA_MEMORY_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_alloc_from_coherent(%struct.device* %0, i32 %1, i64* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dma_coherent_mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_order(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = icmp ne %struct.device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %82

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %20, align 8
  store %struct.dma_coherent_mem* %21, %struct.dma_coherent_mem** %10, align 8
  %22 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %23 = icmp ne %struct.dma_coherent_mem* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %82

25:                                               ; preds = %18
  %26 = load i8**, i8*** %9, align 8
  store i8* null, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %29 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = icmp sgt i32 %27, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %76

38:                                               ; preds = %25
  %39 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %40 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %43 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @bitmap_find_free_region(i32 %41, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %76

53:                                               ; preds = %38
  %54 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %55 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  %63 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %64 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %65, i64 %69
  %71 = load i8**, i8*** %9, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i8**, i8*** %9, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @memset(i8* %73, i32 0, i32 %74)
  store i32 1, i32* %5, align 4
  br label %82

76:                                               ; preds = %52, %37
  %77 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %10, align 8
  %78 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DMA_MEMORY_EXCLUSIVE, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %53, %24, %17
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
