; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_alloc_root_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_alloc_root_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, %struct.root_entry* }
%struct.root_entry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ROOT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*)* @iommu_alloc_root_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_alloc_root_entry(%struct.intel_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca %struct.root_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %3, align 8
  %6 = call i64 (...) @alloc_pgtable_page()
  %7 = inttoptr i64 %6 to %struct.root_entry*
  store %struct.root_entry* %7, %struct.root_entry** %4, align 8
  %8 = load %struct.root_entry*, %struct.root_entry** %4, align 8
  %9 = icmp ne %struct.root_entry* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %15 = load %struct.root_entry*, %struct.root_entry** %4, align 8
  %16 = load i32, i32* @ROOT_SIZE, align 4
  %17 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %14, %struct.root_entry* %15, i32 %16)
  %18 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %19 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.root_entry*, %struct.root_entry** %4, align 8
  %23 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %24 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %23, i32 0, i32 1
  store %struct.root_entry* %22, %struct.root_entry** %24, align 8
  %25 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %26 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %13, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @alloc_pgtable_page(...) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, %struct.root_entry*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
