; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-coherent.c_dma_mark_declared_memory_occupied.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-coherent.c_dma_mark_declared_memory_occupied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.dma_coherent_mem* }
%struct.dma_coherent_mem = type { i64, i8*, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_mark_declared_memory_occupied(%struct.device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dma_coherent_mem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %12, align 8
  store %struct.dma_coherent_mem* %13, %struct.dma_coherent_mem** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @PAGE_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %7, align 8
  %20 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %21 = icmp ne %struct.dma_coherent_mem* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i8* @ERR_PTR(i32 %24)
  store i8* %25, i8** %4, align 8
  br label %57

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %29 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %36 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @get_order(i64 %39)
  %41 = call i32 @bitmap_allocate_region(i32 %37, i32 %38, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load i32, i32* %10, align 4
  %46 = call i8* @ERR_PTR(i32 %45)
  store i8* %46, i8** %4, align 8
  br label %57

47:                                               ; preds = %26
  %48 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %49 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* @PAGE_SHIFT, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %50, i64 %55
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %47, %44, %22
  %58 = load i8*, i8** %4, align 8
  ret i8* %58
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @bitmap_allocate_region(i32, i32, i32) #1

declare dso_local i32 @get_order(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
