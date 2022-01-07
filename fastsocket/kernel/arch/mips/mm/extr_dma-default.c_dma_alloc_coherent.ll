; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_dma-default.c_dma_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_dma-default.c_dma_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_alloc_coherent(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i64 @dma_alloc_from_coherent(%struct.device* %11, i64 %12, i32* %13, i8** %10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %5, align 8
  br label %51

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @massage_gfp_flags(%struct.device* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @get_order(i64 %23)
  %25 = call i64 @__get_free_pages(i32 %22, i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %18
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memset(i8* %30, i32 0, i64 %31)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @plat_map_dma_mem(%struct.device* %33, i8* %34, i64 %35)
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @plat_device_is_coherent(%struct.device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %29
  %42 = load i8*, i8** %10, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @dma_cache_wback_inv(i64 %43, i64 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i8* @UNCAC_ADDR(i8* %46)
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %41, %29
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i8*, i8** %10, align 8
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %49, %16
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i64 @dma_alloc_from_coherent(%struct.device*, i64, i32*, i8**) #1

declare dso_local i32 @massage_gfp_flags(%struct.device*, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @plat_map_dma_mem(%struct.device*, i8*, i64) #1

declare dso_local i32 @plat_device_is_coherent(%struct.device*) #1

declare dso_local i32 @dma_cache_wback_inv(i64, i64) #1

declare dso_local i8* @UNCAC_ADDR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
