; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_ar_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_arv.c_ar_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.ar_device = type { i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.video_capability = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_window = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ar_ioctl()\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"VIDIOCGCAP:\0A\00", align 1
@VID_TYPE_CAPTURE = common dso_local global i32 0, align 4
@MAX_AR_WIDTH = common dso_local global i32 0, align 4
@MAX_AR_HEIGHT = common dso_local global i32 0, align 4
@MIN_AR_WIDTH = common dso_local global i32 0, align 4
@MIN_AR_HEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"VIDIOCGCHAN:\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"VIDIOCSCHAN:\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"VIDIOCGTUNER:\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"VIDIOCSTUNER:\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"VIDIOCGPICT:\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"VIDIOCSPICT:\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"VIDIOCCAPTURE:\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"VIDIOCGWIN:\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"VIDIOCSWIN:\0A\00", align 1
@AR_WIDTH_VGA = common dso_local global i32 0, align 4
@AR_HEIGHT_VGA = common dso_local global i32 0, align 4
@AR_WIDTH_QVGA = common dso_local global i32 0, align 4
@AR_HEIGHT_QVGA = common dso_local global i32 0, align 4
@AR_SIZE_VGA = common dso_local global i32 0, align 4
@AR_FRAME_BYTES_VGA = common dso_local global i32 0, align 4
@AR_LINE_BYTES_VGA = common dso_local global i32 0, align 4
@vga_interlace = common dso_local global i32 0, align 4
@AR_MODE_INTERLACE = common dso_local global i8* null, align 8
@AR_MODE_NORMAL = common dso_local global i8* null, align 8
@AR_SIZE_QVGA = common dso_local global i32 0, align 4
@AR_FRAME_BYTES_QVGA = common dso_local global i32 0, align 4
@AR_LINE_BYTES_QVGA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"VIDIOCGFBUF:\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"VIDIOCSFBUF:\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"VIDIOCKEY:\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"VIDIOCGFREQ:\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"VIDIOCSFREQ:\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"VIDIOCGAUDIO:\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"VIDIOCSAUDIO:\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"VIDIOCSYNC:\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"VIDIOCMCAPTURE:\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"VIDIOCGMBUF:\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"VIDIOCGUNIT:\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"VIDIOCGCAPTURE:\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"VIDIOCSCAPTURE:\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"VIDIOCSPLAYMODE:\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"VIDIOCSWRITEMODE:\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"VIDIOCGPLAYINFO:\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"VIDIOCSMICROCODE:\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"VIDIOCGVBIFMT:\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"VIDIOCSVBIFMT:\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Unknown ioctl(0x%08x)\0A\00", align 1
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i8*)* @ar_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ar_do_ioctl(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.ar_device*, align 8
  %10 = alloca %struct.video_capability*, align 8
  %11 = alloca %struct.video_window*, align 8
  %12 = alloca %struct.video_window*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.video_device* @video_devdata(%struct.file* %13)
  store %struct.video_device* %14, %struct.video_device** %8, align 8
  %15 = load %struct.video_device*, %struct.video_device** %8, align 8
  %16 = call %struct.ar_device* @video_get_drvdata(%struct.video_device* %15)
  store %struct.ar_device* %16, %struct.ar_device** %9, align 8
  %17 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %244 [
    i32 154, label %19
    i32 152, label %51
    i32 138, label %53
    i32 146, label %55
    i32 132, label %57
    i32 148, label %59
    i32 134, label %61
    i32 156, label %63
    i32 143, label %67
    i32 130, label %83
    i32 151, label %170
    i32 137, label %174
    i32 142, label %178
    i32 150, label %180
    i32 136, label %184
    i32 155, label %188
    i32 140, label %192
    i32 128, label %196
    i32 141, label %200
    i32 149, label %204
    i32 145, label %208
    i32 153, label %212
    i32 139, label %216
    i32 133, label %220
    i32 129, label %224
    i32 147, label %228
    i32 135, label %232
    i32 144, label %236
    i32 131, label %240
  ]

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.video_capability*
  store %struct.video_capability* %21, %struct.video_capability** %10, align 8
  %22 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %24 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %27 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %26, i32 0, i32 7
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcpy(i32 %25, i32 %30)
  %32 = load i32, i32* @VID_TYPE_CAPTURE, align 4
  %33 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %34 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 4
  %35 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %36 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %35, i32 0, i32 5
  store i32 0, i32* %36, align 4
  %37 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %38 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %37, i32 0, i32 4
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @MAX_AR_WIDTH, align 4
  %40 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %41 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @MAX_AR_HEIGHT, align 4
  %43 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %44 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @MIN_AR_WIDTH, align 4
  %46 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %47 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @MIN_AR_HEIGHT, align 4
  %49 = load %struct.video_capability*, %struct.video_capability** %10, align 8
  %50 = getelementptr inbounds %struct.video_capability, %struct.video_capability* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i64 0, i64* %4, align 8
  br label %249

51:                                               ; preds = %3
  %52 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %249

53:                                               ; preds = %3
  %54 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %249

55:                                               ; preds = %3
  %56 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %249

57:                                               ; preds = %3
  %58 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %249

59:                                               ; preds = %3
  %60 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %249

61:                                               ; preds = %3
  %62 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %249

63:                                               ; preds = %3
  %64 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %65 = load i64, i64* @EINVAL, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %4, align 8
  br label %249

67:                                               ; preds = %3
  %68 = load i8*, i8** %7, align 8
  %69 = bitcast i8* %68 to %struct.video_window*
  store %struct.video_window* %69, %struct.video_window** %11, align 8
  %70 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %71 = load %struct.video_window*, %struct.video_window** %11, align 8
  %72 = call i32 @memset(%struct.video_window* %71, i32 0, i32 8)
  %73 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %74 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.video_window*, %struct.video_window** %11, align 8
  %77 = getelementptr inbounds %struct.video_window, %struct.video_window* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %79 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.video_window*, %struct.video_window** %11, align 8
  %82 = getelementptr inbounds %struct.video_window, %struct.video_window* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  store i64 0, i64* %4, align 8
  br label %249

83:                                               ; preds = %3
  %84 = load i8*, i8** %7, align 8
  %85 = bitcast i8* %84 to %struct.video_window*
  store %struct.video_window* %85, %struct.video_window** %12, align 8
  %86 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %87 = load %struct.video_window*, %struct.video_window** %12, align 8
  %88 = getelementptr inbounds %struct.video_window, %struct.video_window* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AR_WIDTH_VGA, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %83
  %93 = load %struct.video_window*, %struct.video_window** %12, align 8
  %94 = getelementptr inbounds %struct.video_window, %struct.video_window* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AR_HEIGHT_VGA, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92, %83
  %99 = load %struct.video_window*, %struct.video_window** %12, align 8
  %100 = getelementptr inbounds %struct.video_window, %struct.video_window* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @AR_WIDTH_QVGA, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.video_window*, %struct.video_window** %12, align 8
  %106 = getelementptr inbounds %struct.video_window, %struct.video_window* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AR_HEIGHT_QVGA, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %98
  %111 = load i64, i64* @EINVAL, align 8
  %112 = sub nsw i64 0, %111
  store i64 %112, i64* %4, align 8
  br label %249

113:                                              ; preds = %104, %92
  %114 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %115 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %114, i32 0, i32 0
  %116 = call i32 @mutex_lock(i32* %115)
  %117 = load %struct.video_window*, %struct.video_window** %12, align 8
  %118 = getelementptr inbounds %struct.video_window, %struct.video_window* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %121 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load %struct.video_window*, %struct.video_window** %12, align 8
  %123 = getelementptr inbounds %struct.video_window, %struct.video_window* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %126 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %128 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AR_WIDTH_VGA, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %113
  %133 = load i32, i32* @AR_SIZE_VGA, align 4
  %134 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %135 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @AR_FRAME_BYTES_VGA, align 4
  %137 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %138 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @AR_LINE_BYTES_VGA, align 4
  %140 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %141 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* @vga_interlace, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = load i8*, i8** @AR_MODE_INTERLACE, align 8
  %146 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %147 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  br label %152

148:                                              ; preds = %132
  %149 = load i8*, i8** @AR_MODE_NORMAL, align 8
  %150 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %151 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %148, %144
  br label %166

153:                                              ; preds = %113
  %154 = load i32, i32* @AR_SIZE_QVGA, align 4
  %155 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %156 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @AR_FRAME_BYTES_QVGA, align 4
  %158 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %159 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @AR_LINE_BYTES_QVGA, align 4
  %161 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %162 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load i8*, i8** @AR_MODE_INTERLACE, align 8
  %164 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %165 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %153, %152
  %167 = load %struct.ar_device*, %struct.ar_device** %9, align 8
  %168 = getelementptr inbounds %struct.ar_device, %struct.ar_device* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  store i64 0, i64* %4, align 8
  br label %249

170:                                              ; preds = %3
  %171 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %172 = load i64, i64* @EINVAL, align 8
  %173 = sub nsw i64 0, %172
  store i64 %173, i64* %4, align 8
  br label %249

174:                                              ; preds = %3
  %175 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %176 = load i64, i64* @EINVAL, align 8
  %177 = sub nsw i64 0, %176
  store i64 %177, i64* %4, align 8
  br label %249

178:                                              ; preds = %3
  %179 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %249

180:                                              ; preds = %3
  %181 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %182 = load i64, i64* @EINVAL, align 8
  %183 = sub nsw i64 0, %182
  store i64 %183, i64* %4, align 8
  br label %249

184:                                              ; preds = %3
  %185 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %186 = load i64, i64* @EINVAL, align 8
  %187 = sub nsw i64 0, %186
  store i64 %187, i64* %4, align 8
  br label %249

188:                                              ; preds = %3
  %189 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %190 = load i64, i64* @EINVAL, align 8
  %191 = sub nsw i64 0, %190
  store i64 %191, i64* %4, align 8
  br label %249

192:                                              ; preds = %3
  %193 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %194 = load i64, i64* @EINVAL, align 8
  %195 = sub nsw i64 0, %194
  store i64 %195, i64* %4, align 8
  br label %249

196:                                              ; preds = %3
  %197 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %198 = load i64, i64* @EINVAL, align 8
  %199 = sub nsw i64 0, %198
  store i64 %199, i64* %4, align 8
  br label %249

200:                                              ; preds = %3
  %201 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %202 = load i64, i64* @EINVAL, align 8
  %203 = sub nsw i64 0, %202
  store i64 %203, i64* %4, align 8
  br label %249

204:                                              ; preds = %3
  %205 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %206 = load i64, i64* @EINVAL, align 8
  %207 = sub nsw i64 0, %206
  store i64 %207, i64* %4, align 8
  br label %249

208:                                              ; preds = %3
  %209 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %210 = load i64, i64* @EINVAL, align 8
  %211 = sub nsw i64 0, %210
  store i64 %211, i64* %4, align 8
  br label %249

212:                                              ; preds = %3
  %213 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %214 = load i64, i64* @EINVAL, align 8
  %215 = sub nsw i64 0, %214
  store i64 %215, i64* %4, align 8
  br label %249

216:                                              ; preds = %3
  %217 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  %218 = load i64, i64* @EINVAL, align 8
  %219 = sub nsw i64 0, %218
  store i64 %219, i64* %4, align 8
  br label %249

220:                                              ; preds = %3
  %221 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %222 = load i64, i64* @EINVAL, align 8
  %223 = sub nsw i64 0, %222
  store i64 %223, i64* %4, align 8
  br label %249

224:                                              ; preds = %3
  %225 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %226 = load i64, i64* @EINVAL, align 8
  %227 = sub nsw i64 0, %226
  store i64 %227, i64* %4, align 8
  br label %249

228:                                              ; preds = %3
  %229 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  %230 = load i64, i64* @EINVAL, align 8
  %231 = sub nsw i64 0, %230
  store i64 %231, i64* %4, align 8
  br label %249

232:                                              ; preds = %3
  %233 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %234 = load i64, i64* @EINVAL, align 8
  %235 = sub nsw i64 0, %234
  store i64 %235, i64* %4, align 8
  br label %249

236:                                              ; preds = %3
  %237 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %238 = load i64, i64* @EINVAL, align 8
  %239 = sub nsw i64 0, %238
  store i64 %239, i64* %4, align 8
  br label %249

240:                                              ; preds = %3
  %241 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0))
  %242 = load i64, i64* @EINVAL, align 8
  %243 = sub nsw i64 0, %242
  store i64 %243, i64* %4, align 8
  br label %249

244:                                              ; preds = %3
  %245 = load i32, i32* %6, align 4
  %246 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 %245)
  %247 = load i64, i64* @ENOIOCTLCMD, align 8
  %248 = sub nsw i64 0, %247
  store i64 %248, i64* %4, align 8
  br label %249

249:                                              ; preds = %244, %240, %236, %232, %228, %224, %220, %216, %212, %208, %204, %200, %196, %192, %188, %184, %180, %178, %174, %170, %166, %110, %67, %63, %61, %59, %57, %55, %53, %51, %19
  %250 = load i64, i64* %4, align 8
  ret i64 %250
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.ar_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @memset(%struct.video_window*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
