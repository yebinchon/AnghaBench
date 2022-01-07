; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model3_parse_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model3_parse_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usbvideo_frame = type { i32, i32, i32, i32 }

@hue_correction = common dso_local global i32 0, align 4
@ibmcam_model3_parse_lines.lineBuffer = internal global [1920 x i8] zeroinitializer, align 16
@V4L_BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported mode $%04lx\00", align 1
@scan_NextFrame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Strange frame->header=$%08lx\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Reached line %d. (frame is done)\0A\00", align 1
@scan_Out = common dso_local global i32 0, align 4
@Deinterlace_None = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"All requested lines (%ld.) done.\0A\00", align 1
@scan_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, %struct.usbvideo_frame*, i64*)* @ibmcam_model3_parse_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_model3_parse_lines(%struct.uvd* %0, %struct.usbvideo_frame* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvd*, align 8
  %6 = alloca %struct.usbvideo_frame*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %5, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %6, align 8
  store i64* %2, i64** %7, align 8
  %27 = load %struct.uvd*, %struct.uvd** %5, align 8
  %28 = getelementptr inbounds %struct.uvd, %struct.uvd* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 32768
  %32 = ashr i32 %31, 10
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @hue_correction, align 4
  %34 = sub nsw i32 %33, 128
  %35 = sdiv i32 %34, 4
  store i32 %35, i32* %13, align 4
  store i32 128, i32* %14, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %36 = load %struct.uvd*, %struct.uvd** %5, align 8
  %37 = getelementptr inbounds %struct.uvd, %struct.uvd* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 32768
  %41 = ashr i32 %40, 8
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  %43 = call i32 @RESTRICT_TO_RANGE(i32 %42, i32 -128, i32 129)
  %44 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %45 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @VIDEOSIZE_X(i32 %46)
  %48 = load i32, i32* @V4L_BYTES_PER_PIXEL, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %51 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %62 [
    i32 776, label %53
    i32 520, label %54
    i32 522, label %55
    i32 808, label %56
    i32 872, label %56
    i32 552, label %56
    i32 616, label %56
    i32 714, label %56
    i32 746, label %56
  ]

53:                                               ; preds = %3
  store i32 640, i32* %19, align 4
  store i32 480, i32* %20, align 4
  br label %68

54:                                               ; preds = %3
  store i32 320, i32* %19, align 4
  store i32 240, i32* %20, align 4
  br label %68

55:                                               ; preds = %3
  store i32 160, i32* %19, align 4
  store i32 120, i32* %20, align 4
  br label %68

56:                                               ; preds = %3, %3, %3, %3, %3, %3
  %57 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %58 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @scan_NextFrame, align 4
  store i32 %61, i32* %4, align 4
  br label %277

62:                                               ; preds = %3
  %63 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %64 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @scan_NextFrame, align 4
  store i32 %67, i32* %4, align 4
  br label %277

68:                                               ; preds = %55, %54, %53
  %69 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %70 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %20, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = load %struct.uvd*, %struct.uvd** %5, align 8
  %77 = getelementptr inbounds %struct.uvd, %struct.uvd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 3
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.uvd*, %struct.uvd** %5, align 8
  %82 = getelementptr inbounds %struct.uvd, %struct.uvd* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %86 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i32, i32* @scan_NextFrame, align 4
  store i32 %90, i32* %4, align 4
  br label %277

91:                                               ; preds = %68
  %92 = load i32, i32* %19, align 4
  %93 = mul nsw i32 3, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = icmp ule i64 %95, 1920
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.uvd*, %struct.uvd** %5, align 8
  %100 = getelementptr inbounds %struct.uvd, %struct.uvd* %99, i32 0, i32 2
  %101 = call i32 @RingQueue_GetLength(i32* %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = load i32, i32* @scan_Out, align 4
  store i32 %105, i32* %4, align 4
  br label %277

106:                                              ; preds = %91
  %107 = load %struct.uvd*, %struct.uvd** %5, align 8
  %108 = getelementptr inbounds %struct.uvd, %struct.uvd* %107, i32 0, i32 2
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @RingQueue_Dequeue(i32* %108, i8* getelementptr inbounds ([1920 x i8], [1920 x i8]* @ibmcam_model3_parse_lines.lineBuffer, i64 0, i64 0), i32 %109)
  store i8* getelementptr inbounds ([1920 x i8], [1920 x i8]* @ibmcam_model3_parse_lines.lineBuffer, i64 0, i64 0), i8** %8, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  store i8* %114, i8** %9, align 8
  %115 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %116 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @VIDEOSIZE_Y(i32 %117)
  %119 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %120 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %126 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @VIDEOSIZE_Y(i32 %127)
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @RESTRICT_TO_RANGE(i32 %124, i32 0, i32 %129)
  store i32 0, i32* %22, align 4
  br label %131

131:                                              ; preds = %233, %106
  %132 = load i32, i32* %22, align 4
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %134, label %236

134:                                              ; preds = %131
  store i32 0, i32* %15, align 4
  br label %135

135:                                              ; preds = %220, %134
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %138 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @VIDEOSIZE_X(i32 %139)
  %141 = icmp slt i32 %136, %140
  br i1 %141, label %142, label %223

142:                                              ; preds = %135
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %19, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %18, align 4
  %150 = call i32 @RGB24_PUTPIXEL(%struct.usbvideo_frame* %147, i32 %148, i32 %149, i32 0, i32 0, i32 0)
  br label %220

151:                                              ; preds = %142
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %22, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* %15, align 4
  br label %161

157:                                              ; preds = %151
  %158 = load i32, i32* %15, align 4
  %159 = mul nsw i32 %158, 2
  %160 = add nsw i32 %159, 1
  br label %161

161:                                              ; preds = %157, %155
  %162 = phi i32 [ %156, %155 ], [ %160, %157 ]
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %152, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  store i32 %166, i32* %23, align 4
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sdiv i32 %168, 2
  %170 = mul nsw i32 %169, 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %167, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %16, align 4
  %177 = load i8*, i8** %9, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sdiv i32 %178, 2
  %180 = mul nsw i32 %179, 4
  %181 = add nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %177, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %21, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %161
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 128, %191
  %193 = load i32, i32* %16, align 4
  %194 = sub nsw i32 %193, 128
  %195 = mul nsw i32 %192, %194
  %196 = sdiv i32 %195, 128
  %197 = add nsw i32 128, %196
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %21, align 4
  %199 = add nsw i32 128, %198
  %200 = load i32, i32* %17, align 4
  %201 = sub nsw i32 %200, 128
  %202 = mul nsw i32 %199, %201
  %203 = sdiv i32 %202, 128
  %204 = add nsw i32 128, %203
  store i32 %204, i32* %17, align 4
  br label %205

205:                                              ; preds = %190, %161
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %24, align 4
  %210 = load i32, i32* %25, align 4
  %211 = load i32, i32* %26, align 4
  %212 = call i32 @YUV_TO_RGB_BY_THE_BOOK(i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %24, align 4
  %217 = load i32, i32* %25, align 4
  %218 = load i32, i32* %26, align 4
  %219 = call i32 @RGB24_PUTPIXEL(%struct.usbvideo_frame* %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %205, %146
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %135

223:                                              ; preds = %135
  %224 = load i32, i32* %18, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  br label %236

227:                                              ; preds = %223
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %18, align 4
  %230 = load i32, i32* %19, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* getelementptr inbounds ([1920 x i8], [1920 x i8]* @ibmcam_model3_parse_lines.lineBuffer, i64 0, i64 0), i64 %231
  store i8* %232, i8** %8, align 8
  br label %233

233:                                              ; preds = %227
  %234 = load i32, i32* %22, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %22, align 4
  br label %131

236:                                              ; preds = %226, %131
  %237 = load i32, i32* @Deinterlace_None, align 4
  %238 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %239 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %238, i32 0, i32 3
  store i32 %237, i32* %239, align 4
  %240 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %241 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 2
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* %11, align 4
  %245 = mul nsw i32 2, %244
  %246 = sext i32 %245 to i64
  %247 = load i64*, i64** %7, align 8
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, %246
  store i64 %249, i64* %247, align 8
  %250 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %251 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %254 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @VIDEOSIZE_Y(i32 %255)
  %257 = icmp sge i32 %252, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %236
  %259 = load %struct.uvd*, %struct.uvd** %5, align 8
  %260 = getelementptr inbounds %struct.uvd, %struct.uvd* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp sge i32 %261, 3
  br i1 %262, label %263, label %273

263:                                              ; preds = %258
  %264 = load %struct.uvd*, %struct.uvd** %5, align 8
  %265 = getelementptr inbounds %struct.uvd, %struct.uvd* %264, i32 0, i32 1
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %269 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @VIDEOSIZE_Y(i32 %270)
  %272 = call i32 @dev_info(i32* %267, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %263, %258
  %274 = load i32, i32* @scan_NextFrame, align 4
  store i32 %274, i32* %4, align 4
  br label %277

275:                                              ; preds = %236
  %276 = load i32, i32* @scan_Continue, align 4
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %275, %273, %104, %89, %62, %56
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @VIDEOSIZE_X(i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RingQueue_GetLength(i32*) #1

declare dso_local i32 @RingQueue_Dequeue(i32*, i8*, i32) #1

declare dso_local i32 @VIDEOSIZE_Y(i32) #1

declare dso_local i32 @RGB24_PUTPIXEL(%struct.usbvideo_frame*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @YUV_TO_RGB_BY_THE_BOOK(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
