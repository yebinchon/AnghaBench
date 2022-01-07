; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_get_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dvo.c_intel_dvo_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_dvo = type { i32* }
%struct.drm_display_mode = type { i32 }

@GMBUS_PORT_DPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_dvo_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dvo_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_dvo*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.intel_dvo* @intel_attached_dvo(%struct.drm_connector* %7)
  store %struct.intel_dvo* %8, %struct.intel_dvo** %4, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = load i32, i32* @GMBUS_PORT_DPC, align 4
  %17 = call i32 @intel_gmbus_get_adapter(%struct.drm_i915_private* %15, i32 %16)
  %18 = call i32 @intel_ddc_get_modes(%struct.drm_connector* %14, i32 %17)
  %19 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 1
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.intel_dvo*, %struct.intel_dvo** %4, align 8
  %26 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.intel_dvo*, %struct.intel_dvo** %4, align 8
  %34 = getelementptr inbounds %struct.intel_dvo, %struct.intel_dvo* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_2__* %32, i32* %35)
  store %struct.drm_display_mode* %36, %struct.drm_display_mode** %6, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %38 = icmp ne %struct.drm_display_mode* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %42 = call i32 @drm_mode_probed_add(%struct.drm_connector* %40, %struct.drm_display_mode* %41)
  store i32 1, i32* %2, align 4
  br label %45

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %24
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %39, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.intel_dvo* @intel_attached_dvo(%struct.drm_connector*) #1

declare dso_local i32 @intel_ddc_get_modes(%struct.drm_connector*, i32) #1

declare dso_local i32 @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
