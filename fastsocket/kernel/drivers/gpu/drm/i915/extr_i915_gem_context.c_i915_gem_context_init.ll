; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_i915_gem_context_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_i915_gem_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"HW context support initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_gem_context_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call i32 @HAS_HW_CONTEXTS(%struct.drm_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @RCS, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18, %13
  br label %50

28:                                               ; preds = %18
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = call i32 @get_context_size(%struct.drm_device* %29)
  %31 = call i32 @round_up(i32 %30, i32 4096)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1048576
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %50

41:                                               ; preds = %28
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = call i64 @create_default_context(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %50

48:                                               ; preds = %41
  %49 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45, %38, %27, %10
  ret void
}

declare dso_local i32 @HAS_HW_CONTEXTS(%struct.drm_device*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @get_context_size(%struct.drm_device*) #1

declare dso_local i64 @create_default_context(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
