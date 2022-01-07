; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_add_dev_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_domain_add_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.pci_dev = type { %struct.TYPE_5__, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_domain_info* }
%struct.device_domain_info = type { i32, i32, %struct.dmar_domain*, %struct.pci_dev*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@device_domain_lock = common dso_local global i32 0, align 4
@device_domain_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.pci_dev*, i32)* @domain_add_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domain_add_dev_info(%struct.dmar_domain* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_domain_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call %struct.device_domain_info* (...) @alloc_devinfo_mem()
  store %struct.device_domain_info* %11, %struct.device_domain_info** %8, align 8
  %12 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %13 = icmp ne %struct.device_domain_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %76

17:                                               ; preds = %3
  %18 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @pci_domain_nr(%struct.TYPE_6__* %20)
  %22 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %23 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %30 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %35 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %38 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %37, i32 0, i32 3
  store %struct.pci_dev* %36, %struct.pci_dev** %38, align 8
  %39 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %40 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %41 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %40, i32 0, i32 2
  store %struct.dmar_domain* %39, %struct.dmar_domain** %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_lock_irqsave(i32* @device_domain_lock, i64 %42)
  %44 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %45 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %44, i32 0, i32 1
  %46 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %47 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %46, i32 0, i32 0
  %48 = call i32 @list_add(i32* %45, i32* %47)
  %49 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %50 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %49, i32 0, i32 0
  %51 = call i32 @list_add(i32* %50, i32* @device_domain_list)
  %52 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.device_domain_info* %52, %struct.device_domain_info** %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @device_domain_lock, i64 %57)
  %59 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @domain_context_mapping(%struct.dmar_domain* %59, %struct.pci_dev* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %17
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @spin_lock_irqsave(i32* @device_domain_lock, i64 %66)
  %68 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %69 = call i32 @unlink_domain_info(%struct.device_domain_info* %68)
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* @device_domain_lock, i64 %70)
  %72 = load %struct.device_domain_info*, %struct.device_domain_info** %8, align 8
  %73 = call i32 @free_devinfo_mem(%struct.device_domain_info* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %65, %14
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.device_domain_info* @alloc_devinfo_mem(...) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @domain_context_mapping(%struct.dmar_domain*, %struct.pci_dev*, i32) #1

declare dso_local i32 @unlink_domain_info(%struct.device_domain_info*) #1

declare dso_local i32 @free_devinfo_mem(%struct.device_domain_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
