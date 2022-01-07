; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_texture_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_texture_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.r100_cs_track = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.radeon_bo*, i64, i32 }
%struct.radeon_bo = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"No texture bound to unit %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CHIP_R300 = common dso_local global i64 0, align 8
@CHIP_RV515 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid texture coordinate type %u for unit %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Texture of unit %u needs %lu bytes but is %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.r100_cs_track*)* @r100_cs_track_texture_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_cs_track_texture_check(%struct.radeon_device* %0, %struct.r100_cs_track* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.r100_cs_track*, align 8
  %6 = alloca %struct.radeon_bo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.r100_cs_track* %1, %struct.r100_cs_track** %5, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %347, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %17 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %350

20:                                               ; preds = %14
  %21 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %22 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %347

31:                                               ; preds = %20
  %32 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %33 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 14
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %347

42:                                               ; preds = %31
  %43 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %44 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 13
  %50 = load %struct.radeon_bo*, %struct.radeon_bo** %49, align 8
  store %struct.radeon_bo* %50, %struct.radeon_bo** %6, align 8
  %51 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %52 = icmp eq %struct.radeon_bo* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %351

58:                                               ; preds = %42
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %270, %58
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %62 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ule i32 %60, %68
  br i1 %69, label %70, label %273

70:                                               ; preds = %59
  %71 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %72 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 12
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %120

80:                                               ; preds = %70
  %81 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHIP_R300, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %80
  %87 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %88 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %96 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sdiv i32 %94, %102
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 1, %104
  %106 = sdiv i32 %103, %105
  store i32 %106, i32* %10, align 4
  br label %119

107:                                              ; preds = %80
  %108 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %109 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = shl i32 1, %116
  %118 = sdiv i32 %115, %117
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %107, %86
  br label %163

120:                                              ; preds = %70
  %121 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %122 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %10, align 4
  %129 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CHIP_RV515, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %120
  %135 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %136 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %134, %120
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %9, align 4
  %148 = shl i32 1, %147
  %149 = udiv i32 %146, %148
  store i32 %149, i32* %10, align 4
  %150 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %151 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %150, i32 0, i32 1
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 11
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %145
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @roundup_pow_of_two(i32 %160)
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %159, %145
  br label %163

163:                                              ; preds = %162, %119
  %164 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %165 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %164, i32 0, i32 1
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %11, align 4
  %172 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %173 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CHIP_RV515, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %163
  %178 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %179 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %178, i32 0, i32 1
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %177, %163
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %9, align 4
  %191 = shl i32 1, %190
  %192 = udiv i32 %189, %191
  store i32 %192, i32* %11, align 4
  %193 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %194 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %193, i32 0, i32 1
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 10
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %188
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @roundup_pow_of_two(i32 %203)
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %202, %188
  %206 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %207 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %206, i32 0, i32 1
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %232

215:                                              ; preds = %205
  %216 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %217 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %216, i32 0, i32 1
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 8
  %224 = shl i32 1, %223
  %225 = load i32, i32* %9, align 4
  %226 = shl i32 1, %225
  %227 = sdiv i32 %224, %226
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* %12, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %215
  store i32 1, i32* %12, align 4
  br label %231

231:                                              ; preds = %230, %215
  br label %233

232:                                              ; preds = %205
  store i32 1, i32* %12, align 4
  br label %233

233:                                              ; preds = %232, %231
  %234 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %235 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %234, i32 0, i32 1
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 9
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %260

243:                                              ; preds = %233
  %244 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %245 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %244, i32 0, i32 1
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 9
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @r100_track_compress_size(i64 %251, i32 %252, i32 %253)
  %255 = load i32, i32* %12, align 4
  %256 = mul i32 %254, %255
  %257 = zext i32 %256 to i64
  %258 = load i64, i64* %7, align 8
  %259 = add i64 %258, %257
  store i64 %259, i64* %7, align 8
  br label %269

260:                                              ; preds = %233
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %11, align 4
  %263 = mul i32 %261, %262
  %264 = load i32, i32* %12, align 4
  %265 = mul i32 %263, %264
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %7, align 8
  %268 = add i64 %267, %266
  store i64 %268, i64* %7, align 8
  br label %269

269:                                              ; preds = %260, %243
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %9, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %9, align 4
  br label %59

273:                                              ; preds = %59
  %274 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %275 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %274, i32 0, i32 1
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = load i32, i32* %8, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = load i64, i64* %7, align 8
  %284 = mul i64 %283, %282
  store i64 %284, i64* %7, align 8
  %285 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %286 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %285, i32 0, i32 1
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 4
  switch i32 %292, label %313 [
    i32 0, label %293
    i32 1, label %293
    i32 2, label %294
  ]

293:                                              ; preds = %273, %273
  br label %326

294:                                              ; preds = %273
  %295 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %296 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %294
  %300 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %301 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %302 = load i32, i32* %8, align 4
  %303 = call i32 @r100_cs_track_cube(%struct.radeon_device* %300, %struct.r100_cs_track* %301, i32 %302)
  store i32 %303, i32* %13, align 4
  %304 = load i32, i32* %13, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %299
  %307 = load i32, i32* %13, align 4
  store i32 %307, i32* %3, align 4
  br label %351

308:                                              ; preds = %299
  br label %312

309:                                              ; preds = %294
  %310 = load i64, i64* %7, align 8
  %311 = mul i64 %310, 6
  store i64 %311, i64* %7, align 8
  br label %312

312:                                              ; preds = %309, %308
  br label %326

313:                                              ; preds = %273
  %314 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %315 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %314, i32 0, i32 1
  %316 = load %struct.TYPE_2__*, %struct.TYPE_2__** %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %8, align 4
  %323 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %321, i32 %322)
  %324 = load i32, i32* @EINVAL, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %3, align 4
  br label %351

326:                                              ; preds = %312, %293
  %327 = load i64, i64* %7, align 8
  %328 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %329 = call i64 @radeon_bo_size(%struct.radeon_bo* %328)
  %330 = icmp ugt i64 %327, %329
  br i1 %330, label %331, label %346

331:                                              ; preds = %326
  %332 = load i32, i32* %8, align 4
  %333 = load i64, i64* %7, align 8
  %334 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %335 = call i64 @radeon_bo_size(%struct.radeon_bo* %334)
  %336 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %332, i64 %333, i64 %335)
  %337 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %338 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %337, i32 0, i32 1
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i64 %341
  %343 = call i32 @r100_cs_track_texture_print(%struct.TYPE_2__* %342)
  %344 = load i32, i32* @EINVAL, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %3, align 4
  br label %351

346:                                              ; preds = %326
  br label %347

347:                                              ; preds = %346, %41, %30
  %348 = load i32, i32* %8, align 4
  %349 = add i32 %348, 1
  store i32 %349, i32* %8, align 4
  br label %14

350:                                              ; preds = %14
  store i32 0, i32* %3, align 4
  br label %351

351:                                              ; preds = %350, %331, %313, %306, %53
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @r100_track_compress_size(i64, i32, i32) #1

declare dso_local i32 @r100_cs_track_cube(%struct.radeon_device*, %struct.r100_cs_track*, i32) #1

declare dso_local i64 @radeon_bo_size(%struct.radeon_bo*) #1

declare dso_local i32 @r100_cs_track_texture_print(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
