; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32 }
%struct.drm_crtc = type { i32 }
%struct.intel_sdvo = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_crtc* }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, i32)* @intel_sdvo_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_dpms(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.intel_sdvo*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %7)
  store %struct.intel_sdvo* %8, %struct.intel_sdvo** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %64

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %24 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %26 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %28, align 8
  store %struct.drm_crtc* %29, %struct.drm_crtc** %5, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %31 = icmp ne %struct.drm_crtc* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %34 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %64

36:                                               ; preds = %21
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %42 = call i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo* %41, i32 0)
  %43 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %44 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %47 = call i32 @intel_crtc_update_dpms(%struct.drm_crtc* %46)
  br label %59

48:                                               ; preds = %36
  %49 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %50 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %53 = call i32 @intel_crtc_update_dpms(%struct.drm_crtc* %52)
  %54 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %55 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %56 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo* %54, i32 %57)
  br label %59

59:                                               ; preds = %48, %40
  %60 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %61 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @intel_modeset_check_state(i32 %62)
  br label %64

64:                                               ; preds = %59, %32, %20
  ret void
}

declare dso_local %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_crtc_update_dpms(%struct.drm_crtc*) #1

declare dso_local i32 @intel_modeset_check_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
