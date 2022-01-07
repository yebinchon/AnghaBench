; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme1737_data = type { i32, i64, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i8*, i32, i8* }
%struct.device = type { i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@DME1737_REG_CONFIG = common dso_local global i64 0, align 8
@dme1737 = common dso_local global i64 0, align 8
@DME1737_REG_VID = common dso_local global i64 0, align 8
@sch5027 = common dso_local global i64 0, align 8
@DME1737_REG_IN_LSB = common dso_local global i64* null, align 8
@DME1737_REG_IN_LSB_SHL = common dso_local global i32* null, align 8
@DME1737_REG_TEMP_LSB = common dso_local global i64* null, align 8
@DME1737_REG_TEMP_LSB_SHL = common dso_local global i32* null, align 8
@DME1737_REG_ALARM1 = common dso_local global i64 0, align 8
@DME1737_REG_ALARM2 = common dso_local global i64 0, align 8
@DME1737_REG_ALARM3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dme1737_data* (%struct.device*)* @dme1737_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dme1737_data* @dme1737_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.dme1737_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.dme1737_data* %7, %struct.dme1737_data** %3, align 8
  %8 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %9 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %8, i32 0, i32 25
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i8*, i8** @jiffies, align 8
  %12 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %13 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %12, i32 0, i32 28
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 600, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %14, i64 %17
  %19 = call i64 @time_after(i8* %11, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %23 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %28 = load i64, i64* @DME1737_REG_CONFIG, align 8
  %29 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %30 = load i64, i64* @DME1737_REG_CONFIG, align 8
  %31 = call i32 @dme1737_read(%struct.dme1737_data* %29, i64 %30)
  %32 = or i32 %31, 16
  %33 = call i32 @dme1737_write(%struct.dme1737_data* %27, i64 %28, i32 %32)
  %34 = load i8*, i8** @jiffies, align 8
  %35 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %36 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %35, i32 0, i32 28
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %26, %21
  %38 = load i8*, i8** @jiffies, align 8
  %39 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %40 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %39, i32 0, i32 26
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @HZ, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = call i64 @time_after(i8* %38, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %49 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %565, label %52

52:                                               ; preds = %47, %37
  %53 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %54 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @dme1737, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %60 = load i64, i64* @DME1737_REG_VID, align 8
  %61 = call i32 @dme1737_read(%struct.dme1737_data* %59, i64 %60)
  %62 = and i32 %61, 63
  %63 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %64 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %52
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %105, %65
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %69 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ARRAY_SIZE(i32* %70)
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %66
  %74 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @DME1737_REG_IN(i32 %75)
  %77 = call i32 @dme1737_read(%struct.dme1737_data* %74, i64 %76)
  %78 = shl i32 %77, 8
  %79 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %80 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @DME1737_REG_IN_MIN(i32 %86)
  %88 = call i32 @dme1737_read(%struct.dme1737_data* %85, i64 %87)
  %89 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %90 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  %95 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @DME1737_REG_IN_MAX(i32 %96)
  %98 = call i32 @dme1737_read(%struct.dme1737_data* %95, i64 %97)
  %99 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %100 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %73
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %66

108:                                              ; preds = %66
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %165, %108
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %112 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %111, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @ARRAY_SIZE(i32* %113)
  %115 = icmp slt i32 %110, %114
  br i1 %115, label %116, label %168

116:                                              ; preds = %109
  %117 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i64 @DME1737_REG_TEMP(i32 %118)
  %120 = call i32 @dme1737_read(%struct.dme1737_data* %117, i64 %119)
  %121 = shl i32 %120, 8
  %122 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %123 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i64 @DME1737_REG_TEMP_MIN(i32 %129)
  %131 = call i32 @dme1737_read(%struct.dme1737_data* %128, i64 %130)
  %132 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %133 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %132, i32 0, i32 7
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  %138 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = call i64 @DME1737_REG_TEMP_MAX(i32 %139)
  %141 = call i32 @dme1737_read(%struct.dme1737_data* %138, i64 %140)
  %142 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %143 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %142, i32 0, i32 8
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %141, i32* %147, align 4
  %148 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %149 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @sch5027, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %116
  %154 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %155 = load i32, i32* %4, align 4
  %156 = call i64 @DME1737_REG_TEMP_OFFSET(i32 %155)
  %157 = call i32 @dme1737_read(%struct.dme1737_data* %154, i64 %156)
  %158 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %159 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %158, i32 0, i32 9
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  br label %164

164:                                              ; preds = %153, %116
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %109

168:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %182, %168
  %170 = load i32, i32* %4, align 4
  %171 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %172 = call i32 @ARRAY_SIZE(i32* %171)
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %176 = load i32, i32* %4, align 4
  %177 = call i64 @DME1737_REG_IN_TEMP_LSB(i32 %176)
  %178 = call i32 @dme1737_read(%struct.dme1737_data* %175, i64 %177)
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %180
  store i32 %178, i32* %181, align 4
  br label %182

182:                                              ; preds = %174
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %169

185:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %216, %185
  %187 = load i32, i32* %4, align 4
  %188 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %189 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @ARRAY_SIZE(i32* %190)
  %192 = icmp slt i32 %187, %191
  br i1 %192, label %193, label %219

193:                                              ; preds = %186
  %194 = load i64*, i64** @DME1737_REG_IN_LSB, align 8
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** @DME1737_REG_IN_LSB_SHL, align 8
  %202 = load i32, i32* %4, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %200, %205
  %207 = and i32 %206, 240
  %208 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %209 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %207
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %193
  %217 = load i32, i32* %4, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %4, align 4
  br label %186

219:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %250, %219
  %221 = load i32, i32* %4, align 4
  %222 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %223 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %222, i32 0, i32 6
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @ARRAY_SIZE(i32* %224)
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %253

227:                                              ; preds = %220
  %228 = load i64*, i64** @DME1737_REG_TEMP_LSB, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** @DME1737_REG_TEMP_LSB_SHL, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %234, %239
  %241 = and i32 %240, 240
  %242 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %243 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %242, i32 0, i32 6
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %4, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %241
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %227
  %251 = load i32, i32* %4, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %4, align 4
  br label %220

253:                                              ; preds = %220
  store i32 0, i32* %4, align 4
  br label %254

254:                                              ; preds = %344, %253
  %255 = load i32, i32* %4, align 4
  %256 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %257 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %256, i32 0, i32 10
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @ARRAY_SIZE(i32* %258)
  %260 = icmp slt i32 %255, %259
  br i1 %260, label %261, label %347

261:                                              ; preds = %254
  %262 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %263 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %262, i32 0, i32 11
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %4, align 4
  %266 = shl i32 1, %265
  %267 = and i32 %264, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %261
  br label %344

270:                                              ; preds = %261
  %271 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %272 = load i32, i32* %4, align 4
  %273 = call i64 @DME1737_REG_FAN(i32 %272)
  %274 = call i32 @dme1737_read(%struct.dme1737_data* %271, i64 %273)
  %275 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %276 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %275, i32 0, i32 10
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %4, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %274, i32* %280, align 4
  %281 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %282 = load i32, i32* %4, align 4
  %283 = call i64 @DME1737_REG_FAN(i32 %282)
  %284 = add nsw i64 %283, 1
  %285 = call i32 @dme1737_read(%struct.dme1737_data* %281, i64 %284)
  %286 = shl i32 %285, 8
  %287 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %288 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %287, i32 0, i32 10
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %4, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %286
  store i32 %294, i32* %292, align 4
  %295 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %296 = load i32, i32* %4, align 4
  %297 = call i64 @DME1737_REG_FAN_MIN(i32 %296)
  %298 = call i32 @dme1737_read(%struct.dme1737_data* %295, i64 %297)
  %299 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %300 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %299, i32 0, i32 12
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %4, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  store i32 %298, i32* %304, align 4
  %305 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %306 = load i32, i32* %4, align 4
  %307 = call i64 @DME1737_REG_FAN_MIN(i32 %306)
  %308 = add nsw i64 %307, 1
  %309 = call i32 @dme1737_read(%struct.dme1737_data* %305, i64 %308)
  %310 = shl i32 %309, 8
  %311 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %312 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %311, i32 0, i32 12
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %4, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %310
  store i32 %318, i32* %316, align 4
  %319 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %320 = load i32, i32* %4, align 4
  %321 = call i64 @DME1737_REG_FAN_OPT(i32 %320)
  %322 = call i32 @dme1737_read(%struct.dme1737_data* %319, i64 %321)
  %323 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %324 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %323, i32 0, i32 13
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %4, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 %322, i32* %328, align 4
  %329 = load i32, i32* %4, align 4
  %330 = icmp sgt i32 %329, 3
  br i1 %330, label %331, label %343

331:                                              ; preds = %270
  %332 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %333 = load i32, i32* %4, align 4
  %334 = call i64 @DME1737_REG_FAN_MAX(i32 %333)
  %335 = call i32 @dme1737_read(%struct.dme1737_data* %332, i64 %334)
  %336 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %337 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %336, i32 0, i32 14
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %4, align 4
  %340 = sub nsw i32 %339, 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  store i32 %335, i32* %342, align 4
  br label %343

343:                                              ; preds = %331, %270
  br label %344

344:                                              ; preds = %343, %269
  %345 = load i32, i32* %4, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %4, align 4
  br label %254

347:                                              ; preds = %254
  store i32 0, i32* %4, align 4
  br label %348

348:                                              ; preds = %409, %347
  %349 = load i32, i32* %4, align 4
  %350 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %351 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %350, i32 0, i32 15
  %352 = load i32*, i32** %351, align 8
  %353 = call i32 @ARRAY_SIZE(i32* %352)
  %354 = icmp slt i32 %349, %353
  br i1 %354, label %355, label %412

355:                                              ; preds = %348
  %356 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %357 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %356, i32 0, i32 16
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* %4, align 4
  %360 = shl i32 1, %359
  %361 = and i32 %358, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %355
  br label %409

364:                                              ; preds = %355
  %365 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %366 = load i32, i32* %4, align 4
  %367 = call i64 @DME1737_REG_PWM(i32 %366)
  %368 = call i32 @dme1737_read(%struct.dme1737_data* %365, i64 %367)
  %369 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %370 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %369, i32 0, i32 15
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %4, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  store i32 %368, i32* %374, align 4
  %375 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %376 = load i32, i32* %4, align 4
  %377 = call i64 @DME1737_REG_PWM_FREQ(i32 %376)
  %378 = call i32 @dme1737_read(%struct.dme1737_data* %375, i64 %377)
  %379 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %380 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %379, i32 0, i32 17
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %4, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 %378, i32* %384, align 4
  %385 = load i32, i32* %4, align 4
  %386 = icmp slt i32 %385, 3
  br i1 %386, label %387, label %408

387:                                              ; preds = %364
  %388 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %389 = load i32, i32* %4, align 4
  %390 = call i64 @DME1737_REG_PWM_CONFIG(i32 %389)
  %391 = call i32 @dme1737_read(%struct.dme1737_data* %388, i64 %390)
  %392 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %393 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %392, i32 0, i32 18
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %4, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  store i32 %391, i32* %397, align 4
  %398 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %399 = load i32, i32* %4, align 4
  %400 = call i64 @DME1737_REG_PWM_MIN(i32 %399)
  %401 = call i32 @dme1737_read(%struct.dme1737_data* %398, i64 %400)
  %402 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %403 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %402, i32 0, i32 19
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %4, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  store i32 %401, i32* %407, align 4
  br label %408

408:                                              ; preds = %387, %364
  br label %409

409:                                              ; preds = %408, %363
  %410 = load i32, i32* %4, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %4, align 4
  br label %348

412:                                              ; preds = %348
  store i32 0, i32* %4, align 4
  br label %413

413:                                              ; preds = %431, %412
  %414 = load i32, i32* %4, align 4
  %415 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %416 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %415, i32 0, i32 20
  %417 = load i32*, i32** %416, align 8
  %418 = call i32 @ARRAY_SIZE(i32* %417)
  %419 = icmp slt i32 %414, %418
  br i1 %419, label %420, label %434

420:                                              ; preds = %413
  %421 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %422 = load i32, i32* %4, align 4
  %423 = call i64 @DME1737_REG_PWM_RR(i32 %422)
  %424 = call i32 @dme1737_read(%struct.dme1737_data* %421, i64 %423)
  %425 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %426 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %425, i32 0, i32 20
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %4, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  store i32 %424, i32* %430, align 4
  br label %431

431:                                              ; preds = %420
  %432 = load i32, i32* %4, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %4, align 4
  br label %413

434:                                              ; preds = %413
  store i32 0, i32* %4, align 4
  br label %435

435:                                              ; preds = %463, %434
  %436 = load i32, i32* %4, align 4
  %437 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %438 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %437, i32 0, i32 21
  %439 = load i32*, i32** %438, align 8
  %440 = call i32 @ARRAY_SIZE(i32* %439)
  %441 = icmp slt i32 %436, %440
  br i1 %441, label %442, label %466

442:                                              ; preds = %435
  %443 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %444 = load i32, i32* %4, align 4
  %445 = call i64 @DME1737_REG_ZONE_LOW(i32 %444)
  %446 = call i32 @dme1737_read(%struct.dme1737_data* %443, i64 %445)
  %447 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %448 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %447, i32 0, i32 21
  %449 = load i32*, i32** %448, align 8
  %450 = load i32, i32* %4, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  store i32 %446, i32* %452, align 4
  %453 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %454 = load i32, i32* %4, align 4
  %455 = call i64 @DME1737_REG_ZONE_ABS(i32 %454)
  %456 = call i32 @dme1737_read(%struct.dme1737_data* %453, i64 %455)
  %457 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %458 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %457, i32 0, i32 22
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %4, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  store i32 %456, i32* %462, align 4
  br label %463

463:                                              ; preds = %442
  %464 = load i32, i32* %4, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %4, align 4
  br label %435

466:                                              ; preds = %435
  %467 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %468 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = load i64, i64* @sch5027, align 8
  %471 = icmp ne i64 %469, %470
  br i1 %471, label %472, label %495

472:                                              ; preds = %466
  store i32 0, i32* %4, align 4
  br label %473

473:                                              ; preds = %491, %472
  %474 = load i32, i32* %4, align 4
  %475 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %476 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %475, i32 0, i32 23
  %477 = load i32*, i32** %476, align 8
  %478 = call i32 @ARRAY_SIZE(i32* %477)
  %479 = icmp slt i32 %474, %478
  br i1 %479, label %480, label %494

480:                                              ; preds = %473
  %481 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %482 = load i32, i32* %4, align 4
  %483 = call i64 @DME1737_REG_ZONE_HYST(i32 %482)
  %484 = call i32 @dme1737_read(%struct.dme1737_data* %481, i64 %483)
  %485 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %486 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %485, i32 0, i32 23
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* %4, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  store i32 %484, i32* %490, align 4
  br label %491

491:                                              ; preds = %480
  %492 = load i32, i32* %4, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %4, align 4
  br label %473

494:                                              ; preds = %473
  br label %495

495:                                              ; preds = %494, %466
  %496 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %497 = load i64, i64* @DME1737_REG_ALARM1, align 8
  %498 = call i32 @dme1737_read(%struct.dme1737_data* %496, i64 %497)
  %499 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %500 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %499, i32 0, i32 24
  store i32 %498, i32* %500, align 8
  %501 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %502 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %501, i32 0, i32 24
  %503 = load i32, i32* %502, align 8
  %504 = and i32 %503, 128
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %523

506:                                              ; preds = %495
  %507 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %508 = load i64, i64* @DME1737_REG_ALARM2, align 8
  %509 = call i32 @dme1737_read(%struct.dme1737_data* %507, i64 %508)
  %510 = shl i32 %509, 8
  %511 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %512 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %511, i32 0, i32 24
  %513 = load i32, i32* %512, align 8
  %514 = or i32 %513, %510
  store i32 %514, i32* %512, align 8
  %515 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %516 = load i64, i64* @DME1737_REG_ALARM3, align 8
  %517 = call i32 @dme1737_read(%struct.dme1737_data* %515, i64 %516)
  %518 = shl i32 %517, 16
  %519 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %520 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %519, i32 0, i32 24
  %521 = load i32, i32* %520, align 8
  %522 = or i32 %521, %518
  store i32 %522, i32* %520, align 8
  br label %523

523:                                              ; preds = %506, %495
  %524 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %525 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %524, i32 0, i32 27
  %526 = load i32, i32* %525, align 8
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %559, label %528

528:                                              ; preds = %523
  %529 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %530 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %529, i32 0, i32 24
  %531 = load i32, i32* %530, align 8
  %532 = and i32 %531, 16711680
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %538

534:                                              ; preds = %528
  %535 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %536 = load i64, i64* @DME1737_REG_ALARM3, align 8
  %537 = call i32 @dme1737_write(%struct.dme1737_data* %535, i64 %536, i32 255)
  br label %538

538:                                              ; preds = %534, %528
  %539 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %540 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %539, i32 0, i32 24
  %541 = load i32, i32* %540, align 8
  %542 = and i32 %541, 65280
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %548

544:                                              ; preds = %538
  %545 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %546 = load i64, i64* @DME1737_REG_ALARM2, align 8
  %547 = call i32 @dme1737_write(%struct.dme1737_data* %545, i64 %546, i32 255)
  br label %548

548:                                              ; preds = %544, %538
  %549 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %550 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %549, i32 0, i32 24
  %551 = load i32, i32* %550, align 8
  %552 = and i32 %551, 255
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %558

554:                                              ; preds = %548
  %555 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %556 = load i64, i64* @DME1737_REG_ALARM1, align 8
  %557 = call i32 @dme1737_write(%struct.dme1737_data* %555, i64 %556, i32 255)
  br label %558

558:                                              ; preds = %554, %548
  br label %559

559:                                              ; preds = %558, %523
  %560 = load i8*, i8** @jiffies, align 8
  %561 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %562 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %561, i32 0, i32 26
  store i8* %560, i8** %562, align 8
  %563 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %564 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %563, i32 0, i32 0
  store i32 1, i32* %564, align 8
  br label %565

565:                                              ; preds = %559, %47
  %566 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  %567 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %566, i32 0, i32 25
  %568 = call i32 @mutex_unlock(i32* %567)
  %569 = load %struct.dme1737_data*, %struct.dme1737_data** %3, align 8
  ret %struct.dme1737_data* %569
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i64, i32) #1

declare dso_local i32 @dme1737_read(%struct.dme1737_data*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @DME1737_REG_IN(i32) #1

declare dso_local i64 @DME1737_REG_IN_MIN(i32) #1

declare dso_local i64 @DME1737_REG_IN_MAX(i32) #1

declare dso_local i64 @DME1737_REG_TEMP(i32) #1

declare dso_local i64 @DME1737_REG_TEMP_MIN(i32) #1

declare dso_local i64 @DME1737_REG_TEMP_MAX(i32) #1

declare dso_local i64 @DME1737_REG_TEMP_OFFSET(i32) #1

declare dso_local i64 @DME1737_REG_IN_TEMP_LSB(i32) #1

declare dso_local i64 @DME1737_REG_FAN(i32) #1

declare dso_local i64 @DME1737_REG_FAN_MIN(i32) #1

declare dso_local i64 @DME1737_REG_FAN_OPT(i32) #1

declare dso_local i64 @DME1737_REG_FAN_MAX(i32) #1

declare dso_local i64 @DME1737_REG_PWM(i32) #1

declare dso_local i64 @DME1737_REG_PWM_FREQ(i32) #1

declare dso_local i64 @DME1737_REG_PWM_CONFIG(i32) #1

declare dso_local i64 @DME1737_REG_PWM_MIN(i32) #1

declare dso_local i64 @DME1737_REG_PWM_RR(i32) #1

declare dso_local i64 @DME1737_REG_ZONE_LOW(i32) #1

declare dso_local i64 @DME1737_REG_ZONE_ABS(i32) #1

declare dso_local i64 @DME1737_REG_ZONE_HYST(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
