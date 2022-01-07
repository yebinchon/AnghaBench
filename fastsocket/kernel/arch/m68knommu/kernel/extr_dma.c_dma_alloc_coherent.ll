; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_dma.c_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_dma.c_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }

@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @__GFP_DMA, align 4
  %11 = load i32, i32* @__GFP_HIGHMEM, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %8, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = icmp eq %struct.device* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %4
  %25 = load i32, i32* @GFP_DMA, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @get_order(i64 %30)
  %32 = call i64 @__get_free_pages(i32 %29, i32 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @memset(i8* %37, i32 0, i64 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @virt_to_phys(i8* %40)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %28
  %44 = load i8*, i8** %9, align 8
  ret i8* %44
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @virt_to_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
