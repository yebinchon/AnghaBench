; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_detect_ddc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_detect_ddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_crt = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.edid = type { i32 }
%struct.i2c_adapter = type { i32 }

@INTEL_OUTPUT_ANALOG = common dso_local global i64 0, align 8
@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"CRT detected via DDC:0x50 [EDID]\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"CRT not detected via DDC:0x50 [EDID reports a digital panel]\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"CRT not detected via DDC:0x50 [no valid EDID found]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_crt_detect_ddc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_detect_ddc(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_crt*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.intel_crt* @intel_attached_crt(%struct.drm_connector* %9)
  store %struct.intel_crt* %10, %struct.intel_crt** %4, align 8
  %11 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %12 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %5, align 8
  %18 = load %struct.intel_crt*, %struct.intel_crt** %4, align 8
  %19 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INTEL_OUTPUT_ANALOG, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %26, i32 %29)
  store %struct.i2c_adapter* %30, %struct.i2c_adapter** %7, align 8
  %31 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %33 = call %struct.edid* @intel_crt_get_edid(%struct.drm_connector* %31, %struct.i2c_adapter* %32)
  store %struct.edid* %33, %struct.edid** %6, align 8
  %34 = load %struct.edid*, %struct.edid** %6, align 8
  %35 = icmp ne %struct.edid* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %1
  %37 = load %struct.edid*, %struct.edid** %6, align 8
  %38 = getelementptr inbounds %struct.edid, %struct.edid* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %53

46:                                               ; preds = %36
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %50

48:                                               ; preds = %1
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %46
  %51 = load %struct.edid*, %struct.edid** %6, align 8
  %52 = call i32 @kfree(%struct.edid* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.intel_crt* @intel_attached_crt(%struct.drm_connector*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.edid* @intel_crt_get_edid(%struct.drm_connector*, %struct.i2c_adapter*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
