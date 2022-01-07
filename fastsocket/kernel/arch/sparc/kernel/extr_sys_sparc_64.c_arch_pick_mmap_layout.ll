; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sys_sparc_64.c_arch_pick_mmap_layout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sys_sparc_64.c_arch_pick_mmap_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mm_struct = type { i32, i32, i64 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ADDR_COMPAT_LAYOUT = common dso_local global i32 0, align 4
@RLIMIT_STACK = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@sysctl_legacy_va_layout = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@arch_get_unmapped_area = common dso_local global i32 0, align 4
@arch_unmap_area = common dso_local global i32 0, align 4
@STACK_TOP32 = common dso_local global i64 0, align 8
@arch_get_unmapped_area_topdown = common dso_local global i32 0, align 4
@arch_unmap_area_topdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_pick_mmap_layout(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PF_RANDOMIZE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = call i64 (...) @get_random_int()
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* @TIF_32BIT, align 4
  %15 = call i64 @test_thread_flag(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, 1048575
  store i64 %19, i64* %3, align 8
  br label %25

20:                                               ; preds = %12
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = shl i64 %21, %22
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %20, %17
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* @TIF_32BIT, align 4
  %28 = call i64 @test_thread_flag(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ADDR_COMPAT_LAYOUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* @RLIMIT_STACK, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RLIM_INFINITY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load i64, i64* @sysctl_legacy_va_layout, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49, %37, %30, %26
  %53 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %53, %54
  %56 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %57 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* @arch_get_unmapped_area, align 4
  %59 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %60 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @arch_unmap_area, align 4
  %62 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %63 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %103

64:                                               ; preds = %49
  %65 = load i64, i64* @STACK_TOP32, align 8
  store i64 %65, i64* %4, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i64, i64* @RLIMIT_STACK, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp ult i64 %75, 134217728
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  store i64 134217728, i64* %5, align 8
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %4, align 8
  %81 = udiv i64 %80, 6
  %82 = mul i64 %81, 5
  %83 = icmp ugt i64 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i64, i64* %4, align 8
  %86 = udiv i64 %85, 6
  %87 = mul i64 %86, 5
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = sub i64 %89, %90
  %92 = load i64, i64* %3, align 8
  %93 = sub i64 %91, %92
  %94 = call i64 @PAGE_ALIGN(i64 %93)
  %95 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %96 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @arch_get_unmapped_area_topdown, align 4
  %98 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %99 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @arch_unmap_area_topdown, align 4
  %101 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %102 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %88, %52
  ret void
}

declare dso_local i64 @get_random_int(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
