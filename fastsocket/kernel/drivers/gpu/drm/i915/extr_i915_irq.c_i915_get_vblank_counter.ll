; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_vblank_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_vblank_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"trying to get vblank count for disabled pipe %c\0A\00", align 1
@PIPE_FRAME_HIGH_MASK = common dso_local global i32 0, align 4
@PIPE_FRAME_LOW_MASK = common dso_local global i32 0, align 4
@PIPE_FRAME_HIGH_SHIFT = common dso_local global i32 0, align 4
@PIPE_FRAME_LOW_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @i915_get_vblank_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_get_vblank_counter(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @i915_pipe_enabled(%struct.drm_device* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pipe_name(i32 %21)
  %23 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @PIPEFRAME(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @PIPEFRAMEPIXEL(i32 %27)
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %42, %24
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @I915_READ(i64 %30)
  %32 = load i32, i32* @PIPE_FRAME_HIGH_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @I915_READ(i64 %34)
  %36 = load i32, i32* @PIPE_FRAME_LOW_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @I915_READ(i64 %38)
  %40 = load i32, i32* @PIPE_FRAME_HIGH_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %29, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @PIPE_FRAME_HIGH_SHIFT, align 4
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @PIPE_FRAME_LOW_SHIFT, align 4
  %51 = load i32, i32* %11, align 4
  %52 = ashr i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @i915_pipe_enabled(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i64 @PIPEFRAME(i32) #1

declare dso_local i64 @PIPEFRAMEPIXEL(i32) #1

declare dso_local i32 @I915_READ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
