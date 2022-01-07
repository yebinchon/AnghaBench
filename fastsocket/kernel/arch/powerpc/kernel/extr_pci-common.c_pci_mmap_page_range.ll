; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci-common.c_pci_mmap_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_pci-common.c_pci_mmap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vm_area_struct = type { i32, i32, i64, i64 }
%struct.resource = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_mmap_page_range(%struct.pci_dev* %0, %struct.vm_area_struct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.resource* @__pci_mmap_make_offset(%struct.pci_dev* %18, i32* %10, i32 %19)
  store %struct.resource* %20, %struct.resource** %11, align 8
  %21 = load %struct.resource*, %struct.resource** %11, align 8
  %22 = icmp eq %struct.resource* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %61

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = load %struct.resource*, %struct.resource** %11, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @__pci_mmap_set_pgprot(%struct.pci_dev* %32, %struct.resource* %33, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @remap_pfn_range(%struct.vm_area_struct* %42, i64 %45, i32 %48, i64 %55, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %26, %23
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.resource* @__pci_mmap_make_offset(%struct.pci_dev*, i32*, i32) #1

declare dso_local i32 @__pci_mmap_set_pgprot(%struct.pci_dev*, %struct.resource*, i32, i32, i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
