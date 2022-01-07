; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_free_context_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_free_context_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, %struct.root_entry* }
%struct.root_entry = type { i32 }
%struct.context_entry = type opaque

@ROOT_ENTRY_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*)* @free_context_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_context_table(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca %struct.root_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.context_entry*, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %7 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %8 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %12 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %11, i32 0, i32 1
  %13 = load %struct.root_entry*, %struct.root_entry** %12, align 8
  %14 = icmp ne %struct.root_entry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %48

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ROOT_ENTRY_NR, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %23 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %22, i32 0, i32 1
  %24 = load %struct.root_entry*, %struct.root_entry** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %24, i64 %26
  store %struct.root_entry* %27, %struct.root_entry** %3, align 8
  %28 = load %struct.root_entry*, %struct.root_entry** %3, align 8
  %29 = call %struct.root_entry* @get_context_addr_from_root(%struct.root_entry* %28)
  %30 = bitcast %struct.root_entry* %29 to %struct.context_entry*
  store %struct.context_entry* %30, %struct.context_entry** %6, align 8
  %31 = load %struct.context_entry*, %struct.context_entry** %6, align 8
  %32 = icmp ne %struct.context_entry* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.context_entry*, %struct.context_entry** %6, align 8
  %35 = bitcast %struct.context_entry* %34 to %struct.root_entry*
  %36 = call i32 @free_pgtable_page(%struct.root_entry* %35)
  br label %37

37:                                               ; preds = %33, %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %43 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %42, i32 0, i32 1
  %44 = load %struct.root_entry*, %struct.root_entry** %43, align 8
  %45 = call i32 @free_pgtable_page(%struct.root_entry* %44)
  %46 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %47 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %46, i32 0, i32 1
  store %struct.root_entry* null, %struct.root_entry** %47, align 8
  br label %48

48:                                               ; preds = %41, %15
  %49 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %50 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.root_entry* @get_context_addr_from_root(%struct.root_entry*) #1

declare dso_local i32 @free_pgtable_page(%struct.root_entry*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
