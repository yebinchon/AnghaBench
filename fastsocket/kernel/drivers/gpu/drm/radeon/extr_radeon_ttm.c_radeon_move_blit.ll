; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_move_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_move_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.radeon_fence*, i32 }
%struct.radeon_fence = type { i32 }
%struct.ttm_mem_reg = type { i32, i32, i32 }
%struct.radeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown placement %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Trying to move memory with ring turned off.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @radeon_move_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_move_blit(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ttm_mem_reg*, align 8
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.radeon_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.radeon_fence*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %10, align 8
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.radeon_device* @radeon_get_rdev(i32 %20)
  store %struct.radeon_device* %21, %struct.radeon_device** %12, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %23 = call i32 @radeon_copy_ring_index(%struct.radeon_device* %22)
  store i32 %23, i32* %17, align 4
  %24 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %13, align 4
  %29 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %51 [
    i32 128, label %37
    i32 129, label %44
  ]

37:                                               ; preds = %5
  %38 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %13, align 4
  br label %58

44:                                               ; preds = %5
  %45 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %13, align 4
  br label %58

51:                                               ; preds = %5
  %52 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %53 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %127

58:                                               ; preds = %44, %37
  %59 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %60 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %76 [
    i32 128, label %62
    i32 129, label %69
  ]

62:                                               ; preds = %58
  %63 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %14, align 4
  br label %83

69:                                               ; preds = %58
  %70 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %14, align 4
  br label %83

76:                                               ; preds = %58
  %77 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %78 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %127

83:                                               ; preds = %69, %62
  %84 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %83
  %94 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %127

97:                                               ; preds = %83
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %100 = srem i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @BUILD_BUG_ON(i32 %102)
  %104 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %105 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %104, i32 0, i32 0
  %106 = load %struct.radeon_fence*, %struct.radeon_fence** %105, align 8
  store %struct.radeon_fence* %106, %struct.radeon_fence** %15, align 8
  %107 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %111 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PAGE_SIZE, align 4
  %114 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %115 = sdiv i32 %113, %114
  %116 = mul nsw i32 %112, %115
  %117 = call i32 @radeon_copy(%struct.radeon_device* %107, i32 %108, i32 %109, i32 %116, %struct.radeon_fence** %15)
  store i32 %117, i32* %16, align 4
  %118 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %119 = load %struct.radeon_fence*, %struct.radeon_fence** %15, align 8
  %120 = bitcast %struct.radeon_fence* %119 to i8*
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %10, align 8
  %124 = call i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object* %118, i8* %120, i32 %121, i32 %122, %struct.ttm_mem_reg* %123)
  store i32 %124, i32* %16, align 4
  %125 = call i32 @radeon_fence_unref(%struct.radeon_fence** %15)
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %97, %93, %76, %51
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local %struct.radeon_device* @radeon_get_rdev(i32) #1

declare dso_local i32 @radeon_copy_ring_index(%struct.radeon_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @radeon_copy(%struct.radeon_device*, i32, i32, i32, %struct.radeon_fence**) #1

declare dso_local i32 @ttm_bo_move_accel_cleanup(%struct.ttm_buffer_object*, i8*, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @radeon_fence_unref(%struct.radeon_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
