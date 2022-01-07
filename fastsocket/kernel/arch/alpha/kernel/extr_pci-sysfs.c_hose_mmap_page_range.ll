; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci-sysfs.c_hose_mmap_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci-sysfs.c_hose_mmap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_controller = type { i64, i64, i64, i64 }
%struct.vm_area_struct = type { i64, i32, i32, i64, i64 }

@pci_mmap_mem = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_controller*, %struct.vm_area_struct*, i32, i32)* @hose_mmap_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hose_mmap_page_range(%struct.pci_controller* %0, %struct.vm_area_struct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_controller*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pci_controller* %0, %struct.pci_controller** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @pci_mmap_mem, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %18 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  br label %24

20:                                               ; preds = %13
  %21 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %22 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i64 [ %19, %16 ], [ %23, %20 ]
  store i64 %25, i64* %9, align 8
  br label %39

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %31 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.pci_controller*, %struct.pci_controller** %5, align 8
  %35 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = lshr i64 %40, %41
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i32, i32* @VM_IO, align 4
  %48 = load i32, i32* @VM_RESERVED, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %59 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %54, i64 %57, i64 %60, i64 %67, i32 %70)
  ret i32 %71
}

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
