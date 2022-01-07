; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-pmu.c_ams_pmu_set_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-pmu.c_ams_pmu_set_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32* }

@ams_pmu_set_register.req = internal global %struct.adb_request zeroinitializer, align 8
@req_complete = common dso_local global i32 0, align 4
@ams_pmu_req_complete = common dso_local global i32 0, align 4
@ams_pmu_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ams_pmu_set_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ams_pmu_set_register(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @req_complete, align 4
  %6 = call i32 @DECLARE_COMPLETION(i32 %5)
  store i32* @req_complete, i32** getelementptr inbounds (%struct.adb_request, %struct.adb_request* @ams_pmu_set_register.req, i32 0, i32 0), align 8
  %7 = load i32, i32* @ams_pmu_req_complete, align 4
  %8 = load i32, i32* @ams_pmu_cmd, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @pmu_request(%struct.adb_request* @ams_pmu_set_register.req, i32 %7, i32 4, i32 %8, i32 0, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %16

14:                                               ; preds = %2
  %15 = call i32 @wait_for_completion(i32* @req_complete)
  br label %16

16:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION(i32) #1

declare dso_local i64 @pmu_request(%struct.adb_request*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
