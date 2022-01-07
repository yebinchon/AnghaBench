; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.page = type { i32 }
%struct.dma_attrs = type { i32 }
%struct.amd_iommu = type { i32 }
%struct.protection_domain = type { i32, i32 }

@cnt_map_single = common dso_local global i32 0, align 4
@bad_dma_address = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.page*, i64, i64, i32, %struct.dma_attrs*)* @map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_attrs*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.amd_iommu*, align 8
  %16 = alloca %struct.protection_domain*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %13, align 8
  %21 = load %struct.page*, %struct.page** %9, align 8
  %22 = call i64 @page_to_phys(%struct.page* %21)
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %20, align 8
  %25 = load i32, i32* @cnt_map_single, align 4
  %26 = call i32 @INC_STATS_COUNTER(i32 %25)
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = call i32 @check_device(%struct.device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = load i64, i64* @bad_dma_address, align 8
  store i64 %31, i64* %7, align 8
  br label %80

32:                                               ; preds = %6
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %19, align 4
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = call i32 @get_device_resources(%struct.device* %37, %struct.amd_iommu** %15, %struct.protection_domain** %16, i32* %17)
  %39 = load %struct.amd_iommu*, %struct.amd_iommu** %15, align 8
  %40 = icmp eq %struct.amd_iommu* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load %struct.protection_domain*, %struct.protection_domain** %16, align 8
  %43 = icmp eq %struct.protection_domain* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %32
  %45 = load i64, i64* %20, align 8
  store i64 %45, i64* %7, align 8
  br label %80

46:                                               ; preds = %41
  %47 = load %struct.protection_domain*, %struct.protection_domain** %16, align 8
  %48 = call i32 @dma_ops_domain(%struct.protection_domain* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* @bad_dma_address, align 8
  store i64 %51, i64* %7, align 8
  br label %80

52:                                               ; preds = %46
  %53 = load %struct.protection_domain*, %struct.protection_domain** %16, align 8
  %54 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %53, i32 0, i32 0
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = load %struct.amd_iommu*, %struct.amd_iommu** %15, align 8
  %59 = load %struct.protection_domain*, %struct.protection_domain** %16, align 8
  %60 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %20, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %19, align 4
  %66 = call i64 @__map_single(%struct.device* %57, %struct.amd_iommu* %58, i32 %61, i64 %62, i64 %63, i32 %64, i32 0, i32 %65)
  store i64 %66, i64* %18, align 8
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* @bad_dma_address, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %52
  br label %74

71:                                               ; preds = %52
  %72 = load %struct.amd_iommu*, %struct.amd_iommu** %15, align 8
  %73 = call i32 @iommu_completion_wait(%struct.amd_iommu* %72)
  br label %74

74:                                               ; preds = %71, %70
  %75 = load %struct.protection_domain*, %struct.protection_domain** %16, align 8
  %76 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %75, i32 0, i32 0
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i64, i64* %18, align 8
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %74, %50, %44, %30
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @INC_STATS_COUNTER(i32) #1

declare dso_local i32 @check_device(%struct.device*) #1

declare dso_local i32 @get_device_resources(%struct.device*, %struct.amd_iommu**, %struct.protection_domain**, i32*) #1

declare dso_local i32 @dma_ops_domain(%struct.protection_domain*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__map_single(%struct.device*, %struct.amd_iommu*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
