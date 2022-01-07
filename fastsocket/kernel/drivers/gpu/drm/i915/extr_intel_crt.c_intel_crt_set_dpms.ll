; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_set_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_set_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crt = type { i32 }

@ADPA_HSYNC_CNTL_DISABLE = common dso_local global i32 0, align 4
@ADPA_VSYNC_CNTL_DISABLE = common dso_local global i32 0, align 4
@ADPA_DAC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32)* @intel_crt_set_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crt_set_dpms(%struct.intel_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crt*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %17 = call %struct.intel_crt* @intel_encoder_to_crt(%struct.intel_encoder* %16)
  store %struct.intel_crt* %17, %struct.intel_crt** %7, align 8
  %18 = load %struct.intel_crt*, %struct.intel_crt** %7, align 8
  %19 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @I915_READ(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @ADPA_HSYNC_CNTL_DISABLE, align 4
  %23 = load i32, i32* @ADPA_VSYNC_CNTL_DISABLE, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %55 [
    i32 130, label %33
    i32 129, label %37
    i32 128, label %43
    i32 131, label %49
  ]

33:                                               ; preds = %2
  %34 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %55

37:                                               ; preds = %2
  %38 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %39 = load i32, i32* @ADPA_HSYNC_CNTL_DISABLE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %55

43:                                               ; preds = %2
  %44 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %45 = load i32, i32* @ADPA_VSYNC_CNTL_DISABLE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %55

49:                                               ; preds = %2
  %50 = load i32, i32* @ADPA_HSYNC_CNTL_DISABLE, align 4
  %51 = load i32, i32* @ADPA_VSYNC_CNTL_DISABLE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %2, %49, %43, %37, %33
  %56 = load %struct.intel_crt*, %struct.intel_crt** %7, align 8
  %57 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @I915_WRITE(i32 %58, i32 %59)
  ret void
}

declare dso_local %struct.intel_crt* @intel_encoder_to_crt(%struct.intel_encoder*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
