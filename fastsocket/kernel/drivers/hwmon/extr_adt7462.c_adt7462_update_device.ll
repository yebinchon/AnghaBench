; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_adt7462_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_adt7462_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7462_data = type { i64, i32, i64, i32, i32, i8*, i8*, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8*, i32*, i8**, i8** }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@SENSOR_REFRESH_INTERVAL = common dso_local global i64 0, align 8
@ADT7462_TEMP_COUNT = common dso_local global i32 0, align 4
@ADT7462_FAN_COUNT = common dso_local global i32 0, align 4
@ADT7462_REG_FAN_ENABLE = common dso_local global i32 0, align 4
@ADT7462_PWM_COUNT = common dso_local global i32 0, align 4
@ADT7462_PIN_CFG_REG_COUNT = common dso_local global i32 0, align 4
@ADT7462_VOLT_COUNT = common dso_local global i32 0, align 4
@ADT7462_REG_ALARM1 = common dso_local global i32 0, align 4
@ADT7462_REG_ALARM2 = common dso_local global i32 0, align 4
@ADT7462_REG_ALARM3 = common dso_local global i32 0, align 4
@ADT7462_REG_ALARM4 = common dso_local global i32 0, align 4
@LIMIT_REFRESH_INTERVAL = common dso_local global i64 0, align 8
@ADT7462_REG_PWM_MAX = common dso_local global i32 0, align 4
@ADT7462_REG_CFG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adt7462_data* (%struct.device*)* @adt7462_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adt7462_data* @adt7462_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adt7462_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call %struct.adt7462_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.adt7462_data* %12, %struct.adt7462_data** %4, align 8
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %15 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %14, i32 0, i32 4
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %19 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SENSOR_REFRESH_INTERVAL, align 8
  %22 = add i64 %20, %21
  %23 = call i64 @time_before(i64 %17, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %27 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %189

31:                                               ; preds = %25, %1
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ADT7462_TEMP_COUNT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ADT7462_TEMP_REG(i32 %38)
  %40 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %39)
  %41 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %42 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %41, i32 0, i32 23
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ADT7462_TEMP_REG(i32 %48)
  %50 = add nsw i32 %49, 1
  %51 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %47, i32 %50)
  %52 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %53 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %52, i32 0, i32 22
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %51, i8** %57, align 8
  br label %58

58:                                               ; preds = %36
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %32

61:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %77, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @ADT7462_FAN_COUNT, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ADT7462_REG_FAN(i32 %68)
  %70 = call i32 @adt7462_read_word_data(%struct.i2c_client* %67, i32 %69)
  %71 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %72 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %71, i32 0, i32 21
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %62

80:                                               ; preds = %62
  %81 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %82 = load i32, i32* @ADT7462_REG_FAN_ENABLE, align 4
  %83 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %81, i32 %82)
  %84 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %85 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %84, i32 0, i32 20
  store i8* %83, i8** %85, align 8
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %101, %80
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @ADT7462_PWM_COUNT, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ADT7462_REG_PWM(i32 %92)
  %94 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %91, i32 %93)
  %95 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %96 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %95, i32 0, i32 19
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %94, i8** %100, align 8
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %86

104:                                              ; preds = %86
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @ADT7462_PIN_CFG_REG_COUNT, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @ADT7462_REG_PIN_CFG(i32 %111)
  %113 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %110, i32 %112)
  %114 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %115 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %114, i32 0, i32 18
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %113, i8** %119, align 8
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %105

123:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %152, %123
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @ADT7462_VOLT_COUNT, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %155

128:                                              ; preds = %124
  %129 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @ADT7462_REG_VOLT(%struct.adt7462_data* %129, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %128
  %135 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %136 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %135, i32 0, i32 17
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  store i8* null, i8** %140, align 8
  br label %151

141:                                              ; preds = %128
  %142 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %142, i32 %143)
  %145 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %146 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %145, i32 0, i32 17
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %144, i8** %150, align 8
  br label %151

151:                                              ; preds = %141, %134
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %124

155:                                              ; preds = %124
  %156 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %157 = load i32, i32* @ADT7462_REG_ALARM1, align 4
  %158 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %156, i32 %157)
  %159 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %160 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %159, i32 0, i32 16
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 0
  store i8* %158, i8** %162, align 8
  %163 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %164 = load i32, i32* @ADT7462_REG_ALARM2, align 4
  %165 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %163, i32 %164)
  %166 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %167 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %166, i32 0, i32 16
  %168 = load i8**, i8*** %167, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 1
  store i8* %165, i8** %169, align 8
  %170 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %171 = load i32, i32* @ADT7462_REG_ALARM3, align 4
  %172 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %170, i32 %171)
  %173 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %174 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %173, i32 0, i32 16
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 2
  store i8* %172, i8** %176, align 8
  %177 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %178 = load i32, i32* @ADT7462_REG_ALARM4, align 4
  %179 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %177, i32 %178)
  %180 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %181 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %180, i32 0, i32 16
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 3
  store i8* %179, i8** %183, align 8
  %184 = load i64, i64* %5, align 8
  %185 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %186 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  %187 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %188 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %187, i32 0, i32 1
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %155, %30
  %190 = load i64, i64* %5, align 8
  %191 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %192 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @LIMIT_REFRESH_INTERVAL, align 8
  %195 = add i64 %193, %194
  %196 = call i64 @time_before(i64 %190, i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %189
  %199 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %200 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %362

204:                                              ; preds = %198, %189
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %230, %204
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @ADT7462_TEMP_COUNT, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %233

209:                                              ; preds = %205
  %210 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @ADT7462_TEMP_MIN_REG(i32 %211)
  %213 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %210, i32 %212)
  %214 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %215 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %214, i32 0, i32 15
  %216 = load i8**, i8*** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  store i8* %213, i8** %219, align 8
  %220 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @ADT7462_TEMP_MAX_REG(i32 %221)
  %223 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %220, i32 %222)
  %224 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %225 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %224, i32 0, i32 14
  %226 = load i8**, i8*** %225, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  store i8* %223, i8** %229, align 8
  br label %230

230:                                              ; preds = %209
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  br label %205

233:                                              ; preds = %205
  store i32 0, i32* %6, align 4
  br label %234

234:                                              ; preds = %249, %233
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @ADT7462_FAN_COUNT, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %252

238:                                              ; preds = %234
  %239 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %240 = load i32, i32* %6, align 4
  %241 = call i32 @ADT7462_REG_FAN_MIN(i32 %240)
  %242 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %239, i32 %241)
  %243 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %244 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %243, i32 0, i32 13
  %245 = load i8**, i8*** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  store i8* %242, i8** %248, align 8
  br label %249

249:                                              ; preds = %238
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %234

252:                                              ; preds = %234
  store i32 0, i32* %6, align 4
  br label %253

253:                                              ; preds = %294, %252
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* @ADT7462_VOLT_COUNT, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %297

257:                                              ; preds = %253
  %258 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @ADT7462_REG_VOLT_MAX(%struct.adt7462_data* %258, i32 %259)
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %265 = load i32, i32* %8, align 4
  %266 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %264, i32 %265)
  br label %268

267:                                              ; preds = %257
  br label %268

268:                                              ; preds = %267, %263
  %269 = phi i8* [ %266, %263 ], [ null, %267 ]
  %270 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %271 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %270, i32 0, i32 12
  %272 = load i8**, i8*** %271, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  store i8* %269, i8** %275, align 8
  %276 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %277 = load i32, i32* %6, align 4
  %278 = call i32 @ADT7462_REG_VOLT_MIN(%struct.adt7462_data* %276, i32 %277)
  store i32 %278, i32* %8, align 4
  %279 = load i32, i32* %8, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %268
  %282 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %283 = load i32, i32* %8, align 4
  %284 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %282, i32 %283)
  br label %286

285:                                              ; preds = %268
  br label %286

286:                                              ; preds = %285, %281
  %287 = phi i8* [ %284, %281 ], [ null, %285 ]
  %288 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %289 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %288, i32 0, i32 11
  %290 = load i8**, i8*** %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8*, i8** %290, i64 %292
  store i8* %287, i8** %293, align 8
  br label %294

294:                                              ; preds = %286
  %295 = load i32, i32* %6, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %6, align 4
  br label %253

297:                                              ; preds = %253
  store i32 0, i32* %6, align 4
  br label %298

298:                                              ; preds = %343, %297
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* @ADT7462_PWM_COUNT, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %346

302:                                              ; preds = %298
  %303 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %304 = load i32, i32* %6, align 4
  %305 = call i32 @ADT7462_REG_PWM_MIN(i32 %304)
  %306 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %303, i32 %305)
  %307 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %308 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %307, i32 0, i32 10
  %309 = load i8**, i8*** %308, align 8
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %309, i64 %311
  store i8* %306, i8** %312, align 8
  %313 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %314 = load i32, i32* %6, align 4
  %315 = call i32 @ADT7462_REG_PWM_TMIN(i32 %314)
  %316 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %313, i32 %315)
  %317 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %318 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %317, i32 0, i32 9
  %319 = load i8**, i8*** %318, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8*, i8** %319, i64 %321
  store i8* %316, i8** %322, align 8
  %323 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %324 = load i32, i32* %6, align 4
  %325 = call i32 @ADT7462_REG_PWM_TRANGE(i32 %324)
  %326 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %323, i32 %325)
  %327 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %328 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %327, i32 0, i32 8
  %329 = load i8**, i8*** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %329, i64 %331
  store i8* %326, i8** %332, align 8
  %333 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %334 = load i32, i32* %6, align 4
  %335 = call i32 @ADT7462_REG_PWM_CFG(i32 %334)
  %336 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %333, i32 %335)
  %337 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %338 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %337, i32 0, i32 7
  %339 = load i8**, i8*** %338, align 8
  %340 = load i32, i32* %6, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  store i8* %336, i8** %342, align 8
  br label %343

343:                                              ; preds = %302
  %344 = load i32, i32* %6, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %6, align 4
  br label %298

346:                                              ; preds = %298
  %347 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %348 = load i32, i32* @ADT7462_REG_PWM_MAX, align 4
  %349 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %347, i32 %348)
  %350 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %351 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %350, i32 0, i32 6
  store i8* %349, i8** %351, align 8
  %352 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %353 = load i32, i32* @ADT7462_REG_CFG2, align 4
  %354 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %352, i32 %353)
  %355 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %356 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %355, i32 0, i32 5
  store i8* %354, i8** %356, align 8
  %357 = load i64, i64* %5, align 8
  %358 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %359 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %358, i32 0, i32 2
  store i64 %357, i64* %359, align 8
  %360 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %361 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %360, i32 0, i32 3
  store i32 1, i32* %361, align 8
  br label %362

362:                                              ; preds = %346, %203
  %363 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  %364 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %363, i32 0, i32 4
  %365 = call i32 @mutex_unlock(i32* %364)
  %366 = load %struct.adt7462_data*, %struct.adt7462_data** %4, align 8
  ret %struct.adt7462_data* %366
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7462_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7462_TEMP_REG(i32) #1

declare dso_local i32 @adt7462_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7462_REG_FAN(i32) #1

declare dso_local i32 @ADT7462_REG_PWM(i32) #1

declare dso_local i32 @ADT7462_REG_PIN_CFG(i32) #1

declare dso_local i32 @ADT7462_REG_VOLT(%struct.adt7462_data*, i32) #1

declare dso_local i32 @ADT7462_TEMP_MIN_REG(i32) #1

declare dso_local i32 @ADT7462_TEMP_MAX_REG(i32) #1

declare dso_local i32 @ADT7462_REG_FAN_MIN(i32) #1

declare dso_local i32 @ADT7462_REG_VOLT_MAX(%struct.adt7462_data*, i32) #1

declare dso_local i32 @ADT7462_REG_VOLT_MIN(%struct.adt7462_data*, i32) #1

declare dso_local i32 @ADT7462_REG_PWM_MIN(i32) #1

declare dso_local i32 @ADT7462_REG_PWM_TMIN(i32) #1

declare dso_local i32 @ADT7462_REG_PWM_TRANGE(i32) #1

declare dso_local i32 @ADT7462_REG_PWM_CFG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
