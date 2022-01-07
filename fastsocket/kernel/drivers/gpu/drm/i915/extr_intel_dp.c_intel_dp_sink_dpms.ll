; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_sink_dpms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_sink_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32* }

@DP_DPCD_REV = common dso_local global i64 0, align 8
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DP_SET_POWER = common dso_local global i32 0, align 4
@DP_SET_POWER_D3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to write sink power state\0A\00", align 1
@DP_SET_POWER_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_sink_dpms(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %8 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @DP_DPCD_REV, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 17
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %47

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %21 = load i32, i32* @DP_SET_POWER, align 4
  %22 = load i32, i32* @DP_SET_POWER_D3, align 4
  %23 = call i32 @intel_dp_aux_native_write_1(%struct.intel_dp* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19
  br label %47

29:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %35 = load i32, i32* @DP_SET_POWER, align 4
  %36 = load i32, i32* @DP_SET_POWER_D0, align 4
  %37 = call i32 @intel_dp_aux_native_write_1(%struct.intel_dp* %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %46

41:                                               ; preds = %33
  %42 = call i32 @msleep(i32 1)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %30

46:                                               ; preds = %40, %30
  br label %47

47:                                               ; preds = %14, %46, %28
  ret void
}

declare dso_local i32 @intel_dp_aux_native_write_1(%struct.intel_dp*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
