; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ttm_placement = type { i64, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@TTM_PL_MASK_MEMTYPE = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca %struct.ttm_placement*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %12 = call i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %18 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %23 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21, %4
  %27 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %28 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %31 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %26
  %35 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %36 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %39 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %43 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34, %26
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %103

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %52 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %53 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %52, i32 0, i32 2
  %54 = call i32 @ttm_bo_mem_compat(%struct.ttm_placement* %51, %struct.TYPE_2__* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %59 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @ttm_bo_move_buffer(%struct.ttm_buffer_object* %58, %struct.ttm_placement* %59, i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %103

67:                                               ; preds = %57
  br label %82

68:                                               ; preds = %50
  %69 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %70 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %73 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TTM_PL_MASK_MEMTYPE, align 4
  %80 = xor i32 %79, -1
  %81 = call i32 @ttm_flag_masked(i32* %71, i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %68, %67
  %83 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %84 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %91 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %96 = call i32 @ttm_bo_add_ttm(%struct.ttm_buffer_object* %95, i32 1)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %5, align 4
  br label %103

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %89, %82
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %99, %65, %46
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_mem_compat(%struct.ttm_placement*, %struct.TYPE_2__*) #1

declare dso_local i32 @ttm_bo_move_buffer(%struct.ttm_buffer_object*, %struct.ttm_placement*, i32, i32) #1

declare dso_local i32 @ttm_flag_masked(i32*, i32, i32) #1

declare dso_local i32 @ttm_bo_add_ttm(%struct.ttm_buffer_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
