; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_stolen.c_i915_gem_init_stolen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_stolen.c_i915_gem_init_stolen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [43 x i8] c"found %zd bytes of stolen memory at %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_init_stolen(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %4, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call i64 @i915_stolen_to_physical(%struct.drm_device* %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 %9, i64* %12, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %27)
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @drm_mm_init(i32* %31, i32 0, i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %19, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @i915_stolen_to_physical(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
