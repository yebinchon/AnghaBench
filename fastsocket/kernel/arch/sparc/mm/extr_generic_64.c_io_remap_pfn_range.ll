; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_generic_64.c_io_remap_pfn_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_generic_64.c_io_remap_pfn_range.c"
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
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %14, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 2
  %26 = load %struct.mm_struct*, %struct.mm_struct** %25, align 8
  store %struct.mm_struct* %26, %struct.mm_struct** %15, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @GET_IOSPACE(i64 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @GET_PFN(i64 %29)
  %31 = load i64, i64* @PAGE_SHIFT, align 8
  %32 = shl i64 %30, %31
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = shl i64 %35, 32
  %37 = or i64 %33, %36
  store i64 %37, i64* %18, align 8
  %38 = load i32, i32* @VM_IO, align 4
  %39 = load i32, i32* @VM_RESERVED, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @VM_PFNMAP, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* @PAGE_SHIFT, align 8
  %49 = lshr i64 %47, %48
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %17, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %17, align 8
  %55 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32* @pgd_offset(%struct.mm_struct* %55, i64 %56)
  store i32* %57, i32** %12, align 8
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @flush_cache_range(%struct.vm_area_struct* %58, i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %92, %5
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %62
  %67 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32* @pud_alloc(%struct.mm_struct* %67, i32* %68, i64 %69)
  store i32* %70, i32** %19, align 8
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32*, i32** %19, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %100

76:                                               ; preds = %66
  %77 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %7, align 8
  %82 = sub i64 %80, %81
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @io_remap_pud_range(%struct.mm_struct* %77, i32* %78, i64 %79, i64 %82, i64 %85, i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %76
  br label %100

92:                                               ; preds = %76
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @PGDIR_SIZE, align 8
  %95 = add i64 %93, %94
  %96 = load i64, i64* @PGDIR_MASK, align 8
  %97 = and i64 %95, %96
  store i64 %97, i64* %7, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %12, align 8
  br label %62

100:                                              ; preds = %91, %75, %62
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @flush_tlb_range(%struct.vm_area_struct* %101, i64 %102, i64 %103)
  %105 = load i32, i32* %11, align 4
  ret i32 %105
}

declare dso_local i32 @GET_IOSPACE(i64) #1

declare dso_local i64 @GET_PFN(i64) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @io_remap_pud_range(%struct.mm_struct*, i32*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
