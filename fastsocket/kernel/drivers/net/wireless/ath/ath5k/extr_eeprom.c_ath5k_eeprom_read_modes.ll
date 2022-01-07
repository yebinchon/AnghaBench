; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_modes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32, i64, i32*, i32*, i32*, i32*, i32*, i32, i32, i64*, %struct.TYPE_6__*, %struct.TYPE_5__*, i64* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@AR5K_EEPROM_VERSION_3_2 = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_4_0 = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_3_3 = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_3_4 = common dso_local global i64 0, align 8
@AR5K_EEPROM_I_GAIN = common dso_local global i32 0, align 4
@AR5K_EEPROM_CCK_OFDM_DELTA = common dso_local global i32 0, align 4
@AR5K_EEPROM_VERSION_4_6 = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_4_1 = common dso_local global i64 0, align 8
@AR5K_EEPROM_CHANNEL_DIS = common dso_local global i8* null, align 8
@AR5K_EEPROM_VERSION_4_2 = common dso_local global i64 0, align 8
@AR5K_EEPROM_VERSION_5_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i64*, i32)* @ath5k_eeprom_read_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_modes(%struct.ath5k_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_eeprom_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %12, %struct.ath5k_eeprom_info** %7, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %16 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %15, i32 0, i32 30
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %8, align 8
  %23 = trunc i64 %21 to i32
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @AR5K_EEPROM_READ(i32 %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = sext i32 %28 to i64
  %30 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %31 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %30, i32 0, i32 33
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %29, i64* %35, align 8
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %165 [
    i32 130, label %37
    i32 128, label %143
    i32 129, label %143
  ]

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 5
  %40 = and i32 %39, 7
  %41 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %42 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %40, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 2
  %51 = and i32 %50, 7
  %52 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %53 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %51, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 %60, 1
  %62 = and i32 %61, 7
  %63 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %64 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %62, i32* %70, align 4
  %71 = load i64, i64* %8, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %8, align 8
  %73 = trunc i64 %71 to i32
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @AR5K_EEPROM_READ(i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %76, 15
  %78 = and i32 %77, 1
  %79 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %80 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %78
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %89, 12
  %91 = and i32 %90, 7
  %92 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %93 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %92, i32 0, i32 1
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %91, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = ashr i32 %100, 9
  %102 = and i32 %101, 7
  %103 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %104 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %102, i32* %110, align 4
  %111 = load i32, i32* %9, align 4
  %112 = ashr i32 %111, 6
  %113 = and i32 %112, 7
  %114 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %115 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %113, i32* %121, align 4
  %122 = load i32, i32* %9, align 4
  %123 = ashr i32 %122, 3
  %124 = and i32 %123, 7
  %125 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %126 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %125, i32 0, i32 0
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %124, i32* %132, align 4
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, 7
  %135 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %136 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %134, i32* %142, align 4
  br label %165

143:                                              ; preds = %3, %3
  %144 = load i32, i32* %9, align 4
  %145 = ashr i32 %144, 4
  %146 = and i32 %145, 7
  %147 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %148 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %147, i32 0, i32 0
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %146, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  %156 = and i32 %155, 7
  %157 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %158 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %157, i32 0, i32 1
  %159 = load i32**, i32*** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %156, i32* %164, align 4
  br label %165

165:                                              ; preds = %3, %143, %37
  %166 = load i64, i64* %8, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %8, align 8
  %168 = trunc i64 %166 to i32
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @AR5K_EEPROM_READ(i32 %168, i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = ashr i32 %171, 8
  %173 = and i32 %172, 255
  %174 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %175 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %173, i32* %179, align 4
  %180 = load i32, i32* %9, align 4
  %181 = and i32 %180, 255
  %182 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %183 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %181, i32* %187, align 4
  %188 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %189 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @AR5K_EEPROM_VERSION_3_2, align 8
  %192 = icmp sle i64 %190, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %165
  %194 = load i32, i32* %6, align 4
  %195 = icmp eq i32 %194, 130
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 15, i32 28
  %198 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %199 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %197, i32* %203, align 4
  br label %204

204:                                              ; preds = %193, %165
  %205 = load i64, i64* %8, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %8, align 8
  %207 = trunc i64 %205 to i32
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @AR5K_EEPROM_READ(i32 %207, i32 %208)
  %210 = load i32, i32* %9, align 4
  %211 = ashr i32 %210, 8
  %212 = and i32 %211, 255
  %213 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %214 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %212, i32* %218, align 4
  %219 = load i32, i32* %9, align 4
  %220 = and i32 %219, 255
  %221 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %222 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %220, i32* %226, align 4
  %227 = load i64, i64* %8, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %8, align 8
  %229 = trunc i64 %227 to i32
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @AR5K_EEPROM_READ(i32 %229, i32 %230)
  %232 = load i32, i32* %9, align 4
  %233 = ashr i32 %232, 8
  %234 = and i32 %233, 255
  %235 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %236 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %235, i32 0, i32 6
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %234, i32* %240, align 4
  %241 = load i32, i32* %9, align 4
  %242 = and i32 %241, 255
  %243 = and i32 %242, 128
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %257

245:                                              ; preds = %204
  %246 = load i32, i32* %9, align 4
  %247 = and i32 %246, 255
  %248 = xor i32 %247, 255
  %249 = add nsw i32 %248, 1
  %250 = sub nsw i32 0, %249
  %251 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %252 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %251, i32 0, i32 7
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 %250, i32* %256, align 4
  br label %266

257:                                              ; preds = %204
  %258 = load i32, i32* %9, align 4
  %259 = and i32 %258, 255
  %260 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %261 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %260, i32 0, i32 7
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %6, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %259, i32* %265, align 4
  br label %266

266:                                              ; preds = %257, %245
  %267 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %268 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @AR5K_EEPROM_VERSION_3_2, align 8
  %271 = icmp sle i64 %269, %270
  br i1 %271, label %272, label %283

272:                                              ; preds = %266
  %273 = load i32, i32* %6, align 4
  %274 = icmp eq i32 %273, 130
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i32 -54, i32 -1
  %277 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %278 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %277, i32 0, i32 7
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %6, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %276, i32* %282, align 4
  br label %283

283:                                              ; preds = %272, %266
  %284 = load i64, i64* %8, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %8, align 8
  %286 = trunc i64 %284 to i32
  %287 = load i32, i32* %9, align 4
  %288 = call i32 @AR5K_EEPROM_READ(i32 %286, i32 %287)
  %289 = load i32, i32* %9, align 4
  %290 = ashr i32 %289, 5
  %291 = and i32 %290, 255
  %292 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %293 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %292, i32 0, i32 8
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %291, i32* %297, align 4
  %298 = load i32, i32* %9, align 4
  %299 = ashr i32 %298, 1
  %300 = and i32 %299, 15
  %301 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %302 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %301, i32 0, i32 9
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %6, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 %300, i32* %306, align 4
  %307 = load i32, i32* %9, align 4
  %308 = and i32 %307, 1
  %309 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %310 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %309, i32 0, i32 10
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %6, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  store i32 %308, i32* %314, align 4
  %315 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %316 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @AR5K_EEPROM_VERSION_4_0, align 8
  %319 = icmp sge i64 %317, %318
  br i1 %319, label %320, label %333

320:                                              ; preds = %283
  %321 = load i32, i32* %6, align 4
  %322 = icmp ne i32 %321, 129
  br i1 %322, label %323, label %333

323:                                              ; preds = %320
  %324 = load i32, i32* %9, align 4
  %325 = ashr i32 %324, 13
  %326 = and i32 %325, 1
  %327 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %328 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %327, i32 0, i32 11
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %326, i32* %332, align 4
  br label %333

333:                                              ; preds = %323, %320, %283
  %334 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %335 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @AR5K_EEPROM_VERSION_3_3, align 8
  %338 = icmp sge i64 %336, %337
  br i1 %338, label %339, label %388

339:                                              ; preds = %333
  %340 = load i64, i64* %8, align 8
  %341 = add nsw i64 %340, 1
  store i64 %341, i64* %8, align 8
  %342 = trunc i64 %340 to i32
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @AR5K_EEPROM_READ(i32 %342, i32 %343)
  %345 = load i32, i32* %9, align 4
  %346 = ashr i32 %345, 6
  %347 = and i32 %346, 127
  %348 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %349 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %348, i32 0, i32 12
  %350 = load i32*, i32** %349, align 8
  %351 = load i32, i32* %6, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  store i32 %347, i32* %353, align 4
  %354 = load i32, i32* %6, align 4
  %355 = icmp eq i32 %354, 130
  br i1 %355, label %356, label %365

356:                                              ; preds = %339
  %357 = load i32, i32* %9, align 4
  %358 = and i32 %357, 63
  %359 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %360 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %359, i32 0, i32 13
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %6, align 4
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  store i32 %358, i32* %364, align 4
  br label %387

365:                                              ; preds = %339
  %366 = load i32, i32* %9, align 4
  %367 = and i32 %366, 7
  %368 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %369 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %368, i32 0, i32 0
  %370 = load i32**, i32*** %369, align 8
  %371 = load i32, i32* %6, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds i32*, i32** %370, i64 %372
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 0
  store i32 %367, i32* %375, align 4
  %376 = load i32, i32* %9, align 4
  %377 = ashr i32 %376, 3
  %378 = and i32 %377, 7
  %379 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %380 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %379, i32 0, i32 1
  %381 = load i32**, i32*** %380, align 8
  %382 = load i32, i32* %6, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i32*, i32** %381, i64 %383
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 0
  store i32 %378, i32* %386, align 4
  br label %387

387:                                              ; preds = %365, %356
  br label %388

388:                                              ; preds = %387, %333
  %389 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %390 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @AR5K_EEPROM_VERSION_3_4, align 8
  %393 = icmp slt i64 %391, %392
  br i1 %393, label %394, label %405

394:                                              ; preds = %388
  %395 = load i32, i32* @AR5K_EEPROM_I_GAIN, align 4
  %396 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %397 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %396, i32 0, i32 14
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %6, align 4
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  store i32 %395, i32* %401, align 4
  %402 = load i32, i32* @AR5K_EEPROM_CCK_OFDM_DELTA, align 4
  %403 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %404 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %403, i32 0, i32 15
  store i32 %402, i32* %404, align 8
  br label %452

405:                                              ; preds = %388
  %406 = load i32, i32* %9, align 4
  %407 = ashr i32 %406, 13
  %408 = and i32 %407, 7
  %409 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %410 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %409, i32 0, i32 14
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %6, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  store i32 %408, i32* %414, align 4
  %415 = load i64, i64* %8, align 8
  %416 = add nsw i64 %415, 1
  store i64 %416, i64* %8, align 8
  %417 = trunc i64 %415 to i32
  %418 = load i32, i32* %9, align 4
  %419 = call i32 @AR5K_EEPROM_READ(i32 %417, i32 %418)
  %420 = load i32, i32* %9, align 4
  %421 = shl i32 %420, 3
  %422 = and i32 %421, 56
  %423 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %424 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %423, i32 0, i32 14
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %6, align 4
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = or i32 %429, %422
  store i32 %430, i32* %428, align 4
  %431 = load i32, i32* %6, align 4
  %432 = icmp eq i32 %431, 128
  br i1 %432, label %433, label %451

433:                                              ; preds = %405
  %434 = load i32, i32* %9, align 4
  %435 = ashr i32 %434, 3
  %436 = and i32 %435, 255
  %437 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %438 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %437, i32 0, i32 15
  store i32 %436, i32* %438, align 8
  %439 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %440 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @AR5K_EEPROM_VERSION_4_6, align 8
  %443 = icmp sge i64 %441, %442
  br i1 %443, label %444, label %450

444:                                              ; preds = %433
  %445 = load i32, i32* %9, align 4
  %446 = ashr i32 %445, 11
  %447 = and i32 %446, 31
  %448 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %449 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %448, i32 0, i32 16
  store i32 %447, i32* %449, align 4
  br label %450

450:                                              ; preds = %444, %433
  br label %451

451:                                              ; preds = %450, %405
  br label %452

452:                                              ; preds = %451, %394
  %453 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %454 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @AR5K_EEPROM_VERSION_4_0, align 8
  %457 = icmp sge i64 %455, %456
  br i1 %457, label %458, label %480

458:                                              ; preds = %452
  %459 = load i32, i32* %6, align 4
  %460 = icmp eq i32 %459, 130
  br i1 %460, label %461, label %480

461:                                              ; preds = %458
  %462 = load i32, i32* %9, align 4
  %463 = ashr i32 %462, 8
  %464 = and i32 %463, 63
  %465 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %466 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %465, i32 0, i32 17
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %6, align 4
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  store i32 %464, i32* %470, align 4
  %471 = load i32, i32* %9, align 4
  %472 = ashr i32 %471, 3
  %473 = and i32 %472, 31
  %474 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %475 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %474, i32 0, i32 18
  %476 = load i32*, i32** %475, align 8
  %477 = load i32, i32* %6, align 4
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  store i32 %473, i32* %479, align 4
  br label %480

480:                                              ; preds = %461, %458, %452
  %481 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %482 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @AR5K_EEPROM_VERSION_4_0, align 8
  %485 = icmp slt i64 %483, %484
  br i1 %485, label %486, label %487

486:                                              ; preds = %480
  br label %972

487:                                              ; preds = %480
  %488 = load i32, i32* %6, align 4
  switch i32 %488, label %794 [
    i32 130, label %489
    i32 129, label %510
    i32 128, label %622
  ]

489:                                              ; preds = %487
  %490 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %491 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @AR5K_EEPROM_VERSION_4_1, align 8
  %494 = icmp slt i64 %492, %493
  br i1 %494, label %495, label %496

495:                                              ; preds = %489
  br label %794

496:                                              ; preds = %489
  %497 = load i64, i64* %8, align 8
  %498 = add nsw i64 %497, 1
  store i64 %498, i64* %8, align 8
  %499 = trunc i64 %497 to i32
  %500 = load i32, i32* %9, align 4
  %501 = call i32 @AR5K_EEPROM_READ(i32 %499, i32 %500)
  %502 = load i32, i32* %9, align 4
  %503 = and i32 %502, 63
  %504 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %505 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %504, i32 0, i32 19
  %506 = load i32*, i32** %505, align 8
  %507 = load i32, i32* %6, align 4
  %508 = zext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  store i32 %503, i32* %509, align 4
  br label %794

510:                                              ; preds = %487
  %511 = load i64, i64* %8, align 8
  %512 = add nsw i64 %511, 1
  store i64 %512, i64* %8, align 8
  %513 = trunc i64 %511 to i32
  %514 = load i32, i32* %9, align 4
  %515 = call i32 @AR5K_EEPROM_READ(i32 %513, i32 %514)
  %516 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %517 = load i32, i32* %9, align 4
  %518 = and i32 %517, 255
  %519 = load i32, i32* %6, align 4
  %520 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %516, i32 %518, i32 %519)
  %521 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %522 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %521, i32 0, i32 32
  %523 = load %struct.TYPE_5__*, %struct.TYPE_5__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %523, i64 0
  %525 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %524, i32 0, i32 0
  store i8* %520, i8** %525, align 8
  %526 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %527 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %526, i32 0, i32 32
  %528 = load %struct.TYPE_5__*, %struct.TYPE_5__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i64 0
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i32 0, i32 0
  %531 = load i8*, i8** %530, align 8
  %532 = load i8*, i8** @AR5K_EEPROM_CHANNEL_DIS, align 8
  %533 = icmp ne i8* %531, %532
  br i1 %533, label %534, label %543

534:                                              ; preds = %510
  %535 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %536 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %535, i32 0, i32 30
  %537 = load i64*, i64** %536, align 8
  %538 = load i32, i32* %6, align 4
  %539 = zext i32 %538 to i64
  %540 = getelementptr inbounds i64, i64* %537, i64 %539
  %541 = load i64, i64* %540, align 8
  %542 = add nsw i64 %541, 1
  store i64 %542, i64* %540, align 8
  br label %543

543:                                              ; preds = %534, %510
  %544 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %545 = load i32, i32* %9, align 4
  %546 = ashr i32 %545, 8
  %547 = and i32 %546, 255
  %548 = load i32, i32* %6, align 4
  %549 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %544, i32 %547, i32 %548)
  %550 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %551 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %550, i32 0, i32 32
  %552 = load %struct.TYPE_5__*, %struct.TYPE_5__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %552, i64 1
  %554 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %553, i32 0, i32 0
  store i8* %549, i8** %554, align 8
  %555 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %556 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %555, i32 0, i32 32
  %557 = load %struct.TYPE_5__*, %struct.TYPE_5__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %557, i64 1
  %559 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %558, i32 0, i32 0
  %560 = load i8*, i8** %559, align 8
  %561 = load i8*, i8** @AR5K_EEPROM_CHANNEL_DIS, align 8
  %562 = icmp ne i8* %560, %561
  br i1 %562, label %563, label %572

563:                                              ; preds = %543
  %564 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %565 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %564, i32 0, i32 30
  %566 = load i64*, i64** %565, align 8
  %567 = load i32, i32* %6, align 4
  %568 = zext i32 %567 to i64
  %569 = getelementptr inbounds i64, i64* %566, i64 %568
  %570 = load i64, i64* %569, align 8
  %571 = add nsw i64 %570, 1
  store i64 %571, i64* %569, align 8
  br label %572

572:                                              ; preds = %563, %543
  %573 = load i64, i64* %8, align 8
  %574 = add nsw i64 %573, 1
  store i64 %574, i64* %8, align 8
  %575 = trunc i64 %573 to i32
  %576 = load i32, i32* %9, align 4
  %577 = call i32 @AR5K_EEPROM_READ(i32 %575, i32 %576)
  %578 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %579 = load i32, i32* %9, align 4
  %580 = and i32 %579, 255
  %581 = load i32, i32* %6, align 4
  %582 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %578, i32 %580, i32 %581)
  %583 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %584 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %583, i32 0, i32 32
  %585 = load %struct.TYPE_5__*, %struct.TYPE_5__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %585, i64 2
  %587 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %586, i32 0, i32 0
  store i8* %582, i8** %587, align 8
  %588 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %589 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %588, i32 0, i32 32
  %590 = load %struct.TYPE_5__*, %struct.TYPE_5__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %590, i64 2
  %592 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %591, i32 0, i32 0
  %593 = load i8*, i8** %592, align 8
  %594 = load i8*, i8** @AR5K_EEPROM_CHANNEL_DIS, align 8
  %595 = icmp ne i8* %593, %594
  br i1 %595, label %596, label %605

596:                                              ; preds = %572
  %597 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %598 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %597, i32 0, i32 30
  %599 = load i64*, i64** %598, align 8
  %600 = load i32, i32* %6, align 4
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds i64, i64* %599, i64 %601
  %603 = load i64, i64* %602, align 8
  %604 = add nsw i64 %603, 1
  store i64 %604, i64* %602, align 8
  br label %605

605:                                              ; preds = %596, %572
  %606 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %607 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = load i64, i64* @AR5K_EEPROM_VERSION_4_1, align 8
  %610 = icmp sge i64 %608, %609
  br i1 %610, label %611, label %621

611:                                              ; preds = %605
  %612 = load i32, i32* %9, align 4
  %613 = ashr i32 %612, 8
  %614 = and i32 %613, 63
  %615 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %616 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %615, i32 0, i32 19
  %617 = load i32*, i32** %616, align 8
  %618 = load i32, i32* %6, align 4
  %619 = zext i32 %618 to i64
  %620 = getelementptr inbounds i32, i32* %617, i64 %619
  store i32 %614, i32* %620, align 4
  br label %621

621:                                              ; preds = %611, %605
  br label %794

622:                                              ; preds = %487
  %623 = load i64, i64* %8, align 8
  %624 = add nsw i64 %623, 1
  store i64 %624, i64* %8, align 8
  %625 = trunc i64 %623 to i32
  %626 = load i32, i32* %9, align 4
  %627 = call i32 @AR5K_EEPROM_READ(i32 %625, i32 %626)
  %628 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %629 = load i32, i32* %9, align 4
  %630 = and i32 %629, 255
  %631 = load i32, i32* %6, align 4
  %632 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %628, i32 %630, i32 %631)
  %633 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %634 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %633, i32 0, i32 31
  %635 = load %struct.TYPE_6__*, %struct.TYPE_6__** %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %635, i64 0
  %637 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %636, i32 0, i32 0
  store i8* %632, i8** %637, align 8
  %638 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %639 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %638, i32 0, i32 31
  %640 = load %struct.TYPE_6__*, %struct.TYPE_6__** %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %640, i64 0
  %642 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %641, i32 0, i32 0
  %643 = load i8*, i8** %642, align 8
  %644 = load i8*, i8** @AR5K_EEPROM_CHANNEL_DIS, align 8
  %645 = icmp ne i8* %643, %644
  br i1 %645, label %646, label %655

646:                                              ; preds = %622
  %647 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %648 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %647, i32 0, i32 30
  %649 = load i64*, i64** %648, align 8
  %650 = load i32, i32* %6, align 4
  %651 = zext i32 %650 to i64
  %652 = getelementptr inbounds i64, i64* %649, i64 %651
  %653 = load i64, i64* %652, align 8
  %654 = add nsw i64 %653, 1
  store i64 %654, i64* %652, align 8
  br label %655

655:                                              ; preds = %646, %622
  %656 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %657 = load i32, i32* %9, align 4
  %658 = ashr i32 %657, 8
  %659 = and i32 %658, 255
  %660 = load i32, i32* %6, align 4
  %661 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %656, i32 %659, i32 %660)
  %662 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %663 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %662, i32 0, i32 31
  %664 = load %struct.TYPE_6__*, %struct.TYPE_6__** %663, align 8
  %665 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %664, i64 1
  %666 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %665, i32 0, i32 0
  store i8* %661, i8** %666, align 8
  %667 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %668 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %667, i32 0, i32 31
  %669 = load %struct.TYPE_6__*, %struct.TYPE_6__** %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %669, i64 1
  %671 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %670, i32 0, i32 0
  %672 = load i8*, i8** %671, align 8
  %673 = load i8*, i8** @AR5K_EEPROM_CHANNEL_DIS, align 8
  %674 = icmp ne i8* %672, %673
  br i1 %674, label %675, label %684

675:                                              ; preds = %655
  %676 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %677 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %676, i32 0, i32 30
  %678 = load i64*, i64** %677, align 8
  %679 = load i32, i32* %6, align 4
  %680 = zext i32 %679 to i64
  %681 = getelementptr inbounds i64, i64* %678, i64 %680
  %682 = load i64, i64* %681, align 8
  %683 = add nsw i64 %682, 1
  store i64 %683, i64* %681, align 8
  br label %684

684:                                              ; preds = %675, %655
  %685 = load i64, i64* %8, align 8
  %686 = add nsw i64 %685, 1
  store i64 %686, i64* %8, align 8
  %687 = trunc i64 %685 to i32
  %688 = load i32, i32* %9, align 4
  %689 = call i32 @AR5K_EEPROM_READ(i32 %687, i32 %688)
  %690 = load i32, i32* %9, align 4
  %691 = and i32 %690, 127
  %692 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %693 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %692, i32 0, i32 20
  %694 = load i32*, i32** %693, align 8
  %695 = load i32, i32* %6, align 4
  %696 = zext i32 %695 to i64
  %697 = getelementptr inbounds i32, i32* %694, i64 %696
  store i32 %691, i32* %697, align 4
  %698 = load i32, i32* %9, align 4
  %699 = ashr i32 %698, 7
  %700 = and i32 %699, 63
  %701 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %702 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %701, i32 0, i32 13
  %703 = load i32*, i32** %702, align 8
  %704 = load i32, i32* %6, align 4
  %705 = zext i32 %704 to i64
  %706 = getelementptr inbounds i32, i32* %703, i64 %705
  store i32 %700, i32* %706, align 4
  %707 = load i64, i64* %8, align 8
  %708 = add nsw i64 %707, 1
  store i64 %708, i64* %8, align 8
  %709 = trunc i64 %707 to i32
  %710 = load i32, i32* %9, align 4
  %711 = call i32 @AR5K_EEPROM_READ(i32 %709, i32 %710)
  %712 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %713 = load i32, i32* %9, align 4
  %714 = and i32 %713, 255
  %715 = load i32, i32* %6, align 4
  %716 = call i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info* %712, i32 %714, i32 %715)
  %717 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %718 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %717, i32 0, i32 31
  %719 = load %struct.TYPE_6__*, %struct.TYPE_6__** %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %719, i64 2
  %721 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %720, i32 0, i32 0
  store i8* %716, i8** %721, align 8
  %722 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %723 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %722, i32 0, i32 31
  %724 = load %struct.TYPE_6__*, %struct.TYPE_6__** %723, align 8
  %725 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %724, i64 2
  %726 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %725, i32 0, i32 0
  %727 = load i8*, i8** %726, align 8
  %728 = load i8*, i8** @AR5K_EEPROM_CHANNEL_DIS, align 8
  %729 = icmp ne i8* %727, %728
  br i1 %729, label %730, label %739

730:                                              ; preds = %684
  %731 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %732 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %731, i32 0, i32 30
  %733 = load i64*, i64** %732, align 8
  %734 = load i32, i32* %6, align 4
  %735 = zext i32 %734 to i64
  %736 = getelementptr inbounds i64, i64* %733, i64 %735
  %737 = load i64, i64* %736, align 8
  %738 = add nsw i64 %737, 1
  store i64 %738, i64* %736, align 8
  br label %739

739:                                              ; preds = %730, %684
  %740 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %741 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %740, i32 0, i32 0
  %742 = load i64, i64* %741, align 8
  %743 = load i64, i64* @AR5K_EEPROM_VERSION_4_1, align 8
  %744 = icmp sge i64 %742, %743
  br i1 %744, label %745, label %755

745:                                              ; preds = %739
  %746 = load i32, i32* %9, align 4
  %747 = ashr i32 %746, 8
  %748 = and i32 %747, 63
  %749 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %750 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %749, i32 0, i32 19
  %751 = load i32*, i32** %750, align 8
  %752 = load i32, i32* %6, align 4
  %753 = zext i32 %752 to i64
  %754 = getelementptr inbounds i32, i32* %751, i64 %753
  store i32 %748, i32* %754, align 4
  br label %755

755:                                              ; preds = %745, %739
  %756 = load i64, i64* %8, align 8
  %757 = add nsw i64 %756, 1
  store i64 %757, i64* %8, align 8
  %758 = trunc i64 %756 to i32
  %759 = load i32, i32* %9, align 4
  %760 = call i32 @AR5K_EEPROM_READ(i32 %758, i32 %759)
  %761 = load i32, i32* %9, align 4
  %762 = ashr i32 %761, 5
  %763 = and i32 %762, 63
  %764 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %765 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %764, i32 0, i32 17
  %766 = load i32*, i32** %765, align 8
  %767 = load i32, i32* %6, align 4
  %768 = zext i32 %767 to i64
  %769 = getelementptr inbounds i32, i32* %766, i64 %768
  store i32 %763, i32* %769, align 4
  %770 = load i32, i32* %9, align 4
  %771 = and i32 %770, 31
  %772 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %773 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %772, i32 0, i32 18
  %774 = load i32*, i32** %773, align 8
  %775 = load i32, i32* %6, align 4
  %776 = zext i32 %775 to i64
  %777 = getelementptr inbounds i32, i32* %774, i64 %776
  store i32 %771, i32* %777, align 4
  %778 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %779 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %778, i32 0, i32 0
  %780 = load i64, i64* %779, align 8
  %781 = load i64, i64* @AR5K_EEPROM_VERSION_4_2, align 8
  %782 = icmp sge i64 %780, %781
  br i1 %782, label %783, label %793

783:                                              ; preds = %755
  %784 = load i64, i64* %8, align 8
  %785 = add nsw i64 %784, 1
  store i64 %785, i64* %8, align 8
  %786 = trunc i64 %784 to i32
  %787 = load i32, i32* %9, align 4
  %788 = call i32 @AR5K_EEPROM_READ(i32 %786, i32 %787)
  %789 = load i32, i32* %9, align 4
  %790 = and i32 %789, 255
  %791 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %792 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %791, i32 0, i32 21
  store i32 %790, i32* %792, align 8
  br label %793

793:                                              ; preds = %783, %755
  br label %794

794:                                              ; preds = %487, %793, %621, %496, %495
  %795 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %796 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %795, i32 0, i32 22
  %797 = load i64, i64* %796, align 8
  %798 = load i64, i64* @AR5K_EEPROM_VERSION_5_0, align 8
  %799 = icmp slt i64 %797, %798
  br i1 %799, label %800, label %801

800:                                              ; preds = %794
  br label %972

801:                                              ; preds = %794
  %802 = load i32, i32* %6, align 4
  switch i32 %802, label %971 [
    i32 130, label %803
    i32 128, label %893
  ]

803:                                              ; preds = %801
  %804 = load i32, i32* %9, align 4
  %805 = ashr i32 %804, 6
  %806 = and i32 %805, 127
  %807 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %808 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %807, i32 0, i32 23
  %809 = load i32*, i32** %808, align 8
  %810 = load i32, i32* %6, align 4
  %811 = zext i32 %810 to i64
  %812 = getelementptr inbounds i32, i32* %809, i64 %811
  store i32 %806, i32* %812, align 4
  %813 = load i32, i32* %9, align 4
  %814 = ashr i32 %813, 13
  %815 = and i32 %814, 7
  %816 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %817 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %816, i32 0, i32 24
  %818 = load i32*, i32** %817, align 8
  %819 = load i32, i32* %6, align 4
  %820 = zext i32 %819 to i64
  %821 = getelementptr inbounds i32, i32* %818, i64 %820
  store i32 %815, i32* %821, align 4
  %822 = load i64, i64* %8, align 8
  %823 = add nsw i64 %822, 1
  store i64 %823, i64* %8, align 8
  %824 = trunc i64 %822 to i32
  %825 = load i32, i32* %9, align 4
  %826 = call i32 @AR5K_EEPROM_READ(i32 %824, i32 %825)
  %827 = load i32, i32* %9, align 4
  %828 = and i32 %827, 7
  %829 = shl i32 %828, 3
  %830 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %831 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %830, i32 0, i32 24
  %832 = load i32*, i32** %831, align 8
  %833 = load i32, i32* %6, align 4
  %834 = zext i32 %833 to i64
  %835 = getelementptr inbounds i32, i32* %832, i64 %834
  %836 = load i32, i32* %835, align 4
  %837 = or i32 %836, %829
  store i32 %837, i32* %835, align 4
  %838 = load i32, i32* %9, align 4
  %839 = ashr i32 %838, 3
  %840 = and i32 %839, 63
  %841 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %842 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %841, i32 0, i32 25
  %843 = load i32*, i32** %842, align 8
  %844 = load i32, i32* %6, align 4
  %845 = zext i32 %844 to i64
  %846 = getelementptr inbounds i32, i32* %843, i64 %845
  store i32 %840, i32* %846, align 4
  %847 = load i32, i32* %9, align 4
  %848 = ashr i32 %847, 9
  %849 = and i32 %848, 127
  %850 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %851 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %850, i32 0, i32 26
  %852 = load i32*, i32** %851, align 8
  %853 = load i32, i32* %6, align 4
  %854 = zext i32 %853 to i64
  %855 = getelementptr inbounds i32, i32* %852, i64 %854
  store i32 %849, i32* %855, align 4
  %856 = load i64, i64* %8, align 8
  %857 = add nsw i64 %856, 1
  store i64 %857, i64* %8, align 8
  %858 = trunc i64 %856 to i32
  %859 = load i32, i32* %9, align 4
  %860 = call i32 @AR5K_EEPROM_READ(i32 %858, i32 %859)
  %861 = load i32, i32* %9, align 4
  %862 = and i32 %861, 1
  %863 = shl i32 %862, 7
  %864 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %865 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %864, i32 0, i32 26
  %866 = load i32*, i32** %865, align 8
  %867 = load i32, i32* %6, align 4
  %868 = zext i32 %867 to i64
  %869 = getelementptr inbounds i32, i32* %866, i64 %868
  %870 = load i32, i32* %869, align 4
  %871 = or i32 %870, %863
  store i32 %871, i32* %869, align 4
  %872 = load i32, i32* %9, align 4
  %873 = ashr i32 %872, 1
  %874 = and i32 %873, 255
  %875 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %876 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %875, i32 0, i32 27
  %877 = load i32*, i32** %876, align 8
  %878 = load i32, i32* %6, align 4
  %879 = zext i32 %878 to i64
  %880 = getelementptr inbounds i32, i32* %877, i64 %879
  store i32 %874, i32* %880, align 4
  %881 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %882 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %881, i32 0, i32 29
  %883 = load i32, i32* %882, align 4
  %884 = call i32 @AR5K_EEPROM_EEMAP(i32 %883)
  %885 = icmp sge i32 %884, 2
  br i1 %885, label %886, label %892

886:                                              ; preds = %803
  %887 = load i32, i32* %9, align 4
  %888 = ashr i32 %887, 9
  %889 = and i32 %888, 15
  %890 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %891 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %890, i32 0, i32 28
  store i32 %889, i32* %891, align 8
  br label %892

892:                                              ; preds = %886, %803
  br label %971

893:                                              ; preds = %801
  %894 = load i32, i32* %9, align 4
  %895 = ashr i32 %894, 8
  %896 = and i32 %895, 127
  %897 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %898 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %897, i32 0, i32 23
  %899 = load i32*, i32** %898, align 8
  %900 = load i32, i32* %6, align 4
  %901 = zext i32 %900 to i64
  %902 = getelementptr inbounds i32, i32* %899, i64 %901
  store i32 %896, i32* %902, align 4
  %903 = load i32, i32* %9, align 4
  %904 = ashr i32 %903, 15
  %905 = and i32 %904, 7
  %906 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %907 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %906, i32 0, i32 24
  %908 = load i32*, i32** %907, align 8
  %909 = load i32, i32* %6, align 4
  %910 = zext i32 %909 to i64
  %911 = getelementptr inbounds i32, i32* %908, i64 %910
  store i32 %905, i32* %911, align 4
  %912 = load i64, i64* %8, align 8
  %913 = add nsw i64 %912, 1
  store i64 %913, i64* %8, align 8
  %914 = trunc i64 %912 to i32
  %915 = load i32, i32* %9, align 4
  %916 = call i32 @AR5K_EEPROM_READ(i32 %914, i32 %915)
  %917 = load i32, i32* %9, align 4
  %918 = and i32 %917, 31
  %919 = shl i32 %918, 1
  %920 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %921 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %920, i32 0, i32 24
  %922 = load i32*, i32** %921, align 8
  %923 = load i32, i32* %6, align 4
  %924 = zext i32 %923 to i64
  %925 = getelementptr inbounds i32, i32* %922, i64 %924
  %926 = load i32, i32* %925, align 4
  %927 = or i32 %926, %919
  store i32 %927, i32* %925, align 4
  %928 = load i32, i32* %9, align 4
  %929 = ashr i32 %928, 5
  %930 = and i32 %929, 63
  %931 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %932 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %931, i32 0, i32 25
  %933 = load i32*, i32** %932, align 8
  %934 = load i32, i32* %6, align 4
  %935 = zext i32 %934 to i64
  %936 = getelementptr inbounds i32, i32* %933, i64 %935
  store i32 %930, i32* %936, align 4
  %937 = load i32, i32* %9, align 4
  %938 = ashr i32 %937, 11
  %939 = and i32 %938, 127
  %940 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %941 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %940, i32 0, i32 26
  %942 = load i32*, i32** %941, align 8
  %943 = load i32, i32* %6, align 4
  %944 = zext i32 %943 to i64
  %945 = getelementptr inbounds i32, i32* %942, i64 %944
  store i32 %939, i32* %945, align 4
  %946 = load i64, i64* %8, align 8
  %947 = add nsw i64 %946, 1
  store i64 %947, i64* %8, align 8
  %948 = trunc i64 %946 to i32
  %949 = load i32, i32* %9, align 4
  %950 = call i32 @AR5K_EEPROM_READ(i32 %948, i32 %949)
  %951 = load i32, i32* %9, align 4
  %952 = and i32 %951, 7
  %953 = shl i32 %952, 5
  %954 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %955 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %954, i32 0, i32 26
  %956 = load i32*, i32** %955, align 8
  %957 = load i32, i32* %6, align 4
  %958 = zext i32 %957 to i64
  %959 = getelementptr inbounds i32, i32* %956, i64 %958
  %960 = load i32, i32* %959, align 4
  %961 = or i32 %960, %953
  store i32 %961, i32* %959, align 4
  %962 = load i32, i32* %9, align 4
  %963 = ashr i32 %962, 3
  %964 = and i32 %963, 255
  %965 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %966 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %965, i32 0, i32 27
  %967 = load i32*, i32** %966, align 8
  %968 = load i32, i32* %6, align 4
  %969 = zext i32 %968 to i64
  %970 = getelementptr inbounds i32, i32* %967, i64 %969
  store i32 %964, i32* %970, align 4
  br label %971

971:                                              ; preds = %801, %893, %892
  br label %972

972:                                              ; preds = %971, %800, %486
  %973 = load i64, i64* %8, align 8
  %974 = load i64*, i64** %5, align 8
  store i64 %973, i64* %974, align 8
  ret i32 0
}

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

declare dso_local i8* @ath5k_eeprom_bin2freq(%struct.ath5k_eeprom_info*, i32, i32) #1

declare dso_local i32 @AR5K_EEPROM_EEMAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
