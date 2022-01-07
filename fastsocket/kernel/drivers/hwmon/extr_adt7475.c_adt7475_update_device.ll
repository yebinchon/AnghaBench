; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_adt7475_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_adt7475_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7475_data = type { i32, i32, i32**, i32**, i32**, i32, i32*, i32, i8*, i8***, i8* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@REG_STATUS2 = common dso_local global i32 0, align 4
@REG_STATUS1 = common dso_local global i32 0, align 4
@REG_EXTEND1 = common dso_local global i32 0, align 4
@ADT7475_VOLTAGE_COUNT = common dso_local global i32 0, align 4
@INPUT = common dso_local global i64 0, align 8
@REG_EXTEND2 = common dso_local global i32 0, align 4
@ADT7475_TEMP_COUNT = common dso_local global i32 0, align 4
@ADT7475_TACH_COUNT = common dso_local global i32 0, align 4
@ADT7475_PWM_COUNT = common dso_local global i32 0, align 4
@REG_CONFIG5 = common dso_local global i32 0, align 4
@MIN = common dso_local global i64 0, align 8
@MAX = common dso_local global i64 0, align 8
@AUTOMIN = common dso_local global i64 0, align 8
@THERM = common dso_local global i64 0, align 8
@OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adt7475_data* (%struct.device*)* @adt7475_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adt7475_data* @adt7475_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adt7475_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.i2c_client* @to_i2c_client(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.adt7475_data* %10, %struct.adt7475_data** %4, align 8
  %11 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %12 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %11, i32 0, i32 7
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i8*, i8** @jiffies, align 8
  %15 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %16 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %15, i32 0, i32 10
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %17, i64 %20
  %22 = call i64 @time_after(i8* %14, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %26 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %149, label %29

29:                                               ; preds = %24, %1
  %30 = load i32, i32* @REG_STATUS2, align 4
  %31 = call i32 @adt7475_read(i32 %30)
  %32 = shl i32 %31, 8
  %33 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %34 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @REG_STATUS1, align 4
  %36 = call i32 @adt7475_read(i32 %35)
  %37 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %38 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @REG_EXTEND1, align 4
  %42 = call i32 @adt7475_read(i32 %41)
  store i32 %42, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %68, %29
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ADT7475_VOLTAGE_COUNT, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @VOLTAGE_REG(i32 %48)
  %50 = call i32 @adt7475_read(i32 %49)
  %51 = shl i32 %50, 2
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 %54, 2
  %56 = ashr i32 %52, %55
  %57 = and i32 %56, 3
  %58 = or i32 %51, %57
  %59 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %60 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = load i64, i64* @INPUT, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %58, i32* %67, align 4
  br label %68

68:                                               ; preds = %47
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %43

71:                                               ; preds = %43
  %72 = load i32, i32* @REG_EXTEND2, align 4
  %73 = call i32 @adt7475_read(i32 %72)
  store i32 %73, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %99, %71
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ADT7475_TEMP_COUNT, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @TEMP_REG(i32 %79)
  %81 = call i32 @adt7475_read(i32 %80)
  %82 = shl i32 %81, 2
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  %86 = mul nsw i32 %85, 2
  %87 = ashr i32 %83, %86
  %88 = and i32 %87, 3
  %89 = or i32 %82, %88
  %90 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %91 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %90, i32 0, i32 3
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* @INPUT, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %89, i32* %98, align 4
  br label %99

99:                                               ; preds = %78
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %74

102:                                              ; preds = %74
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @ADT7475_TACH_COUNT, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @TACH_REG(i32 %109)
  %111 = call i8* @adt7475_read_word(%struct.i2c_client* %108, i32 %110)
  %112 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %113 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %112, i32 0, i32 9
  %114 = load i8***, i8**** %113, align 8
  %115 = load i64, i64* @INPUT, align 8
  %116 = getelementptr inbounds i8**, i8*** %114, i64 %115
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %111, i8** %120, align 8
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %103

124:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %142, %124
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @ADT7475_PWM_COUNT, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %125
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @PWM_REG(i32 %130)
  %132 = call i32 @adt7475_read(i32 %131)
  %133 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %134 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %133, i32 0, i32 4
  %135 = load i32**, i32*** %134, align 8
  %136 = load i64, i64* @INPUT, align 8
  %137 = getelementptr inbounds i32*, i32** %135, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %132, i32* %141, align 4
  br label %142

142:                                              ; preds = %129
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %125

145:                                              ; preds = %125
  %146 = load i8*, i8** @jiffies, align 8
  %147 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %148 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %147, i32 0, i32 10
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %24
  %150 = load i8*, i8** @jiffies, align 8
  %151 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %152 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %151, i32 0, i32 8
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* @HZ, align 4
  %155 = mul nsw i32 %154, 60
  %156 = sext i32 %155 to i64
  %157 = getelementptr i8, i8* %153, i64 %156
  %158 = call i64 @time_after(i8* %150, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %149
  %161 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %162 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %361, label %165

165:                                              ; preds = %160, %149
  %166 = load i32, i32* @REG_CONFIG5, align 4
  %167 = call i32 @adt7475_read(i32 %166)
  %168 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %169 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %201, %165
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @ADT7475_VOLTAGE_COUNT, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %204

174:                                              ; preds = %170
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @VOLTAGE_MIN_REG(i32 %175)
  %177 = call i32 @adt7475_read(i32 %176)
  %178 = shl i32 %177, 2
  %179 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %180 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %179, i32 0, i32 2
  %181 = load i32**, i32*** %180, align 8
  %182 = load i64, i64* @MIN, align 8
  %183 = getelementptr inbounds i32*, i32** %181, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %178, i32* %187, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @VOLTAGE_MAX_REG(i32 %188)
  %190 = call i32 @adt7475_read(i32 %189)
  %191 = shl i32 %190, 2
  %192 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %193 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %192, i32 0, i32 2
  %194 = load i32**, i32*** %193, align 8
  %195 = load i64, i64* @MAX, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %191, i32* %200, align 4
  br label %201

201:                                              ; preds = %174
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %6, align 4
  br label %170

204:                                              ; preds = %170
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %274, %204
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @ADT7475_TEMP_COUNT, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %277

209:                                              ; preds = %205
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @TEMP_MIN_REG(i32 %210)
  %212 = call i32 @adt7475_read(i32 %211)
  %213 = shl i32 %212, 2
  %214 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %215 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %214, i32 0, i32 3
  %216 = load i32**, i32*** %215, align 8
  %217 = load i64, i64* @MIN, align 8
  %218 = getelementptr inbounds i32*, i32** %216, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %213, i32* %222, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @TEMP_MAX_REG(i32 %223)
  %225 = call i32 @adt7475_read(i32 %224)
  %226 = shl i32 %225, 2
  %227 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %228 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %227, i32 0, i32 3
  %229 = load i32**, i32*** %228, align 8
  %230 = load i64, i64* @MAX, align 8
  %231 = getelementptr inbounds i32*, i32** %229, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %226, i32* %235, align 4
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @TEMP_TMIN_REG(i32 %236)
  %238 = call i32 @adt7475_read(i32 %237)
  %239 = shl i32 %238, 2
  %240 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %241 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %240, i32 0, i32 3
  %242 = load i32**, i32*** %241, align 8
  %243 = load i64, i64* @AUTOMIN, align 8
  %244 = getelementptr inbounds i32*, i32** %242, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %239, i32* %248, align 4
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @TEMP_THERM_REG(i32 %249)
  %251 = call i32 @adt7475_read(i32 %250)
  %252 = shl i32 %251, 2
  %253 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %254 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %253, i32 0, i32 3
  %255 = load i32**, i32*** %254, align 8
  %256 = load i64, i64* @THERM, align 8
  %257 = getelementptr inbounds i32*, i32** %255, i64 %256
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %252, i32* %261, align 4
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @TEMP_OFFSET_REG(i32 %262)
  %264 = call i32 @adt7475_read(i32 %263)
  %265 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %266 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %265, i32 0, i32 3
  %267 = load i32**, i32*** %266, align 8
  %268 = load i64, i64* @OFFSET, align 8
  %269 = getelementptr inbounds i32*, i32** %267, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  store i32 %264, i32* %273, align 4
  br label %274

274:                                              ; preds = %209
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %6, align 4
  br label %205

277:                                              ; preds = %205
  %278 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %279 = call i32 @adt7475_read_hystersis(%struct.i2c_client* %278)
  store i32 0, i32* %6, align 4
  br label %280

280:                                              ; preds = %298, %277
  %281 = load i32, i32* %6, align 4
  %282 = load i32, i32* @ADT7475_TACH_COUNT, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %301

284:                                              ; preds = %280
  %285 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @TACH_MIN_REG(i32 %286)
  %288 = call i8* @adt7475_read_word(%struct.i2c_client* %285, i32 %287)
  %289 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %290 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %289, i32 0, i32 9
  %291 = load i8***, i8**** %290, align 8
  %292 = load i64, i64* @MIN, align 8
  %293 = getelementptr inbounds i8**, i8*** %291, i64 %292
  %294 = load i8**, i8*** %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  store i8* %288, i8** %297, align 8
  br label %298

298:                                              ; preds = %284
  %299 = load i32, i32* %6, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %6, align 4
  br label %280

301:                                              ; preds = %280
  store i32 0, i32* %6, align 4
  br label %302

302:                                              ; preds = %334, %301
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* @ADT7475_PWM_COUNT, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %337

306:                                              ; preds = %302
  %307 = load i32, i32* %6, align 4
  %308 = call i32 @PWM_MAX_REG(i32 %307)
  %309 = call i32 @adt7475_read(i32 %308)
  %310 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %311 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %310, i32 0, i32 4
  %312 = load i32**, i32*** %311, align 8
  %313 = load i64, i64* @MAX, align 8
  %314 = getelementptr inbounds i32*, i32** %312, i64 %313
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  store i32 %309, i32* %318, align 4
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @PWM_MIN_REG(i32 %319)
  %321 = call i32 @adt7475_read(i32 %320)
  %322 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %323 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %322, i32 0, i32 4
  %324 = load i32**, i32*** %323, align 8
  %325 = load i64, i64* @MIN, align 8
  %326 = getelementptr inbounds i32*, i32** %324, i64 %325
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %6, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %321, i32* %330, align 4
  %331 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %332 = load i32, i32* %6, align 4
  %333 = call i32 @adt7475_read_pwm(%struct.i2c_client* %331, i32 %332)
  br label %334

334:                                              ; preds = %306
  %335 = load i32, i32* %6, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %6, align 4
  br label %302

337:                                              ; preds = %302
  %338 = call i32 @TEMP_TRANGE_REG(i32 0)
  %339 = call i32 @adt7475_read(i32 %338)
  %340 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %341 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %340, i32 0, i32 6
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  store i32 %339, i32* %343, align 4
  %344 = call i32 @TEMP_TRANGE_REG(i32 1)
  %345 = call i32 @adt7475_read(i32 %344)
  %346 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %347 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %346, i32 0, i32 6
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  store i32 %345, i32* %349, align 4
  %350 = call i32 @TEMP_TRANGE_REG(i32 2)
  %351 = call i32 @adt7475_read(i32 %350)
  %352 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %353 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %352, i32 0, i32 6
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 2
  store i32 %351, i32* %355, align 4
  %356 = load i8*, i8** @jiffies, align 8
  %357 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %358 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %357, i32 0, i32 8
  store i8* %356, i8** %358, align 8
  %359 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %360 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %359, i32 0, i32 0
  store i32 1, i32* %360, align 8
  br label %361

361:                                              ; preds = %337, %160
  %362 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %363 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %362, i32 0, i32 7
  %364 = call i32 @mutex_unlock(i32* %363)
  %365 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  ret %struct.adt7475_data* %365
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @VOLTAGE_REG(i32) #1

declare dso_local i32 @TEMP_REG(i32) #1

declare dso_local i8* @adt7475_read_word(%struct.i2c_client*, i32) #1

declare dso_local i32 @TACH_REG(i32) #1

declare dso_local i32 @PWM_REG(i32) #1

declare dso_local i32 @VOLTAGE_MIN_REG(i32) #1

declare dso_local i32 @VOLTAGE_MAX_REG(i32) #1

declare dso_local i32 @TEMP_MIN_REG(i32) #1

declare dso_local i32 @TEMP_MAX_REG(i32) #1

declare dso_local i32 @TEMP_TMIN_REG(i32) #1

declare dso_local i32 @TEMP_THERM_REG(i32) #1

declare dso_local i32 @TEMP_OFFSET_REG(i32) #1

declare dso_local i32 @adt7475_read_hystersis(%struct.i2c_client*) #1

declare dso_local i32 @TACH_MIN_REG(i32) #1

declare dso_local i32 @PWM_MAX_REG(i32) #1

declare dso_local i32 @PWM_MIN_REG(i32) #1

declare dso_local i32 @adt7475_read_pwm(%struct.i2c_client*, i32) #1

declare dso_local i32 @TEMP_TRANGE_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
