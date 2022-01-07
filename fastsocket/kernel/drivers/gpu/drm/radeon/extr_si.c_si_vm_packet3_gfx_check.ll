; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_gfx_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_gfx_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_cs_packet = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i64 0, align 8
@PACKET3_SET_CONFIG_REG_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"bad PACKET3_SET_CONFIG_REG\0A\00", align 1
@PACKET3_CP_DMA_CMD_SAS = common dso_local global i64 0, align 8
@PACKET3_CP_DMA_CMD_SAIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"CP DMA Bad SRC register\0A\00", align 1
@PACKET3_CP_DMA_CMD_DAS = common dso_local global i64 0, align 8
@PACKET3_CP_DMA_CMD_DAIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"CP DMA Bad DST register\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid GFX packet3: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64*, %struct.radeon_cs_packet*)* @si_vm_packet3_gfx_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_vm_packet3_gfx_check(%struct.radeon_device* %0, i64* %1, %struct.radeon_cs_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.radeon_cs_packet*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.radeon_cs_packet* %2, %struct.radeon_cs_packet** %7, align 8
  %16 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %8, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %25 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %304 [
    i32 146, label %27
    i32 141, label %27
    i32 175, label %27
    i32 151, label %27
    i32 168, label %27
    i32 167, label %27
    i32 178, label %27
    i32 128, label %27
    i32 176, label %27
    i32 177, label %27
    i32 144, label %27
    i32 137, label %27
    i32 174, label %27
    i32 142, label %27
    i32 158, label %27
    i32 163, label %27
    i32 152, label %27
    i32 166, label %27
    i32 172, label %27
    i32 150, label %27
    i32 157, label %27
    i32 165, label %27
    i32 164, label %27
    i32 145, label %27
    i32 161, label %27
    i32 134, label %27
    i32 159, label %27
    i32 160, label %27
    i32 162, label %27
    i32 147, label %27
    i32 130, label %27
    i32 149, label %27
    i32 143, label %27
    i32 133, label %27
    i32 156, label %27
    i32 155, label %27
    i32 154, label %27
    i32 139, label %27
    i32 138, label %27
    i32 136, label %27
    i32 135, label %27
    i32 153, label %27
    i32 131, label %27
    i32 132, label %27
    i32 148, label %27
    i32 171, label %28
    i32 129, label %47
    i32 173, label %96
    i32 170, label %115
    i32 140, label %134
    i32 169, label %186
  ]

27:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %311

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = and i64 %29, 3840
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 3
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %37, 4
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @si_vm_reg_valid(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %312

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %28
  br label %311

47:                                               ; preds = %3
  %48 = load i64, i64* %9, align 8
  %49 = and i64 %48, 3840
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %47
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %56, 4
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = and i64 %58, 65536
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %51
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @si_vm_reg_valid(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %312

68:                                               ; preds = %61
  br label %94

69:                                               ; preds = %51
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %90, %69
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %73 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %71, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %13, align 8
  %81 = mul i64 4, %80
  %82 = add i64 %79, %81
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @si_vm_reg_valid(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %312

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %70

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93, %68
  br label %95

95:                                               ; preds = %94, %47
  br label %311

96:                                               ; preds = %3
  %97 = load i64, i64* %9, align 8
  %98 = and i64 %97, 256
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, 5
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = mul i64 %105, 4
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @si_vm_reg_valid(i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %100
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %312

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %96
  br label %311

115:                                              ; preds = %3
  %116 = load i64, i64* %9, align 8
  %117 = and i64 %116, 2
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %115
  %120 = load i64*, i64** %6, align 8
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %121, 3
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = mul i64 %124, 4
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @si_vm_reg_valid(i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %119
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %312

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %115
  br label %311

134:                                              ; preds = %3
  %135 = load i64, i64* %9, align 8
  %136 = shl i64 %135, 2
  %137 = load i64, i64* @PACKET3_SET_CONFIG_REG_START, align 8
  %138 = add i64 %136, %137
  store i64 %138, i64* %10, align 8
  %139 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %140 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 4, %141
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %10, align 8
  %145 = add i64 %143, %144
  %146 = sub i64 %145, 4
  store i64 %146, i64* %11, align 8
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* @PACKET3_SET_CONFIG_REG_START, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %158, label %150

150:                                              ; preds = %134
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* @PACKET3_SET_CONFIG_REG_END, align 8
  %153 = icmp uge i64 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i64, i64* %11, align 8
  %156 = load i64, i64* @PACKET3_SET_CONFIG_REG_END, align 8
  %157 = icmp uge i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154, %150, %134
  %159 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %312

162:                                              ; preds = %154
  store i64 0, i64* %13, align 8
  br label %163

163:                                              ; preds = %182, %162
  %164 = load i64, i64* %13, align 8
  %165 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %166 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp ult i64 %164, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %163
  %171 = load i64, i64* %10, align 8
  %172 = load i64, i64* %13, align 8
  %173 = mul i64 4, %172
  %174 = add i64 %171, %173
  store i64 %174, i64* %12, align 8
  %175 = load i64, i64* %12, align 8
  %176 = call i32 @si_vm_reg_valid(i64 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %170
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %312

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* %13, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %13, align 8
  br label %163

185:                                              ; preds = %163
  br label %311

186:                                              ; preds = %3
  %187 = load i64*, i64** %6, align 8
  %188 = load i64, i64* %8, align 8
  %189 = add i64 %188, 4
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %14, align 8
  %192 = load i64*, i64** %6, align 8
  %193 = load i64, i64* %8, align 8
  %194 = add i64 %193, 1
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %15, align 8
  %197 = load i64, i64* %14, align 8
  %198 = load i64, i64* @PACKET3_CP_DMA_CMD_SAS, align 8
  %199 = and i64 %197, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %248

201:                                              ; preds = %186
  %202 = load i64, i64* %15, align 8
  %203 = and i64 %202, 1610612736
  %204 = lshr i64 %203, 29
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %247

206:                                              ; preds = %201
  %207 = load i64, i64* %9, align 8
  %208 = shl i64 %207, 2
  store i64 %208, i64* %10, align 8
  %209 = load i64, i64* %14, align 8
  %210 = load i64, i64* @PACKET3_CP_DMA_CMD_SAIC, align 8
  %211 = and i64 %209, %210
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %206
  %214 = load i64, i64* %10, align 8
  store i64 %214, i64* %12, align 8
  %215 = load i64, i64* %12, align 8
  %216 = call i32 @si_vm_reg_valid(i64 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %213
  %219 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %4, align 4
  br label %312

222:                                              ; preds = %213
  br label %246

223:                                              ; preds = %206
  store i64 0, i64* %13, align 8
  br label %224

224:                                              ; preds = %242, %223
  %225 = load i64, i64* %13, align 8
  %226 = load i64, i64* %14, align 8
  %227 = and i64 %226, 2097151
  %228 = icmp ult i64 %225, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %224
  %230 = load i64, i64* %10, align 8
  %231 = load i64, i64* %13, align 8
  %232 = mul i64 4, %231
  %233 = add i64 %230, %232
  store i64 %233, i64* %12, align 8
  %234 = load i64, i64* %12, align 8
  %235 = call i32 @si_vm_reg_valid(i64 %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %229
  %238 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %4, align 4
  br label %312

241:                                              ; preds = %229
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %13, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %13, align 8
  br label %224

245:                                              ; preds = %224
  br label %246

246:                                              ; preds = %245, %222
  br label %247

247:                                              ; preds = %246, %201
  br label %248

248:                                              ; preds = %247, %186
  %249 = load i64, i64* %14, align 8
  %250 = load i64, i64* @PACKET3_CP_DMA_CMD_DAS, align 8
  %251 = and i64 %249, %250
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %303

253:                                              ; preds = %248
  %254 = load i64, i64* %15, align 8
  %255 = and i64 %254, 3145728
  %256 = lshr i64 %255, 20
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %302

258:                                              ; preds = %253
  %259 = load i64*, i64** %6, align 8
  %260 = load i64, i64* %8, align 8
  %261 = add i64 %260, 2
  %262 = getelementptr inbounds i64, i64* %259, i64 %261
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %10, align 8
  %264 = load i64, i64* %14, align 8
  %265 = load i64, i64* @PACKET3_CP_DMA_CMD_DAIC, align 8
  %266 = and i64 %264, %265
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %258
  %269 = load i64, i64* %10, align 8
  store i64 %269, i64* %12, align 8
  %270 = load i64, i64* %12, align 8
  %271 = call i32 @si_vm_reg_valid(i64 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %268
  %274 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %275 = load i32, i32* @EINVAL, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %4, align 4
  br label %312

277:                                              ; preds = %268
  br label %301

278:                                              ; preds = %258
  store i64 0, i64* %13, align 8
  br label %279

279:                                              ; preds = %297, %278
  %280 = load i64, i64* %13, align 8
  %281 = load i64, i64* %14, align 8
  %282 = and i64 %281, 2097151
  %283 = icmp ult i64 %280, %282
  br i1 %283, label %284, label %300

284:                                              ; preds = %279
  %285 = load i64, i64* %10, align 8
  %286 = load i64, i64* %13, align 8
  %287 = mul i64 4, %286
  %288 = add i64 %285, %287
  store i64 %288, i64* %12, align 8
  %289 = load i64, i64* %12, align 8
  %290 = call i32 @si_vm_reg_valid(i64 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %284
  %293 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %294 = load i32, i32* @EINVAL, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %4, align 4
  br label %312

296:                                              ; preds = %284
  br label %297

297:                                              ; preds = %296
  %298 = load i64, i64* %13, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %13, align 8
  br label %279

300:                                              ; preds = %279
  br label %301

301:                                              ; preds = %300, %277
  br label %302

302:                                              ; preds = %301, %253
  br label %303

303:                                              ; preds = %302, %248
  br label %311

304:                                              ; preds = %3
  %305 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %306 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* @EINVAL, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %4, align 4
  br label %312

311:                                              ; preds = %303, %185, %133, %114, %95, %46, %27
  store i32 0, i32* %4, align 4
  br label %312

312:                                              ; preds = %311, %304, %292, %273, %237, %218, %178, %158, %129, %110, %86, %65, %42
  %313 = load i32, i32* %4, align 4
  ret i32 %313
}

declare dso_local i32 @si_vm_reg_valid(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
