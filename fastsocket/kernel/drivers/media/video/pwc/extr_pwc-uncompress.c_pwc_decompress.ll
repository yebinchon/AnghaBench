; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-uncompress.c_pwc_decompress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-uncompress.c_pwc_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i64, i32, i64, i64, i64, i8*, i32, i64, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__*, i8*, %struct.pwc_frame_buf* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pwc_frame_buf = type { i8* }
%struct.pwc_raw_frame = type { %struct.pwc_raw_frame*, i8*, i8* }

@EFAULT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@PSZ_VGA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Mode Bayer is not supported for now\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"This chipset is not supported for now\0A\00", align 1
@PWCX_FLAG_PLANAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_decompress(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca %struct.pwc_frame_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.pwc_raw_frame*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  %16 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %17 = icmp eq %struct.pwc_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %277

21:                                               ; preds = %1
  %22 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %23 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %22, i32 0, i32 15
  %24 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %23, align 8
  store %struct.pwc_frame_buf* %24, %struct.pwc_frame_buf** %4, align 8
  %25 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %4, align 8
  %26 = icmp eq %struct.pwc_frame_buf* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %277

30:                                               ; preds = %21
  %31 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %32 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %31, i32 0, i32 14
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  %34 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 13
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %38 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr i8, i8* %43, i64 %44
  store i8* %45, i8** %10, align 8
  %46 = load %struct.pwc_frame_buf*, %struct.pwc_frame_buf** %4, align 8
  %47 = getelementptr inbounds %struct.pwc_frame_buf, %struct.pwc_frame_buf* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %50 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %48, i64 %52
  store i8* %53, i8** %9, align 8
  %54 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %55 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %30
  %60 = load i8*, i8** %10, align 8
  %61 = bitcast i8* %60 to %struct.pwc_raw_frame*
  store %struct.pwc_raw_frame* %61, %struct.pwc_raw_frame** %15, align 8
  %62 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %63 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @cpu_to_le16(i64 %64)
  %66 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %15, align 8
  %67 = getelementptr inbounds %struct.pwc_raw_frame, %struct.pwc_raw_frame* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %69 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @cpu_to_le16(i64 %70)
  %72 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %15, align 8
  %73 = getelementptr inbounds %struct.pwc_raw_frame, %struct.pwc_raw_frame* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %15, align 8
  %75 = getelementptr inbounds %struct.pwc_raw_frame, %struct.pwc_raw_frame* %74, i32 0, i32 0
  %76 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %75, align 8
  %77 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %78 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @memcpy(%struct.pwc_raw_frame* %76, i8* %79, i32 4)
  %81 = load %struct.pwc_raw_frame*, %struct.pwc_raw_frame** %15, align 8
  %82 = getelementptr inbounds %struct.pwc_raw_frame, %struct.pwc_raw_frame* %81, i64 1
  %83 = load i8*, i8** %9, align 8
  %84 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %85 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @memcpy(%struct.pwc_raw_frame* %82, i8* %83, i32 %86)
  store i32 0, i32* %2, align 4
  br label %277

88:                                               ; preds = %30
  %89 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %90 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %240

93:                                               ; preds = %88
  %94 = load i8*, i8** %9, align 8
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %11, align 8
  %96 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %97 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %96, i32 0, i32 11
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %101 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %99, %103
  store i32 %104, i32* %5, align 4
  %105 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %106 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %105, i32 0, i32 11
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %110 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %109, i32 0, i32 12
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %108, %112
  %114 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %115 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %114, i32 0, i32 12
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %113, %117
  store i32 %118, i32* %8, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr i8, i8* %119, i64 %121
  %123 = bitcast i8* %122 to i32*
  store i32* %123, i32** %12, align 8
  %124 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %125 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %129 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %128, i32 0, i32 12
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %127, %131
  %133 = sdiv i32 %132, 4
  %134 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %135 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %134, i32 0, i32 12
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %137, 2
  %139 = add nsw i32 %133, %138
  store i32 %139, i32* %8, align 4
  %140 = load i8*, i8** %10, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr i8, i8* %140, i64 %142
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr i8, i8* %143, i64 %145
  %147 = bitcast i8* %146 to i32*
  store i32* %147, i32** %13, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr i8, i8* %148, i64 %150
  %152 = load i32, i32* %5, align 4
  %153 = sdiv i32 %152, 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr i8, i8* %151, i64 %154
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr i8, i8* %155, i64 %157
  %159 = bitcast i8* %158 to i32*
  store i32* %159, i32** %14, align 8
  %160 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %161 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %160, i32 0, i32 11
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %165 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %164, i32 0, i32 10
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %163, %167
  %169 = sdiv i32 %168, 2
  store i32 %169, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %236, %93
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %173 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %172, i32 0, i32 10
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %239

177:                                              ; preds = %170
  store i32 0, i32* %7, align 4
  br label %178

178:                                              ; preds = %212, %177
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %181 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %180, i32 0, i32 10
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %215

185:                                              ; preds = %178
  %186 = load i32*, i32** %11, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %11, align 8
  %188 = load i32, i32* %186, align 4
  %189 = load i32*, i32** %12, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %12, align 8
  store i32 %188, i32* %189, align 4
  %191 = load i32*, i32** %11, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %11, align 8
  %193 = load i32, i32* %191, align 4
  %194 = load i32*, i32** %12, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %12, align 8
  store i32 %193, i32* %194, align 4
  %196 = load i32, i32* %6, align 4
  %197 = and i32 %196, 1
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %185
  %200 = load i32*, i32** %11, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %11, align 8
  %202 = load i32, i32* %200, align 4
  %203 = load i32*, i32** %14, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %14, align 8
  store i32 %202, i32* %203, align 4
  br label %211

205:                                              ; preds = %185
  %206 = load i32*, i32** %11, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %11, align 8
  %208 = load i32, i32* %206, align 4
  %209 = load i32*, i32** %13, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %13, align 8
  store i32 %208, i32* %209, align 4
  br label %211

211:                                              ; preds = %205, %199
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 4
  store i32 %214, i32* %7, align 4
  br label %178

215:                                              ; preds = %178
  %216 = load i32, i32* %8, align 4
  %217 = load i32*, i32** %12, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %12, align 8
  %220 = load i32, i32* %6, align 4
  %221 = and i32 %220, 1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  %224 = load i32, i32* %8, align 4
  %225 = ashr i32 %224, 1
  %226 = load i32*, i32** %14, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %14, align 8
  br label %235

229:                                              ; preds = %215
  %230 = load i32, i32* %8, align 4
  %231 = ashr i32 %230, 1
  %232 = load i32*, i32** %13, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %13, align 8
  br label %235

235:                                              ; preds = %229, %223
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %170

239:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %277

240:                                              ; preds = %88
  %241 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %242 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @PSZ_VGA, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %260

246:                                              ; preds = %240
  %247 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %248 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, 5
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %253 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %252, i32 0, i32 9
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %251
  %257 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %258 = load i32, i32* @ENXIO, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %2, align 4
  br label %277

260:                                              ; preds = %251, %246, %240
  %261 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %262 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = call i64 @DEVICE_USE_CODEC1(i64 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %268 = load i32, i32* @ENXIO, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %2, align 4
  br label %277

270:                                              ; preds = %260
  %271 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %272 = load i8*, i8** %9, align 8
  %273 = load i8*, i8** %10, align 8
  %274 = load i32, i32* @PWCX_FLAG_PLANAR, align 4
  %275 = call i32 @pwc_dec23_decompress(%struct.pwc_device* %271, i8* %272, i8* %273, i32 %274)
  br label %276

276:                                              ; preds = %270
  store i32 0, i32* %2, align 4
  br label %277

277:                                              ; preds = %276, %266, %256, %239, %59, %27, %18
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(%struct.pwc_raw_frame*, i8*, i32) #1

declare dso_local i32 @PWC_ERROR(i8*) #1

declare dso_local i64 @DEVICE_USE_CODEC1(i64) #1

declare dso_local i32 @pwc_dec23_decompress(%struct.pwc_device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
