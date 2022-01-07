; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_compute_sprite_srwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_compute_sprite_srwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_watermark_params = type { i32, i32 }
%struct.drm_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32, %struct.intel_watermark_params*, i32, i32*)* @sandybridge_compute_sprite_srwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sandybridge_compute_sprite_srwm(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, %struct.intel_watermark_params* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_watermark_params*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.drm_crtc*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.intel_watermark_params* %4, %struct.intel_watermark_params** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %7
  %27 = load i32*, i32** %15, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %8, align 4
  br label %89

28:                                               ; preds = %7
  %29 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device* %29, i32 %30)
  store %struct.drm_crtc* %31, %struct.drm_crtc** %16, align 8
  %32 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  %33 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  %39 = load i32*, i32** %15, align 8
  store i32 0, i32* %39, align 4
  store i32 0, i32* %8, align 4
  br label %89

40:                                               ; preds = %28
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %41, 1000
  %43 = load i32, i32* %18, align 4
  %44 = sdiv i32 %42, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %17, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %15, align 8
  store i32 0, i32* %49, align 4
  store i32 0, i32* %8, align 4
  br label %89

50:                                               ; preds = %40
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %17, align 8
  %54 = udiv i64 %52, %53
  %55 = add i64 %54, 1000
  %56 = udiv i64 %55, 1000
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sdiv i32 %63, 1000
  %65 = load i32, i32* %14, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sdiv i32 %66, 1000
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %20, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %22, align 4
  %73 = call i32 @min(i32 %71, i32 %72)
  %74 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %75 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DIV_ROUND_UP(i32 %73, i32 %76)
  store i32 %77, i32* %23, align 4
  %78 = load i32, i32* %23, align 4
  %79 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %80 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load i32*, i32** %15, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 1023
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %50, %48, %38, %26
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
