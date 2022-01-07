; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_sys_ia64.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_sys_ia64.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@RGN_MAP_LIMIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i32 0, align 4
@SHMLBA = common dso_local global i32 0, align 4
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@RGN_HPAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mm_struct*, align 8
  %16 = alloca %struct.vm_area_struct*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @MAP_SHARED, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %12, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %14, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.mm_struct*, %struct.mm_struct** %24, align 8
  store %struct.mm_struct* %25, %struct.mm_struct** %15, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @RGN_MAP_LIMIT, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i64, i64* @ENOMEM, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %6, align 8
  br label %131

32:                                               ; preds = %5
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @MAP_FIXED, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @is_hugepage_only_range(%struct.mm_struct* %38, i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %6, align 8
  br label %131

46:                                               ; preds = %37
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %6, align 8
  br label %131

48:                                               ; preds = %32
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* @TASK_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ugt i64 %60, 4294967295
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @SHMLBA, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %14, align 8
  br label %66

66:                                               ; preds = %62, %58, %55
  br label %67

67:                                               ; preds = %95, %66
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %14, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %14, align 8
  %72 = xor i64 %71, -1
  %73 = and i64 %70, %72
  store i64 %73, i64* %8, align 8
  store i64 %73, i64* %13, align 8
  %74 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %74, i64 %75)
  store %struct.vm_area_struct* %76, %struct.vm_area_struct** %16, align 8
  br label %77

77:                                               ; preds = %127, %67
  %78 = load i32, i32* @TASK_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %79, %80
  %82 = load i64, i64* %8, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %77
  %85 = load i64, i64* @RGN_MAP_LIMIT, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub i64 %85, %86
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @REGION_OFFSET(i64 %88)
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %84, %77
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %96, i64* %8, align 8
  br label %67

97:                                               ; preds = %91
  %98 = load i64, i64* @ENOMEM, align 8
  %99 = sub i64 0, %98
  store i64 %99, i64* %6, align 8
  br label %131

100:                                              ; preds = %84
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %102 = icmp ne %struct.vm_area_struct* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %104, %105
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ule i64 %106, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %103, %100
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %112, %113
  %115 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %116 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %6, align 8
  br label %131

118:                                              ; preds = %103
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %120 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %14, align 8
  %123 = add i64 %121, %122
  %124 = load i64, i64* %14, align 8
  %125 = xor i64 %124, -1
  %126 = and i64 %123, %125
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %118
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %129 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %128, i32 0, i32 2
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %129, align 8
  store %struct.vm_area_struct* %130, %struct.vm_area_struct** %16, align 8
  br label %77

131:                                              ; preds = %111, %97, %46, %43, %29
  %132 = load i64, i64* %6, align 8
  ret i64 %132
}

declare dso_local i64 @is_hugepage_only_range(%struct.mm_struct*, i64, i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @REGION_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
