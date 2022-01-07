; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-pmu.c_ams_pmu_get_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/ams/extr_ams-pmu.c_ams_pmu_get_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i64, i32*, i32* }

@ams_pmu_get_register.req = internal global %struct.adb_request zeroinitializer, align 8
@req_complete = common dso_local global i32 0, align 4
@ams_pmu_req_complete = common dso_local global i32 0, align 4
@ams_pmu_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ams_pmu_get_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_pmu_get_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @req_complete, align 4
  %5 = call i32 @DECLARE_COMPLETION(i32 %4)
  store i32* @req_complete, i32** getelementptr inbounds (%struct.adb_request, %struct.adb_request* @ams_pmu_get_register.req, i32 0, i32 2), align 8
  %6 = load i32, i32* @ams_pmu_req_complete, align 4
  %7 = load i32, i32* @ams_pmu_cmd, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @pmu_request(%struct.adb_request* @ams_pmu_get_register.req, i32 %6, i32 3, i32 %7, i32 1, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = call i32 @wait_for_completion(i32* @req_complete)
  %14 = load i64, i64* getelementptr inbounds (%struct.adb_request, %struct.adb_request* @ams_pmu_get_register.req, i32 0, i32 0), align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** getelementptr inbounds (%struct.adb_request, %struct.adb_request* @ams_pmu_get_register.req, i32 0, i32 1), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %16, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @DECLARE_COMPLETION(i32) #1

declare dso_local i64 @pmu_request(%struct.adb_request*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
