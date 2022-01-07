; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_batchbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_batchbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.drm_i915_master_private* }
%struct.drm_i915_master_private = type { i64 }
%struct.drm_file = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.drm_clip_rect = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Batchbuffer ioctl disabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"i915 batchbuffer, start %x used %d cliprects %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @i915_batchbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_batchbuffer(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.drm_i915_master_private*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_clip_rect*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %23, align 8
  store %struct.drm_i915_master_private* %24, %struct.drm_i915_master_private** %9, align 8
  %25 = load %struct.drm_i915_master_private*, %struct.drm_i915_master_private** %9, align 8
  %26 = getelementptr inbounds %struct.drm_i915_master_private, %struct.drm_i915_master_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %10, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %11, align 8
  store %struct.drm_clip_rect* null, %struct.drm_clip_rect** %13, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = load i32, i32* @DRIVER_MODESET, align 4
  %33 = call i64 @drm_core_check_feature(%struct.drm_device* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %126

38:                                               ; preds = %3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %126

48:                                               ; preds = %38
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54, i32 %57)
  %59 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %60 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %61 = call i32 @RING_LOCK_TEST_WITH_RETURN(%struct.drm_device* %59, %struct.drm_file* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %48
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %126

69:                                               ; preds = %48
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %69
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.drm_clip_rect* @kcalloc(i32 %77, i32 4, i32 %78)
  store %struct.drm_clip_rect* %79, %struct.drm_clip_rect** %13, align 8
  %80 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %13, align 8
  %81 = icmp eq %struct.drm_clip_rect* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %126

85:                                               ; preds = %74
  %86 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %13, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i32 @copy_from_user(%struct.drm_clip_rect* %86, i32 %89, i32 %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = load i32, i32* @EFAULT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %12, align 4
  br label %122

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %102, %69
  %104 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %105 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %104, i32 0, i32 0
  %106 = call i32 @mutex_lock(i32* %105)
  %107 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %109 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %13, align 8
  %110 = call i32 @i915_dispatch_batchbuffer(%struct.drm_device* %107, %struct.TYPE_14__* %108, %struct.drm_clip_rect* %109)
  store i32 %110, i32* %12, align 4
  %111 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %112 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = icmp ne %struct.TYPE_12__* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %118 = call i32 @READ_BREADCRUMB(%struct.TYPE_13__* %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %103
  br label %122

122:                                              ; preds = %121, %99
  %123 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %13, align 8
  %124 = call i32 @kfree(%struct.drm_clip_rect* %123)
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %122, %82, %66, %44, %35
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

declare dso_local i32 @RING_LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local %struct.drm_clip_rect* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @copy_from_user(%struct.drm_clip_rect*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_dispatch_batchbuffer(%struct.drm_device*, %struct.TYPE_14__*, %struct.drm_clip_rect*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @READ_BREADCRUMB(%struct.TYPE_13__*) #1

declare dso_local i32 @kfree(%struct.drm_clip_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
