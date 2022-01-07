; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_modes.c_intel_attach_force_audio_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_modes.c_intel_attach_force_audio_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.drm_property* }
%struct.drm_property = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@force_audio_names = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_attach_force_audio_property(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_property*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %6, i32 0, i32 1
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = load %struct.drm_property*, %struct.drm_property** %13, align 8
  store %struct.drm_property* %14, %struct.drm_property** %5, align 8
  %15 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %16 = icmp eq %struct.drm_property* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load i32, i32* @force_audio_names, align 4
  %20 = load i32, i32* @force_audio_names, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %18, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  store %struct.drm_property* %22, %struct.drm_property** %5, align 8
  %23 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %24 = icmp eq %struct.drm_property* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %35

26:                                               ; preds = %17
  %27 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  store %struct.drm_property* %27, %struct.drm_property** %29, align 8
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 0
  %33 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %34 = call i32 @drm_object_attach_property(i32* %32, %struct.drm_property* %33, i32 0)
  br label %35

35:                                               ; preds = %30, %25
  ret void
}

declare dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, %struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
