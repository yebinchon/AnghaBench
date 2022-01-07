; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_set_beep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_set_beep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.gl520_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@GL520_REG_BEEP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_beep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_beep(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.gl520_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.gl520_data* %17, %struct.gl520_data** %11, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = and i64 %24, -2
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %67

30:                                               ; preds = %4
  %31 = load %struct.gl520_data*, %struct.gl520_data** %11, align 8
  %32 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %35 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %36 = call i32 @gl520_read_value(%struct.i2c_client* %34, i32 %35)
  %37 = load %struct.gl520_data*, %struct.gl520_data** %11, align 8
  %38 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.gl520_data*, %struct.gl520_data** %11, align 8
  %45 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %56

48:                                               ; preds = %30
  %49 = load i32, i32* %12, align 4
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.gl520_data*, %struct.gl520_data** %11, align 8
  %53 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %48, %41
  %57 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %58 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %59 = load %struct.gl520_data*, %struct.gl520_data** %11, align 8
  %60 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @gl520_write_value(%struct.i2c_client* %57, i32 %58, i32 %61)
  %63 = load %struct.gl520_data*, %struct.gl520_data** %11, align 8
  %64 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %56, %27
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
