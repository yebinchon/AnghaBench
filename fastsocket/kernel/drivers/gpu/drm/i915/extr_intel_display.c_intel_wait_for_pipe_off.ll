; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_wait_for_pipe_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_wait_for_pipe_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@I965_PIPECONF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pipe_off wait timed out\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DSL_LINEMASK_GEN2 = common dso_local global i32 0, align 4
@DSL_LINEMASK_GEN3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_wait_for_pipe_off(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %5, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 4
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @PIPECONF(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @I915_READ(i32 %26)
  %28 = load i32, i32* @I965_PIPECONF_ACTIVE, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @wait_for(i32 %31, i32 100)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %23
  br label %79

37:                                               ; preds = %2
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @PIPEDSL(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i64, i64* @jiffies, align 8
  %41 = call i64 @msecs_to_jiffies(i32 100)
  %42 = add i64 %40, %41
  store i64 %42, i64* %11, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = call i64 @IS_GEN2(%struct.drm_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @DSL_LINEMASK_GEN2, align 4
  store i32 %47, i32* %9, align 4
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @DSL_LINEMASK_GEN3, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @I915_READ(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = call i32 @mdelay(i32 5)
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @I915_READ(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @jiffies, align 8
  %67 = call i64 @time_after(i64 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %64, %57
  %70 = phi i1 [ false, %57 ], [ %68, %64 ]
  br i1 %70, label %51, label %71

71:                                               ; preds = %69
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @time_after(i64 %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  br label %79

79:                                               ; preds = %78, %36
  ret void
}

declare dso_local i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @PIPEDSL(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
