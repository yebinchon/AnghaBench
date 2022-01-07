; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_alloc_vm_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_alloc_vm_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32, i64 }

@vm_domid = common dso_local global i32 0, align 4
@DOMAIN_FLAG_VIRTUAL_MACHINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmar_domain* ()* @iommu_alloc_vm_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmar_domain* @iommu_alloc_vm_domain() #0 {
  %1 = alloca %struct.dmar_domain*, align 8
  %2 = alloca %struct.dmar_domain*, align 8
  %3 = call %struct.dmar_domain* (...) @alloc_domain_mem()
  store %struct.dmar_domain* %3, %struct.dmar_domain** %2, align 8
  %4 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %5 = icmp ne %struct.dmar_domain* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.dmar_domain* null, %struct.dmar_domain** %1, align 8
  br label %21

7:                                                ; preds = %0
  %8 = load i32, i32* @vm_domid, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @vm_domid, align 4
  %10 = sext i32 %8 to i64
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %12 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %11, i32 0, i32 2
  store i64 %10, i64* %12, align 8
  %13 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %14 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memset(i32 %15, i32 0, i32 4)
  %17 = load i32, i32* @DOMAIN_FLAG_VIRTUAL_MACHINE, align 4
  %18 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  %19 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.dmar_domain*, %struct.dmar_domain** %2, align 8
  store %struct.dmar_domain* %20, %struct.dmar_domain** %1, align 8
  br label %21

21:                                               ; preds = %7, %6
  %22 = load %struct.dmar_domain*, %struct.dmar_domain** %1, align 8
  ret %struct.dmar_domain* %22
}

declare dso_local %struct.dmar_domain* @alloc_domain_mem(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
