; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_store_chassis_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_store_chassis_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i32, i32 }

@W83792D_REG_CHASSIS_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_chassis_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_chassis_clear(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.w83792d_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %17 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.w83792d_data* %17, %struct.w83792d_data** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @simple_strtoul(i8* %18, i32* null, i32 10)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %21 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @SENSORS_LIMIT(i32 %23, i32 0, i32 1)
  %25 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %26 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %28 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 7
  %31 = and i32 %30, 128
  store i32 %31, i32* %12, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %33 = load i32, i32* @W83792D_REG_CHASSIS_CLR, align 4
  %34 = call i32 @w83792d_read_value(%struct.i2c_client* %32, i32 %33)
  %35 = and i32 %34, 127
  store i32 %35, i32* %13, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %37 = load i32, i32* @W83792D_REG_CHASSIS_CLR, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @w83792d_write_value(%struct.i2c_client* %36, i32 %37, i32 %40)
  %42 = load %struct.w83792d_data*, %struct.w83792d_data** %10, align 8
  %43 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i64, i64* %8, align 8
  ret i64 %45
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SENSORS_LIMIT(i32, i32, i32) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
