; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model2_320x240_parse_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model2_320x240_parse_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.usbvideo_frame = type { i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@ibmcam_model2_320x240_parse_lines.lineBuffer = internal global [704 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [47 x i8] c"ibmcam_model2_320x240_parse_lines: Wrong mode.\00", align 1
@scan_Out = common dso_local global i32 0, align 4
@V4L_BYTES_PER_PIXEL = common dso_local global i32 0, align 4
@scan_NextFrame = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@FLAGS_DISPLAY_HINTS = common dso_local global i32 0, align 4
@FLAGS_MONOCHROME = common dso_local global i32 0, align 4
@Deinterlace_FillOddLines = common dso_local global i32 0, align 4
@scan_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, %struct.usbvideo_frame*, i64*)* @ibmcam_model2_320x240_parse_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_model2_320x240_parse_lines(%struct.uvd* %0, %struct.usbvideo_frame* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvd*, align 8
  %6 = alloca %struct.usbvideo_frame*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
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
  store %struct.uvd* %0, %struct.uvd** %5, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.uvd*, %struct.uvd** %5, align 8
  %25 = getelementptr inbounds %struct.uvd, %struct.uvd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %36 [
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %3, %3, %3
  %28 = load %struct.uvd*, %struct.uvd** %5, align 8
  %29 = getelementptr inbounds %struct.uvd, %struct.uvd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VIDEOSIZE_X(i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.uvd*, %struct.uvd** %5, align 8
  %33 = getelementptr inbounds %struct.uvd, %struct.uvd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @VIDEOSIZE_Y(i32 %34)
  store i32 %35, i32* %18, align 4
  br label %39

36:                                               ; preds = %3
  %37 = call i32 @err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @scan_Out, align 4
  store i32 %38, i32* %4, align 4
  br label %264

39:                                               ; preds = %27
  %40 = load %struct.uvd*, %struct.uvd** %5, align 8
  %41 = getelementptr inbounds %struct.uvd, %struct.uvd* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 8
  store i32 %44, i32* %16, align 4
  %45 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %46 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @VIDEOSIZE_X(i32 %47)
  %49 = load i32, i32* @V4L_BYTES_PER_PIXEL, align 4
  %50 = mul nsw i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %17, align 4
  %52 = mul nsw i32 %51, 2
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ule i64 %54, 704
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.uvd*, %struct.uvd** %5, align 8
  %59 = getelementptr inbounds %struct.uvd, %struct.uvd* %58, i32 0, i32 1
  %60 = call i32 @RingQueue_GetLength(i32* %59)
  %61 = load i32, i32* %11, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %39
  %64 = load i32, i32* @scan_Out, align 4
  store i32 %64, i32* %4, align 4
  br label %264

65:                                               ; preds = %39
  %66 = load %struct.uvd*, %struct.uvd** %5, align 8
  %67 = getelementptr inbounds %struct.uvd, %struct.uvd* %66, i32 0, i32 1
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @RingQueue_Dequeue(i32* %67, i8* getelementptr inbounds ([704 x i8], [704 x i8]* @ibmcam_model2_320x240_parse_lines.lineBuffer, i64 0, i64 0), i32 %68)
  %70 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %71 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 2
  %74 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %75 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @VIDEOSIZE_Y(i32 %76)
  %78 = icmp sge i32 %73, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* @scan_NextFrame, align 4
  store i32 %80, i32* %4, align 4
  br label %264

81:                                               ; preds = %65
  store i8* getelementptr inbounds ([704 x i8], [704 x i8]* @ibmcam_model2_320x240_parse_lines.lineBuffer, i64 0, i64 0), i8** %9, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* getelementptr inbounds ([704 x i8], [704 x i8]* @ibmcam_model2_320x240_parse_lines.lineBuffer, i64 0, i64 0), i64 %83
  store i8* %84, i8** %10, align 8
  %85 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %86 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %90 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %87, i64 %93
  store i8* %94, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %232, %81
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %98 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @VIDEOSIZE_X(i32 %99)
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %235

102:                                              ; preds = %95
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, -2
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* @flags, align 4
  %106 = load i32, i32* @FLAGS_DISPLAY_HINTS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %102
  %110 = load %struct.uvd*, %struct.uvd** %5, align 8
  %111 = call %struct.TYPE_4__* @IBMCAM_T(%struct.uvd* %110)
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.uvd*, %struct.uvd** %5, align 8
  %117 = call %struct.TYPE_4__* @IBMCAM_T(%struct.uvd* %116)
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 0, i32* %22, align 4
  store i32 255, i32* %21, align 4
  store i32 255, i32* %20, align 4
  br label %123

122:                                              ; preds = %115
  store i32 255, i32* %22, align 4
  store i32 255, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %123

123:                                              ; preds = %122, %121
  %124 = load %struct.uvd*, %struct.uvd** %5, align 8
  %125 = call %struct.TYPE_4__* @IBMCAM_T(%struct.uvd* %124)
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 4
  br label %222

127:                                              ; preds = %109, %102
  %128 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %129 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 2
  %132 = load i32, i32* %18, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134, %127
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @V4L_BYTES_PER_PIXEL, align 4
  %141 = mul nsw i32 %139, %140
  store i32 %141, i32* %23, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %23, align 4
  %145 = sub nsw i32 %143, %144
  %146 = call i32 @memset(i8* %142, i32 0, i32 %145)
  br label %235

147:                                              ; preds = %134
  %148 = load i8*, i8** %9, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  store i32 %153, i32* %20, align 4
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  store i32 %160, i32* %21, align 4
  %161 = load i8*, i8** %10, align 8
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 0
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  store i32 %167, i32* %22, align 4
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %21, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %22, align 4
  %172 = add nsw i32 %170, %171
  %173 = sdiv i32 %172, 3
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* @flags, align 4
  %175 = load i32, i32* @FLAGS_MONOCHROME, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %147
  %179 = load i32, i32* %19, align 4
  store i32 %179, i32* %22, align 4
  store i32 %179, i32* %21, align 4
  store i32 %179, i32* %20, align 4
  br label %221

180:                                              ; preds = %147
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %181, 128
  br i1 %182, label %183, label %220

183:                                              ; preds = %180
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %20, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %21, align 4
  %189 = sub nsw i32 %188, %187
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %22, align 4
  %192 = sub nsw i32 %191, %190
  store i32 %192, i32* %22, align 4
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %16, align 4
  %195 = mul nsw i32 %193, %194
  %196 = sdiv i32 %195, 128
  store i32 %196, i32* %20, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* %16, align 4
  %199 = mul nsw i32 %197, %198
  %200 = sdiv i32 %199, 128
  store i32 %200, i32* %21, align 4
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %16, align 4
  %203 = mul nsw i32 %201, %202
  %204 = sdiv i32 %203, 128
  store i32 %204, i32* %22, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %20, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %20, align 4
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %22, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %22, align 4
  %214 = load i32, i32* %20, align 4
  %215 = call i32 @RESTRICT_TO_RANGE(i32 %214, i32 0, i32 255)
  %216 = load i32, i32* %21, align 4
  %217 = call i32 @RESTRICT_TO_RANGE(i32 %216, i32 0, i32 255)
  %218 = load i32, i32* %22, align 4
  %219 = call i32 @RESTRICT_TO_RANGE(i32 %218, i32 0, i32 255)
  br label %220

220:                                              ; preds = %183, %180
  br label %221

221:                                              ; preds = %220, %178
  br label %222

222:                                              ; preds = %221, %123
  %223 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %224 = load i32, i32* %13, align 4
  %225 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %226 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %22, align 4
  %231 = call i32 @RGB24_PUTPIXEL(%struct.usbvideo_frame* %223, i32 %224, i32 %227, i32 %228, i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %222
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %95

235:                                              ; preds = %138, %95
  %236 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %237 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 2
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* %12, align 4
  %241 = mul nsw i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = load i64*, i64** %7, align 8
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, %242
  store i64 %245, i64* %243, align 8
  %246 = load i32, i32* @Deinterlace_FillOddLines, align 4
  %247 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %248 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %260, label %251

251:                                              ; preds = %235
  %252 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %253 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %6, align 8
  %256 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @VIDEOSIZE_Y(i32 %257)
  %259 = icmp sge i32 %254, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %251, %235
  %261 = load i32, i32* @scan_NextFrame, align 4
  store i32 %261, i32* %4, align 4
  br label %264

262:                                              ; preds = %251
  %263 = load i32, i32* @scan_Continue, align 4
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %262, %260, %79, %63, %36
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local i32 @VIDEOSIZE_X(i32) #1

declare dso_local i32 @VIDEOSIZE_Y(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RingQueue_GetLength(i32*) #1

declare dso_local i32 @RingQueue_Dequeue(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @IBMCAM_T(%struct.uvd*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @RGB24_PUTPIXEL(%struct.usbvideo_frame*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
