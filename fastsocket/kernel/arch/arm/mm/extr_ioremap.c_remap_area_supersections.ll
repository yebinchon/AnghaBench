; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_ioremap.c_remap_area_supersections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_ioremap.c_remap_area_supersections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_type = type { i64 }

@PMD_SECT_SUPER = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i64 0, align 8
@SUPERSECTION_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, %struct.mem_type*)* @remap_area_supersections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_area_supersections(i64 %0, i64 %1, i64 %2, %struct.mem_type* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mem_type*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.mem_type* %3, %struct.mem_type** %8, align 8
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @unmap_area_sections(i64 %19, i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @pgd_offset_k(i64 %22)
  store i32* %23, i32** %11, align 8
  br label %24

24:                                               ; preds = %74, %4
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @__pfn_to_phys(i64 %25)
  %27 = load %struct.mem_type*, %struct.mem_type** %8, align 8
  %28 = getelementptr inbounds %struct.mem_type, %struct.mem_type* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = or i64 %26, %29
  %31 = load i64, i64* @PMD_SECT_SUPER, align 8
  %32 = or i64 %30, %31
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = sub nsw i32 32, %34
  %36 = zext i32 %35 to i64
  %37 = lshr i64 %33, %36
  %38 = and i64 %37, 15
  %39 = shl i64 %38, 20
  %40 = load i64, i64* %12, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %42

42:                                               ; preds = %64, %24
  %43 = load i64, i64* %13, align 8
  %44 = icmp ult i64 %43, 8
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32* @pmd_offset(i32* %46, i64 %47)
  store i32* %48, i32** %14, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @__pmd(i64 %49)
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @__pmd(i64 %53)
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @flush_pmd_entry(i32* %57)
  %59 = load i64, i64* @PGDIR_SIZE, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %9, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %11, align 8
  br label %64

64:                                               ; preds = %45
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %42

67:                                               ; preds = %42
  %68 = load i32, i32* @SUPERSECTION_SIZE, align 4
  %69 = load i32, i32* @PAGE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %24, label %78

78:                                               ; preds = %74
  ret i32 0
}

declare dso_local i32 @unmap_area_sections(i64, i64) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @__pfn_to_phys(i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @__pmd(i64) #1

declare dso_local i32 @flush_pmd_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
