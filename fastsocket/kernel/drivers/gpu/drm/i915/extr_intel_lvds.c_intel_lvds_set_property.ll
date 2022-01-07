; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_lvds_set_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_lvds.c_intel_lvds_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_property* }
%struct.drm_property = type { i32 }
%struct.intel_connector = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.drm_crtc = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_crtc* }

@DRM_MODE_SCALE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"no scaling not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_property*, i64)* @intel_lvds_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lvds_set_property(%struct.drm_connector* %0, %struct.drm_property* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.intel_connector*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %12 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %11)
  store %struct.intel_connector* %12, %struct.intel_connector** %8, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %9, align 8
  %16 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.drm_property*, %struct.drm_property** %19, align 8
  %21 = icmp eq %struct.drm_property* %16, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @DRM_MODE_SCALE_NONE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %60

30:                                               ; preds = %22
  %31 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %32 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %60

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %41 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %44 = call %struct.TYPE_8__* @intel_attached_encoder(%struct.drm_connector* %43)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %46, align 8
  store %struct.drm_crtc* %47, %struct.drm_crtc** %10, align 8
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %49 = icmp ne %struct.drm_crtc* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %57 = call i32 @intel_crtc_restore_mode(%struct.drm_crtc* %56)
  br label %58

58:                                               ; preds = %55, %50, %38
  br label %59

59:                                               ; preds = %58, %3
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %37, %26
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.TYPE_8__* @intel_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @intel_crtc_restore_mode(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
