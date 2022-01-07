; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_sf_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_sf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32, i32, i32, i32, i32 }

@SETUP_PWM_DEFAULT = common dso_local global i32 0, align 4
@W83793_REG_PWM_DEFAULT = common dso_local global i32 0, align 4
@SETUP_PWM_UPTIME = common dso_local global i32 0, align 4
@W83793_REG_PWM_UPTIME = common dso_local global i32 0, align 4
@SETUP_PWM_DOWNTIME = common dso_local global i32 0, align 4
@W83793_REG_PWM_DOWNTIME = common dso_local global i32 0, align 4
@W83793_REG_TEMP_CRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_sf_setup(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.w83793_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute_2* %14, %struct.sensor_device_attribute_2** %9, align 8
  %15 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.i2c_client* @to_i2c_client(%struct.device* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %21 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.w83793_data* %21, %struct.w83793_data** %12, align 8
  %22 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %23 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %22, i32 0, i32 4
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* @SETUP_PWM_DEFAULT, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %30 = load i32, i32* @W83793_REG_PWM_DEFAULT, align 4
  %31 = call i32 @w83793_read_value(%struct.i2c_client* %29, i32 %30)
  %32 = and i32 %31, 192
  %33 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %34 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @simple_strtoul(i8* %35, i32* null, i32 10)
  %37 = call i32 @SENSORS_LIMIT(i32 %36, i32 0, i32 255)
  %38 = ashr i32 %37, 2
  %39 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %40 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %44 = load i32, i32* @W83793_REG_PWM_DEFAULT, align 4
  %45 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %46 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @w83793_write_value(%struct.i2c_client* %43, i32 %44, i32 %47)
  br label %125

49:                                               ; preds = %4
  %50 = load i32, i32* @SETUP_PWM_UPTIME, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @simple_strtoul(i8* %54, i32* null, i32 10)
  %56 = call i8* @TIME_TO_REG(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %59 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %61 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %67 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %71 = load i32, i32* @W83793_REG_PWM_UPTIME, align 4
  %72 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %73 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @w83793_write_value(%struct.i2c_client* %70, i32 %71, i32 %74)
  br label %124

76:                                               ; preds = %49
  %77 = load i32, i32* @SETUP_PWM_DOWNTIME, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @simple_strtoul(i8* %81, i32* null, i32 10)
  %83 = call i8* @TIME_TO_REG(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %86 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %88 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %94 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %98 = load i32, i32* @W83793_REG_PWM_DOWNTIME, align 4
  %99 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %100 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @w83793_write_value(%struct.i2c_client* %97, i32 %98, i32 %101)
  br label %123

103:                                              ; preds = %76
  %104 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %105 = load i32, i32* @W83793_REG_TEMP_CRITICAL, align 4
  %106 = call i32 @w83793_read_value(%struct.i2c_client* %104, i32 %105)
  %107 = and i32 %106, 128
  %108 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %109 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @simple_strtol(i8* %110, i32* null, i32 10)
  %112 = call i32 @TEMP_TO_REG(i32 %111, i32 0, i32 127)
  %113 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %114 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %118 = load i32, i32* @W83793_REG_TEMP_CRITICAL, align 4
  %119 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %120 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @w83793_write_value(%struct.i2c_client* %117, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %103, %80
  br label %124

124:                                              ; preds = %123, %53
  br label %125

125:                                              ; preds = %124, %28
  %126 = load %struct.w83793_data*, %struct.w83793_data** %12, align 8
  %127 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %126, i32 0, i32 4
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i64, i64* %8, align 8
  ret i64 %129
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @SENSORS_LIMIT(i32, i32, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i8* @TIME_TO_REG(i32) #1

declare dso_local i32 @TEMP_TO_REG(i32, i32, i32) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
