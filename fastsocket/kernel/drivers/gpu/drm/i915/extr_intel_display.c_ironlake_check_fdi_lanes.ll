; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_check_fdi_lanes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_check_fdi_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"checking fdi config on pipe %i, lanes %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"invalid fdi lane config on pipe %i: %i lanes\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"invalid shared fdi lane config on pipe %i: %i lanes\0A\00", align 1
@SOUTH_CHICKEN1 = common dso_local global i32 0, align 4
@FDI_BC_BIFURCATION_SELECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"fdi link B uses too many lanes to enable link C\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*)* @ironlake_check_fdi_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_check_fdi_lanes(%struct.intel_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  %7 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 129
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call %struct.intel_crtc* @to_intel_crtc(%struct.TYPE_4__* %18)
  store %struct.intel_crtc* %19, %struct.intel_crtc** %6, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %33 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %36 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %40 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %39, i32 0, i32 1
  store i32 4, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %125

41:                                               ; preds = %1
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %125

47:                                               ; preds = %41
  %48 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %49 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %123 [
    i32 130, label %51
    i32 129, label %52
    i32 128, label %91
  ]

51:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %125

52:                                               ; preds = %47
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %54 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 128
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %52
  %62 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %63 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %68 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %71 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %75 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %74, i32 0, i32 1
  store i32 2, i32* %75, align 4
  store i32 0, i32* %2, align 4
  br label %125

76:                                               ; preds = %61, %52
  %77 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %78 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 2
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @SOUTH_CHICKEN1, align 4
  %83 = call i32 @I915_READ(i32 %82)
  %84 = load i32, i32* @FDI_BC_BIFURCATION_SELECT, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @WARN_ON(i32 %85)
  br label %90

87:                                               ; preds = %76
  %88 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %89 = call i32 @cpt_enable_fdi_bc_bifurcation(%struct.drm_device* %88)
  br label %90

90:                                               ; preds = %87, %81
  store i32 1, i32* %2, align 4
  br label %125

91:                                               ; preds = %47
  %92 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %93 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %99 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp sle i32 %100, 2
  br i1 %101, label %102, label %118

102:                                              ; preds = %97, %91
  %103 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %104 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %109 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %112 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %113)
  %115 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %116 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %115, i32 0, i32 1
  store i32 2, i32* %116, align 4
  store i32 0, i32* %2, align 4
  br label %125

117:                                              ; preds = %102
  br label %120

118:                                              ; preds = %97
  %119 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %125

120:                                              ; preds = %117
  %121 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %122 = call i32 @cpt_enable_fdi_bc_bifurcation(%struct.drm_device* %121)
  store i32 1, i32* %2, align 4
  br label %125

123:                                              ; preds = %47
  %124 = call i32 (...) @BUG()
  br label %125

125:                                              ; preds = %31, %46, %51, %66, %90, %107, %118, %120, %123
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.TYPE_4__*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @cpt_enable_fdi_bc_bifurcation(%struct.drm_device*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
