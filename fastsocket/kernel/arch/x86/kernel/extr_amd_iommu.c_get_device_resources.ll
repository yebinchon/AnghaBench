; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_get_device_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_get_device_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { %struct.dma_ops_domain* }
%struct.dma_ops_domain = type { %struct.protection_domain }
%struct.protection_domain = type { i32 }
%struct.device = type { i32* }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@pci_bus_type = common dso_local global i32 0, align 4
@amd_iommu_last_bdf = common dso_local global i64 0, align 8
@amd_iommu_alias_table = common dso_local global i64* null, align 8
@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Using protection domain %d for device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.amd_iommu**, %struct.protection_domain**, i64*)* @get_device_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_device_resources(%struct.device* %0, %struct.amd_iommu** %1, %struct.protection_domain** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.amd_iommu**, align 8
  %8 = alloca %struct.protection_domain**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.dma_ops_domain*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.amd_iommu** %1, %struct.amd_iommu*** %7, align 8
  store %struct.protection_domain** %2, %struct.protection_domain*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.amd_iommu**, %struct.amd_iommu*** %7, align 8
  store %struct.amd_iommu* null, %struct.amd_iommu** %13, align 8
  %14 = load %struct.protection_domain**, %struct.protection_domain*** %8, align 8
  store %struct.protection_domain* null, %struct.protection_domain** %14, align 8
  %15 = load i64*, i64** %9, align 8
  store i64 65535, i64* %15, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, @pci_bus_type
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %102

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call %struct.pci_dev* @to_pci_dev(%struct.device* %22)
  store %struct.pci_dev* %23, %struct.pci_dev** %11, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @calc_devid(i32 %28, i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @amd_iommu_last_bdf, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %102

37:                                               ; preds = %21
  %38 = load i64*, i64** @amd_iommu_alias_table, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %9, align 8
  store i64 %41, i64* %42, align 8
  %43 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %43, i64 %45
  %47 = load %struct.amd_iommu*, %struct.amd_iommu** %46, align 8
  %48 = load %struct.amd_iommu**, %struct.amd_iommu*** %7, align 8
  store %struct.amd_iommu* %47, %struct.amd_iommu** %48, align 8
  %49 = load %struct.amd_iommu**, %struct.amd_iommu*** %7, align 8
  %50 = load %struct.amd_iommu*, %struct.amd_iommu** %49, align 8
  %51 = icmp eq %struct.amd_iommu* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %102

53:                                               ; preds = %37
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.protection_domain* @domain_for_device(i64 %55)
  %57 = load %struct.protection_domain**, %struct.protection_domain*** %8, align 8
  store %struct.protection_domain* %56, %struct.protection_domain** %57, align 8
  %58 = load %struct.protection_domain**, %struct.protection_domain*** %8, align 8
  %59 = load %struct.protection_domain*, %struct.protection_domain** %58, align 8
  %60 = icmp eq %struct.protection_domain* %59, null
  br i1 %60, label %61, label %90

61:                                               ; preds = %53
  %62 = load i64*, i64** %9, align 8
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.dma_ops_domain* @find_protection_domain(i64 %63)
  store %struct.dma_ops_domain* %64, %struct.dma_ops_domain** %10, align 8
  %65 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %10, align 8
  %66 = icmp ne %struct.dma_ops_domain* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load %struct.amd_iommu**, %struct.amd_iommu*** %7, align 8
  %69 = load %struct.amd_iommu*, %struct.amd_iommu** %68, align 8
  %70 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %69, i32 0, i32 0
  %71 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %70, align 8
  store %struct.dma_ops_domain* %71, %struct.dma_ops_domain** %10, align 8
  br label %72

72:                                               ; preds = %67, %61
  %73 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %10, align 8
  %74 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %73, i32 0, i32 0
  %75 = load %struct.protection_domain**, %struct.protection_domain*** %8, align 8
  store %struct.protection_domain* %74, %struct.protection_domain** %75, align 8
  %76 = load %struct.amd_iommu**, %struct.amd_iommu*** %7, align 8
  %77 = load %struct.amd_iommu*, %struct.amd_iommu** %76, align 8
  %78 = load %struct.protection_domain**, %struct.protection_domain*** %8, align 8
  %79 = load %struct.protection_domain*, %struct.protection_domain** %78, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @attach_device(%struct.amd_iommu* %77, %struct.protection_domain* %79, i64 %81)
  %83 = load %struct.protection_domain**, %struct.protection_domain*** %8, align 8
  %84 = load %struct.protection_domain*, %struct.protection_domain** %83, align 8
  %85 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = call i32 @dev_name(%struct.device* %87)
  %89 = call i32 @DUMP_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %72, %53
  %91 = load i64, i64* %12, align 8
  %92 = call %struct.protection_domain* @domain_for_device(i64 %91)
  %93 = icmp eq %struct.protection_domain* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.amd_iommu**, %struct.amd_iommu*** %7, align 8
  %96 = load %struct.amd_iommu*, %struct.amd_iommu** %95, align 8
  %97 = load %struct.protection_domain**, %struct.protection_domain*** %8, align 8
  %98 = load %struct.protection_domain*, %struct.protection_domain** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @attach_device(%struct.amd_iommu* %96, %struct.protection_domain* %98, i64 %99)
  br label %101

101:                                              ; preds = %94, %90
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %52, %36, %20
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @calc_devid(i32, i32) #1

declare dso_local %struct.protection_domain* @domain_for_device(i64) #1

declare dso_local %struct.dma_ops_domain* @find_protection_domain(i64) #1

declare dso_local i32 @attach_device(%struct.amd_iommu*, %struct.protection_domain*, i64) #1

declare dso_local i32 @DUMP_printk(i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
