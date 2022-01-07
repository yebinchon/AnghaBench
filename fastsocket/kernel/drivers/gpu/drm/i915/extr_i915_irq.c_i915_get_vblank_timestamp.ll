; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_vblank_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_vblank_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.timeval = type { i32 }
%struct.drm_crtc = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid crtc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"crtc %d is disabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32*, %struct.timeval*, i32)* @i915_get_vblank_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_get_vblank_timestamp(%struct.drm_device* %0, i32 %1, i32* %2, %struct.timeval* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.timeval*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_i915_private*, align 8
  %13 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.timeval* %3, %struct.timeval** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %5
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %59

30:                                               ; preds = %19
  %31 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.drm_crtc* @intel_get_crtc_for_pipe(%struct.drm_device* %31, i32 %32)
  store %struct.drm_crtc* %33, %struct.drm_crtc** %13, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %35 = icmp eq %struct.drm_crtc* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %59

41:                                               ; preds = %30
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %41
  %52 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.timeval*, %struct.timeval** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %58 = call i32 @drm_calc_vbltimestamp_from_scanoutpos(%struct.drm_device* %52, i32 %53, i32* %54, %struct.timeval* %55, i32 %56, %struct.drm_crtc* %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %51, %46, %36, %25
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.drm_crtc* @intel_get_crtc_for_pipe(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @drm_calc_vbltimestamp_from_scanoutpos(%struct.drm_device*, i32, i32*, %struct.timeval*, i32, %struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
