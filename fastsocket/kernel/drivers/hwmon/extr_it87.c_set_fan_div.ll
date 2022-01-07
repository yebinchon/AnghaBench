; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.it87_data = type { i64*, i32*, i32 }

@IT87_REG_FAN_DIV = common dso_local global i32 0, align 4
@IT87_REG_FAN_MIN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.it87_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %9, align 8
  %17 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.it87_data* %21, %struct.it87_data** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %25 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %28 = load i32, i32* @IT87_REG_FAN_DIV, align 4
  %29 = call i32 @it87_read_value(%struct.it87_data* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %31 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %38 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DIV_FROM_REG(i32 %43)
  %45 = call i32 @FAN_FROM_REG(i64 %36, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %74 [
    i32 0, label %47
    i32 1, label %47
    i32 2, label %56
  ]

47:                                               ; preds = %4, %4
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @DIV_TO_REG(i64 %48)
  %50 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %51 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %74

56:                                               ; preds = %4
  %57 = load i64, i64* %12, align 8
  %58 = icmp ult i64 %57, 8
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %61 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 1, i32* %65, align 4
  br label %73

66:                                               ; preds = %56
  %67 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %68 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 3, i32* %72, align 4
  br label %73

73:                                               ; preds = %66, %59
  br label %74

74:                                               ; preds = %73, %4, %47
  %75 = load i32, i32* %14, align 4
  %76 = and i32 %75, 128
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %12, align 8
  %78 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %79 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 7
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %12, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %12, align 8
  %87 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %88 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 7
  %93 = shl i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %12, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %12, align 8
  %97 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %98 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %106

103:                                              ; preds = %74
  %104 = load i64, i64* %12, align 8
  %105 = or i64 %104, 64
  store i64 %105, i64* %12, align 8
  br label %106

106:                                              ; preds = %103, %74
  %107 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %108 = load i32, i32* @IT87_REG_FAN_DIV, align 4
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @it87_write_value(%struct.it87_data* %107, i32 %108, i64 %109)
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %113 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @DIV_FROM_REG(i32 %118)
  %120 = call i64 @FAN_TO_REG(i32 %111, i32 %119)
  %121 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %122 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  store i64 %120, i64* %126, align 8
  %127 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %128 = load i32*, i32** @IT87_REG_FAN_MIN, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %134 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @it87_write_value(%struct.it87_data* %127, i32 %132, i64 %139)
  %141 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %142 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %141, i32 0, i32 2
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i64, i64* %8, align 8
  ret i64 %144
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @FAN_FROM_REG(i64, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i64) #1

declare dso_local i64 @FAN_TO_REG(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
