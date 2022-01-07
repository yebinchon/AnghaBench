; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_set_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.max6650_data = type { i32, i32 }

@__const.set_enable.max6650_modes = private unnamed_addr constant [3 x i32] [i32 0, i32 3, i32 2], align 4
@.str = private unnamed_addr constant [36 x i8] c"illegal value for pwm1_enable (%d)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@MAX6650_REG_CONFIG = common dso_local global i32 0, align 4
@MAX6650_CFG_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.max6650_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.max6650_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.max6650_data* %17, %struct.max6650_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @simple_strtoul(i8* %18, i32* null, i32 10)
  store i32 %19, i32* %12, align 4
  %20 = bitcast [3 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([3 x i32]* @__const.set_enable.max6650_modes to i8*), i64 12, i1 false)
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %23, %4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %66

33:                                               ; preds = %23
  %34 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %35 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %38 = load i32, i32* @MAX6650_REG_CONFIG, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  %40 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %41 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %43 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX6650_CFG_MODE_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 4
  %53 = or i32 %47, %52
  %54 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %55 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %57 = load i32, i32* @MAX6650_REG_CONFIG, align 4
  %58 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %59 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %56, i32 %57, i32 %60)
  %62 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %63 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %33, %26
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.max6650_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
