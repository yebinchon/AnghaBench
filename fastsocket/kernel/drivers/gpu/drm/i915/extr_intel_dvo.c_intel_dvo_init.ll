; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.intel_dvo_device*, %struct.i2c_adapter*)* }
%struct.i2c_adapter = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_encoder = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_dvo = type { i32, i32, %struct.intel_dvo_device, %struct.intel_encoder, i32 }
%struct.intel_connector = type { i32, i32, %struct.intel_dvo_device, %struct.intel_encoder, i32 }
%struct.drm_connector = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }

@DRM_MODE_ENCODER_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_dvo_enc_funcs = common dso_local global i32 0, align 4
@intel_disable_dvo = common dso_local global i32 0, align 4
@intel_enable_dvo = common dso_local global i32 0, align 4
@intel_dvo_get_hw_state = common dso_local global i32 0, align 4
@intel_dvo_connector_get_hw_state = common dso_local global i32 0, align 4
@intel_dvo_devices = common dso_local global %struct.intel_dvo_device* null, align 8
@GMBUS_PORT_SSC = common dso_local global i32 0, align 4
@GMBUS_PORT_DPB = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DVO = common dso_local global i32 0, align 4
@intel_dvo_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVII = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@intel_dvo_connector_helper_funcs = common dso_local global i32 0, align 4
@SubPixelHorizontalRGB = common dso_local global i32 0, align 4
@intel_dvo_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dvo_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca %struct.intel_dvo*, align 8
  %6 = alloca %struct.intel_connector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca %struct.intel_dvo_device*, align 8
  %11 = alloca %struct.i2c_adapter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %3, align 8
  %17 = load i32, i32* @DRM_MODE_ENCODER_NONE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.intel_dvo* @kzalloc(i32 72, i32 %18)
  store %struct.intel_dvo* %19, %struct.intel_dvo** %5, align 8
  %20 = load %struct.intel_dvo*, %struct.intel_dvo** %5, align 8
  %21 = icmp ne %struct.intel_dvo* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %183

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.intel_dvo* @kzalloc(i32 72, i32 %24)
  %26 = bitcast %struct.intel_dvo* %25 to %struct.intel_connector*
  store %struct.intel_connector* %26, %struct.intel_connector** %6, align 8
  %27 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %28 = icmp ne %struct.intel_connector* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.intel_dvo*, %struct.intel_dvo** %5, align 8
  %31 = call i32 @kfree(%struct.intel_dvo* %30)
  br label %183

32:                                               ; preds = %23
  %33 = load %struct.intel_dvo*, %struct.intel_dvo** %5, align 8
  %34 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %33, i32 0, i32 3
  store %struct.intel_encoder* %34, %struct.intel_encoder** %4, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %37 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %36, i32 0, i32 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @drm_encoder_init(%struct.drm_device* %35, i32* %37, i32* @intel_dvo_enc_funcs, i32 %38)
  %40 = load i32, i32* @intel_disable_dvo, align 4
  %41 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %42 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @intel_enable_dvo, align 4
  %44 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %45 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @intel_dvo_get_hw_state, align 4
  %47 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %48 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @intel_dvo_connector_get_hw_state, align 4
  %50 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %51 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %171, %32
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** @intel_dvo_devices, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.intel_dvo_device* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %174

57:                                               ; preds = %52
  %58 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %59 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %58, i32 0, i32 3
  %60 = bitcast %struct.intel_encoder* %59 to %struct.drm_connector*
  store %struct.drm_connector* %60, %struct.drm_connector** %9, align 8
  %61 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** @intel_dvo_devices, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %61, i64 %63
  store %struct.intel_dvo_device* %64, %struct.intel_dvo_device** %10, align 8
  %65 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %10, align 8
  %66 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @intel_gmbus_is_port_valid(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %10, align 8
  %72 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %12, align 4
  br label %84

74:                                               ; preds = %57
  %75 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %10, align 8
  %76 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 129
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @GMBUS_PORT_SSC, align 4
  store i32 %80, i32* %12, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @GMBUS_PORT_DPB, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %85, i32 %86)
  store %struct.i2c_adapter* %87, %struct.i2c_adapter** %11, align 8
  %88 = load %struct.intel_dvo*, %struct.intel_dvo** %5, align 8
  %89 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %88, i32 0, i32 2
  %90 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %10, align 8
  %91 = bitcast %struct.intel_dvo_device* %89 to i8*
  %92 = bitcast %struct.intel_dvo_device* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %94 = call i32 @intel_gmbus_force_bit(%struct.i2c_adapter* %93, i32 1)
  %95 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %10, align 8
  %96 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32 (%struct.intel_dvo_device*, %struct.i2c_adapter*)*, i32 (%struct.intel_dvo_device*, %struct.i2c_adapter*)** %98, align 8
  %100 = load %struct.intel_dvo*, %struct.intel_dvo** %5, align 8
  %101 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %100, i32 0, i32 2
  %102 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %103 = call i32 %99(%struct.intel_dvo_device* %101, %struct.i2c_adapter* %102)
  store i32 %103, i32* %13, align 4
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %105 = call i32 @intel_gmbus_force_bit(%struct.i2c_adapter* %104, i32 0)
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %84
  br label %171

109:                                              ; preds = %84
  %110 = load i32, i32* @INTEL_OUTPUT_DVO, align 4
  %111 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %112 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %114 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %113, i32 0, i32 0
  store i32 3, i32* %114, align 4
  %115 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %10, align 8
  %116 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %136 [
    i32 128, label %118
    i32 129, label %127
  ]

118:                                              ; preds = %109
  %119 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %120 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %122 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %123 = bitcast %struct.drm_connector* %122 to %struct.intel_encoder*
  %124 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %125 = call i32 @drm_connector_init(%struct.drm_device* %121, %struct.intel_encoder* %123, i32* @intel_dvo_connector_funcs, i32 %124)
  %126 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  store i32 %126, i32* %8, align 4
  br label %136

127:                                              ; preds = %109
  %128 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %129 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %131 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %132 = bitcast %struct.drm_connector* %131 to %struct.intel_encoder*
  %133 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %134 = call i32 @drm_connector_init(%struct.drm_device* %130, %struct.intel_encoder* %132, i32* @intel_dvo_connector_funcs, i32 %133)
  %135 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %109, %127, %118
  %137 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %138 = bitcast %struct.drm_connector* %137 to %struct.intel_encoder*
  %139 = call i32 @drm_connector_helper_add(%struct.intel_encoder* %138, i32* @intel_dvo_connector_helper_funcs)
  %140 = load i32, i32* @SubPixelHorizontalRGB, align 4
  %141 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %142 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 4
  %144 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %145 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %144, i32 0, i32 2
  store i32 0, i32* %145, align 4
  %146 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %147 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %146, i32 0, i32 3
  store i32 0, i32* %147, align 4
  %148 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %149 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %148, i32 0, i32 4
  %150 = call i32 @drm_encoder_helper_add(i32* %149, i32* @intel_dvo_helper_funcs)
  %151 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %152 = bitcast %struct.intel_connector* %151 to %struct.intel_dvo*
  %153 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %154 = call i32 @intel_connector_attach_encoder(%struct.intel_dvo* %152, %struct.intel_encoder* %153)
  %155 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %10, align 8
  %156 = getelementptr inbounds %struct.intel_dvo_device, %struct.intel_dvo_device* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 129
  br i1 %158, label %159, label %167

159:                                              ; preds = %136
  %160 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %161 = bitcast %struct.drm_connector* %160 to %struct.intel_encoder*
  %162 = call i32 @intel_dvo_get_current_mode(%struct.intel_encoder* %161)
  %163 = load %struct.intel_dvo*, %struct.intel_dvo** %5, align 8
  %164 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.intel_dvo*, %struct.intel_dvo** %5, align 8
  %166 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %159, %136
  %168 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %169 = bitcast %struct.drm_connector* %168 to %struct.intel_encoder*
  %170 = call i32 @drm_sysfs_connector_add(%struct.intel_encoder* %169)
  br label %183

171:                                              ; preds = %108
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %52

174:                                              ; preds = %52
  %175 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %176 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %175, i32 0, i32 4
  %177 = call i32 @drm_encoder_cleanup(i32* %176)
  %178 = load %struct.intel_dvo*, %struct.intel_dvo** %5, align 8
  %179 = call i32 @kfree(%struct.intel_dvo* %178)
  %180 = load %struct.intel_connector*, %struct.intel_connector** %6, align 8
  %181 = bitcast %struct.intel_connector* %180 to %struct.intel_dvo*
  %182 = call i32 @kfree(%struct.intel_dvo* %181)
  br label %183

183:                                              ; preds = %174, %167, %29, %22
  ret void
}

declare dso_local %struct.intel_dvo* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.intel_dvo*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.intel_dvo_device*) #1

declare dso_local i64 @intel_gmbus_is_port_valid(i32) #1

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @intel_gmbus_force_bit(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.intel_encoder*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.intel_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(i32*, i32*) #1

declare dso_local i32 @intel_connector_attach_encoder(%struct.intel_dvo*, %struct.intel_encoder*) #1

declare dso_local i32 @intel_dvo_get_current_mode(%struct.intel_encoder*) #1

declare dso_local i32 @drm_sysfs_connector_add(%struct.intel_encoder*) #1

declare dso_local i32 @drm_encoder_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
