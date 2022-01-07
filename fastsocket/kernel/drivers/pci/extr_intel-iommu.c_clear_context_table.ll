; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_clear_context_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_clear_context_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, %struct.root_entry* }
%struct.root_entry = type { i32 }
%struct.context_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, i64, i64)* @clear_context_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_context_table(%struct.intel_iommu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.root_entry*, align 8
  %8 = alloca %struct.context_entry*, align 8
  %9 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %11 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %15 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %14, i32 0, i32 1
  %16 = load %struct.root_entry*, %struct.root_entry** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %16, i64 %17
  store %struct.root_entry* %18, %struct.root_entry** %7, align 8
  %19 = load %struct.root_entry*, %struct.root_entry** %7, align 8
  %20 = call %struct.context_entry* @get_context_addr_from_root(%struct.root_entry* %19)
  store %struct.context_entry* %20, %struct.context_entry** %8, align 8
  %21 = load %struct.context_entry*, %struct.context_entry** %8, align 8
  %22 = icmp ne %struct.context_entry* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load %struct.context_entry*, %struct.context_entry** %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.context_entry, %struct.context_entry* %24, i64 %25
  %27 = call i32 @context_clear_entry(%struct.context_entry* %26)
  %28 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %29 = load %struct.context_entry*, %struct.context_entry** %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.context_entry, %struct.context_entry* %29, i64 %30
  %32 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %28, %struct.context_entry* %31, i32 4)
  br label %33

33:                                               ; preds = %23, %3
  %34 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %35 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.context_entry* @get_context_addr_from_root(%struct.root_entry*) #1

declare dso_local i32 @context_clear_entry(%struct.context_entry*) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, %struct.context_entry*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
