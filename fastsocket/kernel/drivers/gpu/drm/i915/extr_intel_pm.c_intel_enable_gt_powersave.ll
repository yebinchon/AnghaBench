; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_gt_powersave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_enable_gt_powersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_enable_gt_powersave(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call i64 @IS_IRONLAKE_M(%struct.drm_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = call i32 @ironlake_enable_drps(%struct.drm_device* %11)
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = call i32 @ironlake_enable_rc6(%struct.drm_device* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = call i32 @intel_init_emon(%struct.drm_device* %15)
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = call i64 @IS_GEN6(%struct.drm_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = call i64 @IS_GEN7(%struct.drm_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21, %17
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i32 @IS_VALLEYVIEW(%struct.drm_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @HZ, align 4
  %34 = call i32 @round_jiffies_up_relative(i32 %33)
  %35 = call i32 @schedule_delayed_work(i32* %32, i32 %34)
  br label %36

36:                                               ; preds = %29, %25, %21
  br label %37

37:                                               ; preds = %36, %10
  ret void
}

declare dso_local i64 @IS_IRONLAKE_M(%struct.drm_device*) #1

declare dso_local i32 @ironlake_enable_drps(%struct.drm_device*) #1

declare dso_local i32 @ironlake_enable_rc6(%struct.drm_device*) #1

declare dso_local i32 @intel_init_emon(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i32 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_up_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
