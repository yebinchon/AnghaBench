; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_vm_packet3_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_vm_packet3_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_cs_packet = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i64 0, align 8
@PACKET3_SET_CONFIG_REG_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"bad PACKET3_SET_CONFIG_REG\0A\00", align 1
@PACKET3_CP_DMA_CMD_DAS = common dso_local global i64 0, align 8
@PACKET3_CP_DMA_CMD_SAS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"CP DMA command requires dw count alignment\0A\00", align 1
@PACKET3_CP_DMA_CMD_SAIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"CP DMA Bad SRC register\0A\00", align 1
@PACKET3_CP_DMA_CMD_DAIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"CP DMA Bad DST register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64*, %struct.radeon_cs_packet*)* @evergreen_vm_packet3_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_vm_packet3_check(%struct.radeon_device* %0, i64* %1, %struct.radeon_cs_packet* %2) #0 {
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
  switch i32 %26, label %276 [
    i32 145, label %27
    i32 142, label %27
    i32 172, label %27
    i32 150, label %27
    i32 166, label %27
    i32 165, label %27
    i32 147, label %27
    i32 135, label %27
    i32 171, label %27
    i32 143, label %27
    i32 155, label %27
    i32 160, label %27
    i32 151, label %27
    i32 163, label %27
    i32 169, label %27
    i32 157, label %27
    i32 149, label %27
    i32 164, label %27
    i32 162, label %27
    i32 161, label %27
    i32 144, label %27
    i32 159, label %27
    i32 130, label %27
    i32 156, label %27
    i32 158, label %27
    i32 146, label %27
    i32 128, label %27
    i32 148, label %27
    i32 129, label %27
    i32 154, label %27
    i32 153, label %27
    i32 152, label %27
    i32 139, label %27
    i32 141, label %27
    i32 136, label %27
    i32 134, label %27
    i32 131, label %27
    i32 137, label %27
    i32 132, label %27
    i32 138, label %27
    i32 133, label %27
    i32 173, label %27
    i32 170, label %28
    i32 168, label %47
    i32 140, label %66
    i32 167, label %118
  ]

27:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %279

28:                                               ; preds = %3
  %29 = load i64, i64* %9, align 8
  %30 = and i64 %29, 256
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 5
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %37, 4
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @evergreen_vm_reg_valid(i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %280

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %28
  br label %279

47:                                               ; preds = %3
  %48 = load i64, i64* %9, align 8
  %49 = and i64 %48, 2
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 3
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %56, 4
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @evergreen_vm_reg_valid(i64 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %280

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %47
  br label %279

66:                                               ; preds = %3
  %67 = load i64, i64* %9, align 8
  %68 = shl i64 %67, 2
  %69 = load i64, i64* @PACKET3_SET_CONFIG_REG_START, align 8
  %70 = add i64 %68, %69
  store i64 %70, i64* %10, align 8
  %71 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %72 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 4, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %75, %76
  %78 = sub i64 %77, 4
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @PACKET3_SET_CONFIG_REG_START, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %66
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @PACKET3_SET_CONFIG_REG_END, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @PACKET3_SET_CONFIG_REG_END, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86, %82, %66
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %280

94:                                               ; preds = %86
  store i64 0, i64* %13, align 8
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %98 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp ult i64 %96, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = mul i64 4, %104
  %106 = add i64 %103, %105
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @evergreen_vm_reg_valid(i64 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %280

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %13, align 8
  br label %95

117:                                              ; preds = %95
  br label %279

118:                                              ; preds = %3
  %119 = load i64*, i64** %6, align 8
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, 4
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %14, align 8
  %124 = load i64*, i64** %6, align 8
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 1
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %15, align 8
  %129 = load i64, i64* %15, align 8
  %130 = and i64 %129, 1610612736
  %131 = lshr i64 %130, 29
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %158, label %133

133:                                              ; preds = %118
  %134 = load i64, i64* %15, align 8
  %135 = and i64 %134, 3145728
  %136 = lshr i64 %135, 20
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %158, label %138

138:                                              ; preds = %133
  %139 = load i64, i64* %15, align 8
  %140 = and i64 %139, 3145728
  %141 = lshr i64 %140, 20
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* @PACKET3_CP_DMA_CMD_DAS, align 8
  %146 = and i64 %144, %145
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %143, %138
  %149 = load i64, i64* %15, align 8
  %150 = and i64 %149, 1610612736
  %151 = lshr i64 %150, 29
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %148
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* @PACKET3_CP_DMA_CMD_SAS, align 8
  %156 = and i64 %154, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153, %143, %133, %118
  %159 = load i64, i64* %14, align 8
  %160 = and i64 %159, 2097151
  %161 = urem i64 %160, 4
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %280

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167, %153, %148
  %169 = load i64, i64* %14, align 8
  %170 = load i64, i64* @PACKET3_CP_DMA_CMD_SAS, align 8
  %171 = and i64 %169, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %220

173:                                              ; preds = %168
  %174 = load i64, i64* %15, align 8
  %175 = and i64 %174, 1610612736
  %176 = lshr i64 %175, 29
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %219

178:                                              ; preds = %173
  %179 = load i64, i64* %9, align 8
  %180 = shl i64 %179, 2
  store i64 %180, i64* %10, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load i64, i64* @PACKET3_CP_DMA_CMD_SAIC, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %178
  %186 = load i64, i64* %10, align 8
  store i64 %186, i64* %12, align 8
  %187 = load i64, i64* %12, align 8
  %188 = call i32 @evergreen_vm_reg_valid(i64 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %192 = load i32, i32* @EINVAL, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %4, align 4
  br label %280

194:                                              ; preds = %185
  br label %218

195:                                              ; preds = %178
  store i64 0, i64* %13, align 8
  br label %196

196:                                              ; preds = %214, %195
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* %14, align 8
  %199 = and i64 %198, 2097151
  %200 = icmp ult i64 %197, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %196
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* %13, align 8
  %204 = mul i64 4, %203
  %205 = add i64 %202, %204
  store i64 %205, i64* %12, align 8
  %206 = load i64, i64* %12, align 8
  %207 = call i32 @evergreen_vm_reg_valid(i64 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %201
  %210 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %211 = load i32, i32* @EINVAL, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %4, align 4
  br label %280

213:                                              ; preds = %201
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %13, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %13, align 8
  br label %196

217:                                              ; preds = %196
  br label %218

218:                                              ; preds = %217, %194
  br label %219

219:                                              ; preds = %218, %173
  br label %220

220:                                              ; preds = %219, %168
  %221 = load i64, i64* %14, align 8
  %222 = load i64, i64* @PACKET3_CP_DMA_CMD_DAS, align 8
  %223 = and i64 %221, %222
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %275

225:                                              ; preds = %220
  %226 = load i64, i64* %15, align 8
  %227 = and i64 %226, 3145728
  %228 = lshr i64 %227, 20
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %274

230:                                              ; preds = %225
  %231 = load i64*, i64** %6, align 8
  %232 = load i64, i64* %8, align 8
  %233 = add i64 %232, 2
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %10, align 8
  %236 = load i64, i64* %14, align 8
  %237 = load i64, i64* @PACKET3_CP_DMA_CMD_DAIC, align 8
  %238 = and i64 %236, %237
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %230
  %241 = load i64, i64* %10, align 8
  store i64 %241, i64* %12, align 8
  %242 = load i64, i64* %12, align 8
  %243 = call i32 @evergreen_vm_reg_valid(i64 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  %246 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %4, align 4
  br label %280

249:                                              ; preds = %240
  br label %273

250:                                              ; preds = %230
  store i64 0, i64* %13, align 8
  br label %251

251:                                              ; preds = %269, %250
  %252 = load i64, i64* %13, align 8
  %253 = load i64, i64* %14, align 8
  %254 = and i64 %253, 2097151
  %255 = icmp ult i64 %252, %254
  br i1 %255, label %256, label %272

256:                                              ; preds = %251
  %257 = load i64, i64* %10, align 8
  %258 = load i64, i64* %13, align 8
  %259 = mul i64 4, %258
  %260 = add i64 %257, %259
  store i64 %260, i64* %12, align 8
  %261 = load i64, i64* %12, align 8
  %262 = call i32 @evergreen_vm_reg_valid(i64 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %256
  %265 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %266 = load i32, i32* @EINVAL, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %4, align 4
  br label %280

268:                                              ; preds = %256
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %13, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %13, align 8
  br label %251

272:                                              ; preds = %251
  br label %273

273:                                              ; preds = %272, %249
  br label %274

274:                                              ; preds = %273, %225
  br label %275

275:                                              ; preds = %274, %220
  br label %279

276:                                              ; preds = %3
  %277 = load i32, i32* @EINVAL, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %4, align 4
  br label %280

279:                                              ; preds = %275, %117, %65, %46, %27
  store i32 0, i32* %4, align 4
  br label %280

280:                                              ; preds = %279, %276, %264, %245, %209, %190, %163, %110, %90, %61, %42
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local i32 @evergreen_vm_reg_valid(i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
