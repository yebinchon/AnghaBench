; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/pci/extr_dma.c_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/pci/extr_dma.c_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @get_order(i64 %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @__GFP_DMA, align 4
  %15 = load i32, i32* @__GFP_HIGHMEM, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @dma_alloc_from_coherent(%struct.device* %20, i64 %21, i32* %22, i8** %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %5, align 8
  br label %55

27:                                               ; preds = %4
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = icmp eq %struct.device* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %27
  %36 = load i32, i32* @GFP_DMA, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @__get_free_pages(i32 %40, i32 %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @memset(i8* %47, i32 0, i64 %48)
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @virt_to_phys(i8* %50)
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i8*, i8** %10, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %53, %25
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @dma_alloc_from_coherent(%struct.device*, i64, i32*, i8**) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @virt_to_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
