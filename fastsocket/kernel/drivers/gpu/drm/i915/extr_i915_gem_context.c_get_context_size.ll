; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_get_context_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_context.c_get_context_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CXT_SIZE = common dso_local global i32 0, align 4
@GEN7_CXT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @get_context_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_context_size(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %34 [
    i32 6, label %13
    i32 7, label %19
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @CXT_SIZE, align 4
  %15 = call i32 @I915_READ(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @GEN6_CXT_TOTAL_SIZE(i32 %16)
  %18 = mul nsw i32 %17, 64
  store i32 %18, i32* %4, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* @GEN7_CXT_SIZE, align 4
  %21 = call i32 @I915_READ(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = call i32 @IS_HASWELL(%struct.drm_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @HSW_CXT_TOTAL_SIZE(i32 %26)
  %28 = mul nsw i32 %27, 64
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @GEN7_CXT_TOTAL_SIZE(i32 %30)
  %32 = mul nsw i32 %31, 64
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %36

34:                                               ; preds = %1
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %33, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @GEN6_CXT_TOTAL_SIZE(i32) #1

declare dso_local i32 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @HSW_CXT_TOTAL_SIZE(i32) #1

declare dso_local i32 @GEN7_CXT_TOTAL_SIZE(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
