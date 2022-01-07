; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.usb_stv = type { i8*, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
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
@.str = private unnamed_addr constant [11 x i8] c"STV Camera\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"STV(e): failed (from user) set size in VIDIOCSWIN\00", align 1
@STV680_NUMFRAMES = common dso_local global i32 0, align 4
@STV_VIDEO_PALETTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"STV(i): VIDIOCMCAPTURE vm.format (%i) != VIDEO_PALETTE (%i)\00", align 1
@swapRGB_on = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"STV(i): VIDIOCMCAPTURE swapRGB is (auto) ON\00", align 1
@swapRGB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"STV(e): VIDIOCMCAPTURE vm.frame > NUMFRAMES\00", align 1
@FRAME_ERROR = common dso_local global i32 0, align 4
@FRAME_GRABBING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"STV(e): VIDIOCMCAPTURE grabstate (%i) error\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"STV(e): VIDIOCMCAPTURE set_size failed\00", align 1
@FRAME_READY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"STV(e): Bad frame # in VIDIOCSYNC\00", align 1
@FRAME_UNUSED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"STV(e): VIDIOCCAPTURE failed\00", align 1
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @stv680_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stv680_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.usb_stv*, align 8
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
  %27 = call %struct.usb_stv* @video_get_drvdata(%struct.video_device* %26)
  store %struct.usb_stv* %27, %struct.usb_stv** %9, align 8
  %28 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %29 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i64, i64* @EIO, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %4, align 8
  br label %392

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %389 [
    i32 145, label %37
    i32 144, label %76
    i32 134, label %98
    i32 140, label %109
    i32 131, label %115
    i32 129, label %126
    i32 138, label %168
    i32 141, label %191
    i32 136, label %226
    i32 128, label %344
    i32 143, label %375
    i32 137, label %381
    i32 147, label %382
    i32 133, label %386
    i32 139, label %386
    i32 130, label %386
    i32 142, label %386
    i32 132, label %386
    i32 146, label %386
    i32 135, label %386
  ]

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.video_capability*
  store %struct.video_capability* %39, %struct.video_capability** %10, align 8
  %40 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %41 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %44 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %43, i32 0, i32 0
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
  %54 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %55 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %58 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %60 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %63 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %65 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %66, 2
  %68 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %69 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %71 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 2
  %74 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %75 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  store i64 0, i64* %4, align 8
  br label %392

76:                                               ; preds = %35
  %77 = load i8*, i8** %7, align 8
  %78 = bitcast i8* %77 to %struct.video_channel*
  store %struct.video_channel* %78, %struct.video_channel** %11, align 8
  %79 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %80 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i64, i64* @EINVAL, align 8
  %85 = sub nsw i64 0, %84
  store i64 %85, i64* %4, align 8
  br label %392

86:                                               ; preds = %76
  %87 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %88 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %87, i32 0, i32 4
  store i32 0, i32* %88, align 4
  %89 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %90 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %89, i32 0, i32 3
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* @VIDEO_TYPE_CAMERA, align 4
  %92 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %93 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.video_channel*, %struct.video_channel** %11, align 8
  %95 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @strcpy(i32 %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %392

98:                                               ; preds = %35
  %99 = load i8*, i8** %7, align 8
  %100 = bitcast i8* %99 to %struct.video_channel*
  store %struct.video_channel* %100, %struct.video_channel** %12, align 8
  %101 = load %struct.video_channel*, %struct.video_channel** %12, align 8
  %102 = getelementptr inbounds %struct.video_channel, %struct.video_channel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i64, i64* @EINVAL, align 8
  %107 = sub nsw i64 0, %106
  store i64 %107, i64* %4, align 8
  br label %392

108:                                              ; preds = %98
  store i64 0, i64* %4, align 8
  br label %392

109:                                              ; preds = %35
  %110 = load i8*, i8** %7, align 8
  %111 = bitcast i8* %110 to %struct.video_picture*
  store %struct.video_picture* %111, %struct.video_picture** %13, align 8
  %112 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %113 = load %struct.video_picture*, %struct.video_picture** %13, align 8
  %114 = call i32 @stv680_get_pict(%struct.usb_stv* %112, %struct.video_picture* %113)
  store i64 0, i64* %4, align 8
  br label %392

115:                                              ; preds = %35
  %116 = load i8*, i8** %7, align 8
  %117 = bitcast i8* %116 to %struct.video_picture*
  store %struct.video_picture* %117, %struct.video_picture** %14, align 8
  %118 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %119 = load %struct.video_picture*, %struct.video_picture** %14, align 8
  %120 = call i32 @stv680_set_pict(%struct.usb_stv* %118, %struct.video_picture* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i64, i64* @EINVAL, align 8
  %124 = sub nsw i64 0, %123
  store i64 %124, i64* %4, align 8
  br label %392

125:                                              ; preds = %115
  store i64 0, i64* %4, align 8
  br label %392

126:                                              ; preds = %35
  %127 = load i8*, i8** %7, align 8
  %128 = bitcast i8* %127 to %struct.video_window*
  store %struct.video_window* %128, %struct.video_window** %15, align 8
  %129 = load %struct.video_window*, %struct.video_window** %15, align 8
  %130 = getelementptr inbounds %struct.video_window, %struct.video_window* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i64, i64* @EINVAL, align 8
  %135 = sub nsw i64 0, %134
  store i64 %135, i64* %4, align 8
  br label %392

136:                                              ; preds = %126
  %137 = load %struct.video_window*, %struct.video_window** %15, align 8
  %138 = getelementptr inbounds %struct.video_window, %struct.video_window* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i64, i64* @EINVAL, align 8
  %143 = sub nsw i64 0, %142
  store i64 %143, i64* %4, align 8
  br label %392

144:                                              ; preds = %136
  %145 = load %struct.video_window*, %struct.video_window** %15, align 8
  %146 = getelementptr inbounds %struct.video_window, %struct.video_window* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %149 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %147, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %144
  %153 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %154 = load %struct.video_window*, %struct.video_window** %15, align 8
  %155 = getelementptr inbounds %struct.video_window, %struct.video_window* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.video_window*, %struct.video_window** %15, align 8
  %158 = getelementptr inbounds %struct.video_window, %struct.video_window* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @stv680_set_size(%struct.usb_stv* %153, i32 %156, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i64, i64* @EINVAL, align 8
  %165 = sub nsw i64 0, %164
  store i64 %165, i64* %4, align 8
  br label %392

166:                                              ; preds = %152
  br label %167

167:                                              ; preds = %166, %144
  store i64 0, i64* %4, align 8
  br label %392

168:                                              ; preds = %35
  %169 = load i8*, i8** %7, align 8
  %170 = bitcast i8* %169 to %struct.video_window*
  store %struct.video_window* %170, %struct.video_window** %16, align 8
  %171 = load %struct.video_window*, %struct.video_window** %16, align 8
  %172 = getelementptr inbounds %struct.video_window, %struct.video_window* %171, i32 0, i32 6
  store i32 0, i32* %172, align 4
  %173 = load %struct.video_window*, %struct.video_window** %16, align 8
  %174 = getelementptr inbounds %struct.video_window, %struct.video_window* %173, i32 0, i32 5
  store i32 0, i32* %174, align 4
  %175 = load %struct.video_window*, %struct.video_window** %16, align 8
  %176 = getelementptr inbounds %struct.video_window, %struct.video_window* %175, i32 0, i32 4
  store i32 0, i32* %176, align 4
  %177 = load %struct.video_window*, %struct.video_window** %16, align 8
  %178 = getelementptr inbounds %struct.video_window, %struct.video_window* %177, i32 0, i32 3
  store i32 0, i32* %178, align 4
  %179 = load %struct.video_window*, %struct.video_window** %16, align 8
  %180 = getelementptr inbounds %struct.video_window, %struct.video_window* %179, i32 0, i32 2
  store i32 0, i32* %180, align 4
  %181 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %182 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.video_window*, %struct.video_window** %16, align 8
  %185 = getelementptr inbounds %struct.video_window, %struct.video_window* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %187 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.video_window*, %struct.video_window** %16, align 8
  %190 = getelementptr inbounds %struct.video_window, %struct.video_window* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 4
  store i64 0, i64* %4, align 8
  br label %392

191:                                              ; preds = %35
  %192 = load i8*, i8** %7, align 8
  %193 = bitcast i8* %192 to %struct.video_mbuf*
  store %struct.video_mbuf* %193, %struct.video_mbuf** %17, align 8
  %194 = load %struct.video_mbuf*, %struct.video_mbuf** %17, align 8
  %195 = call i32 @memset(%struct.video_mbuf* %194, i32 0, i32 16)
  %196 = load i32, i32* @STV680_NUMFRAMES, align 4
  %197 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %198 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = mul nsw i32 %196, %199
  %201 = load %struct.video_mbuf*, %struct.video_mbuf** %17, align 8
  %202 = getelementptr inbounds %struct.video_mbuf, %struct.video_mbuf* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* @STV680_NUMFRAMES, align 4
  %204 = load %struct.video_mbuf*, %struct.video_mbuf** %17, align 8
  %205 = getelementptr inbounds %struct.video_mbuf, %struct.video_mbuf* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  store i32 0, i32* %18, align 4
  br label %206

206:                                              ; preds = %222, %191
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* @STV680_NUMFRAMES, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %225

210:                                              ; preds = %206
  %211 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %212 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %18, align 4
  %215 = mul nsw i32 %213, %214
  %216 = load %struct.video_mbuf*, %struct.video_mbuf** %17, align 8
  %217 = getelementptr inbounds %struct.video_mbuf, %struct.video_mbuf* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %215, i32* %221, align 4
  br label %222

222:                                              ; preds = %210
  %223 = load i32, i32* %18, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %18, align 4
  br label %206

225:                                              ; preds = %206
  store i64 0, i64* %4, align 8
  br label %392

226:                                              ; preds = %35
  %227 = load i8*, i8** %7, align 8
  %228 = bitcast i8* %227 to %struct.video_mmap*
  store %struct.video_mmap* %228, %struct.video_mmap** %19, align 8
  %229 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %230 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @STV_VIDEO_PALETTE, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %252

234:                                              ; preds = %226
  %235 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %236 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @STV_VIDEO_PALETTE, align 4
  %239 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %237, i32 %238)
  %240 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %241 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 3
  br i1 %243, label %244, label %249

244:                                              ; preds = %234
  %245 = load i32, i32* @swapRGB_on, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @swapRGB, align 4
  br label %249

249:                                              ; preds = %247, %244, %234
  %250 = load i64, i64* @EINVAL, align 8
  %251 = sub nsw i64 0, %250
  store i64 %251, i64* %4, align 8
  br label %392

252:                                              ; preds = %226
  %253 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %254 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @STV680_NUMFRAMES, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %252
  %259 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %260 = load i64, i64* @EINVAL, align 8
  %261 = sub nsw i64 0, %260
  store i64 %261, i64* %4, align 8
  br label %392

262:                                              ; preds = %252
  %263 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %264 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %263, i32 0, i32 4
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %267 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @FRAME_ERROR, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %288, label %275

275:                                              ; preds = %262
  %276 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %277 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %276, i32 0, i32 4
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %280 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @FRAME_GRABBING, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %302

288:                                              ; preds = %275, %262
  %289 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %290 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %289, i32 0, i32 4
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %290, align 8
  %292 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %293 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %298)
  %300 = load i64, i64* @EBUSY, align 8
  %301 = sub nsw i64 0, %300
  store i64 %301, i64* %4, align 8
  br label %392

302:                                              ; preds = %275
  %303 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %304 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %307 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %305, %308
  br i1 %309, label %310, label %325

310:                                              ; preds = %302
  %311 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %312 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %313 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %316 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @stv680_set_size(%struct.usb_stv* %311, i32 %314, i32 %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %310
  %321 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %322 = load i64, i64* @EINVAL, align 8
  %323 = sub nsw i64 0, %322
  store i64 %323, i64* %4, align 8
  br label %392

324:                                              ; preds = %310
  br label %325

325:                                              ; preds = %324, %302
  %326 = load i32, i32* @FRAME_READY, align 4
  %327 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %328 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %327, i32 0, i32 4
  %329 = load %struct.TYPE_2__*, %struct.TYPE_2__** %328, align 8
  %330 = load %struct.video_mmap*, %struct.video_mmap** %19, align 8
  %331 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 0
  store i32 %326, i32* %335, align 4
  %336 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %337 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 8
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %325
  %341 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %342 = call i32 @stv680_start_stream(%struct.usb_stv* %341)
  br label %343

343:                                              ; preds = %340, %325
  store i64 0, i64* %4, align 8
  br label %392

344:                                              ; preds = %35
  %345 = load i8*, i8** %7, align 8
  %346 = bitcast i8* %345 to i32*
  store i32* %346, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %347 = load i32*, i32** %20, align 8
  %348 = load i32, i32* %347, align 4
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %355, label %350

350:                                              ; preds = %344
  %351 = load i32*, i32** %20, align 8
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @STV680_NUMFRAMES, align 4
  %354 = icmp sge i32 %352, %353
  br i1 %354, label %355, label %359

355:                                              ; preds = %350, %344
  %356 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %357 = load i64, i64* @EINVAL, align 8
  %358 = sub nsw i64 0, %357
  store i64 %358, i64* %4, align 8
  br label %392

359:                                              ; preds = %350
  %360 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %361 = load i32*, i32** %20, align 8
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @stv680_newframe(%struct.usb_stv* %360, i32 %362)
  store i32 %363, i32* %21, align 4
  %364 = load i32, i32* @FRAME_UNUSED, align 4
  %365 = load %struct.usb_stv*, %struct.usb_stv** %9, align 8
  %366 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %365, i32 0, i32 4
  %367 = load %struct.TYPE_2__*, %struct.TYPE_2__** %366, align 8
  %368 = load i32*, i32** %20, align 8
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 0
  store i32 %364, i32* %372, align 4
  %373 = load i32, i32* %21, align 4
  %374 = sext i32 %373 to i64
  store i64 %374, i64* %4, align 8
  br label %392

375:                                              ; preds = %35
  %376 = load i8*, i8** %7, align 8
  %377 = bitcast i8* %376 to %struct.video_buffer*
  store %struct.video_buffer* %377, %struct.video_buffer** %22, align 8
  %378 = load %struct.video_buffer*, %struct.video_buffer** %22, align 8
  %379 = bitcast %struct.video_buffer* %378 to %struct.video_mbuf*
  %380 = call i32 @memset(%struct.video_mbuf* %379, i32 0, i32 16)
  store i64 0, i64* %4, align 8
  br label %392

381:                                              ; preds = %35
  store i64 0, i64* %4, align 8
  br label %392

382:                                              ; preds = %35
  %383 = call i32 (i32, i8*, ...) @PDEBUG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %384 = load i64, i64* @EINVAL, align 8
  %385 = sub nsw i64 0, %384
  store i64 %385, i64* %4, align 8
  br label %392

386:                                              ; preds = %35, %35, %35, %35, %35, %35, %35
  %387 = load i64, i64* @EINVAL, align 8
  %388 = sub nsw i64 0, %387
  store i64 %388, i64* %4, align 8
  br label %392

389:                                              ; preds = %35
  %390 = load i64, i64* @ENOIOCTLCMD, align 8
  %391 = sub nsw i64 0, %390
  store i64 %391, i64* %4, align 8
  br label %392

392:                                              ; preds = %389, %386, %382, %381, %375, %359, %355, %343, %320, %288, %258, %249, %225, %168, %167, %162, %141, %133, %125, %122, %109, %108, %105, %86, %83, %37, %32
  %393 = load i64, i64* %4, align 8
  ret i64 %393
}

declare dso_local %struct.usb_stv* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @stv680_get_pict(%struct.usb_stv*, %struct.video_picture*) #1

declare dso_local i32 @stv680_set_pict(%struct.usb_stv*, %struct.video_picture*) #1

declare dso_local i32 @stv680_set_size(%struct.usb_stv*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.video_mbuf*, i32, i32) #1

declare dso_local i32 @stv680_start_stream(%struct.usb_stv*) #1

declare dso_local i32 @stv680_newframe(%struct.usb_stv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
