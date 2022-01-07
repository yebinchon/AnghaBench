; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_dpio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_dpio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DPIO_PKT = common dso_local global i32 0, align 4
@DPIO_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DPIO idle wait timed out\0A\00", align 1
@DPIO_DATA = common dso_local global i32 0, align 4
@DPIO_REG = common dso_local global i32 0, align 4
@DPIO_RID = common dso_local global i32 0, align 4
@DPIO_OP_WRITE = common dso_local global i32 0, align 4
@DPIO_PORTID = common dso_local global i32 0, align 4
@DPIO_BYTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"DPIO write wait timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32)* @intel_dpio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dpio_write(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = call i32 @mutex_is_locked(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i32, i32* @DPIO_PKT, align 4
  %15 = call i32 @I915_READ(i32 %14)
  %16 = load i32, i32* @DPIO_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @wait_for_atomic_us(i32 %19, i32 100)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %50

24:                                               ; preds = %3
  %25 = load i32, i32* @DPIO_DATA, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @I915_WRITE(i32 %25, i32 %26)
  %28 = load i32, i32* @DPIO_REG, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @I915_WRITE(i32 %28, i32 %29)
  %31 = load i32, i32* @DPIO_PKT, align 4
  %32 = load i32, i32* @DPIO_RID, align 4
  %33 = load i32, i32* @DPIO_OP_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DPIO_PORTID, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DPIO_BYTE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @I915_WRITE(i32 %31, i32 %38)
  %40 = load i32, i32* @DPIO_PKT, align 4
  %41 = call i32 @I915_READ(i32 %40)
  %42 = load i32, i32* @DPIO_BUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @wait_for_atomic_us(i32 %45, i32 100)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %24
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %22, %48, %24
  ret void
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
