; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_update_drain_latency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_update_drain_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@DRAIN_LATENCY_PRECISION_32 = common dso_local global i32 0, align 4
@DDL_CURSORA_PRECISION_32 = common dso_local global i32 0, align 4
@DDL_CURSORA_PRECISION_16 = common dso_local global i32 0, align 4
@DDL_PLANEA_PRECISION_32 = common dso_local global i32 0, align 4
@DDL_PLANEA_PRECISION_16 = common dso_local global i32 0, align 4
@VLV_DDL1 = common dso_local global i32 0, align 4
@DDL_CURSORA_SHIFT = common dso_local global i32 0, align 4
@DDL_CURSORB_PRECISION_32 = common dso_local global i32 0, align 4
@DDL_CURSORB_PRECISION_16 = common dso_local global i32 0, align 4
@DDL_PLANEB_PRECISION_32 = common dso_local global i32 0, align 4
@DDL_PLANEB_PRECISION_16 = common dso_local global i32 0, align 4
@VLV_DDL2 = common dso_local global i32 0, align 4
@DDL_CURSORB_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @vlv_update_drain_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_update_drain_latency(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %3, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = call i64 @vlv_compute_drain_latency(%struct.drm_device* %17, i32 0, i32* %12, i32* %5, i32* %13, i32* %9)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %1
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @DRAIN_LATENCY_PRECISION_32, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @DDL_CURSORA_PRECISION_32, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @DDL_CURSORA_PRECISION_16, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @DRAIN_LATENCY_PRECISION_32, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @DDL_PLANEA_PRECISION_32, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @DDL_PLANEA_PRECISION_16, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @VLV_DDL1, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @DDL_CURSORA_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @I915_WRITE(i32 %39, i32 %48)
  br label %50

50:                                               ; preds = %37, %1
  %51 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %52 = call i64 @vlv_compute_drain_latency(%struct.drm_device* %51, i32 1, i32* %12, i32* %7, i32* %13, i32* %11)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @DRAIN_LATENCY_PRECISION_32, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @DDL_CURSORB_PRECISION_32, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @DDL_CURSORB_PRECISION_16, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @DRAIN_LATENCY_PRECISION_32, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @DDL_PLANEB_PRECISION_32, align 4
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @DDL_PLANEB_PRECISION_16, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @VLV_DDL2, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @DDL_CURSORB_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @I915_WRITE(i32 %73, i32 %82)
  br label %84

84:                                               ; preds = %71, %50
  ret void
}

declare dso_local i64 @vlv_compute_drain_latency(%struct.drm_device*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
