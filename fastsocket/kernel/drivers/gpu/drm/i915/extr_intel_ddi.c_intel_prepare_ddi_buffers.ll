; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_prepare_ddi_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_prepare_ddi_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@hsw_ddi_translations_fdi = common dso_local global i32* null, align 8
@hsw_ddi_translations_dp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Initializing DDI buffers for port %c in %s mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"FDI\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"DP\00", align 1
@PORT_E = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Programming port %c in FDI mode, this probably will not work.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32)* @intel_prepare_ddi_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_prepare_ddi_buffers(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** @hsw_ddi_translations_fdi, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i32*, i32** @hsw_ddi_translations_dp, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32* [ %17, %16 ], [ %19, %18 ]
  store i32* %21, i32** %10, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @port_name(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PORT_E, align 4
  %34 = icmp ne i32 %32, %33
  br label %35

35:                                               ; preds = %31, %20
  %36 = phi i1 [ false, %20 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @port_name(i32 %38)
  %40 = call i32 @WARN(i32 %37, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  store i32 0, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @DDI_BUF_TRANS(i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %58, %35
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** @hsw_ddi_translations_fdi, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @I915_WRITE(i32 %49, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %43

61:                                               ; preds = %43
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i8*) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @DDI_BUF_TRANS(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
