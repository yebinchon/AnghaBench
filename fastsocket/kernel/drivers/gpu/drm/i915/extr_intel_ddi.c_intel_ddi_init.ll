; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.intel_encoder }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.intel_encoder = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.intel_connector = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.intel_encoder }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@intel_ddi_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@intel_ddi_helper_funcs = common dso_local global i32 0, align 4
@intel_enable_ddi = common dso_local global i32 0, align 4
@intel_ddi_pre_enable = common dso_local global i32 0, align 4
@intel_disable_ddi = common dso_local global i32 0, align 4
@intel_ddi_post_disable = common dso_local global i32 0, align 4
@intel_ddi_get_hw_state = common dso_local global i32 0, align 4
@DDI_BUF_PORT_REVERSAL = common dso_local global i32 0, align 4
@INTEL_OUTPUT_UNKNOWN = common dso_local global i32 0, align 4
@intel_ddi_hot_plug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.intel_connector*, align 8
  %10 = alloca %struct.intel_connector*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  store %struct.intel_connector* null, %struct.intel_connector** %9, align 8
  store %struct.intel_connector* null, %struct.intel_connector** %10, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.intel_digital_port* @kzalloc(i32 64, i32 %14)
  store %struct.intel_digital_port* %15, %struct.intel_digital_port** %6, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %17 = icmp ne %struct.intel_digital_port* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %121

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.intel_digital_port* @kzalloc(i32 64, i32 %20)
  %22 = bitcast %struct.intel_digital_port* %21 to %struct.intel_connector*
  store %struct.intel_connector* %22, %struct.intel_connector** %10, align 8
  %23 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %24 = icmp ne %struct.intel_connector* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %27 = call i32 @kfree(%struct.intel_digital_port* %26)
  br label %121

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PORT_A, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.intel_digital_port* @kzalloc(i32 64, i32 %33)
  %35 = bitcast %struct.intel_digital_port* %34 to %struct.intel_connector*
  store %struct.intel_connector* %35, %struct.intel_connector** %9, align 8
  %36 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %37 = icmp ne %struct.intel_connector* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %40 = bitcast %struct.intel_connector* %39 to %struct.intel_digital_port*
  %41 = call i32 @kfree(%struct.intel_digital_port* %40)
  %42 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %43 = call i32 @kfree(%struct.intel_digital_port* %42)
  br label %121

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %47 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %46, i32 0, i32 4
  store %struct.intel_encoder* %47, %struct.intel_encoder** %7, align 8
  %48 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %49 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %48, i32 0, i32 9
  store %struct.drm_encoder* %49, %struct.drm_encoder** %8, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %52 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %53 = call i32 @drm_encoder_init(%struct.drm_device* %50, %struct.drm_encoder* %51, i32* @intel_ddi_funcs, i32 %52)
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %55 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %54, i32* @intel_ddi_helper_funcs)
  %56 = load i32, i32* @intel_enable_ddi, align 4
  %57 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %58 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @intel_ddi_pre_enable, align 4
  %60 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %61 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @intel_disable_ddi, align 4
  %63 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %64 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @intel_ddi_post_disable, align 4
  %66 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %67 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @intel_ddi_get_hw_state, align 4
  %69 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %70 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %73 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i8* @DDI_BUF_CTL(i32 %74)
  %76 = call i32 @I915_READ(i8* %75)
  %77 = load i32, i32* @DDI_BUF_PORT_REVERSAL, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %80 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %82 = icmp ne %struct.intel_connector* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %45
  %84 = load i32, i32* %4, align 4
  %85 = call i8* @DDI_BUF_CTL(i32 %84)
  %86 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %87 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  br label %93

89:                                               ; preds = %45
  %90 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %91 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i8* null, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i32, i32* %4, align 4
  %95 = call i8* @DDI_BUF_CTL(i32 %94)
  %96 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %97 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  %99 = load i32, i32* @INTEL_OUTPUT_UNKNOWN, align 4
  %100 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %101 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %103 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %102, i32 0, i32 0
  store i32 7, i32* %103, align 4
  %104 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %105 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* @intel_ddi_hot_plug, align 4
  %107 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %108 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %110 = icmp ne %struct.intel_connector* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %93
  %112 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %113 = load %struct.intel_connector*, %struct.intel_connector** %9, align 8
  %114 = bitcast %struct.intel_connector* %113 to %struct.intel_digital_port*
  %115 = call i32 @intel_hdmi_init_connector(%struct.intel_digital_port* %112, %struct.intel_digital_port* %114)
  br label %116

116:                                              ; preds = %111, %93
  %117 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %118 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %119 = bitcast %struct.intel_connector* %118 to %struct.intel_digital_port*
  %120 = call i32 @intel_dp_init_connector(%struct.intel_digital_port* %117, %struct.intel_digital_port* %119)
  br label %121

121:                                              ; preds = %116, %38, %25, %18
  ret void
}

declare dso_local %struct.intel_digital_port* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.intel_digital_port*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @I915_READ(i8*) #1

declare dso_local i8* @DDI_BUF_CTL(i32) #1

declare dso_local i32 @intel_hdmi_init_connector(%struct.intel_digital_port*, %struct.intel_digital_port*) #1

declare dso_local i32 @intel_dp_init_connector(%struct.intel_digital_port*, %struct.intel_digital_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
