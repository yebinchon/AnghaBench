; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___unmap_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___unmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.dma_ops_domain = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@bad_dma_address = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@alloced_io_mem = common dso_local global i32 0, align 4
@amd_iommu_unmap_flush = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*, %struct.dma_ops_domain*, i64, i64, i32)* @__unmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unmap_single(%struct.amd_iommu* %0, %struct.dma_ops_domain* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.amd_iommu*, align 8
  %7 = alloca %struct.dma_ops_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %6, align 8
  store %struct.dma_ops_domain* %1, %struct.dma_ops_domain** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @bad_dma_address, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %23 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %5
  br label %79

27:                                               ; preds = %18
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = call i32 @iommu_num_pages(i64 %29, i64 %30, i64 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i64, i64* @PAGE_MASK, align 8
  %34 = load i64, i64* %8, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %50, %27
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %14, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.amd_iommu*, %struct.amd_iommu** %6, align 8
  %44 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @dma_ops_domain_unmap(%struct.amd_iommu* %43, %struct.dma_ops_domain* %44, i64 %45)
  %47 = load i64, i64* @PAGE_SIZE, align 8
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %42
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %12, align 8
  br label %37

53:                                               ; preds = %37
  %54 = load i32, i32* @alloced_io_mem, align 4
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @SUB_STATS_COUNTER(i32 %54, i64 %55)
  %57 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @dma_ops_free_addresses(%struct.dma_ops_domain* %57, i64 %58, i32 %59)
  %61 = load i64, i64* @amd_iommu_unmap_flush, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %53
  %64 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %65 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63, %53
  %69 = load %struct.amd_iommu*, %struct.amd_iommu** %6, align 8
  %70 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %71 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @iommu_flush_pages(%struct.amd_iommu* %69, i32 %73, i64 %74, i64 %75)
  %77 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %7, align 8
  %78 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %26, %68, %63
  ret void
}

declare dso_local i32 @iommu_num_pages(i64, i64, i64) #1

declare dso_local i32 @dma_ops_domain_unmap(%struct.amd_iommu*, %struct.dma_ops_domain*, i64) #1

declare dso_local i32 @SUB_STATS_COUNTER(i32, i64) #1

declare dso_local i32 @dma_ops_free_addresses(%struct.dma_ops_domain*, i64, i32) #1

declare dso_local i32 @iommu_flush_pages(%struct.amd_iommu*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
