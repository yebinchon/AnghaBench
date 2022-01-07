; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_risc_planar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_risc_planar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.btcx_riscmem = type { i32, i32*, i32* }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BT848_RISC_SYNC = common dso_local global i32 0, align 4
@BT848_FIFO_STATUS_FM3 = common dso_local global i32 0, align 4
@VCR_HACK_LINES = common dso_local global i32 0, align 4
@BT848_RISC_WRITE123 = common dso_local global i32 0, align 4
@BT848_RISC_WRITE1S23 = common dso_local global i32 0, align 4
@BT848_RISC_SOL = common dso_local global i32 0, align 4
@BT848_RISC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, %struct.btcx_riscmem*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @bttv_risc_planar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_risc_planar(%struct.bttv* %0, %struct.btcx_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.bttv*, align 8
  %15 = alloca %struct.btcx_riscmem*, align 8
  %16 = alloca %struct.scatterlist*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.scatterlist*, align 8
  %34 = alloca %struct.scatterlist*, align 8
  %35 = alloca %struct.scatterlist*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %14, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %15, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp eq i32 0, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %19, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* %20, align 4
  %45 = mul i32 %43, %44
  %46 = mul i32 %45, 2
  %47 = add i32 3, %46
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = udiv i32 %47, %48
  %50 = load i32, i32* %20, align 4
  %51 = add i32 %49, %50
  store i32 %51, i32* %26, align 4
  %52 = load i32, i32* %26, align 4
  %53 = add i32 %52, 2
  store i32 %53, i32* %26, align 4
  %54 = load %struct.bttv*, %struct.bttv** %14, align 8
  %55 = getelementptr inbounds %struct.bttv, %struct.bttv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %15, align 8
  %59 = load i32, i32* %26, align 4
  %60 = mul i32 %59, 4
  %61 = mul i32 %60, 5
  %62 = call i32 @btcx_riscmem_alloc(i32 %57, %struct.btcx_riscmem* %58, i32 %61)
  store i32 %62, i32* %37, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %12
  %65 = load i32, i32* %37, align 4
  store i32 %65, i32* %13, align 4
  br label %364

66:                                               ; preds = %12
  %67 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %15, align 8
  %68 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %31, align 8
  %70 = load i32, i32* @BT848_RISC_SYNC, align 4
  %71 = load i32, i32* @BT848_FIFO_STATUS_FM3, align 4
  %72 = or i32 %70, %71
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load i32*, i32** %31, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %31, align 8
  store i32 %74, i32* %75, align 4
  %77 = call i8* @cpu_to_le32(i32 0)
  %78 = ptrtoint i8* %77 to i32
  %79 = load i32*, i32** %31, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %31, align 8
  store i32 %78, i32* %79, align 4
  %81 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  store %struct.scatterlist* %81, %struct.scatterlist** %33, align 8
  %82 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  store %struct.scatterlist* %82, %struct.scatterlist** %34, align 8
  %83 = load %struct.scatterlist*, %struct.scatterlist** %16, align 8
  store %struct.scatterlist* %83, %struct.scatterlist** %35, align 8
  store i32 0, i32* %27, align 4
  br label %84

84:                                               ; preds = %338, %66
  %85 = load i32, i32* %27, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %341

88:                                               ; preds = %84
  %89 = load %struct.bttv*, %struct.bttv** %14, align 8
  %90 = getelementptr inbounds %struct.bttv, %struct.bttv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* @VCR_HACK_LINES, align 4
  %97 = sub i32 %95, %96
  %98 = icmp uge i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %338

100:                                              ; preds = %93, %88
  %101 = load i32, i32* %24, align 4
  switch i32 %101, label %131 [
    i32 0, label %102
    i32 1, label %103
    i32 2, label %117
  ]

102:                                              ; preds = %100
  store i32 1, i32* %30, align 4
  br label %132

103:                                              ; preds = %100
  %104 = load i32, i32* %36, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %27, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %30, align 4
  br label %116

111:                                              ; preds = %103
  %112 = load i32, i32* %27, align 4
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 1
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %30, align 4
  br label %116

116:                                              ; preds = %111, %106
  br label %132

117:                                              ; preds = %100
  %118 = load i32, i32* %36, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* %27, align 4
  %122 = and i32 %121, 3
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %30, align 4
  br label %130

125:                                              ; preds = %117
  %126 = load i32, i32* %27, align 4
  %127 = and i32 %126, 3
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %30, align 4
  br label %130

130:                                              ; preds = %125, %120
  br label %132

131:                                              ; preds = %100
  store i32 0, i32* %30, align 4
  br label %132

132:                                              ; preds = %131, %130, %116, %102
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %28, align 4
  br label %134

134:                                              ; preds = %320, %132
  %135 = load i32, i32* %28, align 4
  %136 = icmp ugt i32 %135, 0
  br i1 %136, label %137, label %324

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %148, %137
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %144 = call i32 @sg_dma_len(%struct.scatterlist* %143)
  %145 = icmp uge i32 %142, %144
  br label %146

146:                                              ; preds = %141, %138
  %147 = phi i1 [ false, %138 ], [ %145, %141 ]
  br i1 %147, label %148, label %155

148:                                              ; preds = %146
  %149 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %150 = call i32 @sg_dma_len(%struct.scatterlist* %149)
  %151 = load i32, i32* %17, align 4
  %152 = sub i32 %151, %150
  store i32 %152, i32* %17, align 4
  %153 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %154 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %153, i32 1
  store %struct.scatterlist* %154, %struct.scatterlist** %33, align 8
  br label %138

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %166, %155
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i32, i32* %21, align 4
  %161 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  %162 = call i32 @sg_dma_len(%struct.scatterlist* %161)
  %163 = icmp uge i32 %160, %162
  br label %164

164:                                              ; preds = %159, %156
  %165 = phi i1 [ false, %156 ], [ %163, %159 ]
  br i1 %165, label %166, label %173

166:                                              ; preds = %164
  %167 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  %168 = call i32 @sg_dma_len(%struct.scatterlist* %167)
  %169 = load i32, i32* %21, align 4
  %170 = sub i32 %169, %168
  store i32 %170, i32* %21, align 4
  %171 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  %172 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %171, i32 1
  store %struct.scatterlist* %172, %struct.scatterlist** %34, align 8
  br label %156

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %184, %173
  %175 = load i32, i32* %22, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32, i32* %22, align 4
  %179 = load %struct.scatterlist*, %struct.scatterlist** %35, align 8
  %180 = call i32 @sg_dma_len(%struct.scatterlist* %179)
  %181 = icmp uge i32 %178, %180
  br label %182

182:                                              ; preds = %177, %174
  %183 = phi i1 [ false, %174 ], [ %181, %177 ]
  br i1 %183, label %184, label %191

184:                                              ; preds = %182
  %185 = load %struct.scatterlist*, %struct.scatterlist** %35, align 8
  %186 = call i32 @sg_dma_len(%struct.scatterlist* %185)
  %187 = load i32, i32* %22, align 4
  %188 = sub i32 %187, %186
  store i32 %188, i32* %22, align 4
  %189 = load %struct.scatterlist*, %struct.scatterlist** %35, align 8
  %190 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %189, i32 1
  store %struct.scatterlist* %190, %struct.scatterlist** %35, align 8
  br label %174

191:                                              ; preds = %182
  %192 = load i32, i32* %28, align 4
  store i32 %192, i32* %29, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %29, align 4
  %195 = add i32 %193, %194
  %196 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %197 = call i32 @sg_dma_len(%struct.scatterlist* %196)
  %198 = icmp ugt i32 %195, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %191
  %200 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %201 = call i32 @sg_dma_len(%struct.scatterlist* %200)
  %202 = load i32, i32* %17, align 4
  %203 = sub i32 %201, %202
  store i32 %203, i32* %29, align 4
  br label %204

204:                                              ; preds = %199, %191
  %205 = load i32, i32* %30, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %241

207:                                              ; preds = %204
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %29, align 4
  %210 = load i32, i32* %23, align 4
  %211 = lshr i32 %209, %210
  %212 = add i32 %208, %211
  %213 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  %214 = call i32 @sg_dma_len(%struct.scatterlist* %213)
  %215 = icmp ugt i32 %212, %214
  br i1 %215, label %216, label %223

216:                                              ; preds = %207
  %217 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  %218 = call i32 @sg_dma_len(%struct.scatterlist* %217)
  %219 = load i32, i32* %21, align 4
  %220 = sub i32 %218, %219
  %221 = load i32, i32* %23, align 4
  %222 = shl i32 %220, %221
  store i32 %222, i32* %29, align 4
  br label %223

223:                                              ; preds = %216, %207
  %224 = load i32, i32* %22, align 4
  %225 = load i32, i32* %29, align 4
  %226 = load i32, i32* %23, align 4
  %227 = lshr i32 %225, %226
  %228 = add i32 %224, %227
  %229 = load %struct.scatterlist*, %struct.scatterlist** %35, align 8
  %230 = call i32 @sg_dma_len(%struct.scatterlist* %229)
  %231 = icmp ugt i32 %228, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %223
  %233 = load %struct.scatterlist*, %struct.scatterlist** %35, align 8
  %234 = call i32 @sg_dma_len(%struct.scatterlist* %233)
  %235 = load i32, i32* %22, align 4
  %236 = sub i32 %234, %235
  %237 = load i32, i32* %23, align 4
  %238 = shl i32 %236, %237
  store i32 %238, i32* %29, align 4
  br label %239

239:                                              ; preds = %232, %223
  %240 = load i32, i32* @BT848_RISC_WRITE123, align 4
  store i32 %240, i32* %32, align 4
  br label %243

241:                                              ; preds = %204
  %242 = load i32, i32* @BT848_RISC_WRITE1S23, align 4
  store i32 %242, i32* %32, align 4
  br label %243

243:                                              ; preds = %241, %239
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* %28, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load i32, i32* @BT848_RISC_SOL, align 4
  %249 = load i32, i32* %32, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %32, align 4
  br label %251

251:                                              ; preds = %247, %243
  %252 = load i32, i32* %29, align 4
  %253 = load i32, i32* %28, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = load i32, i32* @BT848_RISC_EOL, align 4
  %257 = load i32, i32* %32, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %32, align 4
  br label %259

259:                                              ; preds = %255, %251
  %260 = load i32, i32* %32, align 4
  %261 = load i32, i32* %29, align 4
  %262 = or i32 %260, %261
  %263 = call i8* @cpu_to_le32(i32 %262)
  %264 = ptrtoint i8* %263 to i32
  %265 = load i32*, i32** %31, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %31, align 8
  store i32 %264, i32* %265, align 4
  %267 = load i32, i32* %29, align 4
  %268 = load i32, i32* %23, align 4
  %269 = lshr i32 %267, %268
  %270 = shl i32 %269, 16
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %23, align 4
  %273 = lshr i32 %271, %272
  %274 = or i32 %270, %273
  %275 = call i8* @cpu_to_le32(i32 %274)
  %276 = ptrtoint i8* %275 to i32
  %277 = load i32*, i32** %31, align 8
  %278 = getelementptr inbounds i32, i32* %277, i32 1
  store i32* %278, i32** %31, align 8
  store i32 %276, i32* %277, align 4
  %279 = load %struct.scatterlist*, %struct.scatterlist** %33, align 8
  %280 = call i32 @sg_dma_address(%struct.scatterlist* %279)
  %281 = load i32, i32* %17, align 4
  %282 = add i32 %280, %281
  %283 = call i8* @cpu_to_le32(i32 %282)
  %284 = ptrtoint i8* %283 to i32
  %285 = load i32*, i32** %31, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %31, align 8
  store i32 %284, i32* %285, align 4
  %287 = load i32, i32* %29, align 4
  %288 = load i32, i32* %17, align 4
  %289 = add i32 %288, %287
  store i32 %289, i32* %17, align 4
  %290 = load i32, i32* %30, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %319

292:                                              ; preds = %259
  %293 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  %294 = call i32 @sg_dma_address(%struct.scatterlist* %293)
  %295 = load i32, i32* %21, align 4
  %296 = add i32 %294, %295
  %297 = call i8* @cpu_to_le32(i32 %296)
  %298 = ptrtoint i8* %297 to i32
  %299 = load i32*, i32** %31, align 8
  %300 = getelementptr inbounds i32, i32* %299, i32 1
  store i32* %300, i32** %31, align 8
  store i32 %298, i32* %299, align 4
  %301 = load i32, i32* %29, align 4
  %302 = load i32, i32* %23, align 4
  %303 = lshr i32 %301, %302
  %304 = load i32, i32* %21, align 4
  %305 = add i32 %304, %303
  store i32 %305, i32* %21, align 4
  %306 = load %struct.scatterlist*, %struct.scatterlist** %35, align 8
  %307 = call i32 @sg_dma_address(%struct.scatterlist* %306)
  %308 = load i32, i32* %22, align 4
  %309 = add i32 %307, %308
  %310 = call i8* @cpu_to_le32(i32 %309)
  %311 = ptrtoint i8* %310 to i32
  %312 = load i32*, i32** %31, align 8
  %313 = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %313, i32** %31, align 8
  store i32 %311, i32* %312, align 4
  %314 = load i32, i32* %29, align 4
  %315 = load i32, i32* %23, align 4
  %316 = lshr i32 %314, %315
  %317 = load i32, i32* %22, align 4
  %318 = add i32 %317, %316
  store i32 %318, i32* %22, align 4
  br label %319

319:                                              ; preds = %292, %259
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %29, align 4
  %322 = load i32, i32* %28, align 4
  %323 = sub i32 %322, %321
  store i32 %323, i32* %28, align 4
  br label %134

324:                                              ; preds = %134
  %325 = load i32, i32* %19, align 4
  %326 = load i32, i32* %17, align 4
  %327 = add i32 %326, %325
  store i32 %327, i32* %17, align 4
  %328 = load i32, i32* %30, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %324
  %331 = load i32, i32* %25, align 4
  %332 = load i32, i32* %21, align 4
  %333 = add i32 %332, %331
  store i32 %333, i32* %21, align 4
  %334 = load i32, i32* %25, align 4
  %335 = load i32, i32* %22, align 4
  %336 = add i32 %335, %334
  store i32 %336, i32* %22, align 4
  br label %337

337:                                              ; preds = %330, %324
  br label %338

338:                                              ; preds = %337, %99
  %339 = load i32, i32* %27, align 4
  %340 = add i32 %339, 1
  store i32 %340, i32* %27, align 4
  br label %84

341:                                              ; preds = %84
  %342 = load i32*, i32** %31, align 8
  %343 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %15, align 8
  %344 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %343, i32 0, i32 2
  store i32* %342, i32** %344, align 8
  %345 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %15, align 8
  %346 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %345, i32 0, i32 2
  %347 = load i32*, i32** %346, align 8
  %348 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %15, align 8
  %349 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = ptrtoint i32* %347 to i64
  %352 = ptrtoint i32* %350 to i64
  %353 = sub i64 %351, %352
  %354 = sdiv exact i64 %353, 4
  %355 = add nsw i64 %354, 2
  %356 = mul i64 %355, 4
  %357 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %15, align 8
  %358 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = sext i32 %359 to i64
  %361 = icmp ugt i64 %356, %360
  %362 = zext i1 %361 to i32
  %363 = call i32 @BUG_ON(i32 %362)
  store i32 0, i32* %13, align 4
  br label %364

364:                                              ; preds = %341, %64
  %365 = load i32, i32* %13, align 4
  ret i32 %365
}

declare dso_local i32 @btcx_riscmem_alloc(i32, %struct.btcx_riscmem*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
