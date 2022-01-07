; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_connector_check_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_connector_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_8__, %struct.intel_encoder*, i64 (%struct.intel_connector*)* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.intel_encoder = type { i32 (%struct.intel_encoder*, i32*)*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@DRM_MODE_DPMS_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"wrong connector dpms state\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"active connector not linked to encoder\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"encoder->connectors_active not set\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"encoder not enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"crtc not enabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"crtc not active\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"encoder active on the wrong pipe\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_connector*)* @intel_connector_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_connector_check_state(%struct.intel_connector* %0) #0 {
  %2 = alloca %struct.intel_connector*, align 8
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %2, align 8
  %7 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %8 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %7, i32 0, i32 2
  %9 = load i64 (%struct.intel_connector*)*, i64 (%struct.intel_connector*)** %8, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %11 = call i64 %9(%struct.intel_connector* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %98

13:                                               ; preds = %1
  %14 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 1
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %15, align 8
  store %struct.intel_encoder* %16, %struct.intel_encoder** %3, align 8
  %17 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %18 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %23 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %22, i32 0, i32 0
  %24 = call i32 @drm_get_connector_name(%struct.TYPE_8__* %23)
  %25 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %27 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %35 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %39 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %38, i32 0, i32 1
  %40 = icmp ne %struct.TYPE_6__* %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %44 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %51 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %50, i32 0, i32 0
  %52 = load i32 (%struct.intel_encoder*, i32*)*, i32 (%struct.intel_encoder*, i32*)** %51, align 8
  %53 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %54 = call i32 %52(%struct.intel_encoder* %53, i32* %6)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %61 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %62, align 8
  %64 = icmp ne %struct.drm_crtc* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @WARN_ON(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %13
  br label %98

70:                                               ; preds = %13
  %71 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %72 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.drm_crtc*, %struct.drm_crtc** %73, align 8
  store %struct.drm_crtc* %74, %struct.drm_crtc** %4, align 8
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %76 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %82 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %83 = call %struct.TYPE_7__* @to_intel_crtc(%struct.drm_crtc* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @WARN(i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %92 = call %struct.TYPE_7__* @to_intel_crtc(%struct.drm_crtc* %91)
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %90, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @WARN(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %69, %70, %1
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.TYPE_8__*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_7__* @to_intel_crtc(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
