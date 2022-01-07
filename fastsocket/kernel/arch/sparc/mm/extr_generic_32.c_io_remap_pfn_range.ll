; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_generic_32.c_io_remap_pfn_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_generic_32.c_io_remap_pfn_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_IO = common dso_local global i32 0, align 4
@VM_RESERVED = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i64 0, align 8
@PGDIR_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mm_struct*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %14, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load %struct.mm_struct*, %struct.mm_struct** %24, align 8
  store %struct.mm_struct* %25, %struct.mm_struct** %15, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @GET_IOSPACE(i64 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @GET_PFN(i64 %28)
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = shl i64 %29, %30
  store i64 %31, i64* %17, align 8
  %32 = load i32, i32* @VM_IO, align 4
  %33 = load i32, i32* @VM_RESERVED, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VM_PFNMAP, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = lshr i64 %41, %42
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = shl i64 %45, 28
  %47 = or i64 %43, %46
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %17, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %17, align 8
  %53 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32* @pgd_offset(%struct.mm_struct* %53, i64 %54)
  store i32* %55, i32** %12, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @flush_cache_range(%struct.vm_area_struct* %56, i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %90, %5
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32* @pmd_alloc(%struct.mm_struct* %65, i32* %66, i64 %67)
  store i32* %68, i32** %18, align 8
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** %18, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %98

74:                                               ; preds = %64
  %75 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %78, %79
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %7, align 8
  %83 = add i64 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @io_remap_pmd_range(%struct.mm_struct* %75, i32* %76, i64 %77, i64 %80, i64 %83, i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %74
  br label %98

90:                                               ; preds = %74
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @PGDIR_SIZE, align 8
  %93 = add i64 %91, %92
  %94 = load i64, i64* @PGDIR_MASK, align 8
  %95 = and i64 %93, %94
  store i64 %95, i64* %7, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %12, align 8
  br label %60

98:                                               ; preds = %89, %73, %60
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i32 @flush_tlb_range(%struct.vm_area_struct* %99, i64 %100, i64 %101)
  %103 = load i32, i32* %11, align 4
  ret i32 %103
}

declare dso_local i32 @GET_IOSPACE(i64) #1

declare dso_local i64 @GET_PFN(i64) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @io_remap_pmd_range(%struct.mm_struct*, i32*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
