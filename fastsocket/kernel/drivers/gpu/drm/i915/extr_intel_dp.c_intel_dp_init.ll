; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_digital_port = type { i32, %struct.TYPE_2__, %struct.intel_encoder }
%struct.TYPE_2__ = type { i32 }
%struct.intel_encoder = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.intel_connector = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_dp_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@intel_dp_helper_funcs = common dso_local global i32 0, align 4
@intel_enable_dp = common dso_local global i32 0, align 4
@intel_pre_enable_dp = common dso_local global i32 0, align 4
@intel_disable_dp = common dso_local global i32 0, align 4
@intel_post_disable_dp = common dso_local global i32 0, align 4
@intel_dp_get_hw_state = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@intel_dp_hot_plug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_init(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.intel_encoder*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.intel_connector*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kzalloc(i32 48, i32 %11)
  %13 = bitcast i8* %12 to %struct.intel_digital_port*
  store %struct.intel_digital_port* %13, %struct.intel_digital_port** %7, align 8
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %15 = icmp ne %struct.intel_digital_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %74

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 4, i32 %18)
  %20 = bitcast i8* %19 to %struct.intel_connector*
  store %struct.intel_connector* %20, %struct.intel_connector** %10, align 8
  %21 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %22 = icmp ne %struct.intel_connector* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %25 = call i32 @kfree(%struct.intel_digital_port* %24)
  br label %74

26:                                               ; preds = %17
  %27 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %28 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %27, i32 0, i32 2
  store %struct.intel_encoder* %28, %struct.intel_encoder** %8, align 8
  %29 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %30 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %29, i32 0, i32 9
  store %struct.drm_encoder* %30, %struct.drm_encoder** %9, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %33 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %32, i32 0, i32 9
  %34 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %35 = call i32 @drm_encoder_init(%struct.drm_device* %31, %struct.drm_encoder* %33, i32* @intel_dp_enc_funcs, i32 %34)
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %37 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %36, i32 0, i32 9
  %38 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %37, i32* @intel_dp_helper_funcs)
  %39 = load i32, i32* @intel_enable_dp, align 4
  %40 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %41 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @intel_pre_enable_dp, align 4
  %43 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %44 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @intel_disable_dp, align 4
  %46 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %47 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @intel_post_disable_dp, align 4
  %49 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %50 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @intel_dp_get_hw_state, align 4
  %52 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %53 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %56 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %59 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %62 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %63 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %65 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %64, i32 0, i32 0
  store i32 7, i32* %65, align 4
  %66 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %67 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* @intel_dp_hot_plug, align 4
  %69 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  %70 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %72 = load %struct.intel_connector*, %struct.intel_connector** %10, align 8
  %73 = call i32 @intel_dp_init_connector(%struct.intel_digital_port* %71, %struct.intel_connector* %72)
  br label %74

74:                                               ; preds = %26, %23, %16
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.intel_digital_port*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @intel_dp_init_connector(%struct.intel_digital_port*, %struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
