; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_mmap.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_mmap.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SHMLBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
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
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @MAP_FIXED, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %6, align 8
  br label %141

24:                                               ; preds = %5
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @TASK_SIZE, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @ENOMEM, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %6, align 8
  br label %141

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @PAGE_ALIGN(i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %37, i64 %38)
  store %struct.vm_area_struct* %39, %struct.vm_area_struct** %13, align 8
  %40 = load i64, i64* @TASK_SIZE, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %40, %41
  %43 = load i64, i64* %8, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %34
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %47 = icmp ne %struct.vm_area_struct* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %49, %50
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ule i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48, %45
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %6, align 8
  br label %141

58:                                               ; preds = %48, %34
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %67 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %8, align 8
  store i64 %68, i64* %14, align 8
  br label %73

69:                                               ; preds = %59
  %70 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %70, i64* %8, align 8
  store i64 %70, i64* %14, align 8
  %71 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %72 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %90, %73
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @PAGE_ALIGN(i64 %75)
  store i64 %76, i64* %8, align 8
  %77 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %77, i64 %78)
  store %struct.vm_area_struct* %79, %struct.vm_area_struct** %13, align 8
  br label %80

80:                                               ; preds = %137, %74
  %81 = load i64, i64* @TASK_SIZE, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %81, %82
  %84 = load i64, i64* %8, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %91, i64* %8, align 8
  store i64 %91, i64* %14, align 8
  %92 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %93 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %74

94:                                               ; preds = %86
  %95 = load i64, i64* @ENOMEM, align 8
  %96 = sub i64 0, %95
  store i64 %96, i64* %6, align 8
  br label %141

97:                                               ; preds = %80
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %99 = icmp ne %struct.vm_area_struct* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %101, %102
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %105 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ule i64 %103, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %100, %97
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %109, %110
  %112 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %113 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %8, align 8
  store i64 %114, i64* %6, align 8
  br label %141

115:                                              ; preds = %100
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %118 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %116, %119
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = sub i64 %128, %129
  %131 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %132 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  br label %133

133:                                              ; preds = %125, %115
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %135 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %8, align 8
  br label %137

137:                                              ; preds = %133
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 2
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %139, align 8
  store %struct.vm_area_struct* %140, %struct.vm_area_struct** %13, align 8
  br label %80

141:                                              ; preds = %108, %94, %56, %28, %22
  %142 = load i64, i64* %6, align 8
  ret i64 %142
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
