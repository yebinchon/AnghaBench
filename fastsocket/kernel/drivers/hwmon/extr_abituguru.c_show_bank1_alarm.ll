; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_show_bank1_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_show_bank1_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.abituguru_data = type { i32*, i32** }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_bank1_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_bank1_alarm(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca %struct.abituguru_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %11 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %10)
  store %struct.sensor_device_attribute_2* %11, %struct.sensor_device_attribute_2** %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.abituguru_data* @abituguru_update_device(%struct.device* %12)
  store %struct.abituguru_data* %13, %struct.abituguru_data** %9, align 8
  %14 = load %struct.abituguru_data*, %struct.abituguru_data** %9, align 8
  %15 = icmp ne %struct.abituguru_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.abituguru_data*, %struct.abituguru_data** %9, align 8
  %21 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %31 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %32, 8
  %34 = shl i32 1, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %19
  %38 = load %struct.abituguru_data*, %struct.abituguru_data** %9, align 8
  %39 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %42 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %40, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %50 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* %4, align 4
  br label %60

57:                                               ; preds = %37, %19
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %54, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @abituguru_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
