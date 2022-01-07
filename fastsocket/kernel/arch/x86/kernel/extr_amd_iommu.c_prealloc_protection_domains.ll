; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_prealloc_protection_domains.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_prealloc_protection_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_ops_domain = type { i64, i32, i32 }

@PCI_ANY_ID = common dso_local global i32 0, align 4
@amd_iommu_last_bdf = common dso_local global i64 0, align 8
@amd_iommu_alias_table = common dso_local global i64* null, align 8
@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@iommu_pd_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prealloc_protection_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prealloc_protection_domains() #0 {
  %1 = alloca %struct.pci_dev*, align 8
  %2 = alloca %struct.dma_ops_domain*, align 8
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %1, align 8
  br label %6

6:                                                ; preds = %70, %48, %42, %34, %25, %0
  %7 = load i32, i32* @PCI_ANY_ID, align 4
  %8 = load i32, i32* @PCI_ANY_ID, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %10 = call %struct.pci_dev* @pci_get_device(i32 %7, i32 %8, %struct.pci_dev* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %1, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %12, label %74

12:                                               ; preds = %6
  %13 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %1, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @calc_devid(i32 %17, i32 %20)
  store i64 %21, i64* %4, align 8
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @amd_iommu_last_bdf, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %6

26:                                               ; preds = %12
  %27 = load i64*, i64** @amd_iommu_alias_table, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @domain_for_device(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %6

35:                                               ; preds = %26
  %36 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %36, i64 %37
  %39 = load %struct.amd_iommu*, %struct.amd_iommu** %38, align 8
  store %struct.amd_iommu* %39, %struct.amd_iommu** %3, align 8
  %40 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %41 = icmp ne %struct.amd_iommu* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %6

43:                                               ; preds = %35
  %44 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %45 = call %struct.dma_ops_domain* @dma_ops_domain_alloc(%struct.amd_iommu* %44)
  store %struct.dma_ops_domain* %45, %struct.dma_ops_domain** %2, align 8
  %46 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %47 = icmp ne %struct.dma_ops_domain* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %6

49:                                               ; preds = %43
  %50 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @init_unity_mappings_for_device(%struct.dma_ops_domain* %50, i64 %51)
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %55 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %57 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %58 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %57, i32 0, i32 2
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @attach_device(%struct.amd_iommu* %56, i32* %58, i64 %59)
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %49
  %65 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %66 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %67 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %66, i32 0, i32 2
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @attach_device(%struct.amd_iommu* %65, i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %64, %49
  %71 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %2, align 8
  %72 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %71, i32 0, i32 1
  %73 = call i32 @list_add_tail(i32* %72, i32* @iommu_pd_list)
  br label %6

74:                                               ; preds = %6
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i64 @calc_devid(i32, i32) #1

declare dso_local i64 @domain_for_device(i64) #1

declare dso_local %struct.dma_ops_domain* @dma_ops_domain_alloc(%struct.amd_iommu*) #1

declare dso_local i32 @init_unity_mappings_for_device(%struct.dma_ops_domain*, i64) #1

declare dso_local i32 @attach_device(%struct.amd_iommu*, i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
