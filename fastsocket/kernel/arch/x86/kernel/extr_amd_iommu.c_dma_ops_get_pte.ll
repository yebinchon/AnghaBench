; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_get_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_get_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_ops_domain = type { i32, %struct.aperture_range** }
%struct.aperture_range = type { i32** }

@PM_MAP_4k = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dma_ops_domain*, i64)* @dma_ops_get_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dma_ops_get_pte(%struct.dma_ops_domain* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dma_ops_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aperture_range*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.dma_ops_domain* %0, %struct.dma_ops_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %10 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %9, i32 0, i32 1
  %11 = load %struct.aperture_range**, %struct.aperture_range*** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @APERTURE_RANGE_INDEX(i64 %12)
  %14 = getelementptr inbounds %struct.aperture_range*, %struct.aperture_range** %11, i64 %13
  %15 = load %struct.aperture_range*, %struct.aperture_range** %14, align 8
  store %struct.aperture_range* %15, %struct.aperture_range** %6, align 8
  %16 = load %struct.aperture_range*, %struct.aperture_range** %6, align 8
  %17 = icmp ne %struct.aperture_range* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.aperture_range*, %struct.aperture_range** %6, align 8
  %21 = getelementptr inbounds %struct.aperture_range, %struct.aperture_range* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @APERTURE_PAGE_INDEX(i64 %23)
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %19
  %30 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %31 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @PM_MAP_4k, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call i32* @alloc_pte(i32* %31, i64 %32, i32 %33, i32** %8, i32 %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.aperture_range*, %struct.aperture_range** %6, align 8
  %38 = getelementptr inbounds %struct.aperture_range, %struct.aperture_range* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @APERTURE_PAGE_INDEX(i64 %40)
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* %36, i32** %42, align 8
  br label %49

43:                                               ; preds = %19
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @PM_LEVEL_INDEX(i32 0, i64 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %43, %29
  %50 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %51 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %50, i32 0, i32 0
  %52 = call i32 @update_domain(i32* %51)
  %53 = load i32*, i32** %7, align 8
  store i32* %53, i32** %3, align 8
  br label %54

54:                                               ; preds = %49, %18
  %55 = load i32*, i32** %3, align 8
  ret i32* %55
}

declare dso_local i64 @APERTURE_RANGE_INDEX(i64) #1

declare dso_local i64 @APERTURE_PAGE_INDEX(i64) #1

declare dso_local i32* @alloc_pte(i32*, i64, i32, i32**, i32) #1

declare dso_local i32 @PM_LEVEL_INDEX(i32, i64) #1

declare dso_local i32 @update_domain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
