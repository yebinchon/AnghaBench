; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i915_mch_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i915_mch_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@TSFS = common dso_local global i32 0, align 4
@TSFS_SLOPE_MASK = common dso_local global i64 0, align 8
@TSFS_SLOPE_SHIFT = common dso_local global i64 0, align 8
@TR1 = common dso_local global i32 0, align 4
@TSFS_INTR_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i915_mch_val(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %7 = load i32, i32* @TSFS, align 4
  %8 = call i64 @I915_READ(i32 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @TSFS_SLOPE_MASK, align 8
  %11 = and i64 %9, %10
  %12 = load i64, i64* @TSFS_SLOPE_SHIFT, align 8
  %13 = lshr i64 %11, %12
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* @TR1, align 4
  %15 = call i64 @I915_READ8(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @TSFS_INTR_MASK, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = mul i64 %19, %20
  %22 = udiv i64 %21, 127
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %22, %23
  ret i64 %24
}

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i64 @I915_READ8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
