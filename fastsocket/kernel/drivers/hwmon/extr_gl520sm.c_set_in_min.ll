; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_set_in_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_set_in_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.gl520_data = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@GL520_REG_IN_MIN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_in_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_in_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.gl520_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %17 = call %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.gl520_data* %17, %struct.gl520_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %19 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @simple_strtol(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %25 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @VDD_TO_REG(i64 %30)
  store i32 %31, i32* %13, align 4
  br label %35

32:                                               ; preds = %4
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @IN_TO_REG(i64 %33)
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %38 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %63

45:                                               ; preds = %35
  %46 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %47 = load i32*, i32** @GL520_REG_IN_MIN, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %53 = load i32*, i32** @GL520_REG_IN_MIN, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @gl520_read_value(%struct.i2c_client* %52, i32 %57)
  %59 = and i32 %58, -256
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @gl520_write_value(%struct.i2c_client* %46, i32 %51, i32 %61)
  br label %72

63:                                               ; preds = %35
  %64 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %65 = load i32*, i32** @GL520_REG_IN_MIN, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @gl520_write_value(%struct.i2c_client* %64, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %45
  %73 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %74 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i64, i64* %8, align 8
  ret i64 %76
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @VDD_TO_REG(i64) #1

declare dso_local i32 @IN_TO_REG(i64) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
