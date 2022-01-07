; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_sbi_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_sbi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SBI_CTL_STAT = common dso_local global i32 0, align 4
@SBI_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timeout waiting for SBI to become ready\0A\00", align 1
@SBI_ADDR = common dso_local global i32 0, align 4
@SBI_ICLK = common dso_local global i32 0, align 4
@SBI_CTL_DEST_ICLK = common dso_local global i32 0, align 4
@SBI_CTL_OP_CRRD = common dso_local global i32 0, align 4
@SBI_CTL_DEST_MPHY = common dso_local global i32 0, align 4
@SBI_CTL_OP_IORD = common dso_local global i32 0, align 4
@SBI_RESPONSE_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"timeout waiting for SBI to complete read transaction\0A\00", align 1
@SBI_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32)* @intel_sbi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sbi_read(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = call i32 @mutex_is_locked(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load i32, i32* @SBI_CTL_STAT, align 4
  %17 = call i32 @I915_READ(i32 %16)
  %18 = load i32, i32* @SBI_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @wait_for(i32 %21, i32 100)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

26:                                               ; preds = %3
  %27 = load i32, i32* @SBI_ADDR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 16
  %30 = call i32 @I915_WRITE(i32 %27, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SBI_ICLK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @SBI_CTL_DEST_ICLK, align 4
  %36 = load i32, i32* @SBI_CTL_OP_CRRD, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %8, align 4
  br label %42

38:                                               ; preds = %26
  %39 = load i32, i32* @SBI_CTL_DEST_MPHY, align 4
  %40 = load i32, i32* @SBI_CTL_OP_IORD, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* @SBI_CTL_STAT, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @SBI_BUSY, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @I915_WRITE(i32 %43, i32 %46)
  %48 = load i32, i32* @SBI_CTL_STAT, align 4
  %49 = call i32 @I915_READ(i32 %48)
  %50 = load i32, i32* @SBI_BUSY, align 4
  %51 = load i32, i32* @SBI_RESPONSE_FAIL, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i64 @wait_for(i32 %55, i32 100)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %63

60:                                               ; preds = %42
  %61 = load i32, i32* @SBI_DATA, align 4
  %62 = call i32 @I915_READ(i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %58, %24
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
