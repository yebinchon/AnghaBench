; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32, i32, i32, i32, %struct.dma_pte*, i32, i32, i32 }
%struct.dma_pte = type { i32 }
%struct.intel_iommu = type { i32, i32 }

@DMA_32BIT_PFN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"IOMMU: hardware doesn't support agaw %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, i32)* @domain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_init(%struct.dmar_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %11 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %10, i32 0, i32 8
  %12 = load i32, i32* @DMA_32BIT_PFN, align 4
  %13 = call i32 @init_iova_domain(i32* %11, i32 %12)
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %15 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %14, i32 0, i32 7
  %16 = call i32 @spin_lock_init(i32* %15)
  %17 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %18 = call i32 @domain_reserve_special_ranges(%struct.dmar_domain* %17)
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %20 = call %struct.intel_iommu* @domain_get_iommu(%struct.dmar_domain* %19)
  store %struct.intel_iommu* %20, %struct.intel_iommu** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %23 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cap_mgaw(i32 %24)
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %29 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cap_mgaw(i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %2
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %35 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @guestwidth_to_adjustwidth(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @width_to_agaw(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %41 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @cap_sagaw(i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @test_bit(i32 %44, i64* %9)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @find_next_bit(i64* %9, i32 5, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 5
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %109

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %61 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %63 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %62, i32 0, i32 6
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %66 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ecap_coherent(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %72 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  br label %76

73:                                               ; preds = %58
  %74 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %75 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %78 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ecap_sc_support(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %84 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  br label %88

85:                                               ; preds = %76
  %86 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %87 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %86, i32 0, i32 3
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %90 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %89, i32 0, i32 4
  store i32 1, i32* %90, align 8
  %91 = call i64 (...) @alloc_pgtable_page()
  %92 = inttoptr i64 %91 to %struct.dma_pte*
  %93 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %94 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %93, i32 0, i32 5
  store %struct.dma_pte* %92, %struct.dma_pte** %94, align 8
  %95 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %96 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %95, i32 0, i32 5
  %97 = load %struct.dma_pte*, %struct.dma_pte** %96, align 8
  %98 = icmp ne %struct.dma_pte* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %109

102:                                              ; preds = %88
  %103 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %104 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %105 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %104, i32 0, i32 5
  %106 = load %struct.dma_pte*, %struct.dma_pte** %105, align 8
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %103, %struct.dma_pte* %106, i32 %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %102, %99, %54
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @init_iova_domain(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @domain_reserve_special_ranges(%struct.dmar_domain*) #1

declare dso_local %struct.intel_iommu* @domain_get_iommu(%struct.dmar_domain*) #1

declare dso_local i32 @cap_mgaw(i32) #1

declare dso_local i32 @guestwidth_to_adjustwidth(i32) #1

declare dso_local i32 @width_to_agaw(i32) #1

declare dso_local i64 @cap_sagaw(i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @ecap_coherent(i32) #1

declare dso_local i64 @ecap_sc_support(i32) #1

declare dso_local i64 @alloc_pgtable_page(...) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, %struct.dma_pte*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
