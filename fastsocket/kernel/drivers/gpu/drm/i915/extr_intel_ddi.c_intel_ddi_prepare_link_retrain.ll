; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_prepare_link_retrain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_prepare_link_retrain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32, %struct.intel_dp }
%struct.intel_dp = type { i32*, i32 }

@DP_TP_CTL_ENABLE = common dso_local global i32 0, align 4
@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT1 = common dso_local global i32 0, align 4
@DP_TP_CTL_MODE_SST = common dso_local global i32 0, align 4
@DP_TP_CTL_SCRAMBLE_DISABLE = common dso_local global i32 0, align 4
@DP_LANE_COUNT_ENHANCED_FRAME_EN = common dso_local global i32 0, align 4
@DP_TP_CTL_ENHANCED_FRAME_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_prepare_link_retrain(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder* %9)
  store %struct.intel_digital_port* %10, %struct.intel_digital_port** %3, align 8
  %11 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %12 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %11, i32 0, i32 1
  store %struct.intel_dp* %12, %struct.intel_dp** %4, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DP_TP_CTL(i32 %21)
  %23 = call i32 @I915_READ(i32 %22)
  %24 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @DDI_BUF_CTL(i32 %28)
  %30 = call i32 @I915_READ(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @DDI_BUF_CTL(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @I915_WRITE(i32 %41, i32 %42)
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %35, %27
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @DP_TP_CTL(i32 %45)
  %47 = call i32 @I915_READ(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %49 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_MASK, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT1, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @DP_TP_CTL(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @I915_WRITE(i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @DP_TP_CTL(i32 %61)
  %63 = call i32 @POSTING_READ(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %44
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @intel_wait_ddi_buf_idle(%struct.drm_i915_private* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %44
  br label %71

71:                                               ; preds = %70, %1
  %72 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %73 = load i32, i32* @DP_TP_CTL_MODE_SST, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT1, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DP_TP_CTL_SCRAMBLE_DISABLE, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %7, align 4
  %79 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %80 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DP_LANE_COUNT_ENHANCED_FRAME_EN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %71
  %88 = load i32, i32* @DP_TP_CTL_ENHANCED_FRAME_ENABLE, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %87, %71
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @DP_TP_CTL(i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @I915_WRITE(i32 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @DP_TP_CTL(i32 %96)
  %98 = call i32 @POSTING_READ(i32 %97)
  %99 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %100 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %101 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @DDI_BUF_CTL(i32 %104)
  %106 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %107 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @I915_WRITE(i32 %105, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @DDI_BUF_CTL(i32 %110)
  %112 = call i32 @POSTING_READ(i32 %111)
  %113 = call i32 @udelay(i32 600)
  ret void
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DP_TP_CTL(i32) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_wait_ddi_buf_idle(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
