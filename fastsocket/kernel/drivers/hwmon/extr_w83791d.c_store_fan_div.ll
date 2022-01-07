; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i32*, i32*, i32 }

@W83791D_REG_FAN_DIV = common dso_local global i32* null, align 8
@W83791D_REG_VBAT = common dso_local global i32 0, align 4
@W83791D_REG_FAN_MIN = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83791d_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %21 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %20)
  store %struct.sensor_device_attribute* %21, %struct.sensor_device_attribute** %9, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call %struct.i2c_client* @to_i2c_client(%struct.device* %22)
  store %struct.i2c_client* %23, %struct.i2c_client** %10, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %25 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %24)
  store %struct.w83791d_data* %25, %struct.w83791d_data** %11, align 8
  %26 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %27 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %30 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %37 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DIV_FROM_REG(i32 %42)
  %44 = call i64 @FAN_FROM_REG(i32 %35, i32 %43)
  store i64 %44, i64* %13, align 8
  %45 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %46 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %45, i32 0, i32 2
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @simple_strtoul(i8* %49, i32* null, i32 10)
  %51 = call i32 @div_to_reg(i32 %48, i32 %50)
  %52 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %53 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  switch i32 %58, label %64 [
    i32 0, label %59
    i32 1, label %60
    i32 2, label %61
    i32 3, label %62
    i32 4, label %63
  ]

59:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  store i32 207, i32* %18, align 4
  store i32 4, i32* %19, align 4
  br label %64

60:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  store i32 63, i32* %18, align 4
  store i32 6, i32* %19, align 4
  br label %64

61:                                               ; preds = %4
  store i32 1, i32* %17, align 4
  store i32 63, i32* %18, align 4
  store i32 6, i32* %19, align 4
  br label %64

62:                                               ; preds = %4
  store i32 2, i32* %17, align 4
  store i32 248, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %64

63:                                               ; preds = %4
  store i32 2, i32* %17, align 4
  store i32 143, i32* %18, align 4
  store i32 4, i32* %19, align 4
  br label %64

64:                                               ; preds = %4, %63, %62, %61, %60, %59
  %65 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %66 = load i32*, i32** @W83791D_REG_FAN_DIV, align 8
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @w83791d_read(%struct.i2c_client* %65, i32 %70)
  %72 = load i32, i32* %18, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %15, align 4
  %74 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %75 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %19, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %18, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  store i32 %85, i32* %14, align 4
  %86 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %87 = load i32*, i32** @W83791D_REG_FAN_DIV, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %14, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @w83791d_write(%struct.i2c_client* %86, i32 %91, i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 3
  br i1 %97, label %98, label %127

98:                                               ; preds = %64
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 5
  %101 = shl i32 1, %100
  %102 = xor i32 %101, -1
  store i32 %102, i32* %18, align 4
  %103 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %104 = load i32, i32* @W83791D_REG_VBAT, align 4
  %105 = call i32 @w83791d_read(%struct.i2c_client* %103, i32 %104)
  %106 = load i32, i32* %18, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %16, align 4
  %108 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %109 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 3, %115
  %117 = shl i32 %114, %116
  %118 = load i32, i32* %18, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %117, %119
  store i32 %120, i32* %14, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %122 = load i32, i32* @W83791D_REG_VBAT, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %14, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @w83791d_write(%struct.i2c_client* %121, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %98, %64
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %130 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @DIV_FROM_REG(i32 %135)
  %137 = call i32 @fan_to_reg(i64 %128, i32 %136)
  %138 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %139 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  %144 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %145 = load i32*, i32** @W83791D_REG_FAN_MIN, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %151 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @w83791d_write(%struct.i2c_client* %144, i32 %149, i32 %156)
  %158 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %159 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %158, i32 0, i32 2
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i64, i64* %8, align 8
  ret i64 %161
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @div_to_reg(i32, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @fan_to_reg(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
