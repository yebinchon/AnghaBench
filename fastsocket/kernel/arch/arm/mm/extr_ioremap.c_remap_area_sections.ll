; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_ioremap.c_remap_area_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_ioremap.c_remap_area_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_type = type { i32 }

@SZ_1M = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PGDIR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, %struct.mem_type*)* @remap_area_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_area_sections(i64 %0, i64 %1, i64 %2, %struct.mem_type* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mem_type*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mem_type* %3, %struct.mem_type** %8, align 8
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @unmap_area_sections(i64 %17, i64 %18)
  %20 = load i64, i64* %9, align 8
  %21 = call i32* @pgd_offset_k(i64 %20)
  store i32* %21, i32** %11, align 8
  br label %22

22:                                               ; preds = %61, %4
  %23 = load i32*, i32** %11, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32* @pmd_offset(i32* %23, i64 %24)
  store i32* %25, i32** %12, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @__pfn_to_phys(i64 %26)
  %28 = load %struct.mem_type*, %struct.mem_type** %8, align 8
  %29 = getelementptr inbounds %struct.mem_type, %struct.mem_type* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = call i32 @__pmd(i32 %31)
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* @SZ_1M, align 8
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @__pfn_to_phys(i64 %40)
  %42 = load %struct.mem_type*, %struct.mem_type** %8, align 8
  %43 = getelementptr inbounds %struct.mem_type, %struct.mem_type* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  %46 = call i32 @__pmd(i32 %45)
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* @SZ_1M, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = lshr i64 %49, %50
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @flush_pmd_entry(i32* %54)
  %56 = load i64, i64* @PGDIR_SIZE, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %11, align 8
  br label %61

61:                                               ; preds = %22
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %22, label %65

65:                                               ; preds = %61
  ret i32 0
}

declare dso_local i32 @unmap_area_sections(i64, i64) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @__pmd(i32) #1

declare dso_local i32 @__pfn_to_phys(i64) #1

declare dso_local i32 @flush_pmd_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
