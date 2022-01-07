; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_intel_iommu_domain_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_intel_iommu_domain_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { %struct.dmar_domain* }
%struct.dmar_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*)* @intel_iommu_domain_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_iommu_domain_destroy(%struct.iommu_domain* %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca %struct.dmar_domain*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %2, align 8
  %4 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %5 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %4, i32 0, i32 0
  %6 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  store %struct.dmar_domain* %6, %struct.dmar_domain** %3, align 8
  %7 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %8 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %7, i32 0, i32 0
  store %struct.dmar_domain* null, %struct.dmar_domain** %8, align 8
  %9 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %10 = call i32 @vm_domain_exit(%struct.dmar_domain* %9)
  ret void
}

declare dso_local i32 @vm_domain_exit(%struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
