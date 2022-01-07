; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_create_hw_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_create_hw_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_hw_context = type { i32, %struct.drm_i915_file_private*, i32*, i32* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32*, i32 }
%struct.drm_i915_file_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Context object allocated failed\0A\00", align 1
@I915_CACHE_LLC_MLC = common dso_local global i32 0, align 4
@RCS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"idr allocation failed\0A\00", align 1
@DEFAULT_CONTEXT_ID = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_hw_context* (%struct.drm_device*, %struct.drm_i915_file_private*)* @create_hw_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_hw_context* @create_hw_context(%struct.drm_device* %0, %struct.drm_i915_file_private* %1) #0 {
  %3 = alloca %struct.i915_hw_context*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_file_private*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.i915_hw_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_i915_file_private* %1, %struct.drm_i915_file_private** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.i915_hw_context* @kzalloc(i32 4, i32 %13)
  store %struct.i915_hw_context* %14, %struct.i915_hw_context** %7, align 8
  %15 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %16 = icmp eq %struct.i915_hw_context* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.i915_hw_context* @ERR_PTR(i32 %19)
  store %struct.i915_hw_context* %20, %struct.i915_hw_context** %3, align 8
  br label %113

21:                                               ; preds = %2
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @i915_gem_alloc_object(%struct.drm_device* %22, i32 %25)
  %27 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %28 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %27, i32 0, i32 3
  store i32* %26, i32** %28, align 8
  %29 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %30 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %35 = call i32 @kfree(%struct.i915_hw_context* %34)
  %36 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.i915_hw_context* @ERR_PTR(i32 %38)
  store %struct.i915_hw_context* %39, %struct.i915_hw_context** %3, align 8
  br label %113

40:                                               ; preds = %21
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 7
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %48 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @I915_CACHE_LLC_MLC, align 4
  %51 = call i32 @i915_gem_object_set_cache_level(i32* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %108

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @RCS, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %63 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %65 = icmp eq %struct.drm_i915_file_private* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  store %struct.i915_hw_context* %67, %struct.i915_hw_context** %3, align 8
  br label %113

68:                                               ; preds = %56
  %69 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %70 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %71 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %70, i32 0, i32 1
  store %struct.drm_i915_file_private* %69, %struct.drm_i915_file_private** %71, align 8
  br label %72

72:                                               ; preds = %100, %68
  %73 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %74 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %73, i32 0, i32 0
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i64 @idr_pre_get(i32* %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  %81 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %108

82:                                               ; preds = %72
  %83 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %5, align 8
  %84 = getelementptr inbounds %struct.drm_i915_file_private, %struct.drm_i915_file_private* %83, i32 0, i32 0
  %85 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %86 = load i64, i64* @DEFAULT_CONTEXT_ID, align 8
  %87 = add nsw i64 %86, 1
  %88 = call i32 @idr_get_new_above(i32* %84, %struct.i915_hw_context* %85, i64 %87, i32* %9)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %94 = getelementptr inbounds %struct.i915_hw_context, %struct.i915_hw_context* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %82
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %72

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %108

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  store %struct.i915_hw_context* %107, %struct.i915_hw_context** %3, align 8
  br label %113

108:                                              ; preds = %104, %78, %54
  %109 = load %struct.i915_hw_context*, %struct.i915_hw_context** %7, align 8
  %110 = call i32 @do_destroy(%struct.i915_hw_context* %109)
  %111 = load i32, i32* %8, align 4
  %112 = call %struct.i915_hw_context* @ERR_PTR(i32 %111)
  store %struct.i915_hw_context* %112, %struct.i915_hw_context** %3, align 8
  br label %113

113:                                              ; preds = %108, %106, %66, %33, %17
  %114 = load %struct.i915_hw_context*, %struct.i915_hw_context** %3, align 8
  ret %struct.i915_hw_context* %114
}

declare dso_local %struct.i915_hw_context* @kzalloc(i32, i32) #1

declare dso_local %struct.i915_hw_context* @ERR_PTR(i32) #1

declare dso_local i32* @i915_gem_alloc_object(%struct.drm_device*, i32) #1

declare dso_local i32 @kfree(%struct.i915_hw_context*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_object_set_cache_level(i32*, i32) #1

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @idr_get_new_above(i32*, %struct.i915_hw_context*, i64, i32*) #1

declare dso_local i32 @do_destroy(%struct.i915_hw_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
