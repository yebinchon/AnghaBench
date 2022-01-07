; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pms.c_pms_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.pms_device = type { i32, i32, i32, %struct.video_picture }
%struct.video_picture = type { i32, i32, i32, i32, i32, i32 }
%struct.video_capability = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_channel = type { i32, i32, i32, i32, i32 }
%struct.video_tuner = type { i32, i32, i32, i32, i32, i32 }
%struct.video_window = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Mediavision PMS\00", align 1
@VID_TYPE_CAPTURE = common dso_local global i32 0, align 4
@VID_TYPE_SCALES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@VIDEO_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SVideo\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Composite(VCR)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SVideo(VCR)\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@VIDEO_TUNER_PAL = common dso_local global i32 0, align 4
@VIDEO_TUNER_NTSC = common dso_local global i32 0, align 4
@VIDEO_TUNER_SECAM = common dso_local global i32 0, align 4
@standard = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB565 = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB555 = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @pms_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pms_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.pms_device*, align 8
  %10 = alloca %struct.video_capability*, align 8
  %11 = alloca %struct.video_channel*, align 8
  %12 = alloca %struct.video_channel*, align 8
  %13 = alloca %struct.video_tuner*, align 8
  %14 = alloca %struct.video_tuner*, align 8
  %15 = alloca %struct.video_picture*, align 8
  %16 = alloca %struct.video_picture*, align 8
  %17 = alloca %struct.video_window*, align 8
  %18 = alloca %struct.video_window*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = call %struct.video_device* @video_devdata(%struct.file* %19)
  store %struct.video_device* %20, %struct.video_device** %8, align 8
  %21 = load %struct.video_device*, %struct.video_device** %8, align 8
  %22 = bitcast %struct.video_device* %21 to %struct.pms_device*
  store %struct.pms_device* %22, %struct.pms_device** %9, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %364 [
    i32 142, label %24
    i32 141, label %48
    i32 133, label %95
    i32 137, label %127
    i32 129, label %167
    i32 138, label %210
    i32 130, label %218
    i32 128, label %277
    i32 136, label %345
    i32 135, label %360
    i32 144, label %361
    i32 140, label %361
    i32 132, label %361
    i32 139, label %361
    i32 131, label %361
    i32 143, label %361
    i32 134, label %361
  ]

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.video_capability*
  store %struct.video_capability* %26, %struct.video_capability** %10, align 8
  %27 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %28 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @VID_TYPE_CAPTURE, align 4
  %32 = load i32, i32* @VID_TYPE_SCALES, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %35 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %37 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %36, i32 0, i32 1
  store i32 4, i32* %37, align 4
  %38 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %39 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %38, i32 0, i32 6
  store i32 0, i32* %39, align 4
  %40 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %41 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %40, i32 0, i32 2
  store i32 640, i32* %41, align 4
  %42 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %43 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %42, i32 0, i32 3
  store i32 480, i32* %43, align 4
  %44 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %45 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %44, i32 0, i32 4
  store i32 16, i32* %45, align 4
  %46 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %47 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %46, i32 0, i32 5
  store i32 16, i32* %47, align 4
  store i64 0, i64* %4, align 8
  br label %367

48:                                               ; preds = %3
  %49 = load i8*, i8** %7, align 8
  %50 = bitcast i8* %49 to %struct.video_channel*
  store %struct.video_channel* %50, %struct.video_channel** %11, align 8
  %51 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %52 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %57 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 3
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %48
  %61 = load i64, i64* @EINVAL, align 8
  %62 = sub nsw i64 0, %61
  store i64 %62, i64* %4, align 8
  br label %367

63:                                               ; preds = %55
  %64 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %65 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %64, i32 0, i32 4
  store i32 0, i32* %65, align 4
  %66 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %67 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @VIDEO_TYPE_CAMERA, align 4
  %69 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %70 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %72 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %94 [
    i32 0, label %74
    i32 1, label %79
    i32 2, label %84
    i32 3, label %89
  ]

74:                                               ; preds = %63
  %75 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %76 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strcpy(i32 %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %94

79:                                               ; preds = %63
  %80 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %81 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strcpy(i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %94

84:                                               ; preds = %63
  %85 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %86 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @strcpy(i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %94

89:                                               ; preds = %63
  %90 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %91 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strcpy(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %63, %89, %84, %79, %74
  store i64 0, i64* %4, align 8
  br label %367

95:                                               ; preds = %3
  %96 = load i8*, i8** %7, align 8
  %97 = bitcast i8* %96 to %struct.video_channel*
  store %struct.video_channel* %97, %struct.video_channel** %12, align 8
  %98 = load %struct.video_channel*, %struct.video_channel** %12, align 8
  %99 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load %struct.video_channel*, %struct.video_channel** %12, align 8
  %104 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 3
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %95
  %108 = load i64, i64* @EINVAL, align 8
  %109 = sub nsw i64 0, %108
  store i64 %109, i64* %4, align 8
  br label %367

110:                                              ; preds = %102
  %111 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %112 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %111, i32 0, i32 2
  %113 = call i32 @mutex_lock(i32* %112)
  %114 = load %struct.video_channel*, %struct.video_channel** %12, align 8
  %115 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 1
  %118 = call i32 @pms_videosource(i32 %117)
  %119 = load %struct.video_channel*, %struct.video_channel** %12, align 8
  %120 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 1
  %123 = call i32 @pms_vcrinput(i32 %122)
  %124 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %125 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %124, i32 0, i32 2
  %126 = call i32 @mutex_unlock(i32* %125)
  store i64 0, i64* %4, align 8
  br label %367

127:                                              ; preds = %3
  %128 = load i8*, i8** %7, align 8
  %129 = bitcast i8* %128 to %struct.video_tuner*
  store %struct.video_tuner* %129, %struct.video_tuner** %13, align 8
  %130 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %131 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load i64, i64* @EINVAL, align 8
  %136 = sub nsw i64 0, %135
  store i64 %136, i64* %4, align 8
  br label %367

137:                                              ; preds = %127
  %138 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %139 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @strcpy(i32 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %142 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %143 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %142, i32 0, i32 4
  store i32 0, i32* %143, align 4
  %144 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %145 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %144, i32 0, i32 3
  store i32 0, i32* %145, align 4
  %146 = load i32, i32* @VIDEO_TUNER_PAL, align 4
  %147 = load i32, i32* @VIDEO_TUNER_NTSC, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @VIDEO_TUNER_SECAM, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %152 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @standard, align 4
  switch i32 %153, label %166 [
    i32 0, label %154
    i32 1, label %157
    i32 2, label %160
    i32 3, label %163
  ]

154:                                              ; preds = %137
  %155 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %156 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %155, i32 0, i32 1
  store i32 148, i32* %156, align 4
  br label %166

157:                                              ; preds = %137
  %158 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %159 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %158, i32 0, i32 1
  store i32 147, i32* %159, align 4
  br label %166

160:                                              ; preds = %137
  %161 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %162 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %161, i32 0, i32 1
  store i32 146, i32* %162, align 4
  br label %166

163:                                              ; preds = %137
  %164 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %165 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %164, i32 0, i32 1
  store i32 145, i32* %165, align 4
  br label %166

166:                                              ; preds = %137, %163, %160, %157, %154
  store i64 0, i64* %4, align 8
  br label %367

167:                                              ; preds = %3
  %168 = load i8*, i8** %7, align 8
  %169 = bitcast i8* %168 to %struct.video_tuner*
  store %struct.video_tuner* %169, %struct.video_tuner** %14, align 8
  %170 = load %struct.video_tuner*, %struct.video_tuner** %14, align 8
  %171 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i64, i64* @EINVAL, align 8
  %176 = sub nsw i64 0, %175
  store i64 %176, i64* %4, align 8
  br label %367

177:                                              ; preds = %167
  %178 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %179 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %178, i32 0, i32 2
  %180 = call i32 @mutex_lock(i32* %179)
  %181 = load %struct.video_tuner*, %struct.video_tuner** %14, align 8
  %182 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  switch i32 %183, label %200 [
    i32 148, label %184
    i32 147, label %188
    i32 146, label %192
    i32 145, label %196
  ]

184:                                              ; preds = %177
  %185 = call i32 @pms_framerate(i32 25)
  %186 = call i32 @pms_secamcross(i32 0)
  %187 = call i32 @pms_format(i32 0)
  br label %206

188:                                              ; preds = %177
  %189 = call i32 @pms_framerate(i32 30)
  %190 = call i32 @pms_secamcross(i32 0)
  %191 = call i32 @pms_format(i32 1)
  br label %206

192:                                              ; preds = %177
  %193 = call i32 @pms_framerate(i32 25)
  %194 = call i32 @pms_secamcross(i32 0)
  %195 = call i32 @pms_format(i32 2)
  br label %206

196:                                              ; preds = %177
  %197 = call i32 @pms_framerate(i32 25)
  %198 = call i32 @pms_secamcross(i32 1)
  %199 = call i32 @pms_format(i32 2)
  br label %206

200:                                              ; preds = %177
  %201 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %202 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %201, i32 0, i32 2
  %203 = call i32 @mutex_unlock(i32* %202)
  %204 = load i64, i64* @EINVAL, align 8
  %205 = sub nsw i64 0, %204
  store i64 %205, i64* %4, align 8
  br label %367

206:                                              ; preds = %196, %192, %188, %184
  %207 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %208 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %207, i32 0, i32 2
  %209 = call i32 @mutex_unlock(i32* %208)
  store i64 0, i64* %4, align 8
  br label %367

210:                                              ; preds = %3
  %211 = load i8*, i8** %7, align 8
  %212 = bitcast i8* %211 to %struct.video_picture*
  store %struct.video_picture* %212, %struct.video_picture** %15, align 8
  %213 = load %struct.video_picture*, %struct.video_picture** %15, align 8
  %214 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %215 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %214, i32 0, i32 3
  %216 = bitcast %struct.video_picture* %213 to i8*
  %217 = bitcast %struct.video_picture* %215 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %216, i8* align 4 %217, i64 24, i1 false)
  store i64 0, i64* %4, align 8
  br label %367

218:                                              ; preds = %3
  %219 = load i8*, i8** %7, align 8
  %220 = bitcast i8* %219 to %struct.video_picture*
  store %struct.video_picture* %220, %struct.video_picture** %16, align 8
  %221 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %222 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @VIDEO_PALETTE_RGB565, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %218
  %227 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %228 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 16
  br i1 %230, label %245, label %231

231:                                              ; preds = %226, %218
  %232 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %233 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @VIDEO_PALETTE_RGB555, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %231
  %238 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %239 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 15
  br i1 %241, label %245, label %242

242:                                              ; preds = %237, %231
  %243 = load i64, i64* @EINVAL, align 8
  %244 = sub nsw i64 0, %243
  store i64 %244, i64* %4, align 8
  br label %367

245:                                              ; preds = %237, %226
  %246 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %247 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %246, i32 0, i32 3
  %248 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %249 = bitcast %struct.video_picture* %247 to i8*
  %250 = bitcast %struct.video_picture* %248 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %249, i8* align 4 %250, i64 24, i1 false)
  %251 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %252 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %251, i32 0, i32 2
  %253 = call i32 @mutex_lock(i32* %252)
  %254 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %255 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 8
  %258 = call i32 @pms_brightness(i32 %257)
  %259 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %260 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = ashr i32 %261, 8
  %263 = call i32 @pms_hue(i32 %262)
  %264 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %265 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = ashr i32 %266, 8
  %268 = call i32 @pms_colour(i32 %267)
  %269 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %270 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = ashr i32 %271, 8
  %273 = call i32 @pms_contrast(i32 %272)
  %274 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %275 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %274, i32 0, i32 2
  %276 = call i32 @mutex_unlock(i32* %275)
  store i64 0, i64* %4, align 8
  br label %367

277:                                              ; preds = %3
  %278 = load i8*, i8** %7, align 8
  %279 = bitcast i8* %278 to %struct.video_window*
  store %struct.video_window* %279, %struct.video_window** %17, align 8
  %280 = load %struct.video_window*, %struct.video_window** %17, align 8
  %281 = getelementptr inbounds %struct.video_window, %struct.video_window* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %277
  %285 = load i64, i64* @EINVAL, align 8
  %286 = sub nsw i64 0, %285
  store i64 %286, i64* %4, align 8
  br label %367

287:                                              ; preds = %277
  %288 = load %struct.video_window*, %struct.video_window** %17, align 8
  %289 = getelementptr inbounds %struct.video_window, %struct.video_window* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %287
  %293 = load i64, i64* @EINVAL, align 8
  %294 = sub nsw i64 0, %293
  store i64 %294, i64* %4, align 8
  br label %367

295:                                              ; preds = %287
  %296 = load %struct.video_window*, %struct.video_window** %17, align 8
  %297 = getelementptr inbounds %struct.video_window, %struct.video_window* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp slt i32 %298, 16
  br i1 %299, label %305, label %300

300:                                              ; preds = %295
  %301 = load %struct.video_window*, %struct.video_window** %17, align 8
  %302 = getelementptr inbounds %struct.video_window, %struct.video_window* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = icmp sgt i32 %303, 480
  br i1 %304, label %305, label %308

305:                                              ; preds = %300, %295
  %306 = load i64, i64* @EINVAL, align 8
  %307 = sub nsw i64 0, %306
  store i64 %307, i64* %4, align 8
  br label %367

308:                                              ; preds = %300
  %309 = load %struct.video_window*, %struct.video_window** %17, align 8
  %310 = getelementptr inbounds %struct.video_window, %struct.video_window* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp slt i32 %311, 16
  br i1 %312, label %318, label %313

313:                                              ; preds = %308
  %314 = load %struct.video_window*, %struct.video_window** %17, align 8
  %315 = getelementptr inbounds %struct.video_window, %struct.video_window* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = icmp sgt i32 %316, 640
  br i1 %317, label %318, label %321

318:                                              ; preds = %313, %308
  %319 = load i64, i64* @EINVAL, align 8
  %320 = sub nsw i64 0, %319
  store i64 %320, i64* %4, align 8
  br label %367

321:                                              ; preds = %313
  %322 = load %struct.video_window*, %struct.video_window** %17, align 8
  %323 = getelementptr inbounds %struct.video_window, %struct.video_window* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %326 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 4
  %327 = load %struct.video_window*, %struct.video_window** %17, align 8
  %328 = getelementptr inbounds %struct.video_window, %struct.video_window* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %331 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %330, i32 0, i32 1
  store i32 %329, i32* %331, align 4
  %332 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %333 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %332, i32 0, i32 2
  %334 = call i32 @mutex_lock(i32* %333)
  %335 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %336 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %339 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @pms_resolution(i32 %337, i32 %340)
  %342 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %343 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %342, i32 0, i32 2
  %344 = call i32 @mutex_unlock(i32* %343)
  store i64 0, i64* %4, align 8
  br label %367

345:                                              ; preds = %3
  %346 = load i8*, i8** %7, align 8
  %347 = bitcast i8* %346 to %struct.video_window*
  store %struct.video_window* %347, %struct.video_window** %18, align 8
  %348 = load %struct.video_window*, %struct.video_window** %18, align 8
  %349 = call i32 @memset(%struct.video_window* %348, i32 0, i32 16)
  %350 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %351 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.video_window*, %struct.video_window** %18, align 8
  %354 = getelementptr inbounds %struct.video_window, %struct.video_window* %353, i32 0, i32 1
  store i32 %352, i32* %354, align 4
  %355 = load %struct.pms_device*, %struct.pms_device** %9, align 8
  %356 = getelementptr inbounds %struct.pms_device, %struct.pms_device* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.video_window*, %struct.video_window** %18, align 8
  %359 = getelementptr inbounds %struct.video_window, %struct.video_window* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 4
  store i64 0, i64* %4, align 8
  br label %367

360:                                              ; preds = %3
  store i64 0, i64* %4, align 8
  br label %367

361:                                              ; preds = %3, %3, %3, %3, %3, %3, %3
  %362 = load i64, i64* @EINVAL, align 8
  %363 = sub nsw i64 0, %362
  store i64 %363, i64* %4, align 8
  br label %367

364:                                              ; preds = %3
  %365 = load i64, i64* @ENOIOCTLCMD, align 8
  %366 = sub nsw i64 0, %365
  store i64 %366, i64* %4, align 8
  br label %367

367:                                              ; preds = %364, %361, %360, %345, %321, %318, %305, %292, %284, %245, %242, %210, %206, %200, %174, %166, %134, %110, %107, %94, %60, %24
  %368 = load i64, i64* %4, align 8
  ret i64 %368
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pms_videosource(i32) #1

declare dso_local i32 @pms_vcrinput(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pms_framerate(i32) #1

declare dso_local i32 @pms_secamcross(i32) #1

declare dso_local i32 @pms_format(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pms_brightness(i32) #1

declare dso_local i32 @pms_hue(i32) #1

declare dso_local i32 @pms_colour(i32) #1

declare dso_local i32 @pms_contrast(i32) #1

declare dso_local i32 @pms_resolution(i32, i32) #1

declare dso_local i32 @memset(%struct.video_window*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
