; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32*, i32, i32*, i32, i32, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@VT1211_REG_FAN_DIV = common dso_local global i32 0, align 4
@VT1211_REG_PWM_CTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"pwm mode %ld not supported. Choose one of 0 or 2.\0A\00", align 1
@VT1211_REG_PWM_CLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"temp channel %ld not supported. Choose a value between 1 and 7.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"temp channel %ld is not available.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unknown attr fetch (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vt1211_data*, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.vt1211_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.vt1211_data* %17, %struct.vt1211_data** %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
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
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @simple_strtol(i8* %26, i32* null, i32 10)
  store i64 %27, i64* %13, align 8
  %28 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %29 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %28, i32 0, i32 4
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* %12, align 4
  switch i32 %31, label %260 [
    i32 129, label %32
    i32 128, label %151
    i32 130, label %183
  ]

32:                                               ; preds = %4
  %33 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %34 = load i32, i32* @VT1211_REG_FAN_DIV, align 4
  %35 = call i32 @vt1211_read8(%struct.vt1211_data* %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = ashr i32 %36, 4
  %38 = and i32 %37, 3
  %39 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %40 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %15, align 4
  %44 = ashr i32 %43, 6
  %45 = and i32 %44, 3
  %46 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %47 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = and i32 %50, 15
  %52 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %53 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %55 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %56 = call i32 @vt1211_read8(%struct.vt1211_data* %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = and i32 %57, 15
  %59 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %60 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = ashr i32 %63, 4
  %65 = and i32 %64, 15
  %66 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %67 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  %70 = load i64, i64* %13, align 8
  switch i64 %70, label %109 [
    i64 0, label %71
    i64 2, label %96
  ]

71:                                               ; preds = %32
  %72 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %73 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 7
  store i32 %79, i32* %77, align 4
  %80 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %81 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = xor i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %71
  %91 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %92 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 14
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %90, %71
  br label %115

96:                                               ; preds = %32
  %97 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %98 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, 8
  store i32 %104, i32* %102, align 4
  %105 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %106 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %115

109:                                              ; preds = %32
  %110 = load i64, i64* @EINVAL, align 8
  %111 = sub i64 0, %110
  store i64 %111, i64* %8, align 8
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @dev_warn(%struct.device* %112, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %113)
  br label %265

115:                                              ; preds = %96, %95
  %116 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %117 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %118 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %119 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 4
  %124 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %125 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %123, %128
  %130 = call i32 @vt1211_write8(%struct.vt1211_data* %116, i32 %117, i32 %129)
  %131 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %132 = load i32, i32* @VT1211_REG_FAN_DIV, align 4
  %133 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %134 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 6
  %139 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %140 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 4
  %145 = or i32 %138, %144
  %146 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %147 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %145, %148
  %150 = call i32 @vt1211_write8(%struct.vt1211_data* %131, i32 %132, i32 %149)
  br label %264

151:                                              ; preds = %4
  %152 = load i64, i64* %13, align 8
  %153 = call i32 @SENSORS_LIMIT(i64 %152, i32 1054, i32 135000)
  %154 = sdiv i32 135000, %153
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %156 = load i64, i64* %13, align 8
  %157 = ashr i64 %156, 1
  store i64 %157, i64* %13, align 8
  br label %158

158:                                              ; preds = %164, %151
  %159 = load i64, i64* %13, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %161
  %165 = load i64, i64* %13, align 8
  %166 = ashr i64 %165, 1
  store i64 %166, i64* %13, align 8
  br label %158

167:                                              ; preds = %158
  %168 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %169 = load i32, i32* @VT1211_REG_PWM_CLK, align 4
  %170 = call i32 @vt1211_read8(%struct.vt1211_data* %168, i32 %169)
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %15, align 4
  %172 = and i32 %171, 248
  %173 = load i32, i32* %14, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %176 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  %177 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %178 = load i32, i32* @VT1211_REG_PWM_CLK, align 4
  %179 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %180 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @vt1211_write8(%struct.vt1211_data* %177, i32 %178, i32 %181)
  br label %264

183:                                              ; preds = %4
  %184 = load i64, i64* %13, align 8
  %185 = icmp slt i64 %184, 1
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i64, i64* %13, align 8
  %188 = icmp sgt i64 %187, 7
  br i1 %188, label %189, label %195

189:                                              ; preds = %186, %183
  %190 = load i64, i64* @EINVAL, align 8
  %191 = sub i64 0, %190
  store i64 %191, i64* %8, align 8
  %192 = load %struct.device*, %struct.device** %5, align 8
  %193 = load i64, i64* %13, align 8
  %194 = call i32 @dev_warn(%struct.device* %192, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %193)
  br label %265

195:                                              ; preds = %186
  %196 = load i64, i64* %13, align 8
  %197 = sub nsw i64 %196, 1
  %198 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %199 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @ISTEMP(i64 %197, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %195
  %204 = load i64, i64* @EINVAL, align 8
  %205 = sub i64 0, %204
  store i64 %205, i64* %8, align 8
  %206 = load %struct.device*, %struct.device** %5, align 8
  %207 = load i64, i64* %13, align 8
  %208 = call i32 @dev_warn(%struct.device* %206, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %207)
  br label %265

209:                                              ; preds = %195
  %210 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %211 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %212 = call i32 @vt1211_read8(%struct.vt1211_data* %210, i32 %211)
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %15, align 4
  %214 = and i32 %213, 15
  %215 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %216 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 %214, i32* %218, align 4
  %219 = load i32, i32* %15, align 4
  %220 = ashr i32 %219, 4
  %221 = and i32 %220, 15
  %222 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %223 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  store i32 %221, i32* %225, align 4
  %226 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %227 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 8
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %13, align 8
  %236 = sub nsw i64 %235, 1
  %237 = or i64 %234, %236
  %238 = trunc i64 %237 to i32
  %239 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %240 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %238, i32* %244, align 4
  %245 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %246 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %247 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %248 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %251, 4
  %253 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %254 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %252, %257
  %259 = call i32 @vt1211_write8(%struct.vt1211_data* %245, i32 %246, i32 %258)
  br label %264

260:                                              ; preds = %4
  %261 = load %struct.device*, %struct.device** %5, align 8
  %262 = load i32, i32* %12, align 4
  %263 = call i32 @dev_dbg(%struct.device* %261, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %260, %209, %167, %115
  br label %265

265:                                              ; preds = %264, %203, %189, %109
  %266 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %267 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %266, i32 0, i32 4
  %268 = call i32 @mutex_unlock(i32* %267)
  %269 = load i64, i64* %8, align 8
  ret i64 %269
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vt1211_read8(%struct.vt1211_data*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i32) #1

declare dso_local i32 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @ISTEMP(i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
