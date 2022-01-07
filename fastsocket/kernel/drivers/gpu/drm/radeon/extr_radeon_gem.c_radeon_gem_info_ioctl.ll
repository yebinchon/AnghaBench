; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_info_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_info_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_8__*, %struct.TYPE_7__, i64, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_radeon_gem_info = type { i32, i32, i32 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@RADEON_IB_POOL_SIZE = common dso_local global i32 0, align 4
@RADEON_NUM_RINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_info_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.drm_radeon_gem_info*, align 8
  %9 = alloca %struct.ttm_mem_type_manager*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.drm_radeon_gem_info*
  store %struct.drm_radeon_gem_info* %15, %struct.drm_radeon_gem_info** %8, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %19, align 8
  %21 = load i64, i64* @TTM_PL_VRAM, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %20, i64 %21
  store %struct.ttm_mem_type_manager* %22, %struct.ttm_mem_type_manager** %9, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %28 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %36 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %3
  %42 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @radeon_bo_size(i64 %44)
  %46 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %47 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  br label %52

52:                                               ; preds = %41, %3
  %53 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %54 = call i64 @radeon_fbdev_total_size(%struct.radeon_device* %53)
  %55 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %56 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 4096
  %66 = load i32, i32* @RADEON_IB_POOL_SIZE, align 4
  %67 = mul nsw i32 %66, 64
  %68 = mul nsw i32 %67, 1024
  %69 = sub nsw i32 %65, %68
  %70 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %71 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %89, %52
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_radeon_gem_info*, %struct.drm_radeon_gem_info** %8, align 8
  %86 = getelementptr inbounds %struct.drm_radeon_gem_info, %struct.drm_radeon_gem_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %72

92:                                               ; preds = %72
  ret i32 0
}

declare dso_local i64 @radeon_bo_size(i64) #1

declare dso_local i64 @radeon_fbdev_total_size(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
