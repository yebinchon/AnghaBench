; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_idev_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_idev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@applesmc_lock = common dso_local global i32 0, align 4
@SENSOR_X = common dso_local global i32 0, align 4
@SENSOR_Y = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@rest_x = common dso_local global i64 0, align 8
@ABS_Y = common dso_local global i32 0, align 4
@rest_y = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @applesmc_idev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applesmc_idev_poll(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %6 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %7 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %6, i32 0, i32 0
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %3, align 8
  %9 = call i32 @mutex_lock(i32* @applesmc_lock)
  %10 = load i32, i32* @SENSOR_X, align 4
  %11 = call i64 @applesmc_read_motion_sensor(i32 %10, i64* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %36

14:                                               ; preds = %1
  %15 = load i32, i32* @SENSOR_Y, align 4
  %16 = call i64 @applesmc_read_motion_sensor(i32 %15, i64* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %36

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %4, align 8
  %22 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %23 = load i32, i32* @ABS_X, align 4
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @rest_x, align 8
  %26 = sub nsw i64 %24, %25
  %27 = call i32 @input_report_abs(%struct.input_dev* %22, i32 %23, i64 %26)
  %28 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %29 = load i32, i32* @ABS_Y, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @rest_y, align 8
  %32 = sub nsw i64 %30, %31
  %33 = call i32 @input_report_abs(%struct.input_dev* %28, i32 %29, i64 %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %35 = call i32 @input_sync(%struct.input_dev* %34)
  br label %36

36:                                               ; preds = %19, %18, %13
  %37 = call i32 @mutex_unlock(i32* @applesmc_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @applesmc_read_motion_sensor(i32, i64*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
