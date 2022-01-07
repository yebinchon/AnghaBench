; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mspec.c_mspec_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mspec.c_mspec_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.vma_data* }
%struct.vma_data = type { i64*, i64, i32, i32 }
%struct.vm_fault = type { i64, i64 }

@VM_FAULT_OOM = common dso_local global i32 0, align 4
@MSPEC_FETCHOP = common dso_local global i64 0, align 8
@__IA64_UNCACHED_OFFSET = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @mspec_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspec_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vma_data*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %11 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load %struct.vma_data*, %struct.vma_data** %15, align 8
  store %struct.vma_data* %16, %struct.vma_data** %10, align 8
  %17 = load %struct.vma_data*, %struct.vma_data** %10, align 8
  %18 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %2
  %26 = call i32 (...) @numa_node_id()
  %27 = call i64 @uncached_alloc_page(i32 %26, i32 1)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %31, i32* %3, align 4
  br label %92

32:                                               ; preds = %25
  %33 = load %struct.vma_data*, %struct.vma_data** %10, align 8
  %34 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %33, i32 0, i32 2
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.vma_data*, %struct.vma_data** %10, align 8
  %37 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  %44 = load %struct.vma_data*, %struct.vma_data** %10, align 8
  %45 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.vma_data*, %struct.vma_data** %10, align 8
  %50 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %48, i64* %53, align 8
  br label %63

54:                                               ; preds = %32
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @uncached_free_page(i64 %55, i32 1)
  %57 = load %struct.vma_data*, %struct.vma_data** %10, align 8
  %58 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %54, %43
  %64 = load %struct.vma_data*, %struct.vma_data** %10, align 8
  %65 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock(i32* %65)
  br label %67

67:                                               ; preds = %63, %2
  %68 = load %struct.vma_data*, %struct.vma_data** %10, align 8
  %69 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MSPEC_FETCHOP, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @TO_AMO(i64 %74)
  store i64 %75, i64* %6, align 8
  br label %81

76:                                               ; preds = %67
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %79 = xor i64 %78, -1
  %80 = and i64 %77, %79
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @PAGE_SHIFT, align 8
  %84 = lshr i64 %82, %83
  store i64 %84, i64* %8, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %86 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %87 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @vm_insert_pfn(%struct.vm_area_struct* %85, i64 %88, i64 %89)
  %91 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %81, %30
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @uncached_alloc_page(i32, i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @uncached_free_page(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @TO_AMO(i64) #1

declare dso_local i32 @vm_insert_pfn(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
