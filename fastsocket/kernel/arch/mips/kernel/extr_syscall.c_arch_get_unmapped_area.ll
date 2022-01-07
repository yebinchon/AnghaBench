; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_syscall.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_syscall.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@STACK_TOP = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@shm_align_mask = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* @STACK_TOP, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %14, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i64, i64* @ENOMEM, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %6, align 8
  br label %156

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @MAP_FIXED, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub i64 %28, %29
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %6, align 8
  br label %156

36:                                               ; preds = %27
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @MAP_SHARED, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @PAGE_SHIFT, align 8
  %45 = shl i64 %43, %44
  %46 = sub i64 %42, %45
  %47 = load i64, i64* @shm_align_mask, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %6, align 8
  br label %156

53:                                               ; preds = %41, %36
  %54 = load i64, i64* %8, align 8
  store i64 %54, i64* %6, align 8
  br label %156

55:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  %56 = load %struct.file*, %struct.file** %7, align 8
  %57 = icmp ne %struct.file* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @MAP_SHARED, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %55
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @COLOUR_ALIGN(i64 %71, i64 %72)
  store i64 %73, i64* %8, align 8
  br label %77

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @PAGE_ALIGN(i64 %75)
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %74, %70
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %8, align 8
  %82 = call %struct.vm_area_struct* @find_vma(i32 %80, i64 %81)
  store %struct.vm_area_struct* %82, %struct.vm_area_struct** %12, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %83, %84
  %86 = load i64, i64* %8, align 8
  %87 = icmp uge i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %77
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %90 = icmp ne %struct.vm_area_struct* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %92, %93
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ule i64 %94, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91, %88
  %100 = load i64, i64* %8, align 8
  store i64 %100, i64* %6, align 8
  br label %156

101:                                              ; preds = %91, %77
  br label %102

102:                                              ; preds = %101, %64
  %103 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %103, i64* %8, align 8
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call i64 @COLOUR_ALIGN(i64 %107, i64 %108)
  store i64 %109, i64* %8, align 8
  br label %113

110:                                              ; preds = %102
  %111 = load i64, i64* %8, align 8
  %112 = call i64 @PAGE_ALIGN(i64 %111)
  store i64 %112, i64* %8, align 8
  br label %113

113:                                              ; preds = %110, %106
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %8, align 8
  %118 = call %struct.vm_area_struct* @find_vma(i32 %116, i64 %117)
  store %struct.vm_area_struct* %118, %struct.vm_area_struct** %12, align 8
  br label %119

119:                                              ; preds = %152, %113
  %120 = load i64, i64* %14, align 8
  %121 = load i64, i64* %9, align 8
  %122 = sub i64 %120, %121
  %123 = load i64, i64* %8, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i64, i64* @ENOMEM, align 8
  %127 = sub i64 0, %126
  store i64 %127, i64* %6, align 8
  br label %156

128:                                              ; preds = %119
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %130 = icmp ne %struct.vm_area_struct* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %132, %133
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %136 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ule i64 %134, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %131, %128
  %140 = load i64, i64* %8, align 8
  store i64 %140, i64* %6, align 8
  br label %156

141:                                              ; preds = %131
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %143 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %8, align 8
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %10, align 8
  %150 = call i64 @COLOUR_ALIGN(i64 %148, i64 %149)
  store i64 %150, i64* %8, align 8
  br label %151

151:                                              ; preds = %147, %141
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %154 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %153, i32 0, i32 2
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %154, align 8
  store %struct.vm_area_struct* %155, %struct.vm_area_struct** %12, align 8
  br label %119

156:                                              ; preds = %139, %125, %99, %53, %50, %33, %19
  %157 = load i64, i64* %6, align 8
  ret i64 %157
}

declare dso_local i64 @COLOUR_ALIGN(i64, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
