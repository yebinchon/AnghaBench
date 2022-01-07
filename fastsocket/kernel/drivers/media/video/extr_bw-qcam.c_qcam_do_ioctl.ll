; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qcam_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_bw-qcam.c_qcam_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.qcam_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_capability = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_channel = type { i32, i32, i32, i32, i32 }
%struct.video_tuner = type { i32, i32, i32, i32, i32, i32 }
%struct.video_picture = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.video_window = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Quickcam\00", align 1
@VID_TYPE_CAPTURE = common dso_local global i32 0, align 4
@VID_TYPE_SCALES = common dso_local global i32 0, align 4
@VID_TYPE_MONOCHROME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@VIDEO_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@VIDEO_MODE_AUTO = common dso_local global i32 0, align 4
@VIDEO_PALETTE_GREY = common dso_local global i32 0, align 4
@QC_PARAM_CHANGE = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @qcam_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qcam_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.qcam_device*, align 8
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
  %22 = bitcast %struct.video_device* %21 to %struct.qcam_device*
  store %struct.qcam_device* %22, %struct.qcam_device** %9, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %342 [
    i32 142, label %24
    i32 141, label %50
    i32 133, label %72
    i32 137, label %83
    i32 129, label %107
    i32 138, label %127
    i32 130, label %160
    i32 128, label %221
    i32 136, label %315
    i32 135, label %338
    i32 144, label %339
    i32 140, label %339
    i32 132, label %339
    i32 139, label %339
    i32 131, label %339
    i32 143, label %339
    i32 134, label %339
  ]

24:                                               ; preds = %3
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.video_capability*
  store %struct.video_capability* %26, %struct.video_capability** %10, align 8
  %27 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %28 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @VID_TYPE_CAPTURE, align 4
  %32 = load i32, i32* @VID_TYPE_SCALES, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VID_TYPE_MONOCHROME, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %37 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %39 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %41 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %40, i32 0, i32 6
  store i32 0, i32* %41, align 4
  %42 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %43 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %42, i32 0, i32 2
  store i32 320, i32* %43, align 4
  %44 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %45 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %44, i32 0, i32 3
  store i32 240, i32* %45, align 4
  %46 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %47 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %46, i32 0, i32 4
  store i32 80, i32* %47, align 4
  %48 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %49 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %48, i32 0, i32 5
  store i32 60, i32* %49, align 4
  store i64 0, i64* %4, align 8
  br label %345

50:                                               ; preds = %3
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to %struct.video_channel*
  store %struct.video_channel* %52, %struct.video_channel** %11, align 8
  %53 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %54 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i64, i64* @EINVAL, align 8
  %59 = sub nsw i64 0, %58
  store i64 %59, i64* %4, align 8
  br label %345

60:                                               ; preds = %50
  %61 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %62 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %61, i32 0, i32 4
  store i32 0, i32* %62, align 4
  %63 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %64 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %63, i32 0, i32 3
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @VIDEO_TYPE_CAMERA, align 4
  %66 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %67 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %69 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strcpy(i32 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %345

72:                                               ; preds = %3
  %73 = load i8*, i8** %7, align 8
  %74 = bitcast i8* %73 to %struct.video_channel*
  store %struct.video_channel* %74, %struct.video_channel** %12, align 8
  %75 = load %struct.video_channel*, %struct.video_channel** %12, align 8
  %76 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i64, i64* @EINVAL, align 8
  %81 = sub nsw i64 0, %80
  store i64 %81, i64* %4, align 8
  br label %345

82:                                               ; preds = %72
  store i64 0, i64* %4, align 8
  br label %345

83:                                               ; preds = %3
  %84 = load i8*, i8** %7, align 8
  %85 = bitcast i8* %84 to %struct.video_tuner*
  store %struct.video_tuner* %85, %struct.video_tuner** %13, align 8
  %86 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %87 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i64, i64* @EINVAL, align 8
  %92 = sub nsw i64 0, %91
  store i64 %92, i64* %4, align 8
  br label %345

93:                                               ; preds = %83
  %94 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %95 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @strcpy(i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %99 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %98, i32 0, i32 4
  store i32 0, i32* %99, align 4
  %100 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %101 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  %102 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %103 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %102, i32 0, i32 2
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* @VIDEO_MODE_AUTO, align 4
  %105 = load %struct.video_tuner*, %struct.video_tuner** %13, align 8
  %106 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  store i64 0, i64* %4, align 8
  br label %345

107:                                              ; preds = %3
  %108 = load i8*, i8** %7, align 8
  %109 = bitcast i8* %108 to %struct.video_tuner*
  store %struct.video_tuner* %109, %struct.video_tuner** %14, align 8
  %110 = load %struct.video_tuner*, %struct.video_tuner** %14, align 8
  %111 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i64, i64* @EINVAL, align 8
  %116 = sub nsw i64 0, %115
  store i64 %116, i64* %4, align 8
  br label %345

117:                                              ; preds = %107
  %118 = load %struct.video_tuner*, %struct.video_tuner** %14, align 8
  %119 = getelementptr inbounds %struct.video_tuner, %struct.video_tuner* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @VIDEO_MODE_AUTO, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i64, i64* @EINVAL, align 8
  %125 = sub nsw i64 0, %124
  store i64 %125, i64* %4, align 8
  br label %345

126:                                              ; preds = %117
  store i64 0, i64* %4, align 8
  br label %345

127:                                              ; preds = %3
  %128 = load i8*, i8** %7, align 8
  %129 = bitcast i8* %128 to %struct.video_picture*
  store %struct.video_picture* %129, %struct.video_picture** %15, align 8
  %130 = load %struct.video_picture*, %struct.video_picture** %15, align 8
  %131 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %130, i32 0, i32 0
  store i32 32768, i32* %131, align 4
  %132 = load %struct.video_picture*, %struct.video_picture** %15, align 8
  %133 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %132, i32 0, i32 1
  store i32 32768, i32* %133, align 4
  %134 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %135 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 8
  %138 = load %struct.video_picture*, %struct.video_picture** %15, align 8
  %139 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %141 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 8
  %144 = load %struct.video_picture*, %struct.video_picture** %15, align 8
  %145 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %147 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 8
  %150 = load %struct.video_picture*, %struct.video_picture** %15, align 8
  %151 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %153 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.video_picture*, %struct.video_picture** %15, align 8
  %156 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @VIDEO_PALETTE_GREY, align 4
  %158 = load %struct.video_picture*, %struct.video_picture** %15, align 8
  %159 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %158, i32 0, i32 6
  store i32 %157, i32* %159, align 4
  store i64 0, i64* %4, align 8
  br label %345

160:                                              ; preds = %3
  %161 = load i8*, i8** %7, align 8
  %162 = bitcast i8* %161 to %struct.video_picture*
  store %struct.video_picture* %162, %struct.video_picture** %16, align 8
  %163 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %164 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @VIDEO_PALETTE_GREY, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load i64, i64* @EINVAL, align 8
  %170 = sub nsw i64 0, %169
  store i64 %170, i64* %4, align 8
  br label %345

171:                                              ; preds = %160
  %172 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %173 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 4
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %178 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 6
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i64, i64* @EINVAL, align 8
  %183 = sub nsw i64 0, %182
  store i64 %183, i64* %4, align 8
  br label %345

184:                                              ; preds = %176, %171
  %185 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %186 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = ashr i32 %187, 8
  %189 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %190 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  %191 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %192 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = ashr i32 %193, 8
  %195 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %196 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %198 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = ashr i32 %199, 8
  %201 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %202 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 4
  %203 = load %struct.video_picture*, %struct.video_picture** %16, align 8
  %204 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %207 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %209 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %208, i32 0, i32 8
  %210 = call i32 @mutex_lock(i32* %209)
  %211 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %212 = call i32 @qc_setscanmode(%struct.qcam_device* %211)
  %213 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %214 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %213, i32 0, i32 8
  %215 = call i32 @mutex_unlock(i32* %214)
  %216 = load i32, i32* @QC_PARAM_CHANGE, align 4
  %217 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %218 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %217, i32 0, i32 7
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  store i64 0, i64* %4, align 8
  br label %345

221:                                              ; preds = %3
  %222 = load i8*, i8** %7, align 8
  %223 = bitcast i8* %222 to %struct.video_window*
  store %struct.video_window* %223, %struct.video_window** %17, align 8
  %224 = load %struct.video_window*, %struct.video_window** %17, align 8
  %225 = getelementptr inbounds %struct.video_window, %struct.video_window* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load i64, i64* @EINVAL, align 8
  %230 = sub nsw i64 0, %229
  store i64 %230, i64* %4, align 8
  br label %345

231:                                              ; preds = %221
  %232 = load %struct.video_window*, %struct.video_window** %17, align 8
  %233 = getelementptr inbounds %struct.video_window, %struct.video_window* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load i64, i64* @EINVAL, align 8
  %238 = sub nsw i64 0, %237
  store i64 %238, i64* %4, align 8
  br label %345

239:                                              ; preds = %231
  %240 = load %struct.video_window*, %struct.video_window** %17, align 8
  %241 = getelementptr inbounds %struct.video_window, %struct.video_window* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %242, 60
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  %245 = load %struct.video_window*, %struct.video_window** %17, align 8
  %246 = getelementptr inbounds %struct.video_window, %struct.video_window* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %247, 240
  br i1 %248, label %249, label %252

249:                                              ; preds = %244, %239
  %250 = load i64, i64* @EINVAL, align 8
  %251 = sub nsw i64 0, %250
  store i64 %251, i64* %4, align 8
  br label %345

252:                                              ; preds = %244
  %253 = load %struct.video_window*, %struct.video_window** %17, align 8
  %254 = getelementptr inbounds %struct.video_window, %struct.video_window* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %255, 80
  br i1 %256, label %262, label %257

257:                                              ; preds = %252
  %258 = load %struct.video_window*, %struct.video_window** %17, align 8
  %259 = getelementptr inbounds %struct.video_window, %struct.video_window* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp sgt i32 %260, 320
  br i1 %261, label %262, label %265

262:                                              ; preds = %257, %252
  %263 = load i64, i64* @EINVAL, align 8
  %264 = sub nsw i64 0, %263
  store i64 %264, i64* %4, align 8
  br label %345

265:                                              ; preds = %257
  %266 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %267 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %266, i32 0, i32 4
  store i32 320, i32* %267, align 4
  %268 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %269 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %268, i32 0, i32 5
  store i32 240, i32* %269, align 4
  %270 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %271 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %270, i32 0, i32 6
  store i32 4, i32* %271, align 4
  %272 = load %struct.video_window*, %struct.video_window** %17, align 8
  %273 = getelementptr inbounds %struct.video_window, %struct.video_window* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = icmp sge i32 %274, 160
  br i1 %275, label %276, label %284

276:                                              ; preds = %265
  %277 = load %struct.video_window*, %struct.video_window** %17, align 8
  %278 = getelementptr inbounds %struct.video_window, %struct.video_window* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp sge i32 %279, 120
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %283 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %282, i32 0, i32 6
  store i32 2, i32* %283, align 4
  br label %284

284:                                              ; preds = %281, %276, %265
  %285 = load %struct.video_window*, %struct.video_window** %17, align 8
  %286 = getelementptr inbounds %struct.video_window, %struct.video_window* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp sge i32 %287, 320
  br i1 %288, label %289, label %301

289:                                              ; preds = %284
  %290 = load %struct.video_window*, %struct.video_window** %17, align 8
  %291 = getelementptr inbounds %struct.video_window, %struct.video_window* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp sge i32 %292, 240
  br i1 %293, label %294, label %301

294:                                              ; preds = %289
  %295 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %296 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %295, i32 0, i32 4
  store i32 320, i32* %296, align 4
  %297 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %298 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %297, i32 0, i32 5
  store i32 240, i32* %298, align 4
  %299 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %300 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %299, i32 0, i32 6
  store i32 1, i32* %300, align 4
  br label %301

301:                                              ; preds = %294, %289, %284
  %302 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %303 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %302, i32 0, i32 8
  %304 = call i32 @mutex_lock(i32* %303)
  %305 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %306 = call i32 @qc_setscanmode(%struct.qcam_device* %305)
  %307 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %308 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %307, i32 0, i32 8
  %309 = call i32 @mutex_unlock(i32* %308)
  %310 = load i32, i32* @QC_PARAM_CHANGE, align 4
  %311 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %312 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 4
  store i64 0, i64* %4, align 8
  br label %345

315:                                              ; preds = %3
  %316 = load i8*, i8** %7, align 8
  %317 = bitcast i8* %316 to %struct.video_window*
  store %struct.video_window* %317, %struct.video_window** %18, align 8
  %318 = load %struct.video_window*, %struct.video_window** %18, align 8
  %319 = call i32 @memset(%struct.video_window* %318, i32 0, i32 16)
  %320 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %321 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %324 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 4
  %326 = sdiv i32 %322, %325
  %327 = load %struct.video_window*, %struct.video_window** %18, align 8
  %328 = getelementptr inbounds %struct.video_window, %struct.video_window* %327, i32 0, i32 1
  store i32 %326, i32* %328, align 4
  %329 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %330 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %329, i32 0, i32 5
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.qcam_device*, %struct.qcam_device** %9, align 8
  %333 = getelementptr inbounds %struct.qcam_device, %struct.qcam_device* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 4
  %335 = sdiv i32 %331, %334
  %336 = load %struct.video_window*, %struct.video_window** %18, align 8
  %337 = getelementptr inbounds %struct.video_window, %struct.video_window* %336, i32 0, i32 0
  store i32 %335, i32* %337, align 4
  store i64 0, i64* %4, align 8
  br label %345

338:                                              ; preds = %3
  store i64 0, i64* %4, align 8
  br label %345

339:                                              ; preds = %3, %3, %3, %3, %3, %3, %3
  %340 = load i64, i64* @EINVAL, align 8
  %341 = sub nsw i64 0, %340
  store i64 %341, i64* %4, align 8
  br label %345

342:                                              ; preds = %3
  %343 = load i64, i64* @ENOIOCTLCMD, align 8
  %344 = sub nsw i64 0, %343
  store i64 %344, i64* %4, align 8
  br label %345

345:                                              ; preds = %342, %339, %338, %315, %301, %262, %249, %236, %228, %184, %181, %168, %127, %126, %123, %114, %93, %90, %82, %79, %60, %57, %24
  %346 = load i64, i64* %4, align 8
  ret i64 %346
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qc_setscanmode(%struct.qcam_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.video_window*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
