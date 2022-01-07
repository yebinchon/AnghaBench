; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_fan_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.it87_data = type { i32*, i32, i32* }

@IT87_REG_FAN_DIV = common dso_local global i32 0, align 4
@IT87_REG_FAN_MIN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.it87_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %9, align 8
  %16 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %17 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.it87_data* %20, %struct.it87_data** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @simple_strtol(i8* %21, i32* null, i32 10)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %24 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %27 = load i32, i32* @IT87_REG_FAN_DIV, align 4
  %28 = call i32 @it87_read_value(%struct.it87_data* %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %61 [
    i32 0, label %30
    i32 1, label %39
    i32 2, label %49
  ]

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = and i32 %31, 7
  %33 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %34 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  br label %61

39:                                               ; preds = %4
  %40 = load i32, i32* %13, align 4
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 7
  %43 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %44 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %61

49:                                               ; preds = %4
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 3, i32 1
  %55 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %56 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %4, %49, %39, %30
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %64 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DIV_FROM_REG(i32 %69)
  %71 = call i32 @FAN_TO_REG(i32 %62, i32 %70)
  %72 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %73 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %79 = load i32*, i32** @IT87_REG_FAN_MIN, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %85 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @it87_write_value(%struct.it87_data* %78, i32 %83, i32 %90)
  %92 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %93 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i64, i64* %8, align 8
  ret i64 %95
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @FAN_TO_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
