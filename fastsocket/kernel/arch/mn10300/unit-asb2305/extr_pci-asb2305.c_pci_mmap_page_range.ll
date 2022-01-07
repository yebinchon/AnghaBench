; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2305/extr_pci-asb2305.c_pci_mmap_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2305/extr_pci-asb2305.c_pci_mmap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vm_area_struct = type { i32, i32, i64, i64, i32 }

@VM_LOCKED = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@_PAGE_CACHE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_mmap_page_range(%struct.pci_dev* %0, %struct.vm_area_struct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @VM_LOCKED, align 4
  %12 = load i32, i32* @VM_IO, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @pgprot_val(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* @_PAGE_CACHE, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %10, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @__pgprot(i64 %26)
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %30, i64 %33, i32 %36, i64 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %4
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i32 @__pgprot(i64) #1

declare dso_local i64 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
