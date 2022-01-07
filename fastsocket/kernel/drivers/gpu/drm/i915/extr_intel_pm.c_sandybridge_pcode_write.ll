; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_pcode_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_pcode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GEN6_PCODE_MAILBOX = common dso_local global i32 0, align 4
@GEN6_PCODE_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"warning: pcode (write) mailbox access failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@GEN6_PCODE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"timeout waiting for pcode write (%d) to finish\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sandybridge_pcode_write(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @mutex_is_locked(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load i32, i32* @GEN6_PCODE_MAILBOX, align 4
  %17 = call i32 @I915_READ(i32 %16)
  %18 = load i32, i32* @GEN6_PCODE_READY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %50

25:                                               ; preds = %3
  %26 = load i32, i32* @GEN6_PCODE_DATA, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @I915_WRITE(i32 %26, i32 %27)
  %29 = load i32, i32* @GEN6_PCODE_MAILBOX, align 4
  %30 = load i32, i32* @GEN6_PCODE_READY, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @I915_WRITE(i32 %29, i32 %32)
  %34 = load i32, i32* @GEN6_PCODE_MAILBOX, align 4
  %35 = call i32 @I915_READ(i32 %34)
  %36 = load i32, i32* @GEN6_PCODE_READY, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @wait_for(i32 %39, i32 500)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %25
  %48 = load i32, i32* @GEN6_PCODE_DATA, align 4
  %49 = call i32 @I915_WRITE(i32 %48, i32 0)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %42, %21
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
