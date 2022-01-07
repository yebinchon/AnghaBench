; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-coherent.c_dma_release_from_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-coherent.c_dma_release_from_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.dma_coherent_mem* }
%struct.dma_coherent_mem = type { i8*, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_release_from_coherent(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dma_coherent_mem*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %14, align 8
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi %struct.dma_coherent_mem* [ %15, %12 ], [ null, %16 ]
  store %struct.dma_coherent_mem* %18, %struct.dma_coherent_mem** %8, align 8
  %19 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %20 = icmp ne %struct.dma_coherent_mem* %19, null
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %24 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp uge i8* %22, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %30 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %33 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %31, i64 %37
  %39 = icmp ult i8* %28, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %27
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %43 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %41 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = zext i32 %48 to i64
  %50 = ashr i64 %47, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.dma_coherent_mem*, %struct.dma_coherent_mem** %8, align 8
  %53 = getelementptr inbounds %struct.dma_coherent_mem, %struct.dma_coherent_mem* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @bitmap_release_region(i32 %54, i32 %55, i32 %56)
  store i32 1, i32* %4, align 4
  br label %59

58:                                               ; preds = %27, %21, %17
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
