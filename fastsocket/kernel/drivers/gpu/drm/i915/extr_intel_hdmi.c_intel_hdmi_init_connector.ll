; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_init_connector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_init_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, %struct.intel_encoder, %struct.intel_hdmi }
%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32, i32, i32 }
%struct.intel_connector = type { i32, %struct.drm_connector }
%struct.drm_connector = type { i32, i64, i32 }

@intel_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@intel_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@GMBUS_PORT_DPB = common dso_local global i32 0, align 4
@PORTB_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@GMBUS_PORT_DPC = common dso_local global i32 0, align 4
@PORTC_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@GMBUS_PORT_DPD = common dso_local global i32 0, align 4
@PORTD_HOTPLUG_INT_STATUS = common dso_local global i32 0, align 4
@g4x_write_infoframe = common dso_local global i32 0, align 4
@g4x_set_infoframes = common dso_local global i32 0, align 4
@vlv_write_infoframe = common dso_local global i32 0, align 4
@vlv_set_infoframes = common dso_local global i32 0, align 4
@hsw_write_infoframe = common dso_local global i32 0, align 4
@hsw_set_infoframes = common dso_local global i32 0, align 4
@ibx_write_infoframe = common dso_local global i32 0, align 4
@ibx_set_infoframes = common dso_local global i32 0, align 4
@cpt_write_infoframe = common dso_local global i32 0, align 4
@cpt_set_infoframes = common dso_local global i32 0, align 4
@intel_ddi_connector_get_hw_state = common dso_local global i32 0, align 4
@intel_connector_get_hw_state = common dso_local global i32 0, align 4
@PEG_BAND_GAP_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_hdmi_init_connector(%struct.intel_digital_port* %0, %struct.intel_connector* %1) #0 {
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.intel_hdmi*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %4, align 8
  %12 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 1
  store %struct.drm_connector* %13, %struct.drm_connector** %5, align 8
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %15 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %14, i32 0, i32 2
  store %struct.intel_hdmi* %15, %struct.intel_hdmi** %6, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 1
  store %struct.intel_encoder* %17, %struct.intel_encoder** %7, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %8, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %23, align 8
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %9, align 8
  %25 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %26 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %29 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %30 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %31 = call i32 @drm_connector_init(%struct.drm_device* %28, %struct.drm_connector* %29, i32* @intel_hdmi_connector_funcs, i32 %30)
  %32 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %33 = call i32 @drm_connector_helper_add(%struct.drm_connector* %32, i32* @intel_hdmi_connector_helper_funcs)
  %34 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %36 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %38 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %70 [
    i32 130, label %42
    i32 129, label %51
    i32 128, label %60
    i32 131, label %69
  ]

42:                                               ; preds = %2
  %43 = load i32, i32* @GMBUS_PORT_DPB, align 4
  %44 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %45 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @PORTB_HOTPLUG_INT_STATUS, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %72

51:                                               ; preds = %2
  %52 = load i32, i32* @GMBUS_PORT_DPC, align 4
  %53 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %54 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @PORTC_HOTPLUG_INT_STATUS, align 4
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %72

60:                                               ; preds = %2
  %61 = load i32, i32* @GMBUS_PORT_DPD, align 4
  %62 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %63 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @PORTD_HOTPLUG_INT_STATUS, align 4
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %72

69:                                               ; preds = %2
  br label %70

70:                                               ; preds = %2, %69
  %71 = call i32 (...) @BUG()
  br label %72

72:                                               ; preds = %70, %60, %51, %42
  %73 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %74 = call i32 @HAS_PCH_SPLIT(%struct.drm_device* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @g4x_write_infoframe, align 4
  %78 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %79 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @g4x_set_infoframes, align 4
  %81 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %82 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %126

83:                                               ; preds = %72
  %84 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %85 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* @vlv_write_infoframe, align 4
  %89 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %90 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @vlv_set_infoframes, align 4
  %92 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %93 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %125

94:                                               ; preds = %83
  %95 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %96 = call i64 @IS_HASWELL(%struct.drm_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* @hsw_write_infoframe, align 4
  %100 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %101 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @hsw_set_infoframes, align 4
  %103 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %104 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %124

105:                                              ; preds = %94
  %106 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %107 = call i64 @HAS_PCH_IBX(%struct.drm_device* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i32, i32* @ibx_write_infoframe, align 4
  %111 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %112 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @ibx_set_infoframes, align 4
  %114 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %115 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %123

116:                                              ; preds = %105
  %117 = load i32, i32* @cpt_write_infoframe, align 4
  %118 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %119 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @cpt_set_infoframes, align 4
  %121 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %122 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %116, %109
  br label %124

124:                                              ; preds = %123, %98
  br label %125

125:                                              ; preds = %124, %87
  br label %126

126:                                              ; preds = %125, %76
  %127 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %128 = call i64 @HAS_DDI(%struct.drm_device* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* @intel_ddi_connector_get_hw_state, align 4
  %132 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %133 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %138

134:                                              ; preds = %126
  %135 = load i32, i32* @intel_connector_get_hw_state, align 4
  %136 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %137 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %130
  %139 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %140 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %141 = call i32 @intel_hdmi_add_properties(%struct.intel_hdmi* %139, %struct.drm_connector* %140)
  %142 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %143 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %144 = call i32 @intel_connector_attach_encoder(%struct.intel_connector* %142, %struct.intel_encoder* %143)
  %145 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %146 = call i32 @drm_sysfs_connector_add(%struct.drm_connector* %145)
  %147 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %148 = call i64 @IS_G4X(%struct.drm_device* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %138
  %151 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %152 = call i32 @IS_GM45(%struct.drm_device* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* @PEG_BAND_GAP_DATA, align 4
  %156 = call i32 @I915_READ(i32 %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* @PEG_BAND_GAP_DATA, align 4
  %158 = load i32, i32* %11, align 4
  %159 = and i32 %158, -16
  %160 = or i32 %159, 13
  %161 = call i32 @I915_WRITE(i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %154, %150, %138
  ret void
}

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_device*) #1

declare dso_local i32 @intel_hdmi_add_properties(%struct.intel_hdmi*, %struct.drm_connector*) #1

declare dso_local i32 @intel_connector_attach_encoder(%struct.intel_connector*, %struct.intel_encoder*) #1

declare dso_local i32 @drm_sysfs_connector_add(%struct.drm_connector*) #1

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local i32 @IS_GM45(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
