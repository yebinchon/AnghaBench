; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_set_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_set_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i64 }
%struct.i2c_client = type { i32 }
%struct.adt7475_data = type { i32, i64**, i32 }

@EINVAL = common dso_local global i64 0, align 8
@REG_CONFIG5 = common dso_local global i8 0, align 1
@CONFIG5_TEMPOFFSET = common dso_local global i32 0, align 4
@REG_REMOTE1_HYSTERSIS = common dso_local global i8 0, align 1
@REG_REMOTE2_HYSTERSIS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.adt7475_data*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute_2* %18, %struct.sensor_device_attribute_2** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.i2c_client* @to_i2c_client(%struct.device* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %22 = call %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.adt7475_data* %22, %struct.adt7475_data** %12, align 8
  store i8 0, i8* %13, align 1
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strict_strtol(i8* %23, i32 10, i64* %16)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %264

29:                                               ; preds = %4
  %30 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %31 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i8, i8* @REG_CONFIG5, align 1
  %34 = call i32 @adt7475_read(i8 zeroext %33)
  %35 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %36 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %184 [
    i32 129, label %40
    i32 132, label %76
  ]

40:                                               ; preds = %29
  %41 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %42 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CONFIG5_TEMPOFFSET, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load i64, i64* %16, align 8
  %49 = call i64 @SENSORS_LIMIT(i64 %48, i32 -63000, i32 127000)
  store i64 %49, i64* %16, align 8
  %50 = load i64, i64* %16, align 8
  %51 = sdiv i64 %50, 1000
  %52 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %53 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %52, i32 0, i32 1
  %54 = load i64**, i64*** %53, align 8
  %55 = getelementptr inbounds i64*, i64** %54, i64 129
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %58 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  store i64 %51, i64* %60, align 8
  store i64 %51, i64* %14, align 8
  br label %75

61:                                               ; preds = %40
  %62 = load i64, i64* %16, align 8
  %63 = call i64 @SENSORS_LIMIT(i64 %62, i32 -63000, i32 64000)
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %16, align 8
  %65 = sdiv i64 %64, 500
  %66 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %67 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %66, i32 0, i32 1
  %68 = load i64**, i64*** %67, align 8
  %69 = getelementptr inbounds i64*, i64** %68, i64 129
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %72 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  store i64 %65, i64* %74, align 8
  store i64 %65, i64* %14, align 8
  br label %75

75:                                               ; preds = %61, %47
  br label %216

76:                                               ; preds = %29
  %77 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %78 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call zeroext i8 @TEMP_THERM_REG(i64 %79)
  %81 = call i32 @adt7475_read(i8 zeroext %80)
  %82 = shl i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %85 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %84, i32 0, i32 1
  %86 = load i64**, i64*** %85, align 8
  %87 = getelementptr inbounds i64*, i64** %86, i64 128
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %90 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  store i64 %83, i64* %92, align 8
  %93 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %94 = call i32 @adt7475_read_hystersis(%struct.i2c_client* %93)
  %95 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %96 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %97 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %96, i32 0, i32 1
  %98 = load i64**, i64*** %97, align 8
  %99 = getelementptr inbounds i64*, i64** %98, i64 128
  %100 = load i64*, i64** %99, align 8
  %101 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %102 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @reg2temp(%struct.adt7475_data* %95, i32 %106)
  store i32 %107, i32* %15, align 4
  %108 = load i64, i64* %16, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %109, 15000
  %111 = load i32, i32* %15, align 4
  %112 = call i64 @SENSORS_LIMIT(i64 %108, i32 %110, i32 %111)
  store i64 %112, i64* %16, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %16, align 8
  %116 = sub nsw i64 %114, %115
  %117 = sdiv i64 %116, 1000
  store i64 %117, i64* %16, align 8
  %118 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %119 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 1
  br i1 %121, label %122, label %148

122:                                              ; preds = %76
  %123 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %124 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %123, i32 0, i32 1
  %125 = load i64**, i64*** %124, align 8
  %126 = getelementptr inbounds i64*, i64** %125, i64 132
  %127 = load i64*, i64** %126, align 8
  %128 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %129 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i64, i64* %127, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = and i64 %132, 240
  store i64 %133, i64* %131, align 8
  %134 = load i64, i64* %16, align 8
  %135 = and i64 %134, 15
  %136 = shl i64 %135, 4
  %137 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %138 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %137, i32 0, i32 1
  %139 = load i64**, i64*** %138, align 8
  %140 = getelementptr inbounds i64*, i64** %139, i64 132
  %141 = load i64*, i64** %140, align 8
  %142 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %143 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = or i64 %146, %136
  store i64 %147, i64* %145, align 8
  br label %173

148:                                              ; preds = %76
  %149 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %150 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %149, i32 0, i32 1
  %151 = load i64**, i64*** %150, align 8
  %152 = getelementptr inbounds i64*, i64** %151, i64 132
  %153 = load i64*, i64** %152, align 8
  %154 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %155 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i64, i64* %153, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = and i64 %158, 15
  store i64 %159, i64* %157, align 8
  %160 = load i64, i64* %16, align 8
  %161 = and i64 %160, 15
  %162 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %163 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %162, i32 0, i32 1
  %164 = load i64**, i64*** %163, align 8
  %165 = getelementptr inbounds i64*, i64** %164, i64 132
  %166 = load i64*, i64** %165, align 8
  %167 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %168 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i64, i64* %166, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = or i64 %171, %161
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %148, %122
  %174 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %175 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %174, i32 0, i32 1
  %176 = load i64**, i64*** %175, align 8
  %177 = getelementptr inbounds i64*, i64** %176, i64 132
  %178 = load i64*, i64** %177, align 8
  %179 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %180 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %14, align 8
  br label %216

184:                                              ; preds = %29
  %185 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %186 = load i64, i64* %16, align 8
  %187 = call i64 @temp2reg(%struct.adt7475_data* %185, i64 %186)
  %188 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %189 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %188, i32 0, i32 1
  %190 = load i64**, i64*** %189, align 8
  %191 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %192 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64*, i64** %190, i64 %194
  %196 = load i64*, i64** %195, align 8
  %197 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %198 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i64, i64* %196, i64 %199
  store i64 %187, i64* %200, align 8
  %201 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %202 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %201, i32 0, i32 1
  %203 = load i64**, i64*** %202, align 8
  %204 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %205 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64*, i64** %203, i64 %207
  %209 = load i64*, i64** %208, align 8
  %210 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %211 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i64, i64* %209, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = ashr i64 %214, 2
  store i64 %215, i64* %14, align 8
  br label %216

216:                                              ; preds = %184, %173, %75
  %217 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %218 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  switch i32 %219, label %255 [
    i32 130, label %220
    i32 131, label %225
    i32 129, label %230
    i32 133, label %235
    i32 128, label %240
    i32 132, label %245
  ]

220:                                              ; preds = %216
  %221 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %222 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = call zeroext i8 @TEMP_MIN_REG(i64 %223)
  store i8 %224, i8* %13, align 1
  br label %255

225:                                              ; preds = %216
  %226 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %227 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = call zeroext i8 @TEMP_MAX_REG(i64 %228)
  store i8 %229, i8* %13, align 1
  br label %255

230:                                              ; preds = %216
  %231 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %232 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call zeroext i8 @TEMP_OFFSET_REG(i64 %233)
  store i8 %234, i8* %13, align 1
  br label %255

235:                                              ; preds = %216
  %236 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %237 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = call zeroext i8 @TEMP_TMIN_REG(i64 %238)
  store i8 %239, i8* %13, align 1
  br label %255

240:                                              ; preds = %216
  %241 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %242 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = call zeroext i8 @TEMP_THERM_REG(i64 %243)
  store i8 %244, i8* %13, align 1
  br label %255

245:                                              ; preds = %216
  %246 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %247 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 2
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i8, i8* @REG_REMOTE1_HYSTERSIS, align 1
  store i8 %251, i8* %13, align 1
  br label %254

252:                                              ; preds = %245
  %253 = load i8, i8* @REG_REMOTE2_HYSTERSIS, align 1
  store i8 %253, i8* %13, align 1
  br label %254

254:                                              ; preds = %252, %250
  br label %255

255:                                              ; preds = %216, %254, %240, %235, %230, %225, %220
  %256 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %257 = load i8, i8* %13, align 1
  %258 = load i64, i64* %14, align 8
  %259 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %256, i8 zeroext %257, i64 %258)
  %260 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %261 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %260, i32 0, i32 2
  %262 = call i32 @mutex_unlock(i32* %261)
  %263 = load i64, i64* %9, align 8
  store i64 %263, i64* %5, align 8
  br label %264

264:                                              ; preds = %255, %26
  %265 = load i64, i64* %5, align 8
  ret i64 %265
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7475_read(i8 zeroext) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local zeroext i8 @TEMP_THERM_REG(i64) #1

declare dso_local i32 @adt7475_read_hystersis(%struct.i2c_client*) #1

declare dso_local i32 @reg2temp(%struct.adt7475_data*, i32) #1

declare dso_local i64 @temp2reg(%struct.adt7475_data*, i64) #1

declare dso_local zeroext i8 @TEMP_MIN_REG(i64) #1

declare dso_local zeroext i8 @TEMP_MAX_REG(i64) #1

declare dso_local zeroext i8 @TEMP_OFFSET_REG(i64) #1

declare dso_local zeroext i8 @TEMP_TMIN_REG(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i8 zeroext, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
