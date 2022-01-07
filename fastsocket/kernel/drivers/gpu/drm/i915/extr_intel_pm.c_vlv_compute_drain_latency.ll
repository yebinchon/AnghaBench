; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_compute_drain_latency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_compute_drain_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DRAIN_LATENCY_PRECISION_32 = common dso_local global i32 0, align 4
@DRAIN_LATENCY_PRECISION_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32*, i32*, i32*, i32*)* @vlv_compute_drain_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_compute_drain_latency(%struct.drm_device* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.drm_crtc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device* %18, i32 %19)
  store %struct.drm_crtc* %20, %struct.drm_crtc** %14, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %22 = call i32 @intel_crtc_active(%struct.drm_crtc* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %80

25:                                               ; preds = %6
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %15, align 4
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 8
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %15, align 4
  %37 = sdiv i32 %36, 1000
  %38 = load i32, i32* %16, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp sgt i32 %40, 256
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = load i32, i32* @DRAIN_LATENCY_PRECISION_32, align 4
  br label %46

44:                                               ; preds = %25
  %45 = load i32, i32* @DRAIN_LATENCY_PRECISION_16, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 64, %50
  %52 = mul nsw i32 %51, 4
  %53 = load i32, i32* %15, align 4
  %54 = sdiv i32 %53, 1000
  %55 = load i32, i32* %16, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sdiv i32 %52, %56
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sdiv i32 %59, 1000
  %61 = mul nsw i32 %60, 4
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp sgt i32 %62, 256
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = load i32, i32* @DRAIN_LATENCY_PRECISION_32, align 4
  br label %68

66:                                               ; preds = %46
  %67 = load i32, i32* @DRAIN_LATENCY_PRECISION_16, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 64, %72
  %74 = mul nsw i32 %73, 4
  %75 = load i32, i32* %15, align 4
  %76 = sdiv i32 %75, 1000
  %77 = mul nsw i32 %76, 4
  %78 = sdiv i32 %74, %77
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %68, %24
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_crtc_active(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
