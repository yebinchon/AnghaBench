; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_fschmd_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_fschmd_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fschmd_data = type { i32, i64, i64*, i32*, i64*, i32*, i32, i64, i8**, i8**, i8**, i8** }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@FSCHMD_NO_TEMP_SENSORS = common dso_local global i32* null, align 8
@FSCHMD_REG_TEMP_ACT = common dso_local global i64** null, align 8
@FSCHMD_REG_TEMP_STATE = common dso_local global i64** null, align 8
@FSCHMD_REG_TEMP_LIMIT = common dso_local global i64** null, align 8
@FSCHMD_TEMP_ALARM_MASK = common dso_local global i32 0, align 4
@FSCHMD_NO_FAN_SENSORS = common dso_local global i32* null, align 8
@FSCHMD_REG_FAN_ACT = common dso_local global i64** null, align 8
@FSCHMD_REG_FAN_STATE = common dso_local global i64** null, align 8
@FSCHMD_REG_FAN_RIPPLE = common dso_local global i64** null, align 8
@FSCHMD_REG_FAN_MIN = common dso_local global i64** null, align 8
@FSCHMD_FAN_ALARM = common dso_local global i32 0, align 4
@FSCHMD_NO_VOLT_SENSORS = common dso_local global i32* null, align 8
@FSCHMD_REG_VOLT = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fschmd_data* (%struct.device*)* @fschmd_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fschmd_data* @fschmd_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.fschmd_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.fschmd_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.fschmd_data* %9, %struct.fschmd_data** %4, align 8
  %10 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %11 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %10, i32 0, i32 6
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %15 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 2, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %13, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %25 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %338, label %28

28:                                               ; preds = %23, %1
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %157, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** @FSCHMD_NO_TEMP_SENSORS, align 8
  %32 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %33 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %30, %36
  br i1 %37, label %38, label %160

38:                                               ; preds = %29
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i64**, i64*** @FSCHMD_REG_TEMP_ACT, align 8
  %41 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %42 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64*, i64** %40, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i64 %49)
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %53 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %51, i64* %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = load i64**, i64*** @FSCHMD_REG_TEMP_STATE, align 8
  %60 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %61 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64*, i64** %59, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %58, i64 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %72 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load i64**, i64*** @FSCHMD_REG_TEMP_LIMIT, align 8
  %78 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %79 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64*, i64** %77, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %38
  %89 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %90 = load i64**, i64*** @FSCHMD_REG_TEMP_LIMIT, align 8
  %91 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %92 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i64*, i64** %90, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %89, i64 %99)
  %101 = ptrtoint i8* %100 to i64
  %102 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %103 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %102, i32 0, i32 4
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  store i64 %101, i64* %107, align 8
  br label %108

108:                                              ; preds = %88, %38
  %109 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %110 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @FSCHMD_TEMP_ALARM_MASK, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @FSCHMD_TEMP_ALARM_MASK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %156

120:                                              ; preds = %108
  %121 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %122 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %129 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %128, i32 0, i32 4
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %127, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %120
  %137 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %138 = load i64**, i64*** @FSCHMD_REG_TEMP_STATE, align 8
  %139 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %140 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i64*, i64** %138, i64 %141
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %149 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %137, i64 %147, i32 %154)
  br label %156

156:                                              ; preds = %136, %120, %108
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %29

160:                                              ; preds = %29
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %297, %160
  %162 = load i32, i32* %5, align 4
  %163 = load i32*, i32** @FSCHMD_NO_FAN_SENSORS, align 8
  %164 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %165 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp slt i32 %162, %168
  br i1 %169, label %170, label %300

170:                                              ; preds = %161
  %171 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %172 = load i64**, i64*** @FSCHMD_REG_FAN_ACT, align 8
  %173 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %174 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i64*, i64** %172, i64 %175
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %171, i64 %181)
  %183 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %184 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %183, i32 0, i32 9
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  store i8* %182, i8** %188, align 8
  %189 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %190 = load i64**, i64*** @FSCHMD_REG_FAN_STATE, align 8
  %191 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %192 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i64*, i64** %190, i64 %193
  %195 = load i64*, i64** %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %189, i64 %199)
  %201 = ptrtoint i8* %200 to i32
  %202 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %203 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %202, i32 0, i32 5
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %201, i32* %207, align 4
  %208 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %209 = load i64**, i64*** @FSCHMD_REG_FAN_RIPPLE, align 8
  %210 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %211 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i64*, i64** %209, i64 %212
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %208, i64 %218)
  %220 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %221 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %220, i32 0, i32 11
  %222 = load i8**, i8*** %221, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  store i8* %219, i8** %225, align 8
  %226 = load i64**, i64*** @FSCHMD_REG_FAN_MIN, align 8
  %227 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %228 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i64*, i64** %226, i64 %229
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %256

237:                                              ; preds = %170
  %238 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %239 = load i64**, i64*** @FSCHMD_REG_FAN_MIN, align 8
  %240 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %241 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds i64*, i64** %239, i64 %242
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %238, i64 %248)
  %250 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %251 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %250, i32 0, i32 10
  %252 = load i8**, i8*** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  store i8* %249, i8** %255, align 8
  br label %256

256:                                              ; preds = %237, %170
  %257 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %258 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %257, i32 0, i32 5
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @FSCHMD_FAN_ALARM, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %296

267:                                              ; preds = %256
  %268 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %269 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %268, i32 0, i32 9
  %270 = load i8**, i8*** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %296

276:                                              ; preds = %267
  %277 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %278 = load i64**, i64*** @FSCHMD_REG_FAN_STATE, align 8
  %279 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %280 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds i64*, i64** %278, i64 %281
  %283 = load i64*, i64** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %289 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %288, i32 0, i32 5
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %277, i64 %287, i32 %294)
  br label %296

296:                                              ; preds = %276, %267, %256
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %5, align 4
  br label %161

300:                                              ; preds = %161
  store i32 0, i32* %5, align 4
  br label %301

301:                                              ; preds = %329, %300
  %302 = load i32, i32* %5, align 4
  %303 = load i32*, i32** @FSCHMD_NO_VOLT_SENSORS, align 8
  %304 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %305 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = icmp slt i32 %302, %308
  br i1 %309, label %310, label %332

310:                                              ; preds = %301
  %311 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %312 = load i64**, i64*** @FSCHMD_REG_VOLT, align 8
  %313 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %314 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds i64*, i64** %312, i64 %315
  %317 = load i64*, i64** %316, align 8
  %318 = load i32, i32* %5, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i64, i64* %317, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %311, i64 %321)
  %323 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %324 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %323, i32 0, i32 8
  %325 = load i8**, i8*** %324, align 8
  %326 = load i32, i32* %5, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8*, i8** %325, i64 %327
  store i8* %322, i8** %328, align 8
  br label %329

329:                                              ; preds = %310
  %330 = load i32, i32* %5, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %5, align 4
  br label %301

332:                                              ; preds = %301
  %333 = load i64, i64* @jiffies, align 8
  %334 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %335 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %334, i32 0, i32 7
  store i64 %333, i64* %335, align 8
  %336 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %337 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %336, i32 0, i32 0
  store i32 1, i32* %337, align 8
  br label %338

338:                                              ; preds = %332, %23
  %339 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  %340 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %339, i32 0, i32 6
  %341 = call i32 @mutex_unlock(i32* %340)
  %342 = load %struct.fschmd_data*, %struct.fschmd_data** %4, align 8
  ret %struct.fschmd_data* %342
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.fschmd_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
