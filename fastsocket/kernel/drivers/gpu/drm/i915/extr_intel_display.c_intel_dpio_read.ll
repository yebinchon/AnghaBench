; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_dpio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_dpio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DPIO_PKT = common dso_local global i32 0, align 4
@DPIO_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DPIO idle wait timed out\0A\00", align 1
@DPIO_REG = common dso_local global i32 0, align 4
@DPIO_RID = common dso_local global i32 0, align 4
@DPIO_OP_READ = common dso_local global i32 0, align 4
@DPIO_PORTID = common dso_local global i32 0, align 4
@DPIO_BYTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DPIO read wait timed out\0A\00", align 1
@DPIO_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dpio_read(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = call i32 @mutex_is_locked(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load i32, i32* @DPIO_PKT, align 4
  %14 = call i32 @I915_READ(i32 %13)
  %15 = load i32, i32* @DPIO_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @wait_for_atomic_us(i32 %18, i32 100)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %49

23:                                               ; preds = %2
  %24 = load i32, i32* @DPIO_REG, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @I915_WRITE(i32 %24, i32 %25)
  %27 = load i32, i32* @DPIO_PKT, align 4
  %28 = load i32, i32* @DPIO_RID, align 4
  %29 = load i32, i32* @DPIO_OP_READ, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DPIO_PORTID, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DPIO_BYTE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @I915_WRITE(i32 %27, i32 %34)
  %36 = load i32, i32* @DPIO_PKT, align 4
  %37 = call i32 @I915_READ(i32 %36)
  %38 = load i32, i32* @DPIO_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @wait_for_atomic_us(i32 %41, i32 100)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %23
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %49

46:                                               ; preds = %23
  %47 = load i32, i32* @DPIO_DATA, align 4
  %48 = call i32 @I915_READ(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %44, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @wait_for_atomic_us(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
