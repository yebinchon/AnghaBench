; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_crtc_scanoutpos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_crtc_scanoutpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"trying to get scanoutpos for disabled pipe %c\0A\00", align 1
@PIPE_PIXEL_MASK = common dso_local global i32 0, align 4
@PIPE_PIXEL_SHIFT = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_VALID = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_ACCURATE = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_INVBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32*, i32*)* @i915_get_crtc_scanoutpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_get_crtc_scanoutpos(%struct.drm_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @intel_pipe_to_cpu_transcoder(i32* %24, i32 %25)
  store i32 %26, i32* %19, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @i915_pipe_enabled(%struct.drm_device* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @pipe_name(i32 %32)
  %34 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %5, align 4
  br label %131

35:                                               ; preds = %4
  %36 = load i32, i32* %19, align 4
  %37 = call i32 @VTOTAL(i32 %36)
  %38 = call i32 @I915_READ(i32 %37)
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 8191
  %41 = add nsw i32 1, %40
  store i32 %41, i32* %16, align 4
  %42 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %43 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 4
  br i1 %46, label %47, label %55

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PIPEDSL(i32 %48)
  %50 = call i32 @I915_READ(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, 8191
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 0, i32* %54, align 4
  br label %80

55:                                               ; preds = %35
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @PIPEFRAMEPIXEL(i32 %56)
  %58 = call i32 @I915_READ(i32 %57)
  %59 = load i32, i32* @PIPE_PIXEL_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @PIPE_PIXEL_SHIFT, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @HTOTAL(i32 %63)
  %65 = call i32 @I915_READ(i32 %64)
  %66 = ashr i32 %65, 16
  %67 = and i32 %66, 8191
  %68 = add nsw i32 1, %67
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sdiv i32 %69, %70
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sub nsw i32 %73, %77
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %55, %47
  %81 = load i32, i32* %19, align 4
  %82 = call i32 @VBLANK(i32 %81)
  %83 = call i32 @I915_READ(i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 8191
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = ashr i32 %86, 16
  %88 = and i32 %87, 8191
  store i32 %88, i32* %14, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %80
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %80
  store i32 0, i32* %17, align 4
  br label %99

99:                                               ; preds = %98, %93
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %102, %99
  %114 = load i32, i32* %11, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %118 = load i32, i32* @DRM_SCANOUTPOS_ACCURATE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %18, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %18, align 4
  br label %122

122:                                              ; preds = %116, %113
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* @DRM_SCANOUTPOS_INVBL, align 4
  %127 = load i32, i32* %18, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i32, i32* %18, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %31
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @intel_pipe_to_cpu_transcoder(i32*, i32) #1

declare dso_local i32 @i915_pipe_enabled(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @PIPEDSL(i32) #1

declare dso_local i32 @PIPEFRAMEPIXEL(i32) #1

declare dso_local i32 @HTOTAL(i32) #1

declare dso_local i32 @VBLANK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
