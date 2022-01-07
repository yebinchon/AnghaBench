; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c___i915_gfx_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c___i915_gfx_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@mchdev_lock = common dso_local global i32 0, align 4
@PXVFREQ_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_i915_private*)* @__i915_gfx_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__i915_gfx_val(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %10 = call i32 @assert_spin_locked(i32* @mchdev_lock)
  %11 = load i64, i64* @PXVFREQ_BASE, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %11, %17
  %19 = call i32 @I915_READ(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = ashr i32 %20, 24
  %22 = and i32 %21, 127
  store i32 %22, i32* %8, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @pvid_to_extvid(%struct.drm_i915_private* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %5, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = call i64 @i915_mch_val(%struct.drm_i915_private* %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp ugt i64 %30, 80
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i64, i64* %3, align 8
  %34 = mul i64 %33, 2349
  %35 = add i64 %34, 135940
  store i64 %35, i64* %4, align 8
  br label %48

36:                                               ; preds = %1
  %37 = load i64, i64* %3, align 8
  %38 = icmp uge i64 %37, 50
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* %3, align 8
  %41 = mul i64 %40, 964
  %42 = add i64 %41, 29317
  store i64 %42, i64* %4, align 8
  br label %47

43:                                               ; preds = %36
  %44 = load i64, i64* %3, align 8
  %45 = mul i64 %44, 301
  %46 = add i64 %45, 1004
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = mul i64 150142, %50
  %52 = udiv i64 %51, 10000
  %53 = sub i64 %52, 78642
  %54 = mul i64 %49, %53
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = udiv i64 %55, 100000
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = mul i64 %57, %61
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = mul i64 %63, %64
  %66 = udiv i64 %65, 10000
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %7, align 8
  %68 = udiv i64 %67, 100
  store i64 %68, i64* %7, align 8
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %70 = call i32 @__i915_update_gfx_val(%struct.drm_i915_private* %69)
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %72 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %74, %75
  ret i64 %76
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @I915_READ(i64) #1

declare dso_local i32 @pvid_to_extvid(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @i915_mch_val(%struct.drm_i915_private*) #1

declare dso_local i32 @__i915_update_gfx_val(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
