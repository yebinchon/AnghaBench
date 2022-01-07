; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vm_set_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_vm_set_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.radeon_ib = type { i32*, i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_SYSTEM = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_VALID = common dso_local global i32 0, align 4
@DMA_PACKET_WRITE = common dso_local global i32 0, align 4
@DMA_PACKET_NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_vm_set_page(%struct.radeon_device* %0, %struct.radeon_ib* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_ib*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @cayman_vm_page_flags(%struct.radeon_device* %18, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %148

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %146, %29
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %147

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = mul i32 %34, 2
  %36 = add i32 2, %35
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ugt i32 %37, 16382
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 16382, i32* %17, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @PACKET3(i32 %41, i32 %42)
  %44 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %45 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %48 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  store i32 %43, i32* %52, align 4
  %53 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %54 = call i32 @WRITE_DATA_DST_SEL(i32 1)
  %55 = or i32 %53, %54
  %56 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %57 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %60 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32 %55, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %67 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %70 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  store i32 %65, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @upper_32_bits(i32 %75)
  %77 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %78 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %81 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  store i32 %76, i32* %85, align 4
  br label %86

86:                                               ; preds = %139, %40
  %87 = load i32, i32* %17, align 4
  %88 = icmp ugt i32 %87, 2
  br i1 %88, label %89, label %146

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @radeon_vm_map_gart(%struct.radeon_device* %95, i32 %96)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = and i64 %99, -4096
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %16, align 4
  br label %111

102:                                              ; preds = %89
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %16, align 4
  br label %110

109:                                              ; preds = %102
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %109, %107
  br label %111

111:                                              ; preds = %110, %94
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %120 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %123 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  store i32 %118, i32* %127, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @upper_32_bits(i32 %128)
  %130 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %131 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %134 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  store i32 %129, i32* %138, align 4
  br label %139

139:                                              ; preds = %111
  %140 = load i32, i32* %17, align 4
  %141 = sub i32 %140, 2
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %12, align 4
  %143 = add i32 %142, -1
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 8
  store i32 %145, i32* %10, align 4
  br label %86

146:                                              ; preds = %86
  br label %30

147:                                              ; preds = %30
  br label %408

148:                                              ; preds = %7
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %261

153:                                              ; preds = %148
  br label %154

154:                                              ; preds = %259, %153
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %260

157:                                              ; preds = %154
  %158 = load i32, i32* %12, align 4
  %159 = mul i32 %158, 2
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp ugt i32 %160, 1048574
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i32 1048574, i32* %17, align 4
  br label %163

163:                                              ; preds = %162, %157
  %164 = load i32, i32* @DMA_PACKET_WRITE, align 4
  %165 = load i32, i32* %17, align 4
  %166 = call i8* @DMA_PACKET(i32 %164, i32 0, i32 0, i32 0, i32 %165)
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %169 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %172 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %170, i64 %175
  store i32 %167, i32* %176, align 4
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %179 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %182 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %180, i64 %185
  store i32 %177, i32* %186, align 4
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @upper_32_bits(i32 %187)
  %189 = and i32 %188, 255
  %190 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %191 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %194 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %192, i64 %197
  store i32 %189, i32* %198, align 4
  br label %199

199:                                              ; preds = %252, %163
  %200 = load i32, i32* %17, align 4
  %201 = icmp ugt i32 %200, 0
  br i1 %201, label %202, label %259

202:                                              ; preds = %199
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @radeon_vm_map_gart(%struct.radeon_device* %208, i32 %209)
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = and i64 %212, -4096
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %16, align 4
  br label %224

215:                                              ; preds = %202
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %16, align 4
  br label %223

222:                                              ; preds = %215
  store i32 0, i32* %16, align 4
  br label %223

223:                                              ; preds = %222, %220
  br label %224

224:                                              ; preds = %223, %207
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %16, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %16, align 4
  %231 = load i32, i32* %16, align 4
  %232 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %233 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %236 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i32, i32* %234, i64 %239
  store i32 %231, i32* %240, align 4
  %241 = load i32, i32* %16, align 4
  %242 = call i32 @upper_32_bits(i32 %241)
  %243 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %244 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %247 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %245, i64 %250
  store i32 %242, i32* %251, align 4
  br label %252

252:                                              ; preds = %224
  %253 = load i32, i32* %17, align 4
  %254 = sub i32 %253, 2
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* %12, align 4
  %256 = add i32 %255, -1
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, 8
  store i32 %258, i32* %10, align 4
  br label %199

259:                                              ; preds = %199
  br label %154

260:                                              ; preds = %154
  br label %387

261:                                              ; preds = %148
  br label %262

262:                                              ; preds = %279, %261
  %263 = load i32, i32* %12, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %386

265:                                              ; preds = %262
  %266 = load i32, i32* %12, align 4
  %267 = mul i32 %266, 2
  store i32 %267, i32* %17, align 4
  %268 = load i32, i32* %17, align 4
  %269 = icmp ugt i32 %268, 1048574
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  store i32 1048574, i32* %17, align 4
  br label %271

271:                                              ; preds = %270, %265
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32, i32* %11, align 4
  store i32 %277, i32* %16, align 4
  br label %279

278:                                              ; preds = %271
  store i32 0, i32* %16, align 4
  br label %279

279:                                              ; preds = %278, %276
  %280 = load i32, i32* %17, align 4
  %281 = call i32 @DMA_PTE_PDE_PACKET(i32 %280)
  %282 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %283 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %286 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 8
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i32, i32* %284, i64 %289
  store i32 %281, i32* %290, align 4
  %291 = load i32, i32* %10, align 4
  %292 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %293 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %296 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i32, i32* %294, i64 %299
  store i32 %291, i32* %300, align 4
  %301 = load i32, i32* %10, align 4
  %302 = call i32 @upper_32_bits(i32 %301)
  %303 = and i32 %302, 255
  %304 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %305 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %308 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i32, i32* %306, i64 %311
  store i32 %303, i32* %312, align 4
  %313 = load i32, i32* %15, align 4
  %314 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %315 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %318 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i32, i32* %316, i64 %321
  store i32 %313, i32* %322, align 4
  %323 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %324 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %327 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %327, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i32, i32* %325, i64 %330
  store i32 0, i32* %331, align 4
  %332 = load i32, i32* %16, align 4
  %333 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %334 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %337 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %337, align 8
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds i32, i32* %335, i64 %340
  store i32 %332, i32* %341, align 4
  %342 = load i32, i32* %16, align 4
  %343 = call i32 @upper_32_bits(i32 %342)
  %344 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %345 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %348 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %348, align 8
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i32, i32* %346, i64 %351
  store i32 %343, i32* %352, align 4
  %353 = load i32, i32* %13, align 4
  %354 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %355 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %358 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %358, align 8
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32, i32* %356, i64 %361
  store i32 %353, i32* %362, align 4
  %363 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %364 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %367 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %367, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %365, i64 %370
  store i32 0, i32* %371, align 4
  %372 = load i32, i32* %17, align 4
  %373 = mul i32 %372, 4
  %374 = load i32, i32* %10, align 4
  %375 = add i32 %374, %373
  store i32 %375, i32* %10, align 4
  %376 = load i32, i32* %17, align 4
  %377 = udiv i32 %376, 2
  %378 = load i32, i32* %13, align 4
  %379 = mul i32 %377, %378
  %380 = load i32, i32* %11, align 4
  %381 = add i32 %380, %379
  store i32 %381, i32* %11, align 4
  %382 = load i32, i32* %17, align 4
  %383 = udiv i32 %382, 2
  %384 = load i32, i32* %12, align 4
  %385 = sub i32 %384, %383
  store i32 %385, i32* %12, align 4
  br label %262

386:                                              ; preds = %262
  br label %387

387:                                              ; preds = %386, %260
  br label %388

388:                                              ; preds = %394, %387
  %389 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %390 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = and i32 %391, 7
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %407

394:                                              ; preds = %388
  %395 = load i32, i32* @DMA_PACKET_NOP, align 4
  %396 = call i8* @DMA_PACKET(i32 %395, i32 0, i32 0, i32 0, i32 0)
  %397 = ptrtoint i8* %396 to i32
  %398 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %399 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %398, i32 0, i32 0
  %400 = load i32*, i32** %399, align 8
  %401 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %402 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %402, align 8
  %405 = sext i32 %403 to i64
  %406 = getelementptr inbounds i32, i32* %400, i64 %405
  store i32 %397, i32* %406, align 4
  br label %388

407:                                              ; preds = %388
  br label %408

408:                                              ; preds = %407, %147
  ret void
}

declare dso_local i32 @cayman_vm_page_flags(%struct.radeon_device*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WRITE_DATA_ENGINE_SEL(i32) #1

declare dso_local i32 @WRITE_DATA_DST_SEL(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_vm_map_gart(%struct.radeon_device*, i32) #1

declare dso_local i8* @DMA_PACKET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DMA_PTE_PDE_PACKET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
