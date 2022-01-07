; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_find_pll_ironlake_dp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_find_pll_ironlake_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.drm_crtc*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*)* @intel_find_pll_ironlake_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_find_pll_ironlake_dp(i32* %0, %struct.drm_crtc* %1, i32 %2, i32 %3, %struct.TYPE_7__* %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %7, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %12, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 200000
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 2, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 10, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i32 12, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i32 9, i32* %25, align 4
  br label %32

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 2, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 10, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i32 14, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i32 8, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @intel_clock(%struct.drm_device* %33, i32 %34, %struct.TYPE_7__* %14)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = call i32 @memcpy(%struct.TYPE_7__* %36, %struct.TYPE_7__* %14, i32 20)
  ret i32 1
}

declare dso_local i32 @intel_clock(%struct.drm_device*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
