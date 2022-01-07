; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_release_load_detect_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_release_load_detect_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 (%struct.drm_connector*, i64)* }
%struct.TYPE_5__ = type { i32 }
%struct.intel_load_detect_pipe = type { i64, i64, i64 }
%struct.intel_encoder = type { i32*, %struct.drm_encoder }
%struct.drm_encoder = type { %struct.TYPE_6__, %struct.drm_crtc* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"[CONNECTOR:%d:%s], [ENCODER:%d:%s]\0A\00", align 1
@DRM_MODE_DPMS_ON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_release_load_detect_pipe(%struct.drm_connector* %0, %struct.intel_load_detect_pipe* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_load_detect_pipe*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.intel_load_detect_pipe* %1, %struct.intel_load_detect_pipe** %4, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector* %8)
  store %struct.intel_encoder* %9, %struct.intel_encoder** %5, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 1
  store %struct.drm_encoder* %11, %struct.drm_encoder** %6, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 1
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  store %struct.drm_crtc* %14, %struct.drm_crtc** %7, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = call i32 @drm_get_connector_name(%struct.drm_connector* %19)
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %26 = call i32 @drm_get_encoder_name(%struct.drm_encoder* %25)
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i32 %24, i32 %26)
  %28 = load %struct.intel_load_detect_pipe*, %struct.intel_load_detect_pipe** %4, align 8
  %29 = getelementptr inbounds %struct.intel_load_detect_pipe, %struct.intel_load_detect_pipe* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %2
  %33 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %34 = call %struct.TYPE_8__* @to_intel_connector(%struct.drm_connector* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %37 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %39 = call i32 @intel_set_mode(%struct.drm_crtc* %38, i32* null, i32 0, i32 0, i32* null)
  %40 = load %struct.intel_load_detect_pipe*, %struct.intel_load_detect_pipe** %4, align 8
  %41 = getelementptr inbounds %struct.intel_load_detect_pipe, %struct.intel_load_detect_pipe* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %32
  %45 = load %struct.intel_load_detect_pipe*, %struct.intel_load_detect_pipe** %4, align 8
  %46 = getelementptr inbounds %struct.intel_load_detect_pipe, %struct.intel_load_detect_pipe* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @drm_framebuffer_unregister_private(i64 %47)
  %49 = load %struct.intel_load_detect_pipe*, %struct.intel_load_detect_pipe** %4, align 8
  %50 = getelementptr inbounds %struct.intel_load_detect_pipe, %struct.intel_load_detect_pipe* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @drm_framebuffer_unreference(i64 %51)
  br label %53

53:                                               ; preds = %44, %32
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %78

57:                                               ; preds = %2
  %58 = load %struct.intel_load_detect_pipe*, %struct.intel_load_detect_pipe** %4, align 8
  %59 = getelementptr inbounds %struct.intel_load_detect_pipe, %struct.intel_load_detect_pipe* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DRM_MODE_DPMS_ON, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %65 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32 (%struct.drm_connector*, i64)*, i32 (%struct.drm_connector*, i64)** %67, align 8
  %69 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %70 = load %struct.intel_load_detect_pipe*, %struct.intel_load_detect_pipe** %4, align 8
  %71 = getelementptr inbounds %struct.intel_load_detect_pipe, %struct.intel_load_detect_pipe* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 %68(%struct.drm_connector* %69, i64 %72)
  br label %74

74:                                               ; preds = %63, %57
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %76 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74, %53
  ret void
}

declare dso_local %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i32 @drm_get_encoder_name(%struct.drm_encoder*) #1

declare dso_local %struct.TYPE_8__* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @intel_set_mode(%struct.drm_crtc*, i32*, i32, i32, i32*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(i64) #1

declare dso_local i32 @drm_framebuffer_unreference(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
