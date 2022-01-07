; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_connector_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_connector_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32 }
%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_connector_dpms(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = call %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector* %6)
  store %struct.intel_encoder* %7, %struct.intel_encoder** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %45

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %25 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @intel_encoder_dpms(%struct.intel_encoder* %30, i32 %31)
  br label %40

33:                                               ; preds = %20
  %34 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %35 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  br label %40

40:                                               ; preds = %33, %29
  %41 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @intel_modeset_check_state(i32 %43)
  br label %45

45:                                               ; preds = %40, %19
  ret void
}

declare dso_local %struct.intel_encoder* @intel_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @intel_encoder_dpms(%struct.intel_encoder*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_modeset_check_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
