; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_add_hdmi_properties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_add_hdmi_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_sdvo_connector = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo*, %struct.intel_sdvo_connector*)* @intel_sdvo_add_hdmi_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_add_hdmi_properties(%struct.intel_sdvo* %0, %struct.intel_sdvo_connector* %1) #0 {
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.intel_sdvo_connector*, align 8
  %5 = alloca %struct.drm_device*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  store %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_connector** %4, align 8
  %6 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %4, align 8
  %7 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %4, align 8
  %12 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @intel_attach_force_audio_property(%struct.TYPE_6__* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call %struct.TYPE_7__* @INTEL_INFO(%struct.drm_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = call i64 @IS_MOBILE(%struct.drm_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %4, align 8
  %26 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @intel_attach_broadcast_rgb_property(%struct.TYPE_6__* %27)
  %29 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %30 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %20, %2
  ret void
}

declare dso_local i32 @intel_attach_force_audio_property(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_device*) #1

declare dso_local i32 @intel_attach_broadcast_rgb_property(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
