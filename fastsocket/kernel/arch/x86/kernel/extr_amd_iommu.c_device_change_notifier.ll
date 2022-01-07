; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_device_change_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_device_change_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.notifier_block = type { i32 }
%struct.device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.pci_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.protection_domain = type { i32 }
%struct.dma_ops_domain = type { i64, i32 }

@amd_iommu_last_bdf = common dso_local global i64 0, align 8
@amd_iommu_alias_table = common dso_local global i64* null, align 8
@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@iommu_pass_through = common dso_local global i32 0, align 4
@pt_domain = common dso_local global i32 0, align 4
@iommu_pd_list_lock = common dso_local global i32 0, align 4
@iommu_pd_list = common dso_local global i32 0, align 4
@amd_iommu_dma_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @device_change_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_change_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.protection_domain*, align 8
  %11 = alloca %struct.dma_ops_domain*, align 8
  %12 = alloca %struct.amd_iommu*, align 8
  %13 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.device*
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.pci_dev* @to_pci_dev(%struct.device* %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %8, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @calc_devid(i32 %22, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @amd_iommu_last_bdf, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %100

31:                                               ; preds = %3
  %32 = load i64*, i64** @amd_iommu_alias_table, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %36, i64 %37
  %39 = load %struct.amd_iommu*, %struct.amd_iommu** %38, align 8
  store %struct.amd_iommu* %39, %struct.amd_iommu** %12, align 8
  %40 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  %41 = icmp eq %struct.amd_iommu* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %100

43:                                               ; preds = %31
  %44 = load i64, i64* %9, align 8
  %45 = call %struct.protection_domain* @domain_for_device(i64 %44)
  store %struct.protection_domain* %45, %struct.protection_domain** %10, align 8
  %46 = load i64, i64* %5, align 8
  switch i64 %46, label %93 [
    i64 128, label %47
    i64 129, label %59
  ]

47:                                               ; preds = %43
  %48 = load %struct.protection_domain*, %struct.protection_domain** %10, align 8
  %49 = icmp ne %struct.protection_domain* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %100

51:                                               ; preds = %47
  %52 = load i32, i32* @iommu_pass_through, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %94

55:                                               ; preds = %51
  %56 = load %struct.protection_domain*, %struct.protection_domain** %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @detach_device(%struct.protection_domain* %56, i64 %57)
  br label %94

59:                                               ; preds = %43
  %60 = load i32, i32* @iommu_pass_through, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  %64 = load i32, i32* @pt_domain, align 4
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @attach_device(%struct.amd_iommu* %63, i32 %64, i64 %65)
  br label %94

67:                                               ; preds = %59
  %68 = load i64, i64* %9, align 8
  %69 = call %struct.dma_ops_domain* @find_protection_domain(i64 %68)
  store %struct.dma_ops_domain* %69, %struct.dma_ops_domain** %11, align 8
  %70 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %11, align 8
  %71 = icmp ne %struct.dma_ops_domain* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %100

73:                                               ; preds = %67
  %74 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  %75 = call %struct.dma_ops_domain* @dma_ops_domain_alloc(%struct.amd_iommu* %74)
  store %struct.dma_ops_domain* %75, %struct.dma_ops_domain** %11, align 8
  %76 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %11, align 8
  %77 = icmp ne %struct.dma_ops_domain* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %100

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %11, align 8
  %82 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @spin_lock_irqsave(i32* @iommu_pd_list_lock, i64 %83)
  %85 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %11, align 8
  %86 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %85, i32 0, i32 1
  %87 = call i32 @list_add_tail(i32* %86, i32* @iommu_pd_list)
  %88 = load i64, i64* %13, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* @iommu_pd_list_lock, i64 %88)
  %90 = load %struct.device*, %struct.device** %7, align 8
  %91 = getelementptr inbounds %struct.device, %struct.device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32* @amd_iommu_dma_ops, i32** %92, align 8
  br label %94

93:                                               ; preds = %43
  br label %100

94:                                               ; preds = %79, %62, %55, %54
  %95 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @iommu_queue_inv_dev_entry(%struct.amd_iommu* %95, i64 %96)
  %98 = load %struct.amd_iommu*, %struct.amd_iommu** %12, align 8
  %99 = call i32 @iommu_completion_wait(%struct.amd_iommu* %98)
  br label %100

100:                                              ; preds = %94, %93, %78, %72, %50, %42, %30
  ret i32 0
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @calc_devid(i32, i32) #1

declare dso_local %struct.protection_domain* @domain_for_device(i64) #1

declare dso_local i32 @detach_device(%struct.protection_domain*, i64) #1

declare dso_local i32 @attach_device(%struct.amd_iommu*, i32, i64) #1

declare dso_local %struct.dma_ops_domain* @find_protection_domain(i64) #1

declare dso_local %struct.dma_ops_domain* @dma_ops_domain_alloc(%struct.amd_iommu*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iommu_queue_inv_dev_entry(%struct.amd_iommu*, i64) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
