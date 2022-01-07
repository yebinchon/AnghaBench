; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_vm_domain_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_vm_domain_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*)* @vm_domain_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_domain_exit(%struct.dmar_domain* %0) #0 {
  %2 = alloca %struct.dmar_domain*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %2, align 8
  %3 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %4 = icmp ne %struct.dmar_domain* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %8 = call i32 @vm_domain_remove_all_dev_info(%struct.dmar_domain* %7)
  %9 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %10 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %9, i32 0, i32 1
  %11 = call i32 @put_iova_domain(i32* %10)
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %13 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %14 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DOMAIN_MAX_PFN(i32 %15)
  %17 = call i32 @dma_pte_clear_range(%struct.dmar_domain* %12, i32 0, i32 %16)
  %18 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %20 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @DOMAIN_MAX_PFN(i32 %21)
  %23 = call i32 @dma_pte_free_pagetable(%struct.dmar_domain* %18, i32 0, i32 %22)
  %24 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %25 = call i32 @iommu_free_vm_domain(%struct.dmar_domain* %24)
  %26 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %27 = call i32 @free_domain_mem(%struct.dmar_domain* %26)
  br label %28

28:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @vm_domain_remove_all_dev_info(%struct.dmar_domain*) #1

declare dso_local i32 @put_iova_domain(i32*) #1

declare dso_local i32 @dma_pte_clear_range(%struct.dmar_domain*, i32, i32) #1

declare dso_local i32 @DOMAIN_MAX_PFN(i32) #1

declare dso_local i32 @dma_pte_free_pagetable(%struct.dmar_domain*, i32, i32) #1

declare dso_local i32 @iommu_free_vm_domain(%struct.dmar_domain*) #1

declare dso_local i32 @free_domain_mem(%struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
