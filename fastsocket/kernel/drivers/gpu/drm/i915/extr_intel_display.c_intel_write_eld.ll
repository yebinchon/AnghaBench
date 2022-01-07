; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_write_eld.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_write_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device*, %struct.drm_crtc.0* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.drm_connector*, %struct.drm_crtc*)* }
%struct.drm_connector = type opaque
%struct.drm_crtc = type opaque
%struct.drm_crtc.0 = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_connector.1 = type { i32*, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"ELD on [CONNECTOR:%d:%s], [ENCODER:%d:%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_write_eld(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_crtc.0*, align 8
  %6 = alloca %struct.drm_connector.1*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 1
  %11 = load %struct.drm_crtc.0*, %struct.drm_crtc.0** %10, align 8
  store %struct.drm_crtc.0* %11, %struct.drm_crtc.0** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %8, align 8
  %18 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %20 = call %struct.drm_connector.1* @drm_select_eld(%struct.drm_encoder* %18, %struct.drm_display_mode* %19)
  store %struct.drm_connector.1* %20, %struct.drm_connector.1** %6, align 8
  %21 = load %struct.drm_connector.1*, %struct.drm_connector.1** %6, align 8
  %22 = icmp ne %struct.drm_connector.1* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %65

24:                                               ; preds = %2
  %25 = load %struct.drm_connector.1*, %struct.drm_connector.1** %6, align 8
  %26 = getelementptr inbounds %struct.drm_connector.1, %struct.drm_connector.1* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.drm_connector.1*, %struct.drm_connector.1** %6, align 8
  %30 = call i32 @drm_get_connector_name(%struct.drm_connector.1* %29)
  %31 = load %struct.drm_connector.1*, %struct.drm_connector.1** %6, align 8
  %32 = getelementptr inbounds %struct.drm_connector.1, %struct.drm_connector.1* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_connector.1*, %struct.drm_connector.1** %6, align 8
  %38 = getelementptr inbounds %struct.drm_connector.1, %struct.drm_connector.1* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @drm_get_encoder_name(%struct.TYPE_8__* %39)
  %41 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %36, i32 %40)
  %42 = load %struct.drm_connector.1*, %struct.drm_connector.1** %6, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %44 = call i32 @drm_av_sync_delay(%struct.drm_connector.1* %42, %struct.drm_display_mode* %43)
  %45 = sdiv i32 %44, 2
  %46 = load %struct.drm_connector.1*, %struct.drm_connector.1** %6, align 8
  %47 = getelementptr inbounds %struct.drm_connector.1, %struct.drm_connector.1* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  store i32 %45, i32* %49, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32 (%struct.drm_connector*, %struct.drm_crtc*)*, i32 (%struct.drm_connector*, %struct.drm_crtc*)** %52, align 8
  %54 = icmp ne i32 (%struct.drm_connector*, %struct.drm_crtc*)* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %24
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32 (%struct.drm_connector*, %struct.drm_crtc*)*, i32 (%struct.drm_connector*, %struct.drm_crtc*)** %58, align 8
  %60 = load %struct.drm_connector.1*, %struct.drm_connector.1** %6, align 8
  %61 = bitcast %struct.drm_connector.1* %60 to %struct.drm_connector*
  %62 = load %struct.drm_crtc.0*, %struct.drm_crtc.0** %5, align 8
  %63 = bitcast %struct.drm_crtc.0* %62 to %struct.drm_crtc*
  %64 = call i32 %59(%struct.drm_connector* %61, %struct.drm_crtc* %63)
  br label %65

65:                                               ; preds = %23, %55, %24
  ret void
}

declare dso_local %struct.drm_connector.1* @drm_select_eld(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector.1*) #1

declare dso_local i32 @drm_get_encoder_name(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_av_sync_delay(%struct.drm_connector.1*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
