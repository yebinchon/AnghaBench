; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gem_gtt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.i915_gtt }
%struct.i915_gtt = type { i32 (%struct.drm_device.0*, i32*, i32*, i32*, i32*)*, i32, i32, i32, i32, i32 }
%struct.drm_device.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@i915_gmch_remove = common dso_local global i32 0, align 4
@gen6_gmch_remove = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Memory usable by graphics device = %zdM\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"GMADR size = %ldM\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GTT stolen size = %zdM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_gtt_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i915_gtt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  store %struct.i915_gtt* %12, %struct.i915_gtt** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 5
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %20, i32 0, i32 0
  store i32 (%struct.drm_device.0*, i32*, i32*, i32*, i32*)* bitcast (i32 (%struct.drm_device*, i32*, i32*, i32*, i32*)* @i915_gmch_probe to i32 (%struct.drm_device.0*, i32*, i32*, i32*, i32*)*), i32 (%struct.drm_device.0*, i32*, i32*, i32*, i32*)** %21, align 8
  %22 = load i32, i32* @i915_gmch_remove, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 8
  br label %34

26:                                               ; preds = %1
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %28, i32 0, i32 0
  store i32 (%struct.drm_device.0*, i32*, i32*, i32*, i32*)* bitcast (i32 (%struct.drm_device*, i32*, i32*, i32*, i32*)* @gen6_gmch_probe to i32 (%struct.drm_device.0*, i32*, i32*, i32*, i32*)*), i32 (%struct.drm_device.0*, i32*, i32*, i32*, i32*)** %29, align 8
  %30 = load i32, i32* @gen6_gmch_remove, align 4
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %32, i32 0, i32 5
  store i32 %30, i32* %33, align 8
  br label %34

34:                                               ; preds = %26, %18
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %36, i32 0, i32 0
  %38 = load i32 (%struct.drm_device.0*, i32*, i32*, i32*, i32*)*, i32 (%struct.drm_device.0*, i32*, i32*, i32*, i32*)** %37, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %40 = bitcast %struct.drm_device* %39 to %struct.drm_device.0*
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %42, i32 0, i32 1
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %45, i32 0, i32 2
  %47 = load %struct.i915_gtt*, %struct.i915_gtt** %5, align 8
  %48 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %47, i32 0, i32 4
  %49 = load %struct.i915_gtt*, %struct.i915_gtt** %5, align 8
  %50 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %49, i32 0, i32 3
  %51 = call i32 %38(%struct.drm_device.0* %40, i32* %43, i32* %46, i32* %48, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %34
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %83

56:                                               ; preds = %34
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  store i64 %64, i64* %6, align 8
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 20
  %70 = call i32 @DRM_INFO(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %72 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 20
  %76 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %78 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.i915_gtt, %struct.i915_gtt* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 20
  %82 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %56, %54
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @i915_gmch_probe(%struct.drm_device*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @gen6_gmch_probe(%struct.drm_device*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
