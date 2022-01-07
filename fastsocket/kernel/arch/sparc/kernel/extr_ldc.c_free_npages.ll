; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_free_npages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_free_npages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_iommu = type { %struct.ldc_mtable_entry*, %struct.iommu_arena }
%struct.ldc_mtable_entry = type { i64, i64 }
%struct.iommu_arena = type { i64, i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.ldc_iommu*, i64, i64)* @free_npages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_npages(i64 %0, %struct.ldc_iommu* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ldc_iommu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iommu_arena*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ldc_mtable_entry*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.ldc_iommu* %1, %struct.ldc_iommu** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.ldc_iommu*, %struct.ldc_iommu** %6, align 8
  %16 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %15, i32 0, i32 1
  store %struct.iommu_arena* %16, %struct.iommu_arena** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %17, %19
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  %23 = call i64 @PAGE_ALIGN(i64 %22)
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @cookie_to_index(i64 %26, i64* %11)
  store i64 %27, i64* %12, align 8
  %28 = load %struct.ldc_iommu*, %struct.ldc_iommu** %6, align 8
  %29 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %28, i32 0, i32 0
  %30 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.ldc_mtable_entry, %struct.ldc_mtable_entry* %30, i64 %31
  store %struct.ldc_mtable_entry* %32, %struct.ldc_mtable_entry** %14, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load %struct.iommu_arena*, %struct.iommu_arena** %9, align 8
  %35 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %4
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %39, %40
  %42 = load %struct.iommu_arena*, %struct.iommu_arena** %9, align 8
  %43 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %41, %44
  br label %46

46:                                               ; preds = %38, %4
  %47 = phi i1 [ true, %4 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %80, %46
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %13, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %50
  %55 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %14, align 8
  %56 = getelementptr inbounds %struct.ldc_mtable_entry, %struct.ldc_mtable_entry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = shl i64 %62, %63
  %65 = add i64 %61, %64
  %66 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %14, align 8
  %67 = getelementptr inbounds %struct.ldc_mtable_entry, %struct.ldc_mtable_entry* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @sun4v_ldc_revoke(i64 %60, i64 %65, i64 %68)
  br label %70

70:                                               ; preds = %59, %54
  %71 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %14, align 8
  %72 = getelementptr inbounds %struct.ldc_mtable_entry, %struct.ldc_mtable_entry* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %73, %74
  %76 = load %struct.iommu_arena*, %struct.iommu_arena** %9, align 8
  %77 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @__clear_bit(i64 %75, i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %50

83:                                               ; preds = %50
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @cookie_to_index(i64, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sun4v_ldc_revoke(i64, i64, i64) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
