; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_position_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_position_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@applesmc_lock = common dso_local global i32 0, align 4
@SENSOR_X = common dso_local global i32 0, align 4
@SENSOR_Y = common dso_local global i32 0, align 4
@SENSOR_Z = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"(%d,%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @applesmc_position_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_position_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = call i32 @mutex_lock(i32* @applesmc_lock)
  %13 = load i32, i32* @SENSOR_X, align 4
  %14 = call i32 @applesmc_read_motion_sensor(i32 %13, i32* %9)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %31

18:                                               ; preds = %3
  %19 = load i32, i32* @SENSOR_Y, align 4
  %20 = call i32 @applesmc_read_motion_sensor(i32 %19, i32* %10)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @SENSOR_Z, align 4
  %26 = call i32 @applesmc_read_motion_sensor(i32 %25, i32* %11)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %31

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %29, %23, %17
  %32 = call i32 @mutex_unlock(i32* @applesmc_lock)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %35
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @applesmc_read_motion_sensor(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
