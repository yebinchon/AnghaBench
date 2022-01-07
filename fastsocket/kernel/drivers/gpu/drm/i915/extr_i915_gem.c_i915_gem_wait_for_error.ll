; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_wait_for_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_wait_for_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_error = type { i32 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Timed out waiting for the gpu reset to complete\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EXIT_COND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gpu_error*)* @i915_gem_wait_for_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_wait_for_error(%struct.i915_gpu_error* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_gpu_error*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_gpu_error* %0, %struct.i915_gpu_error** %3, align 8
  %5 = load %struct.i915_gpu_error*, %struct.i915_gpu_error** %3, align 8
  %6 = call i32 (%struct.i915_gpu_error*, ...) bitcast (i32 (...)* @i915_reset_in_progress to i32 (%struct.i915_gpu_error*, ...)*)(%struct.i915_gpu_error* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.i915_gpu_error*, %struct.i915_gpu_error** %3, align 8
  %10 = call i32 (%struct.i915_gpu_error*, ...) bitcast (i32 (...)* @i915_terminally_wedged to i32 (%struct.i915_gpu_error*, ...)*)(%struct.i915_gpu_error* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %44

13:                                               ; preds = %8
  %14 = load %struct.i915_gpu_error*, %struct.i915_gpu_error** %3, align 8
  %15 = getelementptr inbounds %struct.i915_gpu_error, %struct.i915_gpu_error* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.i915_gpu_error*, %struct.i915_gpu_error** %3, align 8
  %18 = call i32 (%struct.i915_gpu_error*, ...) bitcast (i32 (...)* @i915_reset_in_progress to i32 (%struct.i915_gpu_error*, ...)*)(%struct.i915_gpu_error* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.i915_gpu_error*, %struct.i915_gpu_error** %3, align 8
  %22 = call i32 (%struct.i915_gpu_error*, ...) bitcast (i32 (...)* @i915_terminally_wedged to i32 (%struct.i915_gpu_error*, ...)*)(%struct.i915_gpu_error* %21)
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ true, %13 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 10, %28
  %30 = call i32 @wait_event_interruptible_timeout(i32 %16, i64 %27, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %33, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @i915_reset_in_progress(...) #1

declare dso_local i32 @i915_terminally_wedged(...) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
