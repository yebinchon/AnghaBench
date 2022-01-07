; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_create_enhance_property_lvds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_create_enhance_property_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_sdvo_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_connector }
%struct.drm_connector = type { i32 }
%struct.intel_sdvo_enhancements_reply = type { i32 }

@brightness = common dso_local global i32 0, align 4
@BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.intel_sdvo_connector*, i32)* @intel_sdvo_create_enhance_property_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_create_enhance_property_lvds(%struct.intel_sdvo* %0, %struct.intel_sdvo_connector* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_sdvo_enhancements_reply, align 4
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca %struct.intel_sdvo_connector*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = getelementptr inbounds %struct.intel_sdvo_enhancements_reply, %struct.intel_sdvo_enhancements_reply* %4, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_connector** %6, align 8
  %12 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %13 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %7, align 8
  %17 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %18 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.drm_connector* %19, %struct.drm_connector** %8, align 8
  %20 = load i32, i32* @brightness, align 4
  %21 = load i32, i32* @BRIGHTNESS, align 4
  %22 = call i32 @ENHANCEMENT(i32 %20, i32 %21)
  ret i32 1
}

declare dso_local i32 @ENHANCEMENT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
