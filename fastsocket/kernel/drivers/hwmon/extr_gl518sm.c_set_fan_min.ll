; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl518sm.c_set_fan_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl518sm.c_set_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.gl518_data = type { i32*, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@GL518_REG_FAN_LIMIT = common dso_local global i32 0, align 4
@GL518_REG_ALARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.gl518_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %17 = call %struct.gl518_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.gl518_data* %17, %struct.gl518_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %19 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %25 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %28 = load i32, i32* @GL518_REG_FAN_LIMIT, align 4
  %29 = call i8* @gl518_read_value(%struct.i2c_client* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %33 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DIV_FROM_REG(i32 %38)
  %40 = call i32 @FAN_TO_REG(i64 %31, i32 %39)
  %41 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %42 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 8, %48
  %50 = shl i32 255, %49
  %51 = and i32 %47, %50
  %52 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %53 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 1, %59
  %61 = mul nsw i32 8, %60
  %62 = shl i32 %58, %61
  %63 = or i32 %51, %62
  store i32 %63, i32* %12, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %65 = load i32, i32* @GL518_REG_FAN_LIMIT, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @gl518_write_value(%struct.i2c_client* %64, i32 %65, i32 %66)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %69 = load i32, i32* @GL518_REG_ALARM, align 4
  %70 = call i8* @gl518_read_value(%struct.i2c_client* %68, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %73 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %75 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %4
  %83 = load i32, i32* %11, align 4
  %84 = shl i32 32, %83
  %85 = xor i32 %84, -1
  %86 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %87 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %97

90:                                               ; preds = %4
  %91 = load i32, i32* %11, align 4
  %92 = shl i32 32, %91
  %93 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %94 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %90, %82
  %98 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %99 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %102 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %106 = load i32, i32* @GL518_REG_ALARM, align 4
  %107 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %108 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @gl518_write_value(%struct.i2c_client* %105, i32 %106, i32 %109)
  %111 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %112 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %111, i32 0, i32 3
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i64, i64* %8, align 8
  ret i64 %114
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.gl518_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @gl518_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @gl518_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
