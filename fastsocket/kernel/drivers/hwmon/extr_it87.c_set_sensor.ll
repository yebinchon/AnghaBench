; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_it87.c_set_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.it87_data = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Sensor type 2 is deprecated, please use 4 instead\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@IT87_REG_TEMP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_sensor(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.it87_data*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %10, align 8
  %16 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %17 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.it87_data* %20, %struct.it87_data** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @simple_strtol(i8* %21, i32* null, i32 10)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %24 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %30 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 8, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %37 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 @dev_warn(%struct.device* %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 4, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %4
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = shl i32 1, %49
  %51 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %52 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %76

55:                                               ; preds = %45
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = shl i32 8, %59
  %61 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %62 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %75

65:                                               ; preds = %55
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %70 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* @EINVAL, align 8
  %73 = sub i64 0, %72
  store i64 %73, i64* %5, align 8
  br label %87

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %78 = load i32, i32* @IT87_REG_TEMP_ENABLE, align 4
  %79 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %80 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @it87_write_value(%struct.it87_data* %77, i32 %78, i32 %81)
  %83 = load %struct.it87_data*, %struct.it87_data** %12, align 8
  %84 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %76, %68
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
