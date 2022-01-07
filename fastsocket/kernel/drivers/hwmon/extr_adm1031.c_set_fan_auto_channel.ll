; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_set_fan_auto_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_set_fan_auto_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1031_data = type { i32, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@ADM1031_CONF1_AUTO_MODE = common dso_local global i32 0, align 4
@ADM1031_REG_PWM = common dso_local global i32 0, align 4
@ADM1031_REG_CONF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_auto_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_fan_auto_channel(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.adm1031_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.adm1031_data* %20, %struct.adm1031_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @simple_strtol(i8* %25, i32* null, i32 10)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %28 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %16, align 4
  %30 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %31 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %30, i32 0, i32 3
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %37 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @get_fan_auto_nearest(%struct.adm1031_data* %33, i32 %34, i32 %35, i32 %38, i32* %14)
  store i32 %39, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %4
  %42 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %43 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %42, i32 0, i32 3
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %5, align 4
  br label %149

46:                                               ; preds = %4
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %49 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @FAN_CHAN_TO_REG(i32 %47, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %54 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %56 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ADM1031_CONF1_AUTO_MODE, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @ADM1031_CONF1_AUTO_MODE, align 4
  %62 = and i32 %60, %61
  %63 = xor i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %129

65:                                               ; preds = %46
  %66 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %67 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ADM1031_CONF1_AUTO_MODE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %65
  %73 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %74 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %79 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %83 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %88 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %92 = load i32, i32* @ADM1031_REG_PWM, align 4
  %93 = call i32 @adm1031_write_value(%struct.i2c_client* %91, i32 %92, i32 85)
  br label %128

94:                                               ; preds = %65
  %95 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %96 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %101 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %105 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %110 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %108, i32* %112, align 4
  %113 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %114 = load i32, i32* @ADM1031_REG_PWM, align 4
  %115 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %116 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %121 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 4
  %126 = or i32 %119, %125
  %127 = call i32 @adm1031_write_value(%struct.i2c_client* %113, i32 %114, i32 %126)
  br label %128

128:                                              ; preds = %94, %72
  br label %129

129:                                              ; preds = %128, %46
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %132 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @FAN_CHAN_TO_REG(i32 %130, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %137 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %139 = load i32, i32* @ADM1031_REG_CONF1, align 4
  %140 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %141 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @adm1031_write_value(%struct.i2c_client* %138, i32 %139, i32 %142)
  %144 = load %struct.adm1031_data*, %struct.adm1031_data** %11, align 8
  %145 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %144, i32 0, i32 3
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i64, i64* %9, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %129, %41
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1031_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_fan_auto_nearest(%struct.adm1031_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @FAN_CHAN_TO_REG(i32, i32) #1

declare dso_local i32 @adm1031_write_value(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
