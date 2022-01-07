; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_hrawclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_hrawclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@CLKCFG = common dso_local global i32 0, align 4
@CLKCFG_FSB_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @intel_hrawclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hrawclk(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 200, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load i32, i32* @CLKCFG, align 4
  %15 = call i32 @I915_READ(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CLKCFG_FSB_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %26 [
    i32 131, label %19
    i32 130, label %20
    i32 129, label %21
    i32 128, label %22
    i32 135, label %23
    i32 134, label %24
    i32 133, label %25
    i32 132, label %25
  ]

19:                                               ; preds = %13
  store i32 100, i32* %2, align 4
  br label %27

20:                                               ; preds = %13
  store i32 133, i32* %2, align 4
  br label %27

21:                                               ; preds = %13
  store i32 166, i32* %2, align 4
  br label %27

22:                                               ; preds = %13
  store i32 200, i32* %2, align 4
  br label %27

23:                                               ; preds = %13
  store i32 266, i32* %2, align 4
  br label %27

24:                                               ; preds = %13
  store i32 333, i32* %2, align 4
  br label %27

25:                                               ; preds = %13, %13
  store i32 400, i32* %2, align 4
  br label %27

26:                                               ; preds = %13
  store i32 133, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %24, %23, %22, %21, %20, %19, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
