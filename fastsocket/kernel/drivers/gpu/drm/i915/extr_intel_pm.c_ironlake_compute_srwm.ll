; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_compute_srwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_compute_srwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_watermark_params = type { i32, i32 }
%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32, i32, %struct.intel_watermark_params*, %struct.intel_watermark_params*, i32*, i32*, i32*)* @ironlake_compute_srwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_compute_srwm(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, %struct.intel_watermark_params* %4, %struct.intel_watermark_params* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.intel_watermark_params*, align 8
  %16 = alloca %struct.intel_watermark_params*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.drm_crtc*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.intel_watermark_params* %4, %struct.intel_watermark_params** %15, align 8
  store %struct.intel_watermark_params* %5, %struct.intel_watermark_params** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %9
  %34 = load i32*, i32** %19, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %18, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %17, align 8
  store i32 0, i32* %36, align 4
  store i32 0, i32* %10, align 4
  br label %130

37:                                               ; preds = %9
  %38 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device* %38, i32 %39)
  store %struct.drm_crtc* %40, %struct.drm_crtc** %20, align 8
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %22, align 4
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %23, align 4
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  %50 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %25, align 4
  %53 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  %54 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 8
  store i32 %58, i32* %24, align 4
  %59 = load i32, i32* %23, align 4
  %60 = mul nsw i32 %59, 1000
  %61 = load i32, i32* %25, align 4
  %62 = sdiv i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %21, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %21, align 8
  %67 = udiv i64 %65, %66
  %68 = add i64 %67, 1000
  %69 = udiv i64 %68, 1000
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %26, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %24, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %27, align 4
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %24, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sdiv i32 %76, 1000
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sdiv i32 %79, 1000
  store i32 %80, i32* %28, align 4
  %81 = load i32, i32* %26, align 4
  %82 = load i32, i32* %27, align 4
  %83 = mul nsw i32 %81, %82
  store i32 %83, i32* %29, align 4
  %84 = load i32, i32* %28, align 4
  %85 = load i32, i32* %29, align 4
  %86 = call i32 @min(i32 %84, i32 %85)
  %87 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %15, align 8
  %88 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @DIV_ROUND_UP(i32 %86, i32 %89)
  store i32 %90, i32* %30, align 4
  %91 = load i32, i32* %30, align 4
  %92 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %15, align 8
  %93 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %91, %94
  %96 = load i32*, i32** %18, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32*, i32** %18, align 8
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 64
  %100 = load i32, i32* %27, align 4
  %101 = call i32 @DIV_ROUND_UP(i32 %99, i32 %100)
  %102 = add nsw i32 %101, 2
  %103 = load i32*, i32** %17, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %26, align 4
  %105 = load i32, i32* %24, align 4
  %106 = mul nsw i32 %104, %105
  %107 = mul nsw i32 %106, 64
  store i32 %107, i32* %30, align 4
  %108 = load i32, i32* %30, align 4
  %109 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %16, align 8
  %110 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @DIV_ROUND_UP(i32 %108, i32 %111)
  store i32 %112, i32* %30, align 4
  %113 = load i32, i32* %30, align 4
  %114 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %16, align 8
  %115 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load i32*, i32** %19, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32*, i32** %17, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %18, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %19, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %15, align 8
  %128 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %16, align 8
  %129 = call i32 @ironlake_check_srwm(%struct.drm_device* %119, i32 %120, i32 %122, i32 %124, i32 %126, %struct.intel_watermark_params* %127, %struct.intel_watermark_params* %128)
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %37, %33
  %131 = load i32, i32* %10, align 4
  ret i32 %131
}

declare dso_local %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ironlake_check_srwm(%struct.drm_device*, i32, i32, i32, i32, %struct.intel_watermark_params*, %struct.intel_watermark_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
