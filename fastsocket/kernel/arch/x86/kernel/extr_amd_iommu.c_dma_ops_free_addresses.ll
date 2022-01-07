; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_free_addresses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_free_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_ops_domain = type { i64, i32, %struct.aperture_range** }
%struct.aperture_range = type { i32 }

@APERTURE_RANGE_SHIFT = common dso_local global i64 0, align 8
@APERTURE_MAX_RANGES = common dso_local global i32 0, align 4
@APERTURE_RANGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_ops_domain*, i64, i32)* @dma_ops_free_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_ops_free_addresses(%struct.dma_ops_domain* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.dma_ops_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aperture_range*, align 8
  store %struct.dma_ops_domain* %0, %struct.dma_ops_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @APERTURE_RANGE_SHIFT, align 8
  %11 = lshr i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %14 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %13, i32 0, i32 2
  %15 = load %struct.aperture_range**, %struct.aperture_range*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.aperture_range*, %struct.aperture_range** %15, i64 %17
  %19 = load %struct.aperture_range*, %struct.aperture_range** %18, align 8
  store %struct.aperture_range* %19, %struct.aperture_range** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @APERTURE_MAX_RANGES, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.aperture_range*, %struct.aperture_range** %8, align 8
  %25 = icmp eq %struct.aperture_range* %24, null
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i1 [ true, %3 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %32 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %4, align 8
  %37 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @APERTURE_RANGE_SIZE, align 8
  %41 = urem i64 %39, %40
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = lshr i64 %41, %42
  store i64 %43, i64* %5, align 8
  %44 = load %struct.aperture_range*, %struct.aperture_range** %8, align 8
  %45 = getelementptr inbounds %struct.aperture_range, %struct.aperture_range* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @iommu_area_free(i32 %46, i64 %47, i32 %48)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iommu_area_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
