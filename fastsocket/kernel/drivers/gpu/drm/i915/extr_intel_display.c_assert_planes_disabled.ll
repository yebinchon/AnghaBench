; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_planes_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_planes_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DISPLAY_PLANE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"plane %c assertion failure, should be disabled but not\0A\00", align 1
@DISPPLANE_SEL_PIPE_MASK = common dso_local global i32 0, align 4
@DISPPLANE_SEL_PIPE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"plane %c assertion failure, should be off on pipe %c but is still active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @assert_planes_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_planes_disabled(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @HAS_PCH_SPLIT(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @DSPCNTR(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @I915_READ(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @plane_name(i32 %22)
  %24 = call i32 (i32, i8*, i32, ...) @WARN(i32 %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %58

25:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %55, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %58

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DSPCNTR(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DISPPLANE_SEL_PIPE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @DISPPLANE_SEL_PIPE_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @DISPLAY_PLANE_ENABLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %44, %45
  br label %47

47:                                               ; preds = %43, %29
  %48 = phi i1 [ false, %29 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @plane_name(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @pipe_name(i32 %52)
  %54 = call i32 (i32, i8*, i32, ...) @WARN(i32 %49, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %26

58:                                               ; preds = %14, %26
  ret void
}

declare dso_local i64 @HAS_PCH_SPLIT(i32) #1

declare dso_local i32 @DSPCNTR(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, ...) #1

declare dso_local i32 @plane_name(i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
