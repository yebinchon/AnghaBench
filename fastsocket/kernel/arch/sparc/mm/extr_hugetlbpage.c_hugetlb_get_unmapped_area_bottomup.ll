; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_get_unmapped_area_bottomup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_hugetlbpage.c_hugetlb_get_unmapped_area_bottomup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@TIF_32BIT = common dso_local global i32 0, align 4
@STACK_TOP32 = common dso_local global i64 0, align 8
@VA_EXCLUDE_START = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@HPAGE_SIZE = common dso_local global i32 0, align 4
@VA_EXCLUDE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @hugetlb_get_unmapped_area_bottomup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hugetlb_get_unmapped_area_bottomup(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %12, align 8
  %19 = load i64, i64* @TASK_SIZE, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* @TIF_32BIT, align 4
  %21 = call i64 @test_thread_flag(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i64, i64* @STACK_TOP32, align 8
  store i64 %24, i64* %14, align 8
  br label %25

25:                                               ; preds = %23, %5
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @VA_EXCLUDE_START, align 8
  %28 = icmp uge i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i64, i64* @ENOMEM, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %6, align 8
  br label %144

35:                                               ; preds = %25
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %43 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  store i64 %44, i64* %15, align 8
  br label %49

45:                                               ; preds = %35
  %46 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %46, i64* %8, align 8
  store i64 %46, i64* %15, align 8
  %47 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %14, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %86, %49
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @HPAGE_SIZE, align 4
  %56 = call i64 @ALIGN(i64 %54, i32 %55)
  store i64 %56, i64* %8, align 8
  %57 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %57, i64 %58)
  store %struct.vm_area_struct* %59, %struct.vm_area_struct** %13, align 8
  br label %60

60:                                               ; preds = %140, %53
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @VA_EXCLUDE_START, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* @VA_EXCLUDE_START, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i64, i64* @VA_EXCLUDE_END, align 8
  store i64 %71, i64* %8, align 8
  %72 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %73 = load i64, i64* @VA_EXCLUDE_END, align 8
  %74 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %72, i64 %73)
  store %struct.vm_area_struct* %74, %struct.vm_area_struct** %13, align 8
  br label %75

75:                                               ; preds = %70, %64, %60
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ult i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %87, i64* %8, align 8
  store i64 %87, i64* %15, align 8
  %88 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %89 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %53

90:                                               ; preds = %82
  %91 = load i64, i64* @ENOMEM, align 8
  %92 = sub i64 0, %91
  store i64 %92, i64* %6, align 8
  br label %144

93:                                               ; preds = %75
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %95 = icmp ne %struct.vm_area_struct* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %97, %98
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ule i64 %99, %102
  br label %104

104:                                              ; preds = %96, %93
  %105 = phi i1 [ true, %93 ], [ %103, %96 ]
  %106 = zext i1 %105 to i32
  %107 = call i64 @likely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %110, %111
  %113 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %114 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %8, align 8
  store i64 %115, i64* %6, align 8
  br label %144

116:                                              ; preds = %104
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %119 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %117, %120
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %123 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %121, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %116
  %127 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %128 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = sub i64 %129, %130
  %132 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %133 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %126, %116
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %136 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* @HPAGE_SIZE, align 4
  %139 = call i64 @ALIGN(i64 %137, i32 %138)
  store i64 %139, i64* %8, align 8
  br label %140

140:                                              ; preds = %134
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %142 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %141, i32 0, i32 2
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %142, align 8
  store %struct.vm_area_struct* %143, %struct.vm_area_struct** %13, align 8
  br label %60

144:                                              ; preds = %109, %90, %32
  %145 = load i64, i64* %6, align 8
  ret i64 %145
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
