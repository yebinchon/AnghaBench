; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_AllocCommonBuffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_AllocCommonBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@OVERFLOW_BUFFER_SIZE = common dso_local global i32 0, align 4
@STREAM_VIDEOIN1 = common dso_local global i32 0, align 4
@MAX_STREAM = common dso_local global i32 0, align 4
@KSSTATE_STOP = common dso_local global i32 0, align 4
@NGENE_IO_TV = common dso_local global i32 0, align 4
@NGENE_IO_HDTV = common dso_local global i32 0, align 4
@NGENE_IO_AIN = common dso_local global i32 0, align 4
@RingBufferSizes = common dso_local global i32* null, align 8
@Buffer1Sizes = common dso_local global i32* null, align 8
@Buffer2Sizes = common dso_local global i32* null, align 8
@MAX_HDTV_BUFFER_SIZE = common dso_local global i32 0, align 4
@NGENE_IO_TSIN = common dso_local global i32 0, align 4
@NGENE_IO_TSOUT = common dso_local global i32 0, align 4
@RING_SIZE_TS = common dso_local global i32 0, align 4
@MAX_TS_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene*)* @AllocCommonBuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocCommonBuffers(%struct.ngene* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ngene*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ngene* %0, %struct.ngene** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ngene*, %struct.ngene** %3, align 8
  %8 = getelementptr inbounds %struct.ngene, %struct.ngene* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ngene*, %struct.ngene** %3, align 8
  %11 = getelementptr inbounds %struct.ngene, %struct.ngene* %10, i32 0, i32 9
  %12 = call i8* @pci_alloc_consistent(i32 %9, i32 4096, i32* %11)
  %13 = load %struct.ngene*, %struct.ngene** %3, align 8
  %14 = getelementptr inbounds %struct.ngene, %struct.ngene* %13, i32 0, i32 5
  store i8* %12, i8** %14, align 8
  %15 = load %struct.ngene*, %struct.ngene** %3, align 8
  %16 = getelementptr inbounds %struct.ngene, %struct.ngene* %15, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %280

22:                                               ; preds = %1
  %23 = load %struct.ngene*, %struct.ngene** %3, align 8
  %24 = getelementptr inbounds %struct.ngene, %struct.ngene* %23, i32 0, i32 5
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.ngene*, %struct.ngene** %3, align 8
  %27 = getelementptr inbounds %struct.ngene, %struct.ngene* %26, i32 0, i32 8
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ngene*, %struct.ngene** %3, align 8
  %29 = getelementptr inbounds %struct.ngene, %struct.ngene* %28, i32 0, i32 5
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr i8, i8* %30, i64 256
  %32 = load %struct.ngene*, %struct.ngene** %3, align 8
  %33 = getelementptr inbounds %struct.ngene, %struct.ngene* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ngene*, %struct.ngene** %3, align 8
  %35 = getelementptr inbounds %struct.ngene, %struct.ngene* %34, i32 0, i32 5
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr i8, i8* %36, i64 512
  %38 = load %struct.ngene*, %struct.ngene** %3, align 8
  %39 = getelementptr inbounds %struct.ngene, %struct.ngene* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ngene*, %struct.ngene** %3, align 8
  %41 = getelementptr inbounds %struct.ngene, %struct.ngene* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OVERFLOW_BUFFER_SIZE, align 4
  %44 = load %struct.ngene*, %struct.ngene** %3, align 8
  %45 = getelementptr inbounds %struct.ngene, %struct.ngene* %44, i32 0, i32 1
  %46 = call i8* @pci_alloc_consistent(i32 %42, i32 %43, i32* %45)
  %47 = load %struct.ngene*, %struct.ngene** %3, align 8
  %48 = getelementptr inbounds %struct.ngene, %struct.ngene* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ngene*, %struct.ngene** %3, align 8
  %50 = getelementptr inbounds %struct.ngene, %struct.ngene* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %22
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %280

56:                                               ; preds = %22
  %57 = load %struct.ngene*, %struct.ngene** %3, align 8
  %58 = getelementptr inbounds %struct.ngene, %struct.ngene* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @OVERFLOW_BUFFER_SIZE, align 4
  %61 = call i32 @memset(i8* %59, i32 0, i32 %60)
  %62 = load i32, i32* @STREAM_VIDEOIN1, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %275, %56
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @MAX_STREAM, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %278

67:                                               ; preds = %63
  %68 = load %struct.ngene*, %struct.ngene** %3, align 8
  %69 = getelementptr inbounds %struct.ngene, %struct.ngene* %68, i32 0, i32 3
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @KSSTATE_STOP, align 4
  %78 = load %struct.ngene*, %struct.ngene** %3, align 8
  %79 = getelementptr inbounds %struct.ngene, %struct.ngene* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32 %77, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @NGENE_IO_TV, align 4
  %87 = load i32, i32* @NGENE_IO_HDTV, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @NGENE_IO_AIN, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %85, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %176

93:                                               ; preds = %67
  %94 = load %struct.ngene*, %struct.ngene** %3, align 8
  %95 = getelementptr inbounds %struct.ngene, %struct.ngene* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ngene*, %struct.ngene** %3, align 8
  %98 = getelementptr inbounds %struct.ngene, %struct.ngene* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32*, i32** @RingBufferSizes, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @create_ring_buffer(i32 %96, i32* %103, i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %93
  br label %278

113:                                              ; preds = %93
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @NGENE_IO_TV, align 4
  %116 = load i32, i32* @NGENE_IO_AIN, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %113
  %121 = load %struct.ngene*, %struct.ngene** %3, align 8
  %122 = getelementptr inbounds %struct.ngene, %struct.ngene* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ngene*, %struct.ngene** %3, align 8
  %125 = getelementptr inbounds %struct.ngene, %struct.ngene* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ngene*, %struct.ngene** %3, align 8
  %128 = getelementptr inbounds %struct.ngene, %struct.ngene* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32*, i32** @Buffer1Sizes, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** @Buffer2Sizes, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @AllocateRingBuffers(i32 %123, i32 %126, i32* %133, i32 %138, i32 %143)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %120
  br label %278

148:                                              ; preds = %120
  br label %175

149:                                              ; preds = %113
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @NGENE_IO_HDTV, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %149
  %155 = load %struct.ngene*, %struct.ngene** %3, align 8
  %156 = getelementptr inbounds %struct.ngene, %struct.ngene* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ngene*, %struct.ngene** %3, align 8
  %159 = getelementptr inbounds %struct.ngene, %struct.ngene* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.ngene*, %struct.ngene** %3, align 8
  %162 = getelementptr inbounds %struct.ngene, %struct.ngene* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i32, i32* @MAX_HDTV_BUFFER_SIZE, align 4
  %169 = call i32 @AllocateRingBuffers(i32 %157, i32 %160, i32* %167, i32 %168, i32 0)
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* %4, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %154
  br label %278

173:                                              ; preds = %154
  br label %174

174:                                              ; preds = %173, %149
  br label %175

175:                                              ; preds = %174, %148
  br label %176

176:                                              ; preds = %175, %67
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @NGENE_IO_TSIN, align 4
  %179 = load i32, i32* @NGENE_IO_TSOUT, align 4
  %180 = or i32 %178, %179
  %181 = and i32 %177, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %219

183:                                              ; preds = %176
  %184 = load %struct.ngene*, %struct.ngene** %3, align 8
  %185 = getelementptr inbounds %struct.ngene, %struct.ngene* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ngene*, %struct.ngene** %3, align 8
  %188 = getelementptr inbounds %struct.ngene, %struct.ngene* %187, i32 0, i32 0
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* @RING_SIZE_TS, align 4
  %195 = call i32 @create_ring_buffer(i32 %186, i32* %193, i32 %194)
  store i32 %195, i32* %4, align 4
  %196 = load i32, i32* %4, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %183
  br label %278

199:                                              ; preds = %183
  %200 = load %struct.ngene*, %struct.ngene** %3, align 8
  %201 = getelementptr inbounds %struct.ngene, %struct.ngene* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ngene*, %struct.ngene** %3, align 8
  %204 = getelementptr inbounds %struct.ngene, %struct.ngene* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ngene*, %struct.ngene** %3, align 8
  %207 = getelementptr inbounds %struct.ngene, %struct.ngene* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* @MAX_TS_BUFFER_SIZE, align 4
  %214 = call i32 @AllocateRingBuffers(i32 %202, i32 %205, i32* %212, i32 %213, i32 0)
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %199
  br label %278

218:                                              ; preds = %199
  br label %219

219:                                              ; preds = %218, %176
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @NGENE_IO_TSOUT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %274

224:                                              ; preds = %219
  %225 = load %struct.ngene*, %struct.ngene** %3, align 8
  %226 = getelementptr inbounds %struct.ngene, %struct.ngene* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.ngene*, %struct.ngene** %3, align 8
  %229 = getelementptr inbounds %struct.ngene, %struct.ngene* %228, i32 0, i32 0
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = call i32 @create_ring_buffer(i32 %227, i32* %234, i32 1)
  store i32 %235, i32* %4, align 4
  %236 = load i32, i32* %4, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %224
  br label %278

239:                                              ; preds = %224
  %240 = load %struct.ngene*, %struct.ngene** %3, align 8
  %241 = getelementptr inbounds %struct.ngene, %struct.ngene* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.ngene*, %struct.ngene** %3, align 8
  %244 = getelementptr inbounds %struct.ngene, %struct.ngene* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.ngene*, %struct.ngene** %3, align 8
  %247 = getelementptr inbounds %struct.ngene, %struct.ngene* %246, i32 0, i32 0
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load i32, i32* @MAX_TS_BUFFER_SIZE, align 4
  %254 = call i32 @AllocateRingBuffers(i32 %242, i32 %245, i32* %252, i32 %253, i32 0)
  store i32 %254, i32* %4, align 4
  %255 = load i32, i32* %4, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %239
  br label %278

258:                                              ; preds = %239
  %259 = load %struct.ngene*, %struct.ngene** %3, align 8
  %260 = getelementptr inbounds %struct.ngene, %struct.ngene* %259, i32 0, i32 0
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  %266 = load %struct.ngene*, %struct.ngene** %3, align 8
  %267 = getelementptr inbounds %struct.ngene, %struct.ngene* %266, i32 0, i32 0
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = call i32 @FillTSIdleBuffer(i32* %265, i32* %272)
  br label %274

274:                                              ; preds = %258, %219
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %5, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %5, align 4
  br label %63

278:                                              ; preds = %257, %238, %217, %198, %172, %147, %112, %63
  %279 = load i32, i32* %4, align 4
  store i32 %279, i32* %2, align 4
  br label %280

280:                                              ; preds = %278, %53, %19
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @create_ring_buffer(i32, i32*, i32) #1

declare dso_local i32 @AllocateRingBuffers(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @FillTSIdleBuffer(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
