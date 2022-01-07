; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_calibration_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_calibration_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@AR9300_NUM_5G_CAL_PIERS = common dso_local global i32 0, align 4
@AR9300_NUM_2G_CAL_PIERS = common dso_local global i32 0, align 4
@EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ch=%d f=%d low=%d %d h=%d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"for frequency=%d, calibration correction = %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32)* @ar9003_hw_calibration_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_calibration_apply(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %27 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %34 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %37 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %13, align 8
  %40 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %14, align 8
  %43 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %15, align 8
  %46 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %16, align 8
  %49 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i32, i64 %50, align 16
  store i64 %50, i64* %17, align 8
  %52 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %19, align 8
  %55 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %20, align 8
  %58 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %59 = zext i32 %58 to i64
  %60 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %21, align 8
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %61)
  store %struct.ath_common* %62, %struct.ath_common** %26, align 8
  %63 = load i32, i32* %4, align 4
  %64 = icmp sge i32 %63, 4000
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %2
  %69 = load i32, i32* @AR9300_NUM_5G_CAL_PIERS, align 4
  store i32 %69, i32* %7, align 4
  br label %72

70:                                               ; preds = %2
  %71 = load i32, i32* @AR9300_NUM_2G_CAL_PIERS, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %68
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %84, %72
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %30, i64 %79
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %42, i64 %82
  store i32 100000, i32* %83, align 4
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %73

87:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %191, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %194

92:                                               ; preds = %88
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %187, %92
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %190

97:                                               ; preds = %93
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @ar9003_hw_cal_pier_get(%struct.ath_hw* %98, i32 %99, i32 %100, i32 %101, i32* %22, i32* %23, i32* %24, i32* %25)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %186, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %22, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %110, label %149

110:                                              ; preds = %104
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %42, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %42, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp sge i32 %120, 100000
  br i1 %121, label %131, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %42, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %124, %128
  %130 = icmp sgt i32 %123, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %122, %116, %110
  %132 = load i32, i32* %22, align 4
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %42, i64 %134
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %45, i64 %138
  store i32 %136, i32* %139, align 4
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %48, i64 %142
  store i32 %140, i32* %143, align 4
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %51, i64 %146
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %131, %122
  br label %149

149:                                              ; preds = %148, %104
  %150 = load i32, i32* %18, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %149
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %30, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp sle i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %30, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %160, %164
  %166 = icmp slt i32 %159, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %158, %152
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %30, i64 %170
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %33, i64 %174
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %36, i64 %178
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* %25, align 4
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %39, i64 %182
  store i32 %180, i32* %183, align 4
  br label %184

184:                                              ; preds = %167, %158
  br label %185

185:                                              ; preds = %184, %149
  br label %186

186:                                              ; preds = %185, %97
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %93

190:                                              ; preds = %93
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %5, align 4
  br label %88

194:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %398, %194
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %401

199:                                              ; preds = %195
  %200 = load %struct.ath_common*, %struct.ath_common** %26, align 8
  %201 = load i32, i32* @EEPROM, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %30, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %33, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %42, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %45, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (%struct.ath_common*, i32, i8*, i32, i32, i32, i32, ...) @ath_dbg(%struct.ath_common* %200, i32 %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %202, i32 %203, i32 %207, i32 %211, i32 %215, i32 %219)
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %42, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %30, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %224, %228
  br i1 %229, label %230, label %252

230:                                              ; preds = %199
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %33, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %54, i64 %236
  store i32 %234, i32* %237, align 4
  %238 = load i32, i32* %5, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %39, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %57, i64 %243
  store i32 %241, i32* %244, align 4
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %36, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %60, i64 %250
  store i32 %248, i32* %251, align 4
  br label %397

252:                                              ; preds = %199
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %30, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %253, %257
  %259 = icmp slt i32 %258, 1000
  br i1 %259, label %260, label %355

260:                                              ; preds = %252
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %42, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %4, align 4
  %266 = sub nsw i32 %264, %265
  %267 = icmp slt i32 %266, 1000
  br i1 %267, label %268, label %332

268:                                              ; preds = %260
  %269 = load i32, i32* %4, align 4
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %30, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %42, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %33, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %5, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %45, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @interpolate(i32 %269, i32 %273, i32 %277, i32 %281, i32 %285)
  %287 = load i32, i32* %5, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %54, i64 %288
  store i32 %286, i32* %289, align 4
  %290 = load i32, i32* %4, align 4
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %30, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %42, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %36, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %48, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @interpolate(i32 %290, i32 %294, i32 %298, i32 %302, i32 %306)
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %60, i64 %309
  store i32 %307, i32* %310, align 4
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* %5, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %30, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %5, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %42, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %5, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %39, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %51, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @interpolate(i32 %311, i32 %315, i32 %319, i32 %323, i32 %327)
  %329 = load i32, i32* %5, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %57, i64 %330
  store i32 %328, i32* %331, align 4
  br label %354

332:                                              ; preds = %260
  %333 = load i32, i32* %5, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %33, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %5, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %54, i64 %338
  store i32 %336, i32* %339, align 4
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %36, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %5, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %60, i64 %345
  store i32 %343, i32* %346, align 4
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %39, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %5, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %57, i64 %352
  store i32 %350, i32* %353, align 4
  br label %354

354:                                              ; preds = %332, %268
  br label %396

355:                                              ; preds = %252
  %356 = load i32, i32* %5, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %42, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %4, align 4
  %361 = sub nsw i32 %359, %360
  %362 = icmp slt i32 %361, 1000
  br i1 %362, label %363, label %385

363:                                              ; preds = %355
  %364 = load i32, i32* %5, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %45, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %54, i64 %369
  store i32 %367, i32* %370, align 4
  %371 = load i32, i32* %5, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %48, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %5, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %60, i64 %376
  store i32 %374, i32* %377, align 4
  %378 = load i32, i32* %5, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %51, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %5, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %57, i64 %383
  store i32 %381, i32* %384, align 4
  br label %395

385:                                              ; preds = %355
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %54, i64 %387
  store i32 0, i32* %388, align 4
  %389 = load i32, i32* %5, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %60, i64 %390
  store i32 0, i32* %391, align 4
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %57, i64 %393
  store i32 0, i32* %394, align 4
  br label %395

395:                                              ; preds = %385, %363
  br label %396

396:                                              ; preds = %395, %354
  br label %397

397:                                              ; preds = %396, %230
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %5, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %5, align 4
  br label %195

401:                                              ; preds = %195
  %402 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %403 = load i32, i32* %4, align 4
  %404 = call i32 @ar9003_hw_power_control_override(%struct.ath_hw* %402, i32 %403, i32* %54, i32* %57, i32* %60)
  %405 = load %struct.ath_common*, %struct.ath_common** %26, align 8
  %406 = load i32, i32* @EEPROM, align 4
  %407 = load i32, i32* %4, align 4
  %408 = getelementptr inbounds i32, i32* %54, i64 0
  %409 = load i32, i32* %408, align 16
  %410 = getelementptr inbounds i32, i32* %54, i64 1
  %411 = load i32, i32* %410, align 4
  %412 = getelementptr inbounds i32, i32* %54, i64 2
  %413 = load i32, i32* %412, align 8
  %414 = call i32 (%struct.ath_common*, i32, i8*, i32, i32, i32, i32, ...) @ath_dbg(%struct.ath_common* %405, i32 %406, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %407, i32 %409, i32 %411, i32 %413)
  %415 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %415)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #2

declare dso_local i32 @ar9003_hw_cal_pier_get(%struct.ath_hw*, i32, i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32, i32, ...) #2

declare dso_local i32 @interpolate(i32, i32, i32, i32, i32) #2

declare dso_local i32 @ar9003_hw_power_control_override(%struct.ath_hw*, i32, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
