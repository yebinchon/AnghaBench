; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_saa7146_pgtable_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_saa7146_pgtable_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.saa7146_buf = type { %struct.saa7146_pgtable*, %struct.TYPE_2__*, i32 }
%struct.saa7146_pgtable = type { i32*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.videobuf_dmabuf = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i64 }
%struct.saa7146_format = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"dev:%p, buf:%p, sg_len:%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"size:%d, m1:%d, m2:%d, m3:%d, o1:%d, o2:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_buf*)* @saa7146_pgtable_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7146_pgtable_build(%struct.saa7146_dev* %0, %struct.saa7146_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_buf*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.videobuf_dmabuf*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa7146_format*, align 8
  %11 = alloca %struct.saa7146_pgtable*, align 8
  %12 = alloca %struct.saa7146_pgtable*, align 8
  %13 = alloca %struct.saa7146_pgtable*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.saa7146_pgtable*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_buf* %1, %struct.saa7146_buf** %5, align 8
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %28 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %6, align 8
  %30 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %31 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %30, i32 0, i32 2
  %32 = call %struct.videobuf_dmabuf* @videobuf_to_dma(i32* %31)
  store %struct.videobuf_dmabuf* %32, %struct.videobuf_dmabuf** %7, align 8
  %33 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %34 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %33, i32 0, i32 1
  %35 = load %struct.scatterlist*, %struct.scatterlist** %34, align 8
  store %struct.scatterlist* %35, %struct.scatterlist** %8, align 8
  %36 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %37 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %40 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %41 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %39, i32 %44)
  store %struct.saa7146_format* %45, %struct.saa7146_format** %10, align 8
  %46 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %47 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @DEB_EE(i8* %50)
  %52 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %53 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IS_PLANAR(i32 %54)
  %56 = icmp ne i64 0, %55
  br i1 %56, label %57, label %333

57:                                               ; preds = %2
  %58 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %59 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %58, i32 0, i32 0
  %60 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %59, align 8
  %61 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %60, i64 0
  store %struct.saa7146_pgtable* %61, %struct.saa7146_pgtable** %11, align 8
  %62 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %63 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %62, i32 0, i32 0
  %64 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %63, align 8
  %65 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %64, i64 1
  store %struct.saa7146_pgtable* %65, %struct.saa7146_pgtable** %12, align 8
  %66 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %67 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %66, i32 0, i32 0
  %68 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %67, align 8
  %69 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %68, i64 2
  store %struct.saa7146_pgtable* %69, %struct.saa7146_pgtable** %13, align 8
  %70 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %71 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %76 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %74, %79
  store i32 %80, i32* %18, align 4
  %81 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %82 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %168 [
    i32 12, label %84
    i32 16, label %127
  ]

84:                                               ; preds = %57
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = sdiv i32 %87, %88
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = sdiv i32 %92, 4
  %94 = add nsw i32 %91, %93
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = sdiv i32 %96, %97
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = sdiv i32 %101, 2
  %103 = add nsw i32 %100, %102
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = sdiv i32 %105, %106
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %23, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = srem i32 %109, %110
  store i32 %111, i32* %24, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = sdiv i32 %113, 4
  %115 = add nsw i32 %112, %114
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = srem i32 %115, %116
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* %25, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 @DEB_CAP(i8* %125)
  br label %169

127:                                              ; preds = %57
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @PAGE_SIZE, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = sdiv i32 %130, %131
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %18, align 4
  %136 = sdiv i32 %135, 2
  %137 = add nsw i32 %134, %136
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* @PAGE_SIZE, align 4
  %141 = sdiv i32 %139, %140
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %22, align 4
  %143 = load i32, i32* %18, align 4
  %144 = mul nsw i32 2, %143
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = add nsw i32 %144, %145
  %147 = load i32, i32* @PAGE_SIZE, align 4
  %148 = sdiv i32 %146, %147
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %23, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* @PAGE_SIZE, align 4
  %152 = srem i32 %150, %151
  store i32 %152, i32* %24, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = sdiv i32 %154, 2
  %156 = add nsw i32 %153, %155
  %157 = load i32, i32* @PAGE_SIZE, align 4
  %158 = srem i32 %156, %157
  store i32 %158, i32* %25, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %24, align 4
  %164 = load i32, i32* %25, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = call i32 @DEB_CAP(i8* %166)
  br label %169

168:                                              ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %344

169:                                              ; preds = %127, %84
  %170 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %171 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %14, align 8
  %173 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %12, align 8
  %174 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  store i32* %175, i32** %15, align 8
  %176 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %13, align 8
  %177 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %16, align 8
  store i32 0, i32* %19, align 4
  br label %179

179:                                              ; preds = %206, %169
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %211

183:                                              ; preds = %179
  store i32 0, i32* %20, align 4
  br label %184

184:                                              ; preds = %200, %183
  %185 = load i32, i32* %20, align 4
  %186 = mul nsw i32 %185, 4096
  %187 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %188 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %205

191:                                              ; preds = %184
  %192 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %193 = call i64 @sg_dma_address(%struct.scatterlist* %192)
  %194 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %195 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %193, %196
  %198 = call i32 @cpu_to_le32(i64 %197)
  %199 = load i32*, i32** %14, align 8
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %20, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %20, align 4
  %203 = load i32*, i32** %14, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %14, align 8
  br label %184

205:                                              ; preds = %184
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %19, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %19, align 4
  %209 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %210 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %209, i32 1
  store %struct.scatterlist* %210, %struct.scatterlist** %8, align 8
  br label %179

211:                                              ; preds = %179
  %212 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %7, align 8
  %213 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %212, i32 0, i32 1
  %214 = load %struct.scatterlist*, %struct.scatterlist** %213, align 8
  %215 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %218 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  %219 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %220 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %24, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %221, %223
  %225 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %12, align 8
  %226 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %228 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i32, i32* %25, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %229, %231
  %233 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %13, align 8
  %234 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %233, i32 0, i32 1
  store i64 %232, i64* %234, align 8
  %235 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %236 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  store i32* %237, i32** %14, align 8
  %238 = load i32, i32* %21, align 4
  store i32 %238, i32* %19, align 4
  br label %239

239:                                              ; preds = %250, %211
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %22, align 4
  %242 = icmp sle i32 %240, %241
  br i1 %242, label %243, label %255

243:                                              ; preds = %239
  %244 = load i32*, i32** %14, align 8
  %245 = load i32, i32* %19, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %15, align 8
  store i32 %248, i32* %249, align 4
  br label %250

250:                                              ; preds = %243
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %19, align 4
  %253 = load i32*, i32** %15, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %15, align 8
  br label %239

255:                                              ; preds = %239
  %256 = load i32*, i32** %15, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 -1
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %17, align 4
  br label %259

259:                                              ; preds = %265, %255
  %260 = load i32, i32* %19, align 4
  %261 = icmp slt i32 %260, 1024
  br i1 %261, label %262, label %270

262:                                              ; preds = %259
  %263 = load i32, i32* %17, align 4
  %264 = load i32*, i32** %15, align 8
  store i32 %263, i32* %264, align 4
  br label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %19, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %19, align 4
  %268 = load i32*, i32** %15, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %15, align 8
  br label %259

270:                                              ; preds = %259
  %271 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %272 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  store i32* %273, i32** %14, align 8
  %274 = load i32, i32* %22, align 4
  store i32 %274, i32* %19, align 4
  br label %275

275:                                              ; preds = %286, %270
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %23, align 4
  %278 = icmp sle i32 %276, %277
  br i1 %278, label %279, label %291

279:                                              ; preds = %275
  %280 = load i32*, i32** %14, align 8
  %281 = load i32, i32* %19, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %16, align 8
  store i32 %284, i32* %285, align 4
  br label %286

286:                                              ; preds = %279
  %287 = load i32, i32* %19, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %19, align 4
  %289 = load i32*, i32** %16, align 8
  %290 = getelementptr inbounds i32, i32* %289, i32 1
  store i32* %290, i32** %16, align 8
  br label %275

291:                                              ; preds = %275
  %292 = load i32*, i32** %16, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 -1
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* %17, align 4
  br label %295

295:                                              ; preds = %301, %291
  %296 = load i32, i32* %19, align 4
  %297 = icmp slt i32 %296, 1024
  br i1 %297, label %298, label %306

298:                                              ; preds = %295
  %299 = load i32, i32* %17, align 4
  %300 = load i32*, i32** %16, align 8
  store i32 %299, i32* %300, align 4
  br label %301

301:                                              ; preds = %298
  %302 = load i32, i32* %19, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %19, align 4
  %304 = load i32*, i32** %16, align 8
  %305 = getelementptr inbounds i32, i32* %304, i32 1
  store i32* %305, i32** %16, align 8
  br label %295

306:                                              ; preds = %295
  %307 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %308 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %21, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  store i32* %312, i32** %14, align 8
  %313 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %11, align 8
  %314 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %21, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %17, align 4
  %320 = load i32, i32* %21, align 4
  store i32 %320, i32* %19, align 4
  br label %321

321:                                              ; preds = %327, %306
  %322 = load i32, i32* %19, align 4
  %323 = icmp slt i32 %322, 1024
  br i1 %323, label %324, label %332

324:                                              ; preds = %321
  %325 = load i32, i32* %17, align 4
  %326 = load i32*, i32** %14, align 8
  store i32 %325, i32* %326, align 4
  br label %327

327:                                              ; preds = %324
  %328 = load i32, i32* %19, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %19, align 4
  %330 = load i32*, i32** %14, align 8
  %331 = getelementptr inbounds i32, i32* %330, i32 1
  store i32* %331, i32** %14, align 8
  br label %321

332:                                              ; preds = %321
  br label %343

333:                                              ; preds = %2
  %334 = load %struct.saa7146_buf*, %struct.saa7146_buf** %5, align 8
  %335 = getelementptr inbounds %struct.saa7146_buf, %struct.saa7146_buf* %334, i32 0, i32 0
  %336 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %335, align 8
  %337 = getelementptr inbounds %struct.saa7146_pgtable, %struct.saa7146_pgtable* %336, i64 0
  store %struct.saa7146_pgtable* %337, %struct.saa7146_pgtable** %26, align 8
  %338 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %339 = load %struct.saa7146_pgtable*, %struct.saa7146_pgtable** %26, align 8
  %340 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %341 = load i32, i32* %9, align 4
  %342 = call i32 @saa7146_pgtable_build_single(%struct.pci_dev* %338, %struct.saa7146_pgtable* %339, %struct.scatterlist* %340, i32 %341)
  store i32 %342, i32* %3, align 4
  br label %344

343:                                              ; preds = %332
  store i32 0, i32* %3, align 4
  br label %344

344:                                              ; preds = %343, %333, %168
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local %struct.videobuf_dmabuf* @videobuf_to_dma(i32*) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i64 @IS_PLANAR(i32) #1

declare dso_local i32 @DEB_CAP(i8*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @saa7146_pgtable_build_single(%struct.pci_dev*, %struct.saa7146_pgtable*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
