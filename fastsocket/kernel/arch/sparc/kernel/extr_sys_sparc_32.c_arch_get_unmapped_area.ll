; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sys_sparc_32.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sys_sparc_32.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@MAP_FIXED = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SHMLBA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@ARCH_SUN4C = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
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
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* @MAP_FIXED, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %5
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @MAP_SHARED, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = sub i64 %23, %26
  %28 = load i32, i32* @SHMLBA, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %6, align 8
  br label %136

36:                                               ; preds = %22, %17
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %6, align 8
  br label %136

38:                                               ; preds = %5
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @TASK_SIZE, align 8
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = sub i64 %40, %41
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i64, i64* @ENOMEM, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %6, align 8
  br label %136

47:                                               ; preds = %38
  %48 = load i64, i64* @ARCH_SUN4C, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i64, i64* %9, align 8
  %52 = icmp ugt i64 %51, 536870912
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* @ENOMEM, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %6, align 8
  br label %136

56:                                               ; preds = %50, %47
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @MAP_SHARED, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @COLOUR_ALIGN(i64 %67)
  store i64 %68, i64* %8, align 8
  br label %72

69:                                               ; preds = %61
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @PAGE_ALIGN(i64 %70)
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %8, align 8
  %77 = call %struct.vm_area_struct* @find_vma(i32 %75, i64 %76)
  store %struct.vm_area_struct* %77, %struct.vm_area_struct** %12, align 8
  br label %78

78:                                               ; preds = %132, %72
  %79 = load i64, i64* @ARCH_SUN4C, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  %83 = icmp ult i64 %82, 3758096384
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i64, i64* %9, align 8
  %86 = sub i64 536870912, %85
  %87 = load i64, i64* %8, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i64, i64* @PAGE_OFFSET, align 8
  store i64 %90, i64* %8, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @PAGE_OFFSET, align 8
  %95 = call %struct.vm_area_struct* @find_vma(i32 %93, i64 %94)
  store %struct.vm_area_struct* %95, %struct.vm_area_struct** %12, align 8
  br label %96

96:                                               ; preds = %89, %84, %81, %78
  %97 = load i64, i64* @TASK_SIZE, align 8
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = sub i64 %97, %98
  %100 = load i64, i64* %9, align 8
  %101 = sub i64 %99, %100
  %102 = load i64, i64* %8, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i64, i64* @ENOMEM, align 8
  %106 = sub i64 0, %105
  store i64 %106, i64* %6, align 8
  br label %136

107:                                              ; preds = %96
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %109 = icmp ne %struct.vm_area_struct* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %111, %112
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %115 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ule i64 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %110, %107
  %119 = load i64, i64* %8, align 8
  store i64 %119, i64* %6, align 8
  br label %136

120:                                              ; preds = %110
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %8, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* @MAP_SHARED, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load i64, i64* %8, align 8
  %130 = call i64 @COLOUR_ALIGN(i64 %129)
  store i64 %130, i64* %8, align 8
  br label %131

131:                                              ; preds = %128, %120
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %134 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %133, i32 0, i32 2
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %134, align 8
  store %struct.vm_area_struct* %135, %struct.vm_area_struct** %12, align 8
  br label %78

136:                                              ; preds = %118, %104, %53, %44, %36, %33
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local i64 @COLOUR_ALIGN(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
