; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_show_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_show_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32, i32*, i32*, i32*, i32* }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@DME1737_BIT_ALARM_TEMP = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  switch i32 %22, label %81 [
    i32 131, label %23
    i32 129, label %32
    i32 130, label %41
    i32 128, label %50
    i32 133, label %59
    i32 132, label %70
  ]

23:                                               ; preds = %3
  %24 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %25 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @TEMP_FROM_REG(i32 %30, i32 16)
  store i32 %31, i32* %11, align 4
  br label %85

32:                                               ; preds = %3
  %33 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %34 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @TEMP_FROM_REG(i32 %39, i32 8)
  store i32 %40, i32* %11, align 4
  br label %85

41:                                               ; preds = %3
  %42 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %43 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @TEMP_FROM_REG(i32 %48, i32 8)
  store i32 %49, i32* %11, align 4
  br label %85

50:                                               ; preds = %3
  %51 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %52 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TEMP_FROM_REG(i32 %57, i32 8)
  store i32 %58, i32* %11, align 4
  br label %85

59:                                               ; preds = %3
  %60 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %61 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** @DME1737_BIT_ALARM_TEMP, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %62, %67
  %69 = and i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %85

70:                                               ; preds = %3
  %71 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %72 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 65280
  %79 = icmp eq i32 %78, 32768
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %11, align 4
  br label %85

81:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @dev_dbg(%struct.device* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %70, %59, %50, %41, %32, %23
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @sprintf(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  ret i32 %88
}

declare dso_local %struct.dme1737_data* @dme1737_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @TEMP_FROM_REG(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
