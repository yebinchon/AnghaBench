; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_device_context_mapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_device_context_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, %struct.root_entry* }
%struct.root_entry = type { i32 }
%struct.context_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*, i64, i64)* @device_context_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_context_mapped(%struct.intel_iommu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.root_entry*, align 8
  %8 = alloca %struct.context_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %12 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %11, i32 0, i32 0
  %13 = load i64, i64* %10, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 1
  %17 = load %struct.root_entry*, %struct.root_entry** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %17, i64 %18
  store %struct.root_entry* %19, %struct.root_entry** %7, align 8
  %20 = load %struct.root_entry*, %struct.root_entry** %7, align 8
  %21 = call %struct.context_entry* @get_context_addr_from_root(%struct.root_entry* %20)
  store %struct.context_entry* %21, %struct.context_entry** %8, align 8
  %22 = load %struct.context_entry*, %struct.context_entry** %8, align 8
  %23 = icmp ne %struct.context_entry* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.context_entry*, %struct.context_entry** %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.context_entry, %struct.context_entry* %26, i64 %27
  %29 = call i32 @context_present(%struct.context_entry* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %25, %24
  %31 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %32 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.context_entry* @get_context_addr_from_root(%struct.root_entry*) #1

declare dso_local i32 @context_present(%struct.context_entry*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
