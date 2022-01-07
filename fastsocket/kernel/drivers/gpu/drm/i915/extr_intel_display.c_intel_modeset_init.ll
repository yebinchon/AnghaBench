; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_modeset_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_3__, %struct.drm_i915_private* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i64, i64 }
%struct.drm_i915_private = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@intel_mode_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%d display pipe%s available.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"plane %d init failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_modeset_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = call i32 @drm_mode_config_init(%struct.drm_device* %9)
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 24, i32* %19, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store i32* @intel_mode_funcs, i32** %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i32 @intel_init_quirks(%struct.drm_device* %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = call i32 @intel_init_pm(%struct.drm_device* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = call i32 @intel_init_display(%struct.drm_device* %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = call i64 @IS_GEN2(%struct.drm_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 2048, i32* %38, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 2048, i32* %41, align 4
  br label %61

42:                                               ; preds = %1
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = call i64 @IS_GEN3(%struct.drm_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 4096, i32* %49, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 4096, i32* %52, align 4
  br label %60

53:                                               ; preds = %42
  %54 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 8192, i32* %56, align 8
  %57 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i32 8192, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 8
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %70 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 1
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %78 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %71, i8* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %99, %61
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %82 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @intel_crtc_init(%struct.drm_device* %86, i32 %87)
  %89 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @intel_plane_init(%struct.drm_device* %89, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %85
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %79

102:                                              ; preds = %79
  %103 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %104 = call i32 @intel_cpu_pll_init(%struct.drm_device* %103)
  %105 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %106 = call i32 @intel_pch_pll_init(%struct.drm_device* %105)
  %107 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %108 = call i32 @i915_disable_vga(%struct.drm_device* %107)
  %109 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %110 = call i32 @intel_setup_outputs(%struct.drm_device* %109)
  %111 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %112 = call i32 @intel_disable_fbc(%struct.drm_device* %111)
  ret void
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @intel_init_quirks(%struct.drm_device*) #1

declare dso_local i32 @intel_init_pm(%struct.drm_device*) #1

declare dso_local i32 @intel_init_display(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN3(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @intel_crtc_init(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_plane_init(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_cpu_pll_init(%struct.drm_device*) #1

declare dso_local i32 @intel_pch_pll_init(%struct.drm_device*) #1

declare dso_local i32 @i915_disable_vga(%struct.drm_device*) #1

declare dso_local i32 @intel_setup_outputs(%struct.drm_device*) #1

declare dso_local i32 @intel_disable_fbc(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
