; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_update_pfit_vscale_ratio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_update_pfit_vscale_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_overlay = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32* }
%struct.TYPE_2__ = type { i32 }

@PFIT_CONTROL = common dso_local global i32 0, align 4
@PFIT_PGM_RATIOS = common dso_local global i32 0, align 4
@PFIT_VERT_SCALE_SHIFT_965 = common dso_local global i32 0, align 4
@VERT_AUTO_SCALE = common dso_local global i32 0, align 4
@PFIT_AUTO_RATIOS = common dso_local global i32 0, align 4
@PFIT_VERT_SCALE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_overlay*)* @update_pfit_vscale_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pfit_vscale_ratio(%struct.intel_overlay* %0) #0 {
  %2 = alloca %struct.intel_overlay*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_overlay* %0, %struct.intel_overlay** %2, align 8
  %7 = load %struct.intel_overlay*, %struct.intel_overlay** %2, align 8
  %8 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* @PFIT_CONTROL, align 4
  %14 = call i32 @I915_READ(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %22 = call i32 @I915_READ(i32 %21)
  %23 = load i32, i32* @PFIT_VERT_SCALE_SHIFT_965, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %6, align 4
  br label %40

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @VERT_AUTO_SCALE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @PFIT_AUTO_RATIOS, align 4
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @PFIT_PGM_RATIOS, align 4
  %35 = call i32 @I915_READ(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @PFIT_VERT_SCALE_SHIFT, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %36, %20
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.intel_overlay*, %struct.intel_overlay** %2, align 8
  %43 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
