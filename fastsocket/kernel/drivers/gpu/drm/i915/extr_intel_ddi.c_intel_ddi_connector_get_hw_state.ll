; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_connector_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_connector_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_2__, %struct.intel_encoder* }
%struct.TYPE_2__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_encoder = type { i32 (%struct.intel_encoder*, i32*)* }

@PORT_A = common dso_local global i32 0, align 4
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@TRANS_DDI_MODE_SELECT_MASK = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_eDP = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ddi_connector_get_hw_state(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %12 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %5, align 8
  %19 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %20 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %19, i32 0, i32 1
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %20, align 8
  store %struct.intel_encoder* %21, %struct.intel_encoder** %6, align 8
  %22 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %23 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %27 = call i32 @intel_ddi_get_encoder_port(%struct.intel_encoder* %26)
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %29 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %28, i32 0, i32 0
  %30 = load i32 (%struct.intel_encoder*, i32*)*, i32 (%struct.intel_encoder*, i32*)** %29, align 8
  %31 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %32 = call i32 %30(%struct.intel_encoder* %31, i32* %9)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

35:                                               ; preds = %1
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PORT_A, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @TRANSCODER_EDP, align 4
  store i32 %40, i32* %10, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @TRANS_DDI_FUNC_CTL(i32 %44)
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @TRANS_DDI_MODE_SELECT_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %71 [
    i32 128, label %50
    i32 130, label %50
    i32 131, label %55
    i32 132, label %61
    i32 129, label %66
  ]

50:                                               ; preds = %43, %43
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %72

55:                                               ; preds = %43
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @DRM_MODE_CONNECTOR_eDP, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %72

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %43, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %2, align 4
  br label %72

66:                                               ; preds = %43
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %66, %61, %59, %50, %34
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @intel_ddi_get_encoder_port(%struct.intel_encoder*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
