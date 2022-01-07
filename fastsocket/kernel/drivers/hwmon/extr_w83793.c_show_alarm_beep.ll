; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_show_alarm_beep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_show_alarm_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83793_data = type { i32*, i32* }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@ALARM_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_alarm_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_alarm_beep(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.w83793_data*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.w83793_data* @w83793_update_device(%struct.device* %13)
  store %struct.w83793_data* %14, %struct.w83793_data** %7, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %8, align 8
  %17 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 3
  store i32 %23, i32* %10, align 4
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 7
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @ALARM_STATUS, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load %struct.w83793_data*, %struct.w83793_data** %7, align 8
  %33 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = ashr i32 %38, %39
  %41 = and i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %53

42:                                               ; preds = %3
  %43 = load %struct.w83793_data*, %struct.w83793_data** %7, align 8
  %44 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %49, %50
  %52 = and i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %42, %31
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55)
  ret i32 %56
}

declare dso_local %struct.w83793_data* @w83793_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
