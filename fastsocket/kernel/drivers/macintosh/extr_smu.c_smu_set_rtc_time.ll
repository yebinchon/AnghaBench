; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_set_rtc_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_smu.c_smu_set_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i64, i64, i64, i32, i64, i64, i64 }
%struct.smu_simple_cmd = type { i32 }

@smu = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@SMU_CMD_RTC_COMMAND = common dso_local global i32 0, align 4
@SMU_CMD_RTC_SET_DATETIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu_set_rtc_time(%struct.rtc_time* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_simple_cmd, align 4
  %7 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** @smu, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %52

13:                                               ; preds = %2
  %14 = load i32, i32* @SMU_CMD_RTC_COMMAND, align 4
  %15 = load i32, i32* @SMU_CMD_RTC_SET_DATETIME, align 4
  %16 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @hex2bcd(i64 %18)
  %20 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @hex2bcd(i64 %22)
  %24 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @hex2bcd(i64 %26)
  %28 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @hex2bcd(i64 %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @hex2bcd(i64 %37)
  %39 = add nsw i64 %38, 1
  %40 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 100
  %44 = call i64 @hex2bcd(i64 %43)
  %45 = call i32 @smu_queue_simple(%struct.smu_simple_cmd* %6, i32 %14, i32 8, i32* null, i32* null, i32 %15, i64 %19, i64 %23, i64 %27, i32 %30, i64 %34, i64 %39, i64 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %13
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %13
  %51 = call i32 @smu_spinwait_simple(%struct.smu_simple_cmd* %6)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %48, %10
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @smu_queue_simple(%struct.smu_simple_cmd*, i32, i32, i32*, i32*, i32, i64, i64, i64, i32, i64, i64, i64) #1

declare dso_local i64 @hex2bcd(i64) #1

declare dso_local i32 @smu_spinwait_simple(%struct.smu_simple_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
