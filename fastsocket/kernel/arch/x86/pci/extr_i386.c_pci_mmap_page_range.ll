; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_i386.c_pci_mmap_page_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_i386.c_pci_mmap_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.vm_area_struct = type { i32*, i32, i64, i64, i32 }

@pci_mmap_io = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pat_enabled = common dso_local global i64 0, align 8
@_PAGE_CACHE_WC = common dso_local global i64 0, align 8
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@_PAGE_CACHE_UC_MINUS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@pci_mmap_ops = common dso_local global i32 0, align 4

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
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @pci_mmap_io, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %81

17:                                               ; preds = %4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @pgprot_val(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* @pat_enabled, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %81

30:                                               ; preds = %24, %17
  %31 = load i64, i64* @pat_enabled, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* @_PAGE_CACHE_WC, align 8
  %38 = load i64, i64* %10, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %10, align 8
  br label %51

40:                                               ; preds = %33, %30
  %41 = load i64, i64* @pat_enabled, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %45 = icmp sgt i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %40
  %47 = load i64, i64* @_PAGE_CACHE_UC_MINUS, align 8
  %48 = load i64, i64* %10, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @__pgprot(i64 %52)
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %55 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @io_remap_pfn_range(%struct.vm_area_struct* %56, i64 %59, i32 %62, i64 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %51
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %81

78:                                               ; preds = %51
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 0
  store i32* @pci_mmap_ops, i32** %80, align 8
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %75, %27, %14
  %82 = load i32, i32* %5, align 4
  ret i32 %82
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
