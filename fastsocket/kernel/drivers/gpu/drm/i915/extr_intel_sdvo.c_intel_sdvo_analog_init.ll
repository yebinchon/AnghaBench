; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_analog_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_analog_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32, i32 }
%struct.intel_connector = type { %struct.drm_connector }
%struct.intel_sdvo_connector = type { i32, %struct.intel_connector }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@SDVO_OUTPUT_RGB0 = common dso_local global i32 0, align 4
@SDVO_OUTPUT_RGB1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i32)* @intel_sdvo_analog_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_analog_init(%struct.intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.intel_connector*, align 8
  %9 = alloca %struct.intel_sdvo_connector*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %11 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.drm_encoder* %12, %struct.drm_encoder** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.intel_sdvo_connector* @kzalloc(i32 12, i32 %13)
  store %struct.intel_sdvo_connector* %14, %struct.intel_sdvo_connector** %9, align 8
  %15 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %16 = icmp ne %struct.intel_sdvo_connector* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %20 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %19, i32 0, i32 1
  store %struct.intel_connector* %20, %struct.intel_connector** %8, align 8
  %21 = load %struct.intel_connector*, %struct.intel_connector** %8, align 8
  %22 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %21, i32 0, i32 0
  store %struct.drm_connector* %22, %struct.drm_connector** %7, align 8
  %23 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %24 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %28 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %30 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %18
  %35 = load i32, i32* @SDVO_OUTPUT_RGB0, align 4
  %36 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %37 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @SDVO_OUTPUT_RGB0, align 4
  %41 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %42 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %56

43:                                               ; preds = %18
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* @SDVO_OUTPUT_RGB1, align 4
  %48 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %49 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @SDVO_OUTPUT_RGB1, align 4
  %53 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %54 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %43
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %9, align 8
  %58 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %59 = call i32 @intel_sdvo_connector_init(%struct.intel_sdvo_connector* %57, %struct.intel_sdvo* %58)
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.intel_sdvo_connector* @kzalloc(i32, i32) #1

declare dso_local i32 @intel_sdvo_connector_init(%struct.intel_sdvo_connector*, %struct.intel_sdvo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
