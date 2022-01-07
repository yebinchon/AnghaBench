; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_post_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_post_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_dp = type { i32 }

@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_ENABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT1 = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@PORT_CLK_SEL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_ddi_post_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_post_disable(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_dp*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 1
  store %struct.drm_encoder* %11, %struct.drm_encoder** %3, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %18 = call i32 @intel_ddi_get_encoder_port(%struct.intel_encoder* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @DDI_BUF_CTL(i32 %22)
  %24 = call i32 @I915_READ(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @DDI_BUF_CTL(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @I915_WRITE(i32 %35, i32 %36)
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %29, %1
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @DP_TP_CTL(i32 %39)
  %41 = call i32 @I915_READ(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @DP_TP_CTL_ENABLE, align 4
  %43 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_MASK, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT1, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @DP_TP_CTL(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @I915_WRITE(i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %38
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @intel_wait_ddi_buf_idle(%struct.drm_i915_private* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %38
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %67 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %66)
  store %struct.intel_dp* %67, %struct.intel_dp** %9, align 8
  %68 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %69 = call i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp* %68)
  %70 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %71 = call i32 @ironlake_edp_panel_off(%struct.intel_dp* %70)
  br label %72

72:                                               ; preds = %65, %61
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @PORT_CLK_SEL(i32 %73)
  %75 = load i32, i32* @PORT_CLK_SEL_NONE, align 4
  %76 = call i32 @I915_WRITE(i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @intel_ddi_get_encoder_port(%struct.intel_encoder*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DP_TP_CTL(i32) #1

declare dso_local i32 @intel_wait_ddi_buf_idle(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder*) #1

declare dso_local i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_panel_off(%struct.intel_dp*) #1

declare dso_local i32 @PORT_CLK_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
