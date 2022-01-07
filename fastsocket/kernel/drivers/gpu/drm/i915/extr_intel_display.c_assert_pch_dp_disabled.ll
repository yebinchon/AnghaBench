; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_pch_dp_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_pch_dp_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"PCH DP (0x%08x) enabled on transcoder %c, should be disabled\0A\00", align 1
@DP_PORT_EN = common dso_local global i32 0, align 4
@DP_PIPEB_SELECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"IBX PCH dp port still using transcoder B\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32, i32)* @assert_pch_dp_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_pch_dp_disabled(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @I915_READ(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @dp_pipe_enabled(%struct.drm_i915_private* %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pipe_name(i32 %18)
  %20 = call i32 (i32, i8*, ...) @WARN(i32 %16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @HAS_PCH_IBX(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @DP_PORT_EN, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @DP_PIPEB_SELECT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %31, %26, %4
  %37 = phi i1 [ false, %26 ], [ false, %4 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @WARN(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*, ...) #1

declare dso_local i32 @dp_pipe_enabled(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i64 @HAS_PCH_IBX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
