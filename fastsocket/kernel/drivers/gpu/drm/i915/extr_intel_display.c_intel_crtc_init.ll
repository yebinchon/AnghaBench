; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32**, i32** }
%struct.intel_crtc = type { i32*, i32*, i32*, i32, i32, i32, i32, i32 }

@INTELFB_CONN_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@intel_crtc_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"swapping pipes & planes for FBC\0A\00", align 1
@intel_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @intel_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crtc_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %5, align 8
  %11 = load i32, i32* @INTELFB_CONN_LIMIT, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = add i64 48, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.intel_crtc* @kzalloc(i32 %15, i32 %16)
  store %struct.intel_crtc* %17, %struct.intel_crtc** %6, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %19 = icmp eq %struct.intel_crtc* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %129

21:                                               ; preds = %2
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %23, i32 0, i32 7
  %25 = call i32 @drm_crtc_init(%struct.drm_device* %22, i32* %24, i32* @intel_crtc_funcs)
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %27 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %26, i32 0, i32 7
  %28 = call i32 @drm_mode_crtc_set_gamma_size(i32* %27, i32 256)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %54, %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %35 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %42 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %49 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %32
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %60 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %63 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %66 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %68 = call i64 @IS_MOBILE(%struct.drm_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %57
  %71 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %72 = call i64 @IS_GEN3(%struct.drm_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %81 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %70, %57
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32**, i32*** %85, align 8
  %87 = call i32 @ARRAY_SIZE(i32** %86)
  %88 = icmp sge i32 %83, %87
  br i1 %88, label %100, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %94 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %92, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br label %100

100:                                              ; preds = %89, %82
  %101 = phi i1 [ true, %82 ], [ %99, %89 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @BUG_ON(i32 %102)
  %104 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %105 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %104, i32 0, i32 7
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %110 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %108, i64 %112
  store i32* %105, i32** %113, align 8
  %114 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %115 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %114, i32 0, i32 7
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32**, i32*** %117, align 8
  %119 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %120 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %118, i64 %122
  store i32* %115, i32** %123, align 8
  %124 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %125 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %124, i32 0, i32 6
  store i32 24, i32* %125, align 4
  %126 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %127 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %126, i32 0, i32 7
  %128 = call i32 @drm_crtc_helper_add(i32* %127, i32* @intel_helper_funcs)
  br label %129

129:                                              ; preds = %100, %20
  ret void
}

declare dso_local %struct.intel_crtc* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_crtc_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN3(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
