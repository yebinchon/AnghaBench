; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_pci_dma_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_pci_dma_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { %struct.pci_iommu_arena*, %struct.pci_iommu_arena* }
%struct.pci_iommu_arena = type { i32, i32 }
%struct.pci_dev = type { %struct.pci_controller* }

@__direct_map_size = common dso_local global i32 0, align 4
@__direct_map_base = common dso_local global i32 0, align 4
@max_low_pfn = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@pci_isa_hose = common dso_local global %struct.pci_controller* null, align 8
@MAX_DMA_ADDRESS = common dso_local global i32 0, align 4
@IDENT_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_dma_supported(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_controller*, align 8
  %7 = alloca %struct.pci_iommu_arena*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @__direct_map_size, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, i32* @__direct_map_base, align 4
  %12 = load i32, i32* @__direct_map_size, align 4
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @__direct_map_base, align 4
  %19 = load i32, i32* @max_low_pfn, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = add nsw i32 %18, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17, %10
  store i32 1, i32* %3, align 4
  br label %85

27:                                               ; preds = %17, %2
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = icmp ne %struct.pci_dev* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load %struct.pci_controller*, %struct.pci_controller** %32, align 8
  br label %36

34:                                               ; preds = %27
  %35 = load %struct.pci_controller*, %struct.pci_controller** @pci_isa_hose, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi %struct.pci_controller* [ %33, %30 ], [ %35, %34 ]
  store %struct.pci_controller* %37, %struct.pci_controller** %6, align 8
  %38 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %39 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %38, i32 0, i32 1
  %40 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %39, align 8
  store %struct.pci_iommu_arena* %40, %struct.pci_iommu_arena** %7, align 8
  %41 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %7, align 8
  %42 = icmp ne %struct.pci_iommu_arena* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %7, align 8
  %45 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %7, align 8
  %48 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %5, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %85

55:                                               ; preds = %43, %36
  %56 = load %struct.pci_controller*, %struct.pci_controller** %6, align 8
  %57 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %56, i32 0, i32 0
  %58 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %57, align 8
  store %struct.pci_iommu_arena* %58, %struct.pci_iommu_arena** %7, align 8
  %59 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %7, align 8
  %60 = icmp ne %struct.pci_iommu_arena* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %7, align 8
  %63 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %7, align 8
  %66 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %5, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %85

73:                                               ; preds = %61, %55
  %74 = load i32, i32* @__direct_map_base, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @MAX_DMA_ADDRESS, align 4
  %78 = load i32, i32* @IDENT_ADDR, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %5, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %85

84:                                               ; preds = %76, %73
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %72, %54, %26
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
