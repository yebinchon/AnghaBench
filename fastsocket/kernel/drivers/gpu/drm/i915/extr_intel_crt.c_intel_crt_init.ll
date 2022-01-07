; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i32 }
%struct.drm_connector = type { i32, i32, i64 }
%struct.intel_crt = type { i64, %struct.TYPE_2__, i32, %struct.intel_connector* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_connector = type { i32, %struct.drm_connector }

@intel_no_crt = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_crt_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@intel_crt_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@PCH_ADPA = common dso_local global i32 0, align 4
@VLV_ADPA = common dso_local global i32 0, align 4
@ADPA = common dso_local global i32 0, align 4
@intel_disable_crt = common dso_local global i32 0, align 4
@intel_enable_crt = common dso_local global i32 0, align 4
@intel_ddi_get_hw_state = common dso_local global i32 0, align 4
@intel_crt_get_hw_state = common dso_local global i32 0, align 4
@intel_connector_get_hw_state = common dso_local global i32 0, align 4
@crt_encoder_funcs = common dso_local global i32 0, align 4
@intel_crt_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@CRT_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@FDI_RX_POLARITY_REVERSED_LPT = common dso_local global i32 0, align 4
@FDI_RX_LINK_REVERSAL_OVERRIDE = common dso_local global i32 0, align 4
@_FDI_RXA_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_crt_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_crt*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %6, align 8
  %11 = load i32, i32* @intel_no_crt, align 4
  %12 = call i64 @dmi_check_system(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %169

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 48, i32 %16)
  %18 = bitcast i8* %17 to %struct.intel_crt*
  store %struct.intel_crt* %18, %struct.intel_crt** %4, align 8
  %19 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %20 = icmp ne %struct.intel_crt* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %169

22:                                               ; preds = %15
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kzalloc(i32 24, i32 %23)
  %25 = bitcast i8* %24 to %struct.intel_connector*
  store %struct.intel_connector* %25, %struct.intel_connector** %5, align 8
  %26 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %27 = icmp ne %struct.intel_connector* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %30 = call i32 @kfree(%struct.intel_crt* %29)
  br label %169

31:                                               ; preds = %22
  %32 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %33 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %32, i32 0, i32 1
  store %struct.drm_connector* %33, %struct.drm_connector** %3, align 8
  %34 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %35 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %36 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %35, i32 0, i32 3
  store %struct.intel_connector* %34, %struct.intel_connector** %36, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %38 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %39 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %38, i32 0, i32 1
  %40 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %41 = call i32 @drm_connector_init(%struct.drm_device* %37, %struct.drm_connector* %39, i32* @intel_crt_connector_funcs, i32 %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %43 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %44 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* @DRM_MODE_ENCODER_DAC, align 4
  %47 = call i32 @drm_encoder_init(%struct.drm_device* %42, i32* %45, i32* @intel_crt_enc_funcs, i32 %46)
  %48 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %49 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %50 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %49, i32 0, i32 1
  %51 = call i32 @intel_connector_attach_encoder(%struct.intel_connector* %48, %struct.TYPE_2__* %50)
  %52 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %53 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %54 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 8
  %56 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %57 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %60 = call i64 @IS_I830(%struct.drm_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %31
  %63 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %64 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %70

66:                                               ; preds = %31
  %67 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %68 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 7, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %72 = call i64 @IS_GEN2(%struct.drm_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %76 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  br label %80

77:                                               ; preds = %70
  %78 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %79 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %82 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %84 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @PCH_ADPA, align 4
  %88 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %89 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %103

90:                                               ; preds = %80
  %91 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %92 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @VLV_ADPA, align 4
  %96 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %97 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  br label %102

98:                                               ; preds = %90
  %99 = load i32, i32* @ADPA, align 4
  %100 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %101 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32, i32* @intel_disable_crt, align 4
  %105 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %106 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 5
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* @intel_enable_crt, align 4
  %109 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %110 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  %112 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %113 = call i64 @HAS_DDI(%struct.drm_device* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %103
  %116 = load i32, i32* @intel_ddi_get_hw_state, align 4
  %117 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %118 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  br label %125

120:                                              ; preds = %103
  %121 = load i32, i32* @intel_crt_get_hw_state, align 4
  %122 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %123 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %115
  %126 = load i32, i32* @intel_connector_get_hw_state, align 4
  %127 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %128 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %130 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = call i32 @drm_encoder_helper_add(i32* %131, i32* @crt_encoder_funcs)
  %133 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %134 = call i32 @drm_connector_helper_add(%struct.drm_connector* %133, i32* @intel_crt_connector_helper_funcs)
  %135 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %136 = call i32 @drm_sysfs_connector_add(%struct.drm_connector* %135)
  %137 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %138 = call i64 @I915_HAS_HOTPLUG(%struct.drm_device* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %125
  %141 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %142 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %143 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %148

144:                                              ; preds = %125
  %145 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %146 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %147 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %140
  %149 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %150 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  %151 = load i32, i32* @CRT_HOTPLUG_INT_STATUS, align 4
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %153 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %157 = call i64 @HAS_PCH_LPT(%struct.drm_device* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %148
  %160 = load i32, i32* @FDI_RX_POLARITY_REVERSED_LPT, align 4
  %161 = load i32, i32* @FDI_RX_LINK_REVERSAL_OVERRIDE, align 4
  %162 = or i32 %160, %161
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* @_FDI_RXA_CTL, align 4
  %164 = call i32 @I915_READ(i32 %163)
  %165 = load i32, i32* %7, align 4
  %166 = and i32 %164, %165
  %167 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %168 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %14, %21, %28, %159, %148
  ret void
}

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.intel_crt*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, i32*, i32*, i32) #1

declare dso_local i32 @intel_connector_attach_encoder(%struct.intel_connector*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_I830(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_device*) #1

declare dso_local i32 @drm_encoder_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_sysfs_connector_add(%struct.drm_connector*) #1

declare dso_local i64 @I915_HAS_HOTPLUG(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_LPT(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
