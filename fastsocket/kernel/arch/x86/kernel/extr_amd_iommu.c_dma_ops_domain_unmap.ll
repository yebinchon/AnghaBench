; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_domain_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_dma_ops_domain_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.dma_ops_domain = type { i64, %struct.aperture_range** }
%struct.aperture_range = type { i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*, %struct.dma_ops_domain*, i64)* @dma_ops_domain_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_ops_domain_unmap(%struct.amd_iommu* %0, %struct.dma_ops_domain* %1, i64 %2) #0 {
  %4 = alloca %struct.amd_iommu*, align 8
  %5 = alloca %struct.dma_ops_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.aperture_range*, align 8
  %8 = alloca i64*, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %4, align 8
  store %struct.dma_ops_domain* %1, %struct.dma_ops_domain** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %5, align 8
  %11 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %5, align 8
  %17 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %16, i32 0, i32 1
  %18 = load %struct.aperture_range**, %struct.aperture_range*** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @APERTURE_RANGE_INDEX(i64 %19)
  %21 = getelementptr inbounds %struct.aperture_range*, %struct.aperture_range** %18, i64 %20
  %22 = load %struct.aperture_range*, %struct.aperture_range** %21, align 8
  store %struct.aperture_range* %22, %struct.aperture_range** %7, align 8
  %23 = load %struct.aperture_range*, %struct.aperture_range** %7, align 8
  %24 = icmp ne %struct.aperture_range* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %50

26:                                               ; preds = %15
  %27 = load %struct.aperture_range*, %struct.aperture_range** %7, align 8
  %28 = getelementptr inbounds %struct.aperture_range, %struct.aperture_range* %27, i32 0, i32 0
  %29 = load i64**, i64*** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @APERTURE_PAGE_INDEX(i64 %30)
  %32 = getelementptr inbounds i64*, i64** %29, i64 %31
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** %8, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %50

37:                                               ; preds = %26
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @PM_LEVEL_INDEX(i32 0, i64 %38)
  %40 = load i64*, i64** %8, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64* %42, i64** %8, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load i64*, i64** %8, align 8
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %37, %36, %25, %14
  ret void
}

declare dso_local i64 @APERTURE_RANGE_INDEX(i64) #1

declare dso_local i64 @APERTURE_PAGE_INDEX(i64) #1

declare dso_local i32 @PM_LEVEL_INDEX(i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
