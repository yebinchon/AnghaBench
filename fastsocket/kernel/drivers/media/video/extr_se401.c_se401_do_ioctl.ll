; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.usb_se401 = type { i8*, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.video_capability = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_channel = type { i32, i32, i32, i32, i32 }
%struct.video_picture = type { i32 }
%struct.video_window = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.video_mbuf = type { i32, i32, i32* }
%struct.video_mmap = type { i32, i32, i32, i32 }
%struct.video_buffer = type { i32, i32, i32* }

@EIO = common dso_local global i64 0, align 8
@VID_TYPE_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@VIDEO_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@SE401_NUMFRAMES = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB24 = common dso_local global i32 0, align 4
@FRAME_UNUSED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@FRAME_READY = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @se401_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @se401_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.usb_se401*, align 8
  %10 = alloca %struct.video_capability*, align 8
  %11 = alloca %struct.video_channel*, align 8
  %12 = alloca %struct.video_channel*, align 8
  %13 = alloca %struct.video_picture*, align 8
  %14 = alloca %struct.video_picture*, align 8
  %15 = alloca %struct.video_window*, align 8
  %16 = alloca %struct.video_window*, align 8
  %17 = alloca %struct.video_mbuf*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.video_mmap*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.video_buffer*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load %struct.video_device*, %struct.video_device** %24, align 8
  store %struct.video_device* %25, %struct.video_device** %8, align 8
  %26 = load %struct.video_device*, %struct.video_device** %8, align 8
  %27 = bitcast %struct.video_device* %26 to %struct.usb_se401*
  store %struct.usb_se401* %27, %struct.usb_se401** %9, align 8
  %28 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %29 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i64, i64* @EIO, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %372

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %369 [
    i32 145, label %37
    i32 144, label %92
    i32 134, label %114
    i32 140, label %125
    i32 131, label %131
    i32 129, label %142
    i32 138, label %174
    i32 141, label %197
    i32 136, label %232
    i32 128, label %317
    i32 143, label %347
    i32 137, label %353
    i32 147, label %354
    i32 133, label %357
    i32 139, label %360
    i32 130, label %360
    i32 142, label %363
    i32 132, label %363
    i32 146, label %366
    i32 135, label %366
  ]

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.video_capability*
  store %struct.video_capability* %39, %struct.video_capability** %10, align 8
  %40 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %41 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %44 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcpy(i32 %42, i8* %45)
  %47 = load i32, i32* @VID_TYPE_CAPTURE, align 4
  %48 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %49 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %51 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %53 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %52, i32 0, i32 5
  store i32 0, i32* %53, align 4
  %54 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %55 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %54, i32 0, i32 8
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %58 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %65 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %67 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %70 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %77 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %79 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %78, i32 0, i32 8
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %84 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %86 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %91 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i64 0, i64* %4, align 8
  br label %372

92:                                               ; preds = %35
  %93 = load i8*, i8** %7, align 8
  %94 = bitcast i8* %93 to %struct.video_channel*
  store %struct.video_channel* %94, %struct.video_channel** %11, align 8
  %95 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %96 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i64, i64* @EINVAL, align 8
  %101 = sub nsw i64 0, %100
  store i64 %101, i64* %4, align 8
  br label %372

102:                                              ; preds = %92
  %103 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %104 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %103, i32 0, i32 4
  store i32 0, i32* %104, align 4
  %105 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %106 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %105, i32 0, i32 3
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* @VIDEO_TYPE_CAMERA, align 4
  %108 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %109 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %111 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @strcpy(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %372

114:                                              ; preds = %35
  %115 = load i8*, i8** %7, align 8
  %116 = bitcast i8* %115 to %struct.video_channel*
  store %struct.video_channel* %116, %struct.video_channel** %12, align 8
  %117 = load %struct.video_channel*, %struct.video_channel** %12, align 8
  %118 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i64, i64* @EINVAL, align 8
  %123 = sub nsw i64 0, %122
  store i64 %123, i64* %4, align 8
  br label %372

124:                                              ; preds = %114
  store i64 0, i64* %4, align 8
  br label %372

125:                                              ; preds = %35
  %126 = load i8*, i8** %7, align 8
  %127 = bitcast i8* %126 to %struct.video_picture*
  store %struct.video_picture* %127, %struct.video_picture** %13, align 8
  %128 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %129 = load %struct.video_picture*, %struct.video_picture** %13, align 8
  %130 = call i32 @se401_get_pict(%struct.usb_se401* %128, %struct.video_picture* %129)
  store i64 0, i64* %4, align 8
  br label %372

131:                                              ; preds = %35
  %132 = load i8*, i8** %7, align 8
  %133 = bitcast i8* %132 to %struct.video_picture*
  store %struct.video_picture* %133, %struct.video_picture** %14, align 8
  %134 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %135 = load %struct.video_picture*, %struct.video_picture** %14, align 8
  %136 = call i32 @se401_set_pict(%struct.usb_se401* %134, %struct.video_picture* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i64, i64* @EINVAL, align 8
  %140 = sub nsw i64 0, %139
  store i64 %140, i64* %4, align 8
  br label %372

141:                                              ; preds = %131
  store i64 0, i64* %4, align 8
  br label %372

142:                                              ; preds = %35
  %143 = load i8*, i8** %7, align 8
  %144 = bitcast i8* %143 to %struct.video_window*
  store %struct.video_window* %144, %struct.video_window** %15, align 8
  %145 = load %struct.video_window*, %struct.video_window** %15, align 8
  %146 = getelementptr inbounds %struct.video_window, %struct.video_window* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i64, i64* @EINVAL, align 8
  %151 = sub nsw i64 0, %150
  store i64 %151, i64* %4, align 8
  br label %372

152:                                              ; preds = %142
  %153 = load %struct.video_window*, %struct.video_window** %15, align 8
  %154 = getelementptr inbounds %struct.video_window, %struct.video_window* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i64, i64* @EINVAL, align 8
  %159 = sub nsw i64 0, %158
  store i64 %159, i64* %4, align 8
  br label %372

160:                                              ; preds = %152
  %161 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %162 = load %struct.video_window*, %struct.video_window** %15, align 8
  %163 = getelementptr inbounds %struct.video_window, %struct.video_window* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.video_window*, %struct.video_window** %15, align 8
  %166 = getelementptr inbounds %struct.video_window, %struct.video_window* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @se401_set_size(%struct.usb_se401* %161, i32 %164, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = load i64, i64* @EINVAL, align 8
  %172 = sub nsw i64 0, %171
  store i64 %172, i64* %4, align 8
  br label %372

173:                                              ; preds = %160
  store i64 0, i64* %4, align 8
  br label %372

174:                                              ; preds = %35
  %175 = load i8*, i8** %7, align 8
  %176 = bitcast i8* %175 to %struct.video_window*
  store %struct.video_window* %176, %struct.video_window** %16, align 8
  %177 = load %struct.video_window*, %struct.video_window** %16, align 8
  %178 = getelementptr inbounds %struct.video_window, %struct.video_window* %177, i32 0, i32 6
  store i32 0, i32* %178, align 4
  %179 = load %struct.video_window*, %struct.video_window** %16, align 8
  %180 = getelementptr inbounds %struct.video_window, %struct.video_window* %179, i32 0, i32 5
  store i32 0, i32* %180, align 4
  %181 = load %struct.video_window*, %struct.video_window** %16, align 8
  %182 = getelementptr inbounds %struct.video_window, %struct.video_window* %181, i32 0, i32 4
  store i32 0, i32* %182, align 4
  %183 = load %struct.video_window*, %struct.video_window** %16, align 8
  %184 = getelementptr inbounds %struct.video_window, %struct.video_window* %183, i32 0, i32 3
  store i32 0, i32* %184, align 4
  %185 = load %struct.video_window*, %struct.video_window** %16, align 8
  %186 = getelementptr inbounds %struct.video_window, %struct.video_window* %185, i32 0, i32 2
  store i32 0, i32* %186, align 4
  %187 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %188 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.video_window*, %struct.video_window** %16, align 8
  %191 = getelementptr inbounds %struct.video_window, %struct.video_window* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %193 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.video_window*, %struct.video_window** %16, align 8
  %196 = getelementptr inbounds %struct.video_window, %struct.video_window* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  store i64 0, i64* %4, align 8
  br label %372

197:                                              ; preds = %35
  %198 = load i8*, i8** %7, align 8
  %199 = bitcast i8* %198 to %struct.video_mbuf*
  store %struct.video_mbuf* %199, %struct.video_mbuf** %17, align 8
  %200 = load %struct.video_mbuf*, %struct.video_mbuf** %17, align 8
  %201 = call i32 @memset(%struct.video_mbuf* %200, i32 0, i32 16)
  %202 = load i32, i32* @SE401_NUMFRAMES, align 4
  %203 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %204 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %202, %205
  %207 = load %struct.video_mbuf*, %struct.video_mbuf** %17, align 8
  %208 = getelementptr inbounds %struct.video_mbuf, %struct.video_mbuf* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* @SE401_NUMFRAMES, align 4
  %210 = load %struct.video_mbuf*, %struct.video_mbuf** %17, align 8
  %211 = getelementptr inbounds %struct.video_mbuf, %struct.video_mbuf* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  store i32 0, i32* %18, align 4
  br label %212

212:                                              ; preds = %228, %197
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* @SE401_NUMFRAMES, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %212
  %217 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %218 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %18, align 4
  %221 = mul nsw i32 %219, %220
  %222 = load %struct.video_mbuf*, %struct.video_mbuf** %17, align 8
  %223 = getelementptr inbounds %struct.video_mbuf, %struct.video_mbuf* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %18, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %221, i32* %227, align 4
  br label %228

228:                                              ; preds = %216
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %212

231:                                              ; preds = %212
  store i64 0, i64* %4, align 8
  br label %372

232:                                              ; preds = %35
  %233 = load i8*, i8** %7, align 8
  %234 = bitcast i8* %233 to %struct.video_mmap*
  store %struct.video_mmap* %234, %struct.video_mmap** %19, align 8
  %235 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %236 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @VIDEO_PALETTE_RGB24, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %232
  %241 = load i64, i64* @EINVAL, align 8
  %242 = sub nsw i64 0, %241
  store i64 %242, i64* %4, align 8
  br label %372

243:                                              ; preds = %232
  %244 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %245 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @SE401_NUMFRAMES, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %243
  %250 = load i64, i64* @EINVAL, align 8
  %251 = sub nsw i64 0, %250
  store i64 %251, i64* %4, align 8
  br label %372

252:                                              ; preds = %243
  %253 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %254 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %253, i32 0, i32 3
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %257 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @FRAME_UNUSED, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %252
  %266 = load i64, i64* @EBUSY, align 8
  %267 = sub nsw i64 0, %266
  store i64 %267, i64* %4, align 8
  br label %372

268:                                              ; preds = %252
  %269 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %270 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %271 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %274 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @se401_set_size(%struct.usb_se401* %269, i32 %272, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %268
  %279 = load i64, i64* @EINVAL, align 8
  %280 = sub nsw i64 0, %279
  store i64 %280, i64* %4, align 8
  br label %372

281:                                              ; preds = %268
  %282 = load i32, i32* @FRAME_READY, align 4
  %283 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %284 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %283, i32 0, i32 3
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %287 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 0
  store i32 %282, i32* %291, align 4
  %292 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %293 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %281
  %297 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %298 = call i32 @se401_start_stream(%struct.usb_se401* %297)
  br label %299

299:                                              ; preds = %296, %281
  %300 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %301 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %306 = call i32 @se401_send_pict(%struct.usb_se401* %305)
  br label %307

307:                                              ; preds = %304, %299
  %308 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %309 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = srem i32 %310, 20
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %316

313:                                              ; preds = %307
  %314 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %315 = call i32 @se401_auto_resetlevel(%struct.usb_se401* %314)
  br label %316

316:                                              ; preds = %313, %307
  store i64 0, i64* %4, align 8
  br label %372

317:                                              ; preds = %35
  %318 = load i8*, i8** %7, align 8
  %319 = bitcast i8* %318 to i32*
  store i32* %319, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %320 = load i32*, i32** %20, align 8
  %321 = load i32, i32* %320, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %317
  %324 = load i32*, i32** %20, align 8
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @SE401_NUMFRAMES, align 4
  %327 = icmp sge i32 %325, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %323, %317
  %329 = load i64, i64* @EINVAL, align 8
  %330 = sub nsw i64 0, %329
  store i64 %330, i64* %4, align 8
  br label %372

331:                                              ; preds = %323
  %332 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %333 = load i32*, i32** %20, align 8
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @se401_newframe(%struct.usb_se401* %332, i32 %334)
  store i32 %335, i32* %21, align 4
  %336 = load i32, i32* @FRAME_UNUSED, align 4
  %337 = load %struct.usb_se401*, %struct.usb_se401** %9, align 8
  %338 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %337, i32 0, i32 3
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = load i32*, i32** %20, align 8
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 0
  store i32 %336, i32* %344, align 4
  %345 = load i32, i32* %21, align 4
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %4, align 8
  br label %372

347:                                              ; preds = %35
  %348 = load i8*, i8** %7, align 8
  %349 = bitcast i8* %348 to %struct.video_buffer*
  store %struct.video_buffer* %349, %struct.video_buffer** %22, align 8
  %350 = load %struct.video_buffer*, %struct.video_buffer** %22, align 8
  %351 = bitcast %struct.video_buffer* %350 to %struct.video_mbuf*
  %352 = call i32 @memset(%struct.video_mbuf* %351, i32 0, i32 16)
  store i64 0, i64* %4, align 8
  br label %372

353:                                              ; preds = %35
  store i64 0, i64* %4, align 8
  br label %372

354:                                              ; preds = %35
  %355 = load i64, i64* @EINVAL, align 8
  %356 = sub nsw i64 0, %355
  store i64 %356, i64* %4, align 8
  br label %372

357:                                              ; preds = %35
  %358 = load i64, i64* @EINVAL, align 8
  %359 = sub nsw i64 0, %358
  store i64 %359, i64* %4, align 8
  br label %372

360:                                              ; preds = %35, %35
  %361 = load i64, i64* @EINVAL, align 8
  %362 = sub nsw i64 0, %361
  store i64 %362, i64* %4, align 8
  br label %372

363:                                              ; preds = %35, %35
  %364 = load i64, i64* @EINVAL, align 8
  %365 = sub nsw i64 0, %364
  store i64 %365, i64* %4, align 8
  br label %372

366:                                              ; preds = %35, %35
  %367 = load i64, i64* @EINVAL, align 8
  %368 = sub nsw i64 0, %367
  store i64 %368, i64* %4, align 8
  br label %372

369:                                              ; preds = %35
  %370 = load i64, i64* @ENOIOCTLCMD, align 8
  %371 = sub nsw i64 0, %370
  store i64 %371, i64* %4, align 8
  br label %372

372:                                              ; preds = %369, %366, %363, %360, %357, %354, %353, %347, %331, %328, %316, %278, %265, %249, %240, %231, %174, %173, %170, %157, %149, %141, %138, %125, %124, %121, %102, %99, %37, %32
  %373 = load i64, i64* %4, align 8
  ret i64 %373
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @se401_get_pict(%struct.usb_se401*, %struct.video_picture*) #1

declare dso_local i32 @se401_set_pict(%struct.usb_se401*, %struct.video_picture*) #1

declare dso_local i32 @se401_set_size(%struct.usb_se401*, i32, i32) #1

declare dso_local i32 @memset(%struct.video_mbuf*, i32, i32) #1

declare dso_local i32 @se401_start_stream(%struct.usb_se401*) #1

declare dso_local i32 @se401_send_pict(%struct.usb_se401*) #1

declare dso_local i32 @se401_auto_resetlevel(%struct.usb_se401*) #1

declare dso_local i32 @se401_newframe(%struct.usb_se401*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
