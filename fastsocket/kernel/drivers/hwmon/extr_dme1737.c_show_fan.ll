; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_show_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_show_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32, i32*, i32*, i32*, i32* }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@DME1737_BIT_ALARM_FAN = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_fan(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dme1737_data*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.dme1737_data* @dme1737_update_device(%struct.device* %12)
  store %struct.dme1737_data* %13, %struct.dme1737_data** %7, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %15 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute_2* %15, %struct.sensor_device_attribute_2** %8, align 8
  %16 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %17 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %99 [
    i32 131, label %23
    i32 129, label %46
    i32 130, label %69
    i32 132, label %79
    i32 128, label %90
  ]

23:                                               ; preds = %3
  %24 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %25 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %43

34:                                               ; preds = %23
  %35 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %36 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FAN_TPC_FROM_REG(i32 %41)
  br label %43

43:                                               ; preds = %34, %33
  %44 = phi i32 [ 0, %33 ], [ %42, %34 ]
  %45 = call i32 @FAN_FROM_REG(i32 %30, i32 %44)
  store i32 %45, i32* %11, align 4
  br label %103

46:                                               ; preds = %3
  %47 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %48 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %66

57:                                               ; preds = %46
  %58 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %59 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @FAN_TPC_FROM_REG(i32 %64)
  br label %66

66:                                               ; preds = %57, %56
  %67 = phi i32 [ 0, %56 ], [ %65, %57 ]
  %68 = call i32 @FAN_FROM_REG(i32 %53, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %103

69:                                               ; preds = %3
  %70 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %71 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FAN_MAX_FROM_REG(i32 %77)
  store i32 %78, i32* %11, align 4
  br label %103

79:                                               ; preds = %3
  %80 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %81 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** @DME1737_BIT_ALARM_FAN, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %82, %87
  %89 = and i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %103

90:                                               ; preds = %3
  %91 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %92 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @FAN_TYPE_FROM_REG(i32 %97)
  store i32 %98, i32* %11, align 4
  br label %103

99:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @dev_dbg(%struct.device* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %90, %79, %69, %66, %43
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @sprintf(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  ret i32 %106
}

declare dso_local %struct.dme1737_data* @dme1737_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @FAN_TPC_FROM_REG(i32) #1

declare dso_local i32 @FAN_MAX_FROM_REG(i32) #1

declare dso_local i32 @FAN_TYPE_FROM_REG(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
