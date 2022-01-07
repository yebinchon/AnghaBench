; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_parse_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_parse_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usbvideo_frame = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@hue_correction = common dso_local global i32 0, align 4
@ibmcam_parse_lines.lineBuffer = internal global [1920 x i8] zeroinitializer, align 16
@V4L_BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@IBMCAM_MODEL_4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"ibmcam_parse_lines: Wrong mode.\00", align 1
@scan_Out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unknown header signature 00 FF 00 %02lX\00", align 1
@scan_NextFrame = common dso_local global i32 0, align 4
@IBMCAM_MODEL_2 = common dso_local global i64 0, align 8
@flags = common dso_local global i32 0, align 4
@FLAGS_DISPLAY_HINTS = common dso_local global i32 0, align 4
@FLAGS_MONOCHROME = common dso_local global i32 0, align 4
@Deinterlace_FillOddLines = common dso_local global i32 0, align 4
@scan_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, %struct.usbvideo_frame*, i64*)* @ibmcam_parse_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_parse_lines(%struct.uvd* %0, %struct.usbvideo_frame* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvd*, align 8
  %6 = alloca %struct.usbvideo_frame*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %5, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %6, align 8
  store i64* %2, i64** %7, align 8
  %33 = load %struct.uvd*, %struct.uvd** %5, align 8
  %34 = getelementptr inbounds %struct.uvd, %struct.uvd* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 32768
  %38 = ashr i32 %37, 10
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @hue_correction, align 4
  %40 = sub nsw i32 %39, 128
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %17, align 4
  store i32 128, i32* %18, align 4
  store i32 0, i32* %23, align 4
  %42 = load %struct.uvd*, %struct.uvd** %5, align 8
  %43 = icmp ne %struct.uvd* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %47 = icmp ne %struct.usbvideo_frame* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.uvd*, %struct.uvd** %5, align 8
  %51 = call %struct.TYPE_5__* @IBMCAM_T(%struct.uvd* %50)
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %9, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.uvd*, %struct.uvd** %5, align 8
  %57 = getelementptr inbounds %struct.uvd, %struct.uvd* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 32768
  %61 = ashr i32 %60, 8
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %24, align 4
  %63 = call i32 @RESTRICT_TO_RANGE(i32 %62, i32 -128, i32 129)
  %64 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %65 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @VIDEOSIZE_X(i32 %66)
  %68 = load i32, i32* @V4L_BYTES_PER_PIXEL, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %15, align 4
  %70 = load %struct.uvd*, %struct.uvd** %5, align 8
  %71 = call %struct.TYPE_5__* @IBMCAM_T(%struct.uvd* %70)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IBMCAM_MODEL_4, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %3
  %77 = load %struct.uvd*, %struct.uvd** %5, align 8
  %78 = getelementptr inbounds %struct.uvd, %struct.uvd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %89 [
    i32 130, label %80
    i32 129, label %80
    i32 128, label %80
  ]

80:                                               ; preds = %76, %76, %76
  %81 = load %struct.uvd*, %struct.uvd** %5, align 8
  %82 = getelementptr inbounds %struct.uvd, %struct.uvd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @VIDEOSIZE_X(i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load %struct.uvd*, %struct.uvd** %5, align 8
  %86 = getelementptr inbounds %struct.uvd, %struct.uvd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @VIDEOSIZE_Y(i32 %87)
  store i32 %88, i32* %12, align 4
  br label %92

89:                                               ; preds = %76
  %90 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @scan_Out, align 4
  store i32 %91, i32* %4, align 4
  br label %340

92:                                               ; preds = %80
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %114

93:                                               ; preds = %3
  %94 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %95 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %100 [
    i32 133, label %97
    i32 132, label %98
    i32 131, label %99
  ]

97:                                               ; preds = %93
  store i32 128, i32* %11, align 4
  store i32 96, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %106

98:                                               ; preds = %93
  store i32 176, i32* %11, align 4
  store i32 144, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %106

99:                                               ; preds = %93
  store i32 352, i32* %11, align 4
  store i32 288, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %106

100:                                              ; preds = %93
  %101 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %102 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @scan_NextFrame, align 4
  store i32 %105, i32* %4, align 4
  br label %340

106:                                              ; preds = %99, %98, %97
  %107 = load %struct.uvd*, %struct.uvd** %5, align 8
  %108 = call %struct.TYPE_5__* @IBMCAM_T(%struct.uvd* %107)
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IBMCAM_MODEL_2, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %106, %92
  %115 = load i32, i32* %11, align 4
  %116 = mul i32 %115, 3
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = icmp ule i64 %118, 1920
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.uvd*, %struct.uvd** %5, align 8
  %123 = getelementptr inbounds %struct.uvd, %struct.uvd* %122, i32 0, i32 1
  %124 = call i32 @RingQueue_GetLength(i32* %123)
  %125 = load i32, i32* %10, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load i32, i32* @scan_Out, align 4
  store i32 %128, i32* %4, align 4
  br label %340

129:                                              ; preds = %114
  %130 = load %struct.uvd*, %struct.uvd** %5, align 8
  %131 = getelementptr inbounds %struct.uvd, %struct.uvd* %130, i32 0, i32 1
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @RingQueue_Dequeue(i32* %131, i8* getelementptr inbounds ([1920 x i8], [1920 x i8]* @ibmcam_parse_lines.lineBuffer, i64 0, i64 0), i32 %132)
  %134 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %135 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 2
  %138 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %139 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @VIDEOSIZE_Y(i32 %140)
  %142 = icmp sge i32 %137, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %129
  %144 = load i32, i32* @scan_NextFrame, align 4
  store i32 %144, i32* %4, align 4
  br label %340

145:                                              ; preds = %129
  %146 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %147 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %153 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %152, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %157 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 %155, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %154, i64 %160
  store i8* %161, i8** %8, align 8
  store i8* getelementptr inbounds ([1920 x i8], [1920 x i8]* @ibmcam_parse_lines.lineBuffer, i64 0, i64 0), i8** %26, align 8
  %162 = load i32, i32* %11, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* getelementptr inbounds ([1920 x i8], [1920 x i8]* @ibmcam_parse_lines.lineBuffer, i64 0, i64 0), i64 %163
  store i8* %164, i8** %25, align 8
  store i32 0, i32* %22, align 4
  br label %165

165:                                              ; preds = %304, %145
  %166 = load i32, i32* %22, align 4
  %167 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %168 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @VIDEOSIZE_X(i32 %169)
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %307

172:                                              ; preds = %165
  %173 = load i32, i32* @flags, align 4
  %174 = load i32, i32* @FLAGS_DISPLAY_HINTS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %177
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i8 0, i8* %29, align 1
  store i8 -1, i8* %28, align 1
  store i8 -1, i8* %27, align 1
  br label %189

188:                                              ; preds = %182
  store i8 -1, i8* %29, align 1
  store i8 -1, i8* %28, align 1
  store i8 0, i8* %27, align 1
  br label %189

189:                                              ; preds = %188, %187
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  store i32 0, i32* %191, align 8
  br label %290

192:                                              ; preds = %177, %172
  %193 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %194 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 2
  %197 = load i32, i32* %12, align 4
  %198 = icmp uge i32 %196, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp uge i32 %200, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %199, %192
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* @V4L_BYTES_PER_PIXEL, align 4
  %206 = mul nsw i32 %204, %205
  store i32 %206, i32* %30, align 4
  %207 = load i8*, i8** %8, align 8
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* %30, align 4
  %210 = sub nsw i32 %208, %209
  %211 = call i32 @memset(i8* %207, i32 0, i32 %210)
  br label %307

212:                                              ; preds = %199
  %213 = load i8*, i8** %26, align 8
  %214 = load i32, i32* %22, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  store i32 %218, i32* %19, align 4
  %219 = load i32, i32* @flags, align 4
  %220 = load i32, i32* @FLAGS_MONOCHROME, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %212
  %224 = load i32, i32* %19, align 4
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %29, align 1
  store i8 %225, i8* %28, align 1
  store i8 %225, i8* %27, align 1
  br label %289

226:                                              ; preds = %212
  %227 = load i32, i32* %22, align 4
  %228 = ashr i32 %227, 1
  %229 = shl i32 %228, 2
  store i32 %229, i32* %31, align 4
  %230 = load i32, i32* %31, align 4
  %231 = add nsw i32 %230, 2
  store i32 %231, i32* %32, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %226
  %235 = load i32, i32* %31, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %31, align 4
  %237 = load i32, i32* %32, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %32, align 4
  br label %239

239:                                              ; preds = %234, %226
  %240 = load i32, i32* %13, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %31, align 4
  %244 = add nsw i32 %243, 2
  store i32 %244, i32* %31, align 4
  %245 = load i32, i32* %32, align 4
  %246 = sub nsw i32 %245, 2
  store i32 %246, i32* %32, align 4
  br label %247

247:                                              ; preds = %242, %239
  %248 = load i8*, i8** %25, align 8
  %249 = load i32, i32* %31, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = load i32, i32* %16, align 4
  %255 = add nsw i32 %253, %254
  store i32 %255, i32* %20, align 4
  %256 = load i8*, i8** %25, align 8
  %257 = load i32, i32* %32, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = load i32, i32* %17, align 4
  %263 = add nsw i32 %261, %262
  store i32 %263, i32* %21, align 4
  %264 = load i32, i32* %24, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %247
  %267 = load i32, i32* %24, align 4
  %268 = add nsw i32 128, %267
  %269 = load i32, i32* %20, align 4
  %270 = sub nsw i32 %269, 128
  %271 = mul nsw i32 %268, %270
  %272 = sdiv i32 %271, 128
  %273 = add nsw i32 128, %272
  store i32 %273, i32* %20, align 4
  %274 = load i32, i32* %24, align 4
  %275 = add nsw i32 128, %274
  %276 = load i32, i32* %21, align 4
  %277 = sub nsw i32 %276, 128
  %278 = mul nsw i32 %275, %277
  %279 = sdiv i32 %278, 128
  %280 = add nsw i32 128, %279
  store i32 %280, i32* %21, align 4
  br label %281

281:                                              ; preds = %266, %247
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* %20, align 4
  %284 = load i32, i32* %21, align 4
  %285 = load i8, i8* %27, align 1
  %286 = load i8, i8* %28, align 1
  %287 = load i8, i8* %29, align 1
  %288 = call i32 @YUV_TO_RGB_BY_THE_BOOK(i32 %282, i32 %283, i32 %284, i8 zeroext %285, i8 zeroext %286, i8 zeroext %287)
  br label %289

289:                                              ; preds = %281, %223
  br label %290

290:                                              ; preds = %289, %189
  %291 = load i8, i8* %29, align 1
  %292 = load i8*, i8** %8, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %8, align 8
  store i8 %291, i8* %292, align 1
  %294 = load i8, i8* %28, align 1
  %295 = load i8*, i8** %8, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %8, align 8
  store i8 %294, i8* %295, align 1
  %297 = load i8, i8* %27, align 1
  %298 = load i8*, i8** %8, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %8, align 8
  store i8 %297, i8* %298, align 1
  %300 = load i32, i32* %23, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %290
  br label %307

303:                                              ; preds = %290
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %22, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %22, align 4
  br label %165

307:                                              ; preds = %302, %203, %165
  %308 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %309 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, 2
  store i32 %311, i32* %309, align 8
  %312 = load i64*, i64** %7, align 8
  %313 = icmp ne i64* %312, null
  br i1 %313, label %314, label %321

314:                                              ; preds = %307
  %315 = load i32, i32* %15, align 4
  %316 = mul nsw i32 2, %315
  %317 = sext i32 %316 to i64
  %318 = load i64*, i64** %7, align 8
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, %317
  store i64 %320, i64* %318, align 8
  br label %321

321:                                              ; preds = %314, %307
  %322 = load i32, i32* @Deinterlace_FillOddLines, align 4
  %323 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %324 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %323, i32 0, i32 4
  store i32 %322, i32* %324, align 8
  %325 = load i32, i32* %23, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %336, label %327

327:                                              ; preds = %321
  %328 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %329 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %332 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @VIDEOSIZE_Y(i32 %333)
  %335 = icmp sge i32 %330, %334
  br i1 %335, label %336, label %338

336:                                              ; preds = %327, %321
  %337 = load i32, i32* @scan_NextFrame, align 4
  store i32 %337, i32* %4, align 4
  br label %340

338:                                              ; preds = %327
  %339 = load i32, i32* @scan_Continue, align 4
  store i32 %339, i32* %4, align 4
  br label %340

340:                                              ; preds = %338, %336, %143, %127, %100, %89
  %341 = load i32, i32* %4, align 4
  ret i32 %341
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @VIDEOSIZE_X(i32) #1

declare dso_local i32 @VIDEOSIZE_Y(i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @RingQueue_GetLength(i32*) #1

declare dso_local i32 @RingQueue_Dequeue(i32*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @YUV_TO_RGB_BY_THE_BOOK(i32, i32, i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
