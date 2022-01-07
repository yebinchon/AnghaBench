; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_beep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i32, i32 }

@W83791D_REG_BEEP_CTRL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_beep(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83791d_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %9, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.w83791d_data* %20, %struct.w83791d_data** %11, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sdiv i32 %24, 8
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @simple_strtol(i8* %26, i32* null, i32 10)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %14, align 8
  %32 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %33 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 %35, 8
  %37 = shl i32 255, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %40 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %44 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @w83791d_read(%struct.i2c_client* %43, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %50, 8
  %52 = shl i32 %49, %51
  %53 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %54 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 1, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %61 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i64, i64* %14, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 %64, %66
  %68 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %69 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = or i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %75 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %81 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %83, 8
  %85 = ashr i32 %82, %84
  %86 = and i32 %85, 255
  %87 = call i32 @w83791d_write(%struct.i2c_client* %74, i32 %79, i32 %86)
  %88 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %89 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i64, i64* %8, align 8
  ret i64 %91
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
