; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_get_table_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_get_table_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @combios_get_table_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combios_get_table_offset(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %592

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %589 [
    i32 172, label %20
    i32 167, label %31
    i32 162, label %42
    i32 147, label %53
    i32 164, label %64
    i32 139, label %75
    i32 129, label %86
    i32 160, label %97
    i32 152, label %108
    i32 142, label %119
    i32 128, label %130
    i32 148, label %141
    i32 143, label %152
    i32 138, label %163
    i32 145, label %174
    i32 133, label %185
    i32 153, label %196
    i32 171, label %207
    i32 165, label %218
    i32 159, label %229
    i32 134, label %240
    i32 156, label %251
    i32 146, label %262
    i32 157, label %273
    i32 144, label %284
    i32 163, label %295
    i32 150, label %306
    i32 166, label %317
    i32 155, label %328
    i32 140, label %339
    i32 141, label %350
    i32 158, label %361
    i32 136, label %372
    i32 151, label %383
    i32 170, label %394
    i32 169, label %415
    i32 161, label %436
    i32 168, label %457
    i32 135, label %478
    i32 137, label %499
    i32 154, label %514
    i32 149, label %529
    i32 130, label %544
    i32 131, label %559
    i32 132, label %574
  ]

20:                                               ; preds = %18
  %21 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 12
  %25 = call i32 @RBIOS16(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %20
  br label %590

31:                                               ; preds = %18
  %32 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 20
  %36 = call i32 @RBIOS16(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %31
  br label %590

42:                                               ; preds = %18
  %43 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 42
  %47 = call i32 @RBIOS16(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %42
  br label %590

53:                                               ; preds = %18
  %54 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 44
  %58 = call i32 @RBIOS16(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %53
  br label %590

64:                                               ; preds = %18
  %65 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 46
  %69 = call i32 @RBIOS16(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %72, %64
  br label %590

75:                                               ; preds = %18
  %76 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 48
  %80 = call i32 @RBIOS16(i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %75
  br label %590

86:                                               ; preds = %18
  %87 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 50
  %91 = call i32 @RBIOS16(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %86
  br label %590

97:                                               ; preds = %18
  %98 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 52
  %102 = call i32 @RBIOS16(i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %105, %97
  br label %590

108:                                              ; preds = %18
  %109 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 54
  %113 = call i32 @RBIOS16(i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %116, %108
  br label %590

119:                                              ; preds = %18
  %120 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %121 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 56
  %124 = call i32 @RBIOS16(i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %127, %119
  br label %590

130:                                              ; preds = %18
  %131 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 62
  %135 = call i32 @RBIOS16(i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %138, %130
  br label %590

141:                                              ; preds = %18
  %142 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 64
  %146 = call i32 @RBIOS16(i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %149, %141
  br label %590

152:                                              ; preds = %18
  %153 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 66
  %157 = call i32 @RBIOS16(i32 %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %160, %152
  br label %590

163:                                              ; preds = %18
  %164 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 70
  %168 = call i32 @RBIOS16(i32 %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %171, %163
  br label %590

174:                                              ; preds = %18
  %175 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 72
  %179 = call i32 @RBIOS16(i32 %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %174
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %182, %174
  br label %590

185:                                              ; preds = %18
  %186 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 74
  %190 = call i32 @RBIOS16(i32 %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %193, %185
  br label %590

196:                                              ; preds = %18
  %197 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %198 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 76
  %201 = call i32 @RBIOS16(i32 %200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %196
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %204, %196
  br label %590

207:                                              ; preds = %18
  %208 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 78
  %212 = call i32 @RBIOS16(i32 %211)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %207
  %216 = load i32, i32* %9, align 4
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %215, %207
  br label %590

218:                                              ; preds = %18
  %219 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %220 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 80
  %223 = call i32 @RBIOS16(i32 %222)
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %218
  %227 = load i32, i32* %9, align 4
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %226, %218
  br label %590

229:                                              ; preds = %18
  %230 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %231 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 82
  %234 = call i32 @RBIOS16(i32 %233)
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %229
  %238 = load i32, i32* %9, align 4
  store i32 %238, i32* %8, align 4
  br label %239

239:                                              ; preds = %237, %229
  br label %590

240:                                              ; preds = %18
  %241 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %242 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 84
  %245 = call i32 @RBIOS16(i32 %244)
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %240
  %249 = load i32, i32* %9, align 4
  store i32 %249, i32* %8, align 4
  br label %250

250:                                              ; preds = %248, %240
  br label %590

251:                                              ; preds = %18
  %252 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %253 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 88
  %256 = call i32 @RBIOS16(i32 %255)
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %9, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %251
  %260 = load i32, i32* %9, align 4
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %259, %251
  br label %590

262:                                              ; preds = %18
  %263 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %264 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 90
  %267 = call i32 @RBIOS16(i32 %266)
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %262
  %271 = load i32, i32* %9, align 4
  store i32 %271, i32* %8, align 4
  br label %272

272:                                              ; preds = %270, %262
  br label %590

273:                                              ; preds = %18
  %274 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %275 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %276, 92
  %278 = call i32 @RBIOS16(i32 %277)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %273
  %282 = load i32, i32* %9, align 4
  store i32 %282, i32* %8, align 4
  br label %283

283:                                              ; preds = %281, %273
  br label %590

284:                                              ; preds = %18
  %285 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %286 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, 94
  %289 = call i32 @RBIOS16(i32 %288)
  store i32 %289, i32* %9, align 4
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %284
  %293 = load i32, i32* %9, align 4
  store i32 %293, i32* %8, align 4
  br label %294

294:                                              ; preds = %292, %284
  br label %590

295:                                              ; preds = %18
  %296 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %297 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 96
  %300 = call i32 @RBIOS16(i32 %299)
  store i32 %300, i32* %9, align 4
  %301 = load i32, i32* %9, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %295
  %304 = load i32, i32* %9, align 4
  store i32 %304, i32* %8, align 4
  br label %305

305:                                              ; preds = %303, %295
  br label %590

306:                                              ; preds = %18
  %307 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %308 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 98
  %311 = call i32 @RBIOS16(i32 %310)
  store i32 %311, i32* %9, align 4
  %312 = load i32, i32* %9, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %306
  %315 = load i32, i32* %9, align 4
  store i32 %315, i32* %8, align 4
  br label %316

316:                                              ; preds = %314, %306
  br label %590

317:                                              ; preds = %18
  %318 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %319 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, 100
  %322 = call i32 @RBIOS16(i32 %321)
  store i32 %322, i32* %9, align 4
  %323 = load i32, i32* %9, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %317
  %326 = load i32, i32* %9, align 4
  store i32 %326, i32* %8, align 4
  br label %327

327:                                              ; preds = %325, %317
  br label %590

328:                                              ; preds = %18
  %329 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %330 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, 102
  %333 = call i32 @RBIOS16(i32 %332)
  store i32 %333, i32* %9, align 4
  %334 = load i32, i32* %9, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %328
  %337 = load i32, i32* %9, align 4
  store i32 %337, i32* %8, align 4
  br label %338

338:                                              ; preds = %336, %328
  br label %590

339:                                              ; preds = %18
  %340 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %341 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %342, 104
  %344 = call i32 @RBIOS16(i32 %343)
  store i32 %344, i32* %9, align 4
  %345 = load i32, i32* %9, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %339
  %348 = load i32, i32* %9, align 4
  store i32 %348, i32* %8, align 4
  br label %349

349:                                              ; preds = %347, %339
  br label %590

350:                                              ; preds = %18
  %351 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %352 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %353, 106
  %355 = call i32 @RBIOS16(i32 %354)
  store i32 %355, i32* %9, align 4
  %356 = load i32, i32* %9, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %350
  %359 = load i32, i32* %9, align 4
  store i32 %359, i32* %8, align 4
  br label %360

360:                                              ; preds = %358, %350
  br label %590

361:                                              ; preds = %18
  %362 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %363 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = add nsw i32 %364, 108
  %366 = call i32 @RBIOS16(i32 %365)
  store i32 %366, i32* %9, align 4
  %367 = load i32, i32* %9, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %361
  %370 = load i32, i32* %9, align 4
  store i32 %370, i32* %8, align 4
  br label %371

371:                                              ; preds = %369, %361
  br label %590

372:                                              ; preds = %18
  %373 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %374 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %375, 110
  %377 = call i32 @RBIOS16(i32 %376)
  store i32 %377, i32* %9, align 4
  %378 = load i32, i32* %9, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %372
  %381 = load i32, i32* %9, align 4
  store i32 %381, i32* %8, align 4
  br label %382

382:                                              ; preds = %380, %372
  br label %590

383:                                              ; preds = %18
  %384 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %385 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = add nsw i32 %386, 112
  %388 = call i32 @RBIOS16(i32 %387)
  store i32 %388, i32* %9, align 4
  %389 = load i32, i32* %9, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %383
  %392 = load i32, i32* %9, align 4
  store i32 %392, i32* %8, align 4
  br label %393

393:                                              ; preds = %391, %383
  br label %590

394:                                              ; preds = %18
  %395 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %396 = call i32 @combios_get_table_offset(%struct.drm_device* %395, i32 144)
  store i32 %396, i32* %9, align 4
  %397 = load i32, i32* %9, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %414

399:                                              ; preds = %394
  %400 = load i32, i32* %9, align 4
  %401 = call i32 @RBIOS8(i32 %400)
  store i32 %401, i32* %7, align 4
  %402 = load i32, i32* %7, align 4
  %403 = icmp sgt i32 %402, 0
  br i1 %403, label %404, label %413

404:                                              ; preds = %399
  %405 = load i32, i32* %9, align 4
  %406 = add nsw i32 %405, 3
  %407 = call i32 @RBIOS16(i32 %406)
  store i32 %407, i32* %9, align 4
  %408 = load i32, i32* %9, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %412

410:                                              ; preds = %404
  %411 = load i32, i32* %9, align 4
  store i32 %411, i32* %8, align 4
  br label %412

412:                                              ; preds = %410, %404
  br label %413

413:                                              ; preds = %412, %399
  br label %414

414:                                              ; preds = %413, %394
  br label %590

415:                                              ; preds = %18
  %416 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %417 = call i32 @combios_get_table_offset(%struct.drm_device* %416, i32 144)
  store i32 %417, i32* %9, align 4
  %418 = load i32, i32* %9, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %435

420:                                              ; preds = %415
  %421 = load i32, i32* %9, align 4
  %422 = call i32 @RBIOS8(i32 %421)
  store i32 %422, i32* %7, align 4
  %423 = load i32, i32* %7, align 4
  %424 = icmp sgt i32 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %420
  %426 = load i32, i32* %9, align 4
  %427 = add nsw i32 %426, 5
  %428 = call i32 @RBIOS16(i32 %427)
  store i32 %428, i32* %9, align 4
  %429 = load i32, i32* %9, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %425
  %432 = load i32, i32* %9, align 4
  store i32 %432, i32* %8, align 4
  br label %433

433:                                              ; preds = %431, %425
  br label %434

434:                                              ; preds = %433, %420
  br label %435

435:                                              ; preds = %434, %415
  br label %590

436:                                              ; preds = %18
  %437 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %438 = call i32 @combios_get_table_offset(%struct.drm_device* %437, i32 144)
  store i32 %438, i32* %9, align 4
  %439 = load i32, i32* %9, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %456

441:                                              ; preds = %436
  %442 = load i32, i32* %9, align 4
  %443 = call i32 @RBIOS8(i32 %442)
  store i32 %443, i32* %7, align 4
  %444 = load i32, i32* %7, align 4
  %445 = icmp sgt i32 %444, 0
  br i1 %445, label %446, label %455

446:                                              ; preds = %441
  %447 = load i32, i32* %9, align 4
  %448 = add nsw i32 %447, 7
  %449 = call i32 @RBIOS16(i32 %448)
  store i32 %449, i32* %9, align 4
  %450 = load i32, i32* %9, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %446
  %453 = load i32, i32* %9, align 4
  store i32 %453, i32* %8, align 4
  br label %454

454:                                              ; preds = %452, %446
  br label %455

455:                                              ; preds = %454, %441
  br label %456

456:                                              ; preds = %455, %436
  br label %590

457:                                              ; preds = %18
  %458 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %459 = call i32 @combios_get_table_offset(%struct.drm_device* %458, i32 144)
  store i32 %459, i32* %9, align 4
  %460 = load i32, i32* %9, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %477

462:                                              ; preds = %457
  %463 = load i32, i32* %9, align 4
  %464 = call i32 @RBIOS8(i32 %463)
  store i32 %464, i32* %7, align 4
  %465 = load i32, i32* %7, align 4
  %466 = icmp eq i32 %465, 2
  br i1 %466, label %467, label %476

467:                                              ; preds = %462
  %468 = load i32, i32* %9, align 4
  %469 = add nsw i32 %468, 9
  %470 = call i32 @RBIOS16(i32 %469)
  store i32 %470, i32* %9, align 4
  %471 = load i32, i32* %9, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %467
  %474 = load i32, i32* %9, align 4
  store i32 %474, i32* %8, align 4
  br label %475

475:                                              ; preds = %473, %467
  br label %476

476:                                              ; preds = %475, %462
  br label %477

477:                                              ; preds = %476, %457
  br label %590

478:                                              ; preds = %18
  %479 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %480 = call i32 @combios_get_table_offset(%struct.drm_device* %479, i32 145)
  store i32 %480, i32* %9, align 4
  %481 = load i32, i32* %9, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %498

483:                                              ; preds = %478
  br label %484

484:                                              ; preds = %489, %483
  %485 = load i32, i32* %9, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %9, align 4
  %487 = call i32 @RBIOS8(i32 %485)
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %484
  br label %484

490:                                              ; preds = %484
  %491 = load i32, i32* %9, align 4
  %492 = add nsw i32 %491, 2
  store i32 %492, i32* %9, align 4
  %493 = load i32, i32* %9, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %490
  %496 = load i32, i32* %9, align 4
  store i32 %496, i32* %8, align 4
  br label %497

497:                                              ; preds = %495, %490
  br label %498

498:                                              ; preds = %497, %478
  br label %590

499:                                              ; preds = %18
  %500 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %501 = call i32 @combios_get_table_offset(%struct.drm_device* %500, i32 143)
  store i32 %501, i32* %9, align 4
  %502 = load i32, i32* %9, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %513

504:                                              ; preds = %499
  %505 = load i32, i32* %9, align 4
  %506 = add nsw i32 %505, 17
  %507 = call i32 @RBIOS16(i32 %506)
  store i32 %507, i32* %9, align 4
  %508 = load i32, i32* %9, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %512

510:                                              ; preds = %504
  %511 = load i32, i32* %9, align 4
  store i32 %511, i32* %8, align 4
  br label %512

512:                                              ; preds = %510, %504
  br label %513

513:                                              ; preds = %512, %499
  br label %590

514:                                              ; preds = %18
  %515 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %516 = call i32 @combios_get_table_offset(%struct.drm_device* %515, i32 143)
  store i32 %516, i32* %9, align 4
  %517 = load i32, i32* %9, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %528

519:                                              ; preds = %514
  %520 = load i32, i32* %9, align 4
  %521 = add nsw i32 %520, 19
  %522 = call i32 @RBIOS16(i32 %521)
  store i32 %522, i32* %9, align 4
  %523 = load i32, i32* %9, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %527

525:                                              ; preds = %519
  %526 = load i32, i32* %9, align 4
  store i32 %526, i32* %8, align 4
  br label %527

527:                                              ; preds = %525, %519
  br label %528

528:                                              ; preds = %527, %514
  br label %590

529:                                              ; preds = %18
  %530 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %531 = call i32 @combios_get_table_offset(%struct.drm_device* %530, i32 143)
  store i32 %531, i32* %9, align 4
  %532 = load i32, i32* %9, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %543

534:                                              ; preds = %529
  %535 = load i32, i32* %9, align 4
  %536 = add nsw i32 %535, 21
  %537 = call i32 @RBIOS16(i32 %536)
  store i32 %537, i32* %9, align 4
  %538 = load i32, i32* %9, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %542

540:                                              ; preds = %534
  %541 = load i32, i32* %9, align 4
  store i32 %541, i32* %8, align 4
  br label %542

542:                                              ; preds = %540, %534
  br label %543

543:                                              ; preds = %542, %529
  br label %590

544:                                              ; preds = %18
  %545 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %546 = call i32 @combios_get_table_offset(%struct.drm_device* %545, i32 143)
  store i32 %546, i32* %9, align 4
  %547 = load i32, i32* %9, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %558

549:                                              ; preds = %544
  %550 = load i32, i32* %9, align 4
  %551 = add nsw i32 %550, 23
  %552 = call i32 @RBIOS16(i32 %551)
  store i32 %552, i32* %9, align 4
  %553 = load i32, i32* %9, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %557

555:                                              ; preds = %549
  %556 = load i32, i32* %9, align 4
  store i32 %556, i32* %8, align 4
  br label %557

557:                                              ; preds = %555, %549
  br label %558

558:                                              ; preds = %557, %544
  br label %590

559:                                              ; preds = %18
  %560 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %561 = call i32 @combios_get_table_offset(%struct.drm_device* %560, i32 130)
  store i32 %561, i32* %9, align 4
  %562 = load i32, i32* %9, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %573

564:                                              ; preds = %559
  %565 = load i32, i32* %9, align 4
  %566 = add nsw i32 %565, 2
  %567 = call i32 @RBIOS16(i32 %566)
  store i32 %567, i32* %9, align 4
  %568 = load i32, i32* %9, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %572

570:                                              ; preds = %564
  %571 = load i32, i32* %9, align 4
  store i32 %571, i32* %8, align 4
  br label %572

572:                                              ; preds = %570, %564
  br label %573

573:                                              ; preds = %572, %559
  br label %590

574:                                              ; preds = %18
  %575 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %576 = call i32 @combios_get_table_offset(%struct.drm_device* %575, i32 130)
  store i32 %576, i32* %9, align 4
  %577 = load i32, i32* %9, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %588

579:                                              ; preds = %574
  %580 = load i32, i32* %9, align 4
  %581 = add nsw i32 %580, 4
  %582 = call i32 @RBIOS16(i32 %581)
  store i32 %582, i32* %9, align 4
  %583 = load i32, i32* %9, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %587

585:                                              ; preds = %579
  %586 = load i32, i32* %9, align 4
  store i32 %586, i32* %8, align 4
  br label %587

587:                                              ; preds = %585, %579
  br label %588

588:                                              ; preds = %587, %574
  br label %590

589:                                              ; preds = %18
  br label %590

590:                                              ; preds = %589, %588, %573, %558, %543, %528, %513, %498, %477, %456, %435, %414, %393, %382, %371, %360, %349, %338, %327, %316, %305, %294, %283, %272, %261, %250, %239, %228, %217, %206, %195, %184, %173, %162, %151, %140, %129, %118, %107, %96, %85, %74, %63, %52, %41, %30
  %591 = load i32, i32* %8, align 4
  store i32 %591, i32* %3, align 4
  br label %592

592:                                              ; preds = %590, %17
  %593 = load i32, i32* %3, align 4
  ret i32 %593
}

declare dso_local i32 @RBIOS16(i32) #1

declare dso_local i32 @RBIOS8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
