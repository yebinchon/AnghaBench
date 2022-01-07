; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_add_properties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_add_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_connector = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_connector = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DRM_MODE_SCALE_ASPECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, %struct.drm_connector*)* @intel_dp_add_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_add_properties(%struct.intel_dp* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %7 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %6)
  store %struct.intel_connector* %7, %struct.intel_connector** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call i32 @intel_attach_force_audio_property(%struct.drm_connector* %8)
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = call i32 @intel_attach_broadcast_rgb_property(%struct.drm_connector* %10)
  %12 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %13 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %15 = call i64 @is_edp(%struct.intel_dp* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @drm_mode_create_scaling_mode_property(%struct.TYPE_6__* %20)
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 1
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DRM_MODE_SCALE_ASPECT, align 4
  %31 = call i32 @drm_object_attach_property(i32* %23, i32 %29, i32 %30)
  %32 = load i32, i32* @DRM_MODE_SCALE_ASPECT, align 4
  %33 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %34 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %17, %2
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @intel_attach_force_audio_property(%struct.drm_connector*) #1

declare dso_local i32 @intel_attach_broadcast_rgb_property(%struct.drm_connector*) #1

declare dso_local i64 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @drm_mode_create_scaling_mode_property(%struct.TYPE_6__*) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
