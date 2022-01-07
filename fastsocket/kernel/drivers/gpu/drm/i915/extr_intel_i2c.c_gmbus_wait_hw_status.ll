; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_wait_hw_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_wait_hw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@GMBUS4 = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@GMBUS2 = common dso_local global i64 0, align 8
@GMBUS_SATOER = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32)* @gmbus_wait_hw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_wait_hw_status(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DEFINE_WAIT(i32 %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HAS_GMBUS_IRQ(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i64, i64* @GMBUS4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @I915_WRITE(i64 %26, i32 %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %53, %22
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @msecs_to_jiffies(i32 50)
  %32 = add nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 1
  %37 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %38 = call i32 @prepare_to_wait(i32* %36, i32* @wait, i32 %37)
  %39 = load i64, i64* @GMBUS2, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 @I915_READ_NOTRACE(i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @GMBUS_SATOER, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %56

51:                                               ; preds = %34
  %52 = call i32 @schedule_timeout(i32 1)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %29

56:                                               ; preds = %50, %29
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 1
  %59 = call i32 @finish_wait(i32* %58, i32* @wait)
  %60 = load i64, i64* @GMBUS4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = call i32 @I915_WRITE(i64 %63, i32 0)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @GMBUS_SATOER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* @ENXIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %81

72:                                               ; preds = %56
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @ETIMEDOUT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %77, %69
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @HAS_GMBUS_IRQ(i32) #1

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @I915_READ_NOTRACE(i64) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
