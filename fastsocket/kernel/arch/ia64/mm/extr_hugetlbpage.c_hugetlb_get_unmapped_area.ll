; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_hugetlbpage.c_hugetlb_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/mm/extr_hugetlbpage.c_hugetlb_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@RGN_MAP_LIMIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@HPAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@RGN_HPAGE = common dso_local global i64 0, align 8
@HPAGE_SIZE = common dso_local global i32 0, align 4
@HPAGE_REGION_BASE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hugetlb_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @RGN_MAP_LIMIT, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i64, i64* @ENOMEM, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %6, align 8
  br label %101

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @HPAGE_MASK, align 8
  %22 = xor i64 %21, -1
  %23 = and i64 %20, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %6, align 8
  br label %101

28:                                               ; preds = %19
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @MAP_FIXED, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @prepare_hugepage_range(%struct.file* %34, i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %6, align 8
  br label %101

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %6, align 8
  br label %101

44:                                               ; preds = %28
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @REGION_NUMBER(i64 %45)
  %47 = load i64, i64* @RGN_HPAGE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @HPAGE_SIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = and i64 %50, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49, %44
  %57 = load i64, i64* @HPAGE_REGION_BASE, align 8
  store i64 %57, i64* %8, align 8
  br label %62

58:                                               ; preds = %49
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* @HPAGE_SIZE, align 4
  %61 = call i64 @ALIGN(i64 %59, i32 %60)
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %58, %56
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call %struct.vm_area_struct* @find_vma(i32 %65, i64 %66)
  store %struct.vm_area_struct* %67, %struct.vm_area_struct** %12, align 8
  br label %68

68:                                               ; preds = %97, %62
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @REGION_OFFSET(i64 %69)
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* @RGN_MAP_LIMIT, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i64, i64* @ENOMEM, align 8
  %77 = sub i64 0, %76
  store i64 %77, i64* %6, align 8
  br label %101

78:                                               ; preds = %68
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %80 = icmp ne %struct.vm_area_struct* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %82, %83
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ule i64 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %81, %78
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %6, align 8
  br label %101

91:                                               ; preds = %81
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @HPAGE_SIZE, align 4
  %96 = call i64 @ALIGN(i64 %94, i32 %95)
  store i64 %96, i64* %8, align 8
  br label %97

97:                                               ; preds = %91
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 2
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %99, align 8
  store %struct.vm_area_struct* %100, %struct.vm_area_struct** %12, align 8
  br label %68

101:                                              ; preds = %89, %75, %42, %39, %25, %16
  %102 = load i64, i64* %6, align 8
  ret i64 %102
}

declare dso_local i64 @prepare_hugepage_range(%struct.file*, i64, i64) #1

declare dso_local i64 @REGION_NUMBER(i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

declare dso_local i64 @REGION_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
