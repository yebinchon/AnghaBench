; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ibx_digital_port_connected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ibx_digital_port_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { i32 }

@SDE_PORTB_HOTPLUG = common dso_local global i32 0, align 4
@SDE_PORTC_HOTPLUG = common dso_local global i32 0, align 4
@SDE_PORTD_HOTPLUG = common dso_local global i32 0, align 4
@SDE_PORTB_HOTPLUG_CPT = common dso_local global i32 0, align 4
@SDE_PORTC_HOTPLUG_CPT = common dso_local global i32 0, align 4
@SDE_PORTD_HOTPLUG_CPT = common dso_local global i32 0, align 4
@SDEISR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibx_digital_port_connected(%struct.drm_i915_private* %0, %struct.intel_digital_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_digital_port* %1, %struct.intel_digital_port** %5, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @HAS_PCH_IBX(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %22 [
    i32 130, label %16
    i32 129, label %18
    i32 128, label %20
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @SDE_PORTB_HOTPLUG, align 4
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %12
  %19 = load i32, i32* @SDE_PORTC_HOTPLUG, align 4
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @SDE_PORTD_HOTPLUG, align 4
  store i32 %21, i32* %6, align 4
  br label %23

22:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %41

23:                                               ; preds = %20, %18, %16
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %26 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %34 [
    i32 130, label %28
    i32 129, label %30
    i32 128, label %32
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* @SDE_PORTB_HOTPLUG_CPT, align 4
  store i32 %29, i32* %6, align 4
  br label %35

30:                                               ; preds = %24
  %31 = load i32, i32* @SDE_PORTC_HOTPLUG_CPT, align 4
  store i32 %31, i32* %6, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @SDE_PORTD_HOTPLUG_CPT, align 4
  store i32 %33, i32* %6, align 4
  br label %35

34:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %41

35:                                               ; preds = %32, %30, %28
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32, i32* @SDEISR, align 4
  %38 = call i32 @I915_READ(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %34, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @HAS_PCH_IBX(i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
