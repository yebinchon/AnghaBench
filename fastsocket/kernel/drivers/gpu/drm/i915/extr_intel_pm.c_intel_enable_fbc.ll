; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_fbc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_fbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.intel_fbc_work*, %struct.TYPE_2__ }
%struct.intel_fbc_work = type { i64, i32, i32, %struct.drm_crtc* }
%struct.TYPE_2__ = type { i32 (%struct.drm_crtc*, i64)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_fbc_work_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"scheduling delayed FBC enable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_enable_fbc(%struct.drm_crtc* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.intel_fbc_work*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %7, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.drm_crtc*, i64)*, i32 (%struct.drm_crtc*, i64)** %16, align 8
  %18 = icmp ne i32 (%struct.drm_crtc*, i64)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %22 = call i32 @intel_cancel_fbc_work(%struct.drm_i915_private* %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.intel_fbc_work* @kzalloc(i32 24, i32 %23)
  store %struct.intel_fbc_work* %24, %struct.intel_fbc_work** %5, align 8
  %25 = load %struct.intel_fbc_work*, %struct.intel_fbc_work** %5, align 8
  %26 = icmp eq %struct.intel_fbc_work* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.drm_crtc*, i64)*, i32 (%struct.drm_crtc*, i64)** %30, align 8
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 %31(%struct.drm_crtc* %32, i64 %33)
  br label %59

35:                                               ; preds = %20
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %37 = load %struct.intel_fbc_work*, %struct.intel_fbc_work** %5, align 8
  %38 = getelementptr inbounds %struct.intel_fbc_work, %struct.intel_fbc_work* %37, i32 0, i32 3
  store %struct.drm_crtc* %36, %struct.drm_crtc** %38, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %40 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.intel_fbc_work*, %struct.intel_fbc_work** %5, align 8
  %43 = getelementptr inbounds %struct.intel_fbc_work, %struct.intel_fbc_work* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.intel_fbc_work*, %struct.intel_fbc_work** %5, align 8
  %46 = getelementptr inbounds %struct.intel_fbc_work, %struct.intel_fbc_work* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.intel_fbc_work*, %struct.intel_fbc_work** %5, align 8
  %48 = getelementptr inbounds %struct.intel_fbc_work, %struct.intel_fbc_work* %47, i32 0, i32 1
  %49 = load i32, i32* @intel_fbc_work_fn, align 4
  %50 = call i32 @INIT_DELAYED_WORK(i32* %48, i32 %49)
  %51 = load %struct.intel_fbc_work*, %struct.intel_fbc_work** %5, align 8
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 0
  store %struct.intel_fbc_work* %51, %struct.intel_fbc_work** %53, align 8
  %54 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.intel_fbc_work*, %struct.intel_fbc_work** %5, align 8
  %56 = getelementptr inbounds %struct.intel_fbc_work, %struct.intel_fbc_work* %55, i32 0, i32 1
  %57 = call i32 @msecs_to_jiffies(i32 50)
  %58 = call i32 @schedule_delayed_work(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %35, %27, %19
  ret void
}

declare dso_local i32 @intel_cancel_fbc_work(%struct.drm_i915_private*) #1

declare dso_local %struct.intel_fbc_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
