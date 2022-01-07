; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@TIF_32BIT = common dso_local global i32 0, align 4
@STACK_TOP32 = common dso_local global i64 0, align 8
@HPAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@HPAGE_SIZE = common dso_local global i32 0, align 4
@arch_get_unmapped_area = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hugetlb_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %12, align 8
  %18 = load i64, i64* @TASK_SIZE, align 8
  store i64 %18, i64* %14, align 8
  %19 = load i32, i32* @TIF_32BIT, align 4
  %20 = call i64 @test_thread_flag(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* @STACK_TOP32, align 8
  store i64 %23, i64* %14, align 8
  br label %24

24:                                               ; preds = %22, %5
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @HPAGE_MASK, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %6, align 8
  br label %105

33:                                               ; preds = %24
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* @ENOMEM, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %6, align 8
  br label %105

40:                                               ; preds = %33
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @MAP_FIXED, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @prepare_hugepage_range(%struct.file* %46, i64 %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub i64 0, %52
  store i64 %53, i64* %6, align 8
  br label %105

54:                                               ; preds = %45
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %6, align 8
  br label %105

56:                                               ; preds = %40
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @HPAGE_SIZE, align 4
  %62 = call i64 @ALIGN(i64 %60, i32 %61)
  store i64 %62, i64* %8, align 8
  %63 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %63, i64 %64)
  store %struct.vm_area_struct* %65, %struct.vm_area_struct** %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %66, %67
  %69 = load i64, i64* %8, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %59
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %73 = icmp ne %struct.vm_area_struct* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %75, %76
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ule i64 %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74, %71
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %6, align 8
  br label %105

84:                                               ; preds = %74, %59
  br label %85

85:                                               ; preds = %84, %56
  %86 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %87 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @arch_get_unmapped_area, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.file*, %struct.file** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i64 @hugetlb_get_unmapped_area_bottomup(%struct.file* %92, i64 %93, i64 %94, i64 %95, i64 %96)
  store i64 %97, i64* %6, align 8
  br label %105

98:                                               ; preds = %85
  %99 = load %struct.file*, %struct.file** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i64 @hugetlb_get_unmapped_area_topdown(%struct.file* %99, i64 %100, i64 %101, i64 %102, i64 %103)
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %98, %91, %82, %54, %51, %37, %30
  %106 = load i64, i64* %6, align 8
  ret i64 %106
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @prepare_hugepage_range(%struct.file*, i64, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @hugetlb_get_unmapped_area_bottomup(%struct.file*, i64, i64, i64, i64) #1

declare dso_local i64 @hugetlb_get_unmapped_area_topdown(%struct.file*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
