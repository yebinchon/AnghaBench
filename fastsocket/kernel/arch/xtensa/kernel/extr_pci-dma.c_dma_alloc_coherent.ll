; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_pci-dma.c_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_pci-dma.c_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@XCHAL_KSEG_CACHED_VADDR = common dso_local global i64 0, align 8
@XCHAL_KSEG_SIZE = common dso_local global i64 0, align 8
@XCHAL_KSEG_BYPASS_VADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @__GFP_DMA, align 4
  %13 = load i32, i32* @__GFP_HIGHMEM, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = icmp eq %struct.device* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %4
  %26 = load i32, i32* @GFP_DMA, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @get_order(i64 %31)
  %33 = call i64 @__get_free_pages(i32 %30, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i8* null, i8** %5, align 8
  br label %72

37:                                               ; preds = %29
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @XCHAL_KSEG_CACHED_VADDR, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @XCHAL_KSEG_CACHED_VADDR, align 8
  %44 = load i64, i64* @XCHAL_KSEG_SIZE, align 8
  %45 = add i64 %43, %44
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %37
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @memset(i8* %54, i32 0, i64 %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @XCHAL_KSEG_BYPASS_VADDR, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* @XCHAL_KSEG_CACHED_VADDR, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @virt_to_bus(i8* %63)
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @__flush_invalidate_dcache_range(i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %52, %49
  %70 = load i64, i64* %11, align 8
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %69, %36
  %73 = load i8*, i8** %5, align 8
  ret i8* %73
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @virt_to_bus(i8*) #1

declare dso_local i32 @__flush_invalidate_dcache_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
