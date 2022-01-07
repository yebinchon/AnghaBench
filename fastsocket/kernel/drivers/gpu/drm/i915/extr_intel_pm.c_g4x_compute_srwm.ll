; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_compute_srwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_compute_srwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_watermark_params = type { i32, i32 }
%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, %struct.intel_watermark_params*, %struct.intel_watermark_params*, i32*, i32*)* @g4x_compute_srwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_compute_srwm(%struct.drm_device* %0, i32 %1, i32 %2, %struct.intel_watermark_params* %3, %struct.intel_watermark_params* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_watermark_params*, align 8
  %13 = alloca %struct.intel_watermark_params*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.drm_crtc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.intel_watermark_params* %3, %struct.intel_watermark_params** %12, align 8
  store %struct.intel_watermark_params* %4, %struct.intel_watermark_params** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %7
  %30 = load i32*, i32** %15, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %14, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %8, align 4
  br label %115

32:                                               ; preds = %7
  %33 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device* %33, i32 %34)
  store %struct.drm_crtc* %35, %struct.drm_crtc** %16, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %17, align 4
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %18, align 4
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %20, align 4
  %48 = load %struct.drm_crtc*, %struct.drm_crtc** %16, align 8
  %49 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 8
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %18, align 4
  %55 = mul nsw i32 %54, 1000
  %56 = load i32, i32* %20, align 4
  %57 = sdiv i32 %55, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %21, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %21, align 8
  %62 = udiv i64 %60, %61
  %63 = add i64 %62, 1000
  %64 = udiv i64 %63, 1000
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %19, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %23, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %19, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sdiv i32 %71, 1000
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sdiv i32 %74, 1000
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %23, align 4
  %78 = mul nsw i32 %76, %77
  store i32 %78, i32* %25, align 4
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* %25, align 4
  %81 = call i32 @min(i32 %79, i32 %80)
  %82 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %83 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @DIV_ROUND_UP(i32 %81, i32 %84)
  store i32 %85, i32* %26, align 4
  %86 = load i32, i32* %26, align 4
  %87 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %88 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = load i32*, i32** %14, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %22, align 4
  %93 = load i32, i32* %19, align 4
  %94 = mul nsw i32 %92, %93
  %95 = mul nsw i32 %94, 64
  store i32 %95, i32* %26, align 4
  %96 = load i32, i32* %26, align 4
  %97 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %98 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DIV_ROUND_UP(i32 %96, i32 %99)
  store i32 %100, i32* %26, align 4
  %101 = load i32, i32* %26, align 4
  %102 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %103 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = load i32*, i32** %15, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %15, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %113 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %13, align 8
  %114 = call i32 @g4x_check_srwm(%struct.drm_device* %107, i32 %109, i32 %111, %struct.intel_watermark_params* %112, %struct.intel_watermark_params* %113)
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %32, %29
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @g4x_check_srwm(%struct.drm_device*, i32, i32, %struct.intel_watermark_params*, %struct.intel_watermark_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
