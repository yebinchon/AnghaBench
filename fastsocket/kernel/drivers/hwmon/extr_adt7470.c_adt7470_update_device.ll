; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7470.c_adt7470_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7470.c_adt7470_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7470_data = type { i64, i32, i64, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i8**, i8**, i8*, i8**, i32 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@SENSOR_REFRESH_INTERVAL = common dso_local global i64 0, align 8
@LIMIT_REFRESH_INTERVAL = common dso_local global i64 0, align 8
@ADT7470_TEMP_COUNT = common dso_local global i32 0, align 4
@ADT7470_FAN_COUNT = common dso_local global i32 0, align 4
@ADT7470_PWM_COUNT = common dso_local global i32 0, align 4
@ADT7470_PWM2_AUTO_MASK = common dso_local global i32 0, align 4
@ADT7470_PWM1_AUTO_MASK = common dso_local global i32 0, align 4
@ADT7470_REG_CFG = common dso_local global i32 0, align 4
@ADT7470_FSPD_MASK = common dso_local global i32 0, align 4
@ADT7470_REG_ALARM1 = common dso_local global i32 0, align 4
@ADT7470_OOL_ALARM = common dso_local global i32 0, align 4
@ADT7470_REG_ALARM2 = common dso_local global i32 0, align 4
@ADT7470_REG_ALARM1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adt7470_data* (%struct.device*)* @adt7470_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adt7470_data* @adt7470_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.adt7470_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.adt7470_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = call %struct.adt7470_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.adt7470_data* %16, %struct.adt7470_data** %5, align 8
  %17 = load i64, i64* @jiffies, align 8
  store i64 %17, i64* %6, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %20 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SENSOR_REFRESH_INTERVAL, align 8
  %23 = add i64 %21, %22
  %24 = call i64 @time_before(i64 %18, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %28 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %26, %1
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %35 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LIMIT_REFRESH_INTERVAL, align 8
  %38 = add i64 %36, %37
  %39 = call i64 @time_before(i64 %33, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %43 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %41, %32
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  store %struct.adt7470_data* %54, %struct.adt7470_data** %2, align 8
  br label %344

55:                                               ; preds = %50, %47
  %56 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %57 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %56, i32 0, i32 15
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %232

62:                                               ; preds = %55
  %63 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %64 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %63, i32 0, i32 20
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %70 = call i32 @adt7470_read_temperatures(%struct.i2c_client* %68, %struct.adt7470_data* %69)
  br label %91

71:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @ADT7470_TEMP_COUNT, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ADT7470_TEMP_REG(i32 %78)
  %80 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %77, i32 %79)
  %81 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %82 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %72

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %67
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @ADT7470_FAN_COUNT, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @ADT7470_REG_FAN(i32 %98)
  %100 = call i8* @adt7470_read_word_data(%struct.i2c_client* %97, i32 %99)
  %101 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %102 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %101, i32 0, i32 19
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %100, i8** %106, align 8
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %92

110:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %184, %110
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @ADT7470_PWM_COUNT, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %187

115:                                              ; preds = %111
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @ADT7470_REG_PWM(i32 %117)
  %119 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %116, i32 %118)
  %120 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %121 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = srem i32 %126, 2
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %115
  %130 = load i32, i32* @ADT7470_PWM2_AUTO_MASK, align 4
  store i32 %130, i32* %12, align 4
  br label %133

131:                                              ; preds = %115
  %132 = load i32, i32* @ADT7470_PWM1_AUTO_MASK, align 4
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @ADT7470_REG_PWM_CFG(i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %136, i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %133
  %143 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %144 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 1, i32* %148, align 4
  br label %156

149:                                              ; preds = %133
  %150 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %151 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %149, %142
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @ADT7470_REG_PWM_AUTO_TEMP(i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %159, i32 %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %8, align 4
  %163 = srem i32 %162, 2
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %7, align 4
  %167 = ashr i32 %166, 4
  %168 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %169 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %168, i32 0, i32 7
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %167, i32* %173, align 4
  br label %183

174:                                              ; preds = %156
  %175 = load i32, i32* %7, align 4
  %176 = and i32 %175, 15
  %177 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %178 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %177, i32 0, i32 7
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %176, i32* %182, align 4
  br label %183

183:                                              ; preds = %174, %165
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %111

187:                                              ; preds = %111
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = load i32, i32* @ADT7470_REG_CFG, align 4
  %190 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %188, i32 %189)
  %191 = load i32, i32* @ADT7470_FSPD_MASK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %196 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %195, i32 0, i32 8
  store i32 1, i32* %196, align 8
  br label %200

197:                                              ; preds = %187
  %198 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %199 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %198, i32 0, i32 8
  store i32 0, i32* %199, align 8
  br label %200

200:                                              ; preds = %197, %194
  %201 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %202 = load i32, i32* @ADT7470_REG_ALARM1, align 4
  %203 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %201, i32 %202)
  %204 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %205 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %204, i32 0, i32 9
  store i32 %203, i32* %205, align 4
  %206 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %207 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @ADT7470_OOL_ALARM, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %200
  %213 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %214 = load i32, i32* @ADT7470_REG_ALARM2, align 4
  %215 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %213, i32 %214)
  %216 = call i32 @ALARM2(i32 %215)
  %217 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %218 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %217, i32 0, i32 9
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %212, %200
  %222 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %223 = load i32, i32* @ADT7470_REG_ALARM1_MASK, align 4
  %224 = call i8* @adt7470_read_word_data(%struct.i2c_client* %222, i32 %223)
  %225 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %226 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %225, i32 0, i32 18
  store i8* %224, i8** %226, align 8
  %227 = load i64, i64* %6, align 8
  %228 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %229 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  %230 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %231 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %230, i32 0, i32 1
  store i32 1, i32* %231, align 8
  br label %232

232:                                              ; preds = %221, %61
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  br label %339

236:                                              ; preds = %232
  store i32 0, i32* %8, align 4
  br label %237

237:                                              ; preds = %262, %236
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @ADT7470_TEMP_COUNT, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %237
  %242 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @ADT7470_TEMP_MIN_REG(i32 %243)
  %245 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %242, i32 %244)
  %246 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %247 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %246, i32 0, i32 10
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 %245, i32* %251, align 4
  %252 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %253 = load i32, i32* %8, align 4
  %254 = call i32 @ADT7470_TEMP_MAX_REG(i32 %253)
  %255 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %252, i32 %254)
  %256 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %257 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %256, i32 0, i32 11
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %255, i32* %261, align 4
  br label %262

262:                                              ; preds = %241
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %8, align 4
  br label %237

265:                                              ; preds = %237
  store i32 0, i32* %8, align 4
  br label %266

266:                                              ; preds = %291, %265
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* @ADT7470_FAN_COUNT, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %294

270:                                              ; preds = %266
  %271 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @ADT7470_REG_FAN_MIN(i32 %272)
  %274 = call i8* @adt7470_read_word_data(%struct.i2c_client* %271, i32 %273)
  %275 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %276 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %275, i32 0, i32 17
  %277 = load i8**, i8*** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  store i8* %274, i8** %280, align 8
  %281 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @ADT7470_REG_FAN_MAX(i32 %282)
  %284 = call i8* @adt7470_read_word_data(%struct.i2c_client* %281, i32 %283)
  %285 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %286 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %285, i32 0, i32 16
  %287 = load i8**, i8*** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %287, i64 %289
  store i8* %284, i8** %290, align 8
  br label %291

291:                                              ; preds = %270
  %292 = load i32, i32* %8, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %8, align 4
  br label %266

294:                                              ; preds = %266
  store i32 0, i32* %8, align 4
  br label %295

295:                                              ; preds = %330, %294
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* @ADT7470_PWM_COUNT, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %333

299:                                              ; preds = %295
  %300 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %301 = load i32, i32* %8, align 4
  %302 = call i32 @ADT7470_REG_PWM_MAX(i32 %301)
  %303 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %300, i32 %302)
  %304 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %305 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %304, i32 0, i32 12
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  store i32 %303, i32* %309, align 4
  %310 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %311 = load i32, i32* %8, align 4
  %312 = call i32 @ADT7470_REG_PWM_MIN(i32 %311)
  %313 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %310, i32 %312)
  %314 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %315 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %314, i32 0, i32 13
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  store i32 %313, i32* %319, align 4
  %320 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %321 = load i32, i32* %8, align 4
  %322 = call i32 @ADT7470_REG_PWM_TMIN(i32 %321)
  %323 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %320, i32 %322)
  %324 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %325 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %324, i32 0, i32 14
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 %323, i32* %329, align 4
  br label %330

330:                                              ; preds = %299
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %8, align 4
  br label %295

333:                                              ; preds = %295
  %334 = load i64, i64* %6, align 8
  %335 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %336 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %335, i32 0, i32 2
  store i64 %334, i64* %336, align 8
  %337 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %338 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %337, i32 0, i32 3
  store i32 1, i32* %338, align 8
  br label %339

339:                                              ; preds = %333, %235
  %340 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  %341 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %340, i32 0, i32 15
  %342 = call i32 @mutex_unlock(i32* %341)
  %343 = load %struct.adt7470_data*, %struct.adt7470_data** %5, align 8
  store %struct.adt7470_data* %343, %struct.adt7470_data** %2, align 8
  br label %344

344:                                              ; preds = %339, %53
  %345 = load %struct.adt7470_data*, %struct.adt7470_data** %2, align 8
  ret %struct.adt7470_data* %345
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7470_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7470_read_temperatures(%struct.i2c_client*, %struct.adt7470_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7470_TEMP_REG(i32) #1

declare dso_local i8* @adt7470_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7470_REG_FAN(i32) #1

declare dso_local i32 @ADT7470_REG_PWM(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_CFG(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_AUTO_TEMP(i32) #1

declare dso_local i32 @ALARM2(i32) #1

declare dso_local i32 @ADT7470_TEMP_MIN_REG(i32) #1

declare dso_local i32 @ADT7470_TEMP_MAX_REG(i32) #1

declare dso_local i32 @ADT7470_REG_FAN_MIN(i32) #1

declare dso_local i32 @ADT7470_REG_FAN_MAX(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_MAX(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_MIN(i32) #1

declare dso_local i32 @ADT7470_REG_PWM_TMIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
