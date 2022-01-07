; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_area_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_area_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_ops_domain = type { i64, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32 }

@APERTURE_RANGE_SIZE = common dso_local global i64 0, align 8
@APERTURE_RANGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@APERTURE_RANGE_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.dma_ops_domain*, i32, i64, i64, i64)* @dma_ops_area_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_ops_area_alloc(%struct.device* %0, %struct.dma_ops_domain* %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.dma_ops_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.dma_ops_domain* %1, %struct.dma_ops_domain** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %8, align 8
  %21 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @APERTURE_RANGE_SIZE, align 8
  %24 = urem i64 %22, %23
  store i64 %24, i64* %13, align 8
  %25 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %8, align 8
  %26 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @APERTURE_RANGE_SHIFT, align 8
  %29 = lshr i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @APERTURE_RANGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %15, align 4
  store i64 -1, i64* %17, align 8
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = load i64, i64* %13, align 8
  %37 = lshr i64 %36, %35
  store i64 %37, i64* %13, align 8
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = call i64 @dma_get_seg_boundary(%struct.device* %38)
  %40 = add nsw i64 %39, 1
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = call i64 @ALIGN(i64 %40, i32 %41)
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = lshr i64 %42, %43
  store i64 %44, i64* %16, align 8
  br label %45

45:                                               ; preds = %121, %6
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %124

49:                                               ; preds = %45
  %50 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %8, align 8
  %51 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  store i64 %60, i64* %19, align 8
  %61 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %8, align 8
  %62 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %49
  br label %124

73:                                               ; preds = %49
  %74 = load i32, i32* @APERTURE_RANGE_PAGES, align 4
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @PAGE_SHIFT, align 8
  %78 = lshr i64 %76, %77
  %79 = call i64 @iommu_device_max_index(i32 %74, i64 %75, i64 %78)
  store i64 %79, i64* %18, align 8
  %80 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %8, align 8
  %81 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i64 @iommu_area_alloc(i32 %88, i64 %89, i64 %90, i32 %91, i32 0, i64 %92, i64 %93)
  store i64 %94, i64* %17, align 8
  %95 = load i64, i64* %17, align 8
  %96 = icmp ne i64 %95, -1
  br i1 %96, label %97, label %120

97:                                               ; preds = %73
  %98 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %8, align 8
  %99 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %100, i64 %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* @PAGE_SHIFT, align 8
  %109 = shl i64 %107, %108
  %110 = add i64 %106, %109
  store i64 %110, i64* %17, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i64, i64* @PAGE_SHIFT, align 8
  %114 = trunc i64 %113 to i32
  %115 = shl i32 %112, %114
  %116 = zext i32 %115 to i64
  %117 = add i64 %111, %116
  %118 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %8, align 8
  %119 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %124

120:                                              ; preds = %73
  store i64 0, i64* %13, align 8
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %45

124:                                              ; preds = %97, %72, %45
  %125 = load i64, i64* %17, align 8
  ret i64 %125
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @dma_get_seg_boundary(%struct.device*) #1

declare dso_local i64 @iommu_device_max_index(i32, i64, i64) #1

declare dso_local i64 @iommu_area_alloc(i32, i64, i64, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
