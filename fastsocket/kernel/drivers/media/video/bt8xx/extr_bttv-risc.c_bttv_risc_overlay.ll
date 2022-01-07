; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_risc_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-risc.c_bttv_risc_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.btcx_riscmem = type { i32, i32*, i32* }
%struct.bttv_format = type { i32 }
%struct.bttv_overlay = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.btcx_skiplist = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BT848_RISC_SYNC = common dso_local global i32 0, align 4
@BT848_FIFO_STATUS_FM1 = common dso_local global i32 0, align 4
@VCR_HACK_LINES = common dso_local global i32 0, align 4
@BT848_RISC_WRITE = common dso_local global i32 0, align 4
@BT848_RISC_SKIP = common dso_local global i32 0, align 4
@BT848_RISC_SOL = common dso_local global i32 0, align 4
@BT848_RISC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, %struct.btcx_riscmem*, %struct.bttv_format*, %struct.bttv_overlay*, i32, i32)* @bttv_risc_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_risc_overlay(%struct.bttv* %0, %struct.btcx_riscmem* %1, %struct.bttv_format* %2, %struct.bttv_overlay* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bttv*, align 8
  %9 = alloca %struct.btcx_riscmem*, align 8
  %10 = alloca %struct.bttv_format*, align 8
  %11 = alloca %struct.bttv_overlay*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.btcx_skiplist*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %8, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %9, align 8
  store %struct.bttv_format* %2, %struct.bttv_format** %10, align 8
  store %struct.bttv_overlay* %3, %struct.bttv_overlay** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %27 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %28 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.btcx_skiplist* @kmalloc(i32 %32, i32 %33)
  store %struct.btcx_skiplist* %34, %struct.btcx_skiplist** %22, align 8
  %35 = icmp eq %struct.btcx_skiplist* null, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %6
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %320

39:                                               ; preds = %6
  %40 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %41 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 3, %42
  %44 = add nsw i32 %43, 2
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47, %39
  %51 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %52 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = ashr i32 %55, 1
  br label %62

57:                                               ; preds = %47
  %58 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %59 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  br label %62

62:                                               ; preds = %57, %50
  %63 = phi i32 [ %56, %50 ], [ %61, %57 ]
  %64 = mul nsw i32 %44, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 4
  store i32 %66, i32* %14, align 4
  %67 = load %struct.bttv*, %struct.bttv** %8, align 8
  %68 = getelementptr inbounds %struct.bttv, %struct.bttv* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 %72, 4
  %74 = call i32 @btcx_riscmem_alloc(i32 %70, %struct.btcx_riscmem* %71, i32 %73)
  store i32 %74, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %62
  %77 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %78 = call i32 @kfree(%struct.btcx_skiplist* %77)
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %320

80:                                               ; preds = %62
  %81 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %82 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %23, align 8
  %84 = load i32, i32* @BT848_RISC_SYNC, align 4
  %85 = load i32, i32* @BT848_FIFO_STATUS_FM1, align 4
  %86 = or i32 %84, %85
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load i32*, i32** %23, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %23, align 8
  store i32 %88, i32* %89, align 4
  %91 = call i8* @cpu_to_le32(i32 0)
  %92 = ptrtoint i8* %91 to i32
  %93 = load i32*, i32** %23, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %23, align 8
  store i32 %92, i32* %93, align 4
  %95 = load %struct.bttv*, %struct.bttv** %8, align 8
  %96 = getelementptr inbounds %struct.bttv, %struct.bttv* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %26, align 4
  %100 = load %struct.bttv*, %struct.bttv** %8, align 8
  %101 = getelementptr inbounds %struct.bttv, %struct.bttv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %106 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %104, %108
  %110 = load i32, i32* %26, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %26, align 4
  %112 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %113 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 3
  %116 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %117 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %115, %119
  %121 = load i32, i32* %26, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %26, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %123

123:                                              ; preds = %285, %80
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %126 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %295

130:                                              ; preds = %123
  %131 = load %struct.bttv*, %struct.bttv** %8, align 8
  %132 = getelementptr inbounds %struct.bttv, %struct.bttv* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %138 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @VCR_HACK_LINES, align 4
  %142 = sub nsw i32 %140, %141
  %143 = icmp sge i32 %136, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %285

145:                                              ; preds = %135, %130
  %146 = load i32, i32* %16, align 4
  %147 = srem i32 %146, 2
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %285

153:                                              ; preds = %149, %145
  %154 = load i32, i32* %16, align 4
  %155 = srem i32 %154, 2
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %285

161:                                              ; preds = %157, %153
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %179

165:                                              ; preds = %161
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %168 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %172 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %173 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %176 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @btcx_calc_skips(i32 %166, i32 %170, i32* %17, %struct.btcx_skiplist* %171, i32* %21, i32 %174, i32 %177)
  br label %179

179:                                              ; preds = %165, %161
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %180

180:                                              ; preds = %282, %179
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %183 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %181, %185
  br i1 %186, label %187, label %284

187:                                              ; preds = %180
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %21, align 4
  %190 = icmp uge i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = load i32, i32* @BT848_RISC_WRITE, align 4
  store i32 %192, i32* %24, align 4
  %193 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %194 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %19, align 4
  br label %225

197:                                              ; preds = %187
  %198 = load i32, i32* %18, align 4
  %199 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %200 = load i32, i32* %20, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %199, i64 %201
  %203 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %198, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %197
  %207 = load i32, i32* @BT848_RISC_WRITE, align 4
  store i32 %207, i32* %24, align 4
  %208 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %209 = load i32, i32* %20, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %208, i64 %210
  %212 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %19, align 4
  br label %224

214:                                              ; preds = %197
  %215 = load i32, i32* @BT848_RISC_SKIP, align 4
  store i32 %215, i32* %24, align 4
  %216 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %217 = load i32, i32* %20, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %216, i64 %218
  %220 = getelementptr inbounds %struct.btcx_skiplist, %struct.btcx_skiplist* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %19, align 4
  %222 = load i32, i32* %20, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %20, align 4
  br label %224

224:                                              ; preds = %214, %206
  br label %225

225:                                              ; preds = %224, %191
  %226 = load i32, i32* @BT848_RISC_WRITE, align 4
  %227 = load i32, i32* %24, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %225
  %230 = load i32, i32* %26, align 4
  %231 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %232 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = ashr i32 %233, 3
  %235 = load i32, i32* %18, align 4
  %236 = mul nsw i32 %234, %235
  %237 = add nsw i32 %230, %236
  store i32 %237, i32* %25, align 4
  br label %239

238:                                              ; preds = %225
  store i32 0, i32* %25, align 4
  br label %239

239:                                              ; preds = %238, %229
  %240 = load i32, i32* %18, align 4
  %241 = icmp eq i32 0, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load i32, i32* @BT848_RISC_SOL, align 4
  %244 = load i32, i32* %24, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %24, align 4
  br label %246

246:                                              ; preds = %242, %239
  %247 = load %struct.bttv_overlay*, %struct.bttv_overlay** %11, align 8
  %248 = getelementptr inbounds %struct.bttv_overlay, %struct.bttv_overlay* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %19, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %246
  %254 = load i32, i32* @BT848_RISC_EOL, align 4
  %255 = load i32, i32* %24, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %24, align 4
  br label %257

257:                                              ; preds = %253, %246
  %258 = load %struct.bttv_format*, %struct.bttv_format** %10, align 8
  %259 = getelementptr inbounds %struct.bttv_format, %struct.bttv_format* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = ashr i32 %260, 3
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* %18, align 4
  %264 = sub nsw i32 %262, %263
  %265 = mul nsw i32 %261, %264
  %266 = load i32, i32* %24, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %24, align 4
  %268 = load i32, i32* %24, align 4
  %269 = call i8* @cpu_to_le32(i32 %268)
  %270 = ptrtoint i8* %269 to i32
  %271 = load i32*, i32** %23, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %23, align 8
  store i32 %270, i32* %271, align 4
  %273 = load i32, i32* %25, align 4
  %274 = icmp ne i32 0, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %257
  %276 = load i32, i32* %25, align 4
  %277 = call i8* @cpu_to_le32(i32 %276)
  %278 = ptrtoint i8* %277 to i32
  %279 = load i32*, i32** %23, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %280, i32** %23, align 8
  store i32 %278, i32* %279, align 4
  br label %281

281:                                              ; preds = %275, %257
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %19, align 4
  store i32 %283, i32* %18, align 4
  br label %180

284:                                              ; preds = %180
  br label %285

285:                                              ; preds = %284, %160, %152, %144
  %286 = load i32, i32* %16, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %16, align 4
  %288 = load %struct.bttv*, %struct.bttv** %8, align 8
  %289 = getelementptr inbounds %struct.bttv, %struct.bttv* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %26, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %26, align 4
  br label %123

295:                                              ; preds = %123
  %296 = load i32*, i32** %23, align 8
  %297 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %298 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %297, i32 0, i32 2
  store i32* %296, i32** %298, align 8
  %299 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %300 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %303 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %302, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = ptrtoint i32* %301 to i64
  %306 = ptrtoint i32* %304 to i64
  %307 = sub i64 %305, %306
  %308 = sdiv exact i64 %307, 4
  %309 = add nsw i64 %308, 2
  %310 = mul i64 %309, 4
  %311 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %9, align 8
  %312 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = icmp ugt i64 %310, %314
  %316 = zext i1 %315 to i32
  %317 = call i32 @BUG_ON(i32 %316)
  %318 = load %struct.btcx_skiplist*, %struct.btcx_skiplist** %22, align 8
  %319 = call i32 @kfree(%struct.btcx_skiplist* %318)
  store i32 0, i32* %7, align 4
  br label %320

320:                                              ; preds = %295, %76, %36
  %321 = load i32, i32* %7, align 4
  ret i32 %321
}

declare dso_local %struct.btcx_skiplist* @kmalloc(i32, i32) #1

declare dso_local i32 @btcx_riscmem_alloc(i32, %struct.btcx_riscmem*, i32) #1

declare dso_local i32 @kfree(%struct.btcx_skiplist*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @btcx_calc_skips(i32, i32, i32*, %struct.btcx_skiplist*, i32*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
