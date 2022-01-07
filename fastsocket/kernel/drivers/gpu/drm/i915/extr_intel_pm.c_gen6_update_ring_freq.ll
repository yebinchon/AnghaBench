; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_update_ring_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_gen6_update_ring_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@tsc_khz = common dso_local global i32 0, align 4
@GEN6_PCODE_FREQ_IA_RATIO_SHIFT = common dso_local global i32 0, align 4
@GEN6_PCODE_WRITE_MIN_FREQ_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @gen6_update_ring_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_update_ring_freq(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  store i32 15, i32* %4, align 4
  store i32 180, i32* %8, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = call i32 @mutex_is_locked(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = call i32 @cpufreq_quick_get_max(i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @tsc_khz, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i32, i32* %7, align 4
  %28 = udiv i32 %27, 1000
  store i32 %28, i32* %7, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %70, %26
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %34, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %33
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 800, i32* %6, align 4
  br label %58

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sdiv i32 %55, 2
  %57 = sub i32 %52, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %51, %50
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @DIV_ROUND_CLOSEST(i32 %59, i32 100)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @GEN6_PCODE_FREQ_IA_RATIO_SHIFT, align 4
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = load i32, i32* @GEN6_PCODE_WRITE_MIN_FREQ_TABLE, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @sandybridge_pcode_write(%struct.drm_i915_private* %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %5, align 4
  br label %33

73:                                               ; preds = %33
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @cpufreq_quick_get_max(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @sandybridge_pcode_write(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
