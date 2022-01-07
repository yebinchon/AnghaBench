; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_init_global_gtt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_init_global_gtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@I915_PPGTT_PD_ENTRIES = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Aliased PPGTT setup failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_init_global_gtt(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = call i64 @intel_enable_ppgtt(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = call i64 @HAS_ALIASING_PPGTT(%struct.drm_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i64, i64* @I915_PPGTT_PD_ENTRIES, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = mul i64 %26, %27
  %29 = load i64, i64* %4, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @i915_gem_setup_global_gtt(%struct.drm_device* %31, i32 0, i64 %32, i64 %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = call i32 @i915_gem_init_aliasing_ppgtt(%struct.drm_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %25
  br label %57

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @drm_mm_takedown(i32* %45)
  %47 = load i64, i64* @I915_PPGTT_PD_ENTRIES, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = mul i64 %47, %48
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %40, %21, %1
  %53 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @i915_gem_setup_global_gtt(%struct.drm_device* %53, i32 0, i64 %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %39
  ret void
}

declare dso_local i64 @intel_enable_ppgtt(%struct.drm_device*) #1

declare dso_local i64 @HAS_ALIASING_PPGTT(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_setup_global_gtt(%struct.drm_device*, i32, i64, i64) #1

declare dso_local i32 @i915_gem_init_aliasing_ppgtt(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @drm_mm_takedown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
