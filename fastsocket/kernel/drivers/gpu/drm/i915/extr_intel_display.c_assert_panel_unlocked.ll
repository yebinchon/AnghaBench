; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_panel_unlocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_panel_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PIPE_A = common dso_local global i32 0, align 4
@PCH_PP_CONTROL = common dso_local global i32 0, align 4
@PCH_LVDS = common dso_local global i32 0, align 4
@PP_CONTROL = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@PANEL_POWER_ON = common dso_local global i32 0, align 4
@PANEL_UNLOCK_REGS = common dso_local global i32 0, align 4
@LVDS_PIPEB_SELECT = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"panel assertion failure, pipe %c regs locked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @assert_panel_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_panel_unlocked(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @PIPE_A, align 4
  store i32 %10, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @HAS_PCH_SPLIT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @PCH_PP_CONTROL, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @PCH_LVDS, align 4
  store i32 %18, i32* %6, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @PP_CONTROL, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @LVDS, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @I915_READ(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PANEL_POWER_ON, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PANEL_UNLOCK_REGS, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @PANEL_UNLOCK_REGS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %22
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @I915_READ(i32 %37)
  %39 = load i32, i32* @LVDS_PIPEB_SELECT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @PIPE_B, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i1 [ false, %44 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @pipe_name(i32 %54)
  %56 = call i32 @WARN(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %55)
  ret void
}

declare dso_local i64 @HAS_PCH_SPLIT(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
