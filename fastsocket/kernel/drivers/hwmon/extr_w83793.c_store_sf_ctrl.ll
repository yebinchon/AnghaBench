; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_sf_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_sf_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32*, i32, i32*, i32*, i32 }

@TEMP_FAN_MAP = common dso_local global i32 0, align 4
@TEMP_PWM_ENABLE = common dso_local global i32 0, align 4
@W83793_REG_PWM_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@TEMP_CRUISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sf_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_sf_ctrl(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.w83793_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute_2* %19, %struct.sensor_device_attribute_2** %10, align 8
  %20 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call %struct.i2c_client* @to_i2c_client(%struct.device* %26)
  store %struct.i2c_client* %27, %struct.i2c_client** %13, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %29 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %28)
  store %struct.w83793_data* %29, %struct.w83793_data** %14, align 8
  %30 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %31 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %30, i32 0, i32 4
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i32, i32* @TEMP_FAN_MAP, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %4
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @simple_strtoul(i8* %37, i32* null, i32 10)
  %39 = and i32 %38, 255
  store i32 %39, i32* %15, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @W83793_REG_TEMP_FAN_MAP(i32 %41)
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @w83793_write_value(%struct.i2c_client* %40, i32 %42, i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %47 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %207

52:                                               ; preds = %4
  %53 = load i32, i32* @TEMP_PWM_ENABLE, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %103

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @simple_strtoul(i8* %57, i32* null, i32 10)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 2, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 3, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %61, %56
  %65 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %66 = load i32, i32* @W83793_REG_PWM_ENABLE, align 4
  %67 = call i8* @w83793_read_value(%struct.i2c_client* %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %70 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32, i32* %12, align 4
  %76 = shl i32 1, %75
  %77 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %78 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %89

81:                                               ; preds = %64
  %82 = load i32, i32* %12, align 4
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %86 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %81, %74
  %90 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %91 = load i32, i32* @W83793_REG_PWM_ENABLE, align 4
  %92 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %93 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @w83793_write_value(%struct.i2c_client* %90, i32 %91, i32 %94)
  br label %102

96:                                               ; preds = %61
  %97 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %98 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %97, i32 0, i32 4
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i64, i64* @EINVAL, align 8
  %101 = sub i64 0, %100
  store i64 %101, i64* %5, align 8
  br label %212

102:                                              ; preds = %89
  br label %206

103:                                              ; preds = %52
  %104 = load i32, i32* @TEMP_CRUISE, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %150

107:                                              ; preds = %103
  %108 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @W83793_REG_TEMP_CRUISE(i32 %109)
  %111 = call i8* @w83793_read_value(%struct.i2c_client* %108, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %114 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @simple_strtol(i8* %119, i32* null, i32 10)
  %121 = call i32 @TEMP_TO_REG(i32 %120, i32 0, i32 127)
  store i32 %121, i32* %15, align 4
  %122 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %123 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 128
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %132 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %130
  store i32 %138, i32* %136, align 4
  %139 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @W83793_REG_TEMP_CRUISE(i32 %140)
  %142 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %143 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @w83793_write_value(%struct.i2c_client* %139, i32 %141, i32 %148)
  br label %205

150:                                              ; preds = %103
  %151 = load i32, i32* %12, align 4
  %152 = ashr i32 %151, 1
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %12, align 4
  %154 = and i32 %153, 1
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 4, i32 0
  store i32 %157, i32* %17, align 4
  %158 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @W83793_REG_TEMP_TOL(i32 %159)
  %161 = call i8* @w83793_read_value(%struct.i2c_client* %158, i32 %160)
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %164 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %162, i32* %168, align 4
  %169 = load i8*, i8** %8, align 8
  %170 = call i32 @simple_strtol(i8* %169, i32* null, i32 10)
  %171 = call i32 @TEMP_TO_REG(i32 %170, i32 0, i32 15)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %17, align 4
  %173 = shl i32 15, %172
  %174 = xor i32 %173, -1
  %175 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %176 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %174
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %17, align 4
  %185 = shl i32 %183, %184
  %186 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %187 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %185
  store i32 %193, i32* %191, align 4
  %194 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %195 = load i32, i32* %16, align 4
  %196 = call i32 @W83793_REG_TEMP_TOL(i32 %195)
  %197 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %198 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @w83793_write_value(%struct.i2c_client* %194, i32 %196, i32 %203)
  br label %205

205:                                              ; preds = %150, %107
  br label %206

206:                                              ; preds = %205, %102
  br label %207

207:                                              ; preds = %206, %36
  %208 = load %struct.w83793_data*, %struct.w83793_data** %14, align 8
  %209 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %208, i32 0, i32 4
  %210 = call i32 @mutex_unlock(i32* %209)
  %211 = load i64, i64* %9, align 8
  store i64 %211, i64* %5, align 8
  br label %212

212:                                              ; preds = %207, %96
  %213 = load i64, i64* %5, align 8
  ret i64 %213
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @W83793_REG_TEMP_FAN_MAP(i32) #1

declare dso_local i8* @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @W83793_REG_TEMP_CRUISE(i32) #1

declare dso_local i32 @TEMP_TO_REG(i32, i32, i32) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @W83793_REG_TEMP_TOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
