; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_set_auto_temp_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_set_auto_temp_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1031_data = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_auto_temp_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_auto_temp_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.adm1031_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %16 = call %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.adm1031_data* %16, %struct.adm1031_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @simple_strtol(i8* %21, i32* null, i32 10)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %24 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %28 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @AUTO_TEMP_MIN_TO_REG(i32 %26, i32 %33)
  %35 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %36 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ADM1031_REG_AUTO_TEMP(i32 %42)
  %44 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %45 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @adm1031_write_value(%struct.i2c_client* %41, i32 %43, i32 %50)
  %52 = load %struct.adm1031_data*, %struct.adm1031_data** %10, align 8
  %53 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i64, i64* %8, align 8
  ret i64 %55
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @AUTO_TEMP_MIN_TO_REG(i32, i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADM1031_REG_AUTO_TEMP(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
