; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_set_fan_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_set_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.gl520_data = type { i32*, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@GL520_REG_FAN_MIN = common dso_local global i32 0, align 4
@GL520_REG_BEEP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %23 = call i64 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %25 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %29 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @FAN_TO_REG(i64 %27, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %38 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %47 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %49 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %50 = call i32 @gl520_read_value(%struct.i2c_client* %48, i32 %49)
  %51 = and i32 %50, -65281
  %52 = load i32, i32* %13, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %51, %53
  %55 = call i32 @gl520_write_value(%struct.i2c_client* %46, i32 %47, i32 %54)
  br label %66

56:                                               ; preds = %4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %58 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %60 = load i32, i32* @GL520_REG_FAN_MIN, align 4
  %61 = call i32 @gl520_read_value(%struct.i2c_client* %59, i32 %60)
  %62 = and i32 %61, -256
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @gl520_write_value(%struct.i2c_client* %57, i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %56, %45
  %67 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %68 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %69 = call i32 @gl520_read_value(%struct.i2c_client* %67, i32 %68)
  %70 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %71 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %73 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %66
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 -33, i32 -65
  %85 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %86 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %98

89:                                               ; preds = %66
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 32, i32 64
  %94 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %95 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %89, %80
  %99 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %100 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %103 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %107 = load i32, i32* @GL520_REG_BEEP_MASK, align 4
  %108 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %109 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @gl520_write_value(%struct.i2c_client* %106, i32 %107, i32 %110)
  %112 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %113 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %112, i32 0, i32 3
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i64, i64* %8, align 8
  ret i64 %115
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
