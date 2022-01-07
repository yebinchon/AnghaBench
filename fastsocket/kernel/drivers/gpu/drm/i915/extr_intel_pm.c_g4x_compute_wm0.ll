; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_compute_wm0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_compute_wm0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_watermark_params = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.intel_watermark_params*, i32, %struct.intel_watermark_params*, i32, i32*, i32*)* @g4x_compute_wm0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_compute_wm0(%struct.drm_device* %0, i32 %1, %struct.intel_watermark_params* %2, i32 %3, %struct.intel_watermark_params* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_watermark_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_watermark_params*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.drm_crtc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.intel_watermark_params* %2, %struct.intel_watermark_params** %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.intel_watermark_params* %4, %struct.intel_watermark_params** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device* %27, i32 %28)
  store %struct.drm_crtc* %29, %struct.drm_crtc** %18, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %31 = call i32 @intel_crtc_active(%struct.drm_crtc* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %8
  %34 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %14, align 8
  %35 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %17, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %39 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %16, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %9, align 4
  br label %161

42:                                               ; preds = %8
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %19, align 4
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %48 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %20, align 4
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %21, align 4
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %56 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %59, 8
  store i32 %60, i32* %22, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %22, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sdiv i32 %63, 1000
  %65 = load i32, i32* %13, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sdiv i32 %66, 1000
  store i32 %67, i32* %25, align 4
  %68 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %69 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %72 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = load i32, i32* %20, align 4
  %76 = mul nsw i32 %75, 8
  %77 = sub nsw i32 %74, %76
  store i32 %77, i32* %26, align 4
  %78 = load i32, i32* %26, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %42
  %81 = load i32, i32* %26, align 4
  %82 = load i32, i32* %25, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %25, align 4
  br label %84

84:                                               ; preds = %80, %42
  %85 = load i32, i32* %25, align 4
  %86 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %87 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DIV_ROUND_UP(i32 %85, i32 %88)
  store i32 %89, i32* %25, align 4
  %90 = load i32, i32* %25, align 4
  %91 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %92 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = load i32*, i32** %16, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %99 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %97, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %84
  %103 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %12, align 8
  %104 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %16, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %84
  %108 = load i32, i32* %19, align 4
  %109 = mul nsw i32 %108, 1000
  %110 = load i32, i32* %21, align 4
  %111 = sdiv i32 %109, %110
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %23, align 4
  %114 = sdiv i32 %112, %113
  %115 = add nsw i32 %114, 1000
  %116 = sdiv i32 %115, 1000
  store i32 %116, i32* %24, align 4
  %117 = load i32, i32* %24, align 4
  %118 = mul nsw i32 %117, 64
  %119 = load i32, i32* %22, align 4
  %120 = mul nsw i32 %118, %119
  store i32 %120, i32* %25, align 4
  %121 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %14, align 8
  %122 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %14, align 8
  %125 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = load i32, i32* %20, align 4
  %129 = mul nsw i32 %128, 8
  %130 = sub nsw i32 %127, %129
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* %26, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %107
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %25, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %25, align 4
  br label %137

137:                                              ; preds = %133, %107
  %138 = load i32, i32* %25, align 4
  %139 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %14, align 8
  %140 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @DIV_ROUND_UP(i32 %138, i32 %141)
  store i32 %142, i32* %25, align 4
  %143 = load i32, i32* %25, align 4
  %144 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %14, align 8
  %145 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = load i32*, i32** %17, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32*, i32** %17, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %14, align 8
  %152 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %137
  %156 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %14, align 8
  %157 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %17, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %137
  store i32 1, i32* %9, align 4
  br label %161

161:                                              ; preds = %160, %33
  %162 = load i32, i32* %9, align 4
  ret i32 %162
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
