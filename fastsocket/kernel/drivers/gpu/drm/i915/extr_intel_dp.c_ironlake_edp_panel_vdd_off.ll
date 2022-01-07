; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_panel_vdd_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_panel_vdd_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Turn eDP VDD off %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"eDP VDD not forced on\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ironlake_edp_panel_vdd_off(%struct.intel_dp* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %6 = call i32 @is_edp(%struct.intel_dp* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %37

9:                                                ; preds = %2
  %10 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %11 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %15 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %9
  %26 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %27 = call i32 @ironlake_panel_vdd_off_sync(%struct.intel_dp* %26)
  br label %37

28:                                               ; preds = %9
  %29 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %30 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %29, i32 0, i32 2
  %31 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %32 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 5
  %35 = call i32 @msecs_to_jiffies(i32 %34)
  %36 = call i32 @schedule_delayed_work(i32* %30, i32 %35)
  br label %37

37:                                               ; preds = %8, %28, %25
  ret void
}

declare dso_local i32 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @ironlake_panel_vdd_off_sync(%struct.intel_dp*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
