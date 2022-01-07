; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_ioremap.c_unmap_area_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_ioremap.c_unmap_area_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@SZ_1M = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PMD_TYPE_MASK = common dso_local global i32 0, align 4
@PMD_TYPE_TABLE = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @unmap_area_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_area_sections(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* @SZ_1M, align 4
  %14 = sub nsw i32 %13, 1
  %15 = xor i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = and i64 %12, %16
  %18 = add i64 %11, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @flush_cache_vunmap(i64 %19, i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @pgd_offset_k(i64 %22)
  store i32* %23, i32** %7, align 8
  br label %24

24:                                               ; preds = %55, %2
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32* @pmd_offset(i32* %25, i64 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pmd_none(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %24
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @pmd_clear(i32* %34)
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_mm, i32 0, i32 0, i32 0), align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_mm, i32 0, i32 0, i32 0), align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pmd_val(i32 %38)
  %40 = load i32, i32* @PMD_TYPE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @PMD_TYPE_TABLE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @pmd_page_vaddr(i32 %45)
  %47 = call i32 @pte_free_kernel(%struct.TYPE_9__* @init_mm, i32 %46)
  br label %48

48:                                               ; preds = %44, %33
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i64, i64* @PGDIR_SIZE, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %7, align 8
  br label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %24, label %59

59:                                               ; preds = %55
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @init_mm, i32 0, i32 0, i32 0), align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = call i32 @__check_kvm_seq(%struct.TYPE_11__* %71)
  br label %73

73:                                               ; preds = %68, %59
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @flush_tlb_kernel_range(i64 %74, i64 %75)
  ret void
}

declare dso_local i32 @flush_cache_vunmap(i64, i64) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @pmd_clear(i32*) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @pte_free_kernel(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pmd_page_vaddr(i32) #1

declare dso_local i32 @__check_kvm_seq(%struct.TYPE_11__*) #1

declare dso_local i32 @flush_tlb_kernel_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
