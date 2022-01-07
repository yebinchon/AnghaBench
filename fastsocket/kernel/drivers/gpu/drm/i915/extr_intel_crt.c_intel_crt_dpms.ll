; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_encoder = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, i32)* @intel_crt_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crt_dpms(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = call %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector* %12)
  store %struct.intel_encoder* %13, %struct.intel_encoder** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 5
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %19, %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %79

32:                                               ; preds = %25
  %33 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %40 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %41, align 8
  store %struct.drm_crtc* %42, %struct.drm_crtc** %7, align 8
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %44 = icmp ne %struct.drm_crtc* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %47 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %79

48:                                               ; preds = %32
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %54 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %58

55:                                               ; preds = %48
  %56 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %57 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %64 = call i32 @intel_crtc_update_dpms(%struct.drm_crtc* %63)
  %65 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @intel_crt_set_dpms(%struct.intel_encoder* %65, i32 %66)
  br label %74

68:                                               ; preds = %58
  %69 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @intel_crt_set_dpms(%struct.intel_encoder* %69, i32 %70)
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %73 = call i32 @intel_crtc_update_dpms(%struct.drm_crtc* %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %76 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %75, i32 0, i32 1
  %77 = load %struct.drm_device*, %struct.drm_device** %76, align 8
  %78 = call i32 @intel_modeset_check_state(%struct.drm_device* %77)
  br label %79

79:                                               ; preds = %74, %45, %31
  ret void
}

declare dso_local %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector*) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @intel_crtc_update_dpms(%struct.drm_crtc*) #1

declare dso_local i32 @intel_crt_set_dpms(%struct.intel_encoder*, i32) #1

declare dso_local i32 @intel_modeset_check_state(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
