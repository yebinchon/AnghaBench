; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64*, i64 }
%struct.amd_iommu = type { i32 }
%struct.protection_domain = type { i32, i32 }

@cnt_alloc_coherent = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@bad_dma_address = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i64*, i32)* @alloc_coherent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_coherent(%struct.device* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.amd_iommu*, align 8
  %13 = alloca %struct.protection_domain*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %16, align 8
  %20 = load i32, i32* @cnt_alloc_coherent, align 4
  %21 = call i32 @INC_STATS_COUNTER(i32 %20)
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i32 @check_device(%struct.device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %115

26:                                               ; preds = %4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @get_device_resources(%struct.device* %27, %struct.amd_iommu** %12, %struct.protection_domain** %13, i32* %14)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @__GFP_DMA, align 4
  %32 = load i32, i32* @__GFP_HIGHMEM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @__GFP_DMA32, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %30, %26
  %40 = load i32, i32* @__GFP_ZERO, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @get_order(i64 %44)
  %46 = call i64 @__get_free_pages(i32 %43, i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store i8* null, i8** %5, align 8
  br label %115

51:                                               ; preds = %39
  %52 = load i8*, i8** %11, align 8
  %53 = call i64 @virt_to_phys(i8* %52)
  store i64 %53, i64* %15, align 8
  %54 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  %55 = icmp ne %struct.amd_iommu* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %58 = icmp ne %struct.protection_domain* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56, %51
  %60 = load i64, i64* %15, align 8
  %61 = load i64*, i64** %8, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i8*, i8** %11, align 8
  store i8* %62, i8** %5, align 8
  br label %115

63:                                               ; preds = %56
  %64 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %65 = call i32 @dma_ops_domain(%struct.protection_domain* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %109

68:                                               ; preds = %63
  %69 = load i64, i64* %16, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %16, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %78 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %77, i32 0, i32 0
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  %83 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %84 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %89 = load i64, i64* %16, align 8
  %90 = call i64 @__map_single(%struct.device* %81, %struct.amd_iommu* %82, i32 %85, i64 %86, i64 %87, i32 %88, i32 1, i64 %89)
  %91 = load i64*, i64** %8, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i64*, i64** %8, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @bad_dma_address, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %76
  %97 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %98 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %97, i32 0, i32 0
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  br label %109

101:                                              ; preds = %76
  %102 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  %103 = call i32 @iommu_completion_wait(%struct.amd_iommu* %102)
  %104 = load %struct.protection_domain*, %struct.protection_domain** %13, align 8
  %105 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %104, i32 0, i32 0
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load i8*, i8** %11, align 8
  store i8* %108, i8** %5, align 8
  br label %115

109:                                              ; preds = %96, %67
  %110 = load i8*, i8** %11, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @get_order(i64 %112)
  %114 = call i32 @free_pages(i64 %111, i32 %113)
  store i8* null, i8** %5, align 8
  br label %115

115:                                              ; preds = %109, %101, %59, %50, %25
  %116 = load i8*, i8** %5, align 8
  ret i8* %116
}

declare dso_local i32 @INC_STATS_COUNTER(i32) #1

declare dso_local i32 @check_device(%struct.device*) #1

declare dso_local i32 @get_device_resources(%struct.device*, %struct.amd_iommu**, %struct.protection_domain**, i32*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @dma_ops_domain(%struct.protection_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__map_single(%struct.device*, %struct.amd_iommu*, i32, i64, i64, i32, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
