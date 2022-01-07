; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_flush_iotlb_psi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_flush_iotlb_psi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)* }
%struct.intel_iommu.0 = type opaque

@VTD_PAGE_SHIFT = common dso_local global i32 0, align 4
@DMA_TLB_DSI_FLUSH = common dso_local global i32 0, align 4
@DMA_TLB_PSI_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, i64, i64, i32)* @iommu_flush_iotlb_psi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_flush_iotlb_psi(%struct.intel_iommu* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @__roundup_pow_of_two(i32 %11)
  %13 = call i32 @ilog2(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @VTD_PAGE_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %23 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cap_pgsel_inv(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %30 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cap_max_amask_val(i32 %31)
  %33 = icmp ugt i32 %28, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27, %4
  %35 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %36 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)*, i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)** %37, align 8
  %39 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %40 = bitcast %struct.intel_iommu* %39 to %struct.intel_iommu.0*
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* @DMA_TLB_DSI_FLUSH, align 4
  %43 = call i32 %38(%struct.intel_iommu.0* %40, i64 %41, i32 0, i32 0, i32 %42)
  br label %56

44:                                               ; preds = %27
  %45 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %46 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)*, i32 (%struct.intel_iommu.0*, i64, i32, i32, i32)** %47, align 8
  %49 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %50 = bitcast %struct.intel_iommu* %49 to %struct.intel_iommu.0*
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @DMA_TLB_PSI_FLUSH, align 4
  %55 = call i32 %48(%struct.intel_iommu.0* %50, i64 %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %44, %34
  %57 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %58 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cap_caching_mode(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62, %56
  %66 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %67 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @iommu_flush_dev_iotlb(i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %65, %62
  ret void
}

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cap_pgsel_inv(i32) #1

declare dso_local i32 @cap_max_amask_val(i32) #1

declare dso_local i32 @cap_caching_mode(i32) #1

declare dso_local i32 @iommu_flush_dev_iotlb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
