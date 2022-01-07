; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_set_pipe_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_set_pipe_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i32 }
%struct.intel_encoder = type { i32 }

@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@TRANS_MSA_SYNC_CLK = common dso_local global i32 0, align 4
@TRANS_MSA_6_BPC = common dso_local global i32 0, align 4
@TRANS_MSA_8_BPC = common dso_local global i32 0, align 4
@TRANS_MSA_10_BPC = common dso_local global i32 0, align 4
@TRANS_MSA_12_BPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%d bpp unsupported by DDI function\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_set_pipe_settings(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %14)
  store %struct.intel_crtc* %15, %struct.intel_crtc** %4, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = call %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc* %16)
  store %struct.intel_encoder* %17, %struct.intel_encoder** %5, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %19 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %22 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27, %1
  %32 = load i32, i32* @TRANS_MSA_SYNC_CLK, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %34 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %52 [
    i32 18, label %36
    i32 24, label %40
    i32 30, label %44
    i32 36, label %48
  ]

36:                                               ; preds = %31
  %37 = load i32, i32* @TRANS_MSA_6_BPC, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %60

40:                                               ; preds = %31
  %41 = load i32, i32* @TRANS_MSA_8_BPC, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %60

44:                                               ; preds = %31
  %45 = load i32, i32* @TRANS_MSA_10_BPC, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %60

48:                                               ; preds = %31
  %49 = load i32, i32* @TRANS_MSA_12_BPC, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %60

52:                                               ; preds = %31
  %53 = load i32, i32* @TRANS_MSA_8_BPC, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %57 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %52, %48, %44, %40, %36
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @TRANS_MSA_MISC(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @I915_WRITE(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %27
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @TRANS_MSA_MISC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
