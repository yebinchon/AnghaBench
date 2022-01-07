; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_compute_sprite_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_compute_sprite_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_watermark_params = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32, %struct.intel_watermark_params*, i32, i32*)* @sandybridge_compute_sprite_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sandybridge_compute_sprite_wm(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, %struct.intel_watermark_params* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_watermark_params*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.drm_crtc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.intel_watermark_params* %4, %struct.intel_watermark_params** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device* %20, i32 %21)
  store %struct.drm_crtc* %22, %struct.drm_crtc** %16, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  %24 = call i32 @intel_crtc_active(%struct.drm_crtc* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %7
  %27 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %28 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %15, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %8, align 4
  br label %83

31:                                               ; preds = %7
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sdiv i32 %38, 1000
  %40 = load i32, i32* %14, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sdiv i32 %41, 1000
  store i32 %42, i32* %18, align 4
  %43 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %44 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %47 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 8
  %52 = sub nsw i32 %49, %51
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %31
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %18, align 4
  br label %59

59:                                               ; preds = %55, %31
  %60 = load i32, i32* %18, align 4
  %61 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %62 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @DIV_ROUND_UP(i32 %60, i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %67 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = load i32*, i32** %15, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %74 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %59
  %78 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %79 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %15, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %59
  store i32 1, i32* %8, align 4
  br label %83

83:                                               ; preds = %82, %26
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_crtc_active(%struct.drm_crtc*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
