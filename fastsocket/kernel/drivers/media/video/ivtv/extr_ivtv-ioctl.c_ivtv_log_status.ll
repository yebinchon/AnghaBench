; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_log_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv = type { i32, i8*, i32, i32, i32, i64, i64, i8*, i64, i64, %struct.ivtv_stream*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.ivtv_stream = type { i32, i32, %struct.TYPE_6__, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_input = type { i8* }
%struct.v4l2_audio = type { i32 }
%struct.tveeprom = type { i32 }
%struct.v4l2_output = type { i8* }
%struct.v4l2_audioout = type { i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"=================  START STATUS CARD #%d  =================\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Version: %s Card: %s\0A\00", align 1
@IVTV_VERSION = common dso_local global i32 0, align 4
@IVTV_HW_TVEEPROM = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@log_status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Video Input:  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Audio Input:  %s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" (Bilingual)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ivtv_log_status.output_modes = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"MPEG Streaming\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"YUV Streaming\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"YUV Frames\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Passthrough\00", align 1
@ivtv_log_status.audio_modes = internal constant [5 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Mono\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Swapped\00", align 1
@ivtv_log_status.alpha_mode = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Global and Local\00", align 1
@ivtv_log_status.pixel_format = internal constant [16 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str.19 = private unnamed_addr constant [13 x i8] c"ARGB Indexed\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"RGB 5:6:5\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"ARGB 1:5:5:5\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"ARGB 1:4:4:4\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"ARGB 8:8:8:8\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"AYUV Indexed\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"YUV 5:6:5\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"AYUV 1:5:5:5\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"AYUV 1:4:4:4\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"AYUV 8:8:8:8\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Video Output: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"Audio Output: %s (Stereo/Bilingual: %s/%s)\0A\00", align 1
@OUT_PASSTHROUGH = common dso_local global i32 0, align 4
@OUT_NONE = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [18 x i8] c"Output Mode:  %s\0A\00", align 1
@CX2341X_OSD_GET_STATE = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [47 x i8] c"Overlay:      %s, Alpha: %s, Pixel Format: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Tuner:  %s\0A\00", align 1
@IVTV_F_I_RADIO_USER = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"TV\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"Status flags:    0x%08lx\0A\00", align 1
@IVTV_MAX_STREAMS = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [63 x i8] c"Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Read MPG/VBI: %lld/%lld bytes\0A\00", align 1
@.str.47 = private unnamed_addr constant [61 x i8] c"==================  END STATUS CARD #%d  ==================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @ivtv_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_input, align 8
  %10 = alloca %struct.v4l2_audio, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tveeprom, align 4
  %13 = alloca %struct.v4l2_output, align 8
  %14 = alloca %struct.v4l2_audioout, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ivtv_stream*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.ivtv_open_id*
  %19 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %18, i32 0, i32 0
  %20 = load %struct.ivtv*, %struct.ivtv** %19, align 8
  store %struct.ivtv* %20, %struct.ivtv** %5, align 8
  %21 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %26 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %31 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @IVTV_VERSION, align 4
  %35 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 16
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %40 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IVTV_HW_TVEEPROM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %47 = call i32 @ivtv_read_eeprom(%struct.ivtv* %46, %struct.tveeprom* %12)
  br label %48

48:                                               ; preds = %45, %2
  %49 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %50 = load i32, i32* @core, align 4
  %51 = load i32, i32* @log_status, align 4
  %52 = call i32 @ivtv_call_all(%struct.ivtv* %49, i32 %50, i32 %51)
  %53 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %54 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 15
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ivtv_get_input(%struct.ivtv* %53, i32 %56, %struct.v4l2_input* %9)
  %58 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %59 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ivtv_get_audio_input(%struct.ivtv* %58, i32 %61, %struct.v4l2_audio* %10)
  %63 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %9, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %69 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, -769
  %72 = icmp eq i32 %71, 512
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %75 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %67, i8* %74)
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %149

78:                                               ; preds = %48
  %79 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %80 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %15, align 4
  %82 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %83 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %84 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ivtv_get_output(%struct.ivtv* %82, i32 %85, %struct.v4l2_output* %13)
  %87 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %88 = call i32 @ivtv_get_audio_output(%struct.ivtv* %87, i32 0, %struct.v4l2_audioout* %14)
  %89 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %13, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i8* %90)
  %92 = getelementptr inbounds %struct.v4l2_audioout, %struct.v4l2_audioout* %14, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %95 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds [5 x i8*], [5 x i8*]* @ivtv_log_status.audio_modes, i64 0, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %100 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [5 x i8*], [5 x i8*]* @ivtv_log_status.audio_modes, i64 0, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0), i32 %93, i8* %98, i8* %103)
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %78
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @OUT_PASSTHROUGH, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %78
  %112 = load i32, i32* @OUT_NONE, align 4
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [5 x i8*], [5 x i8*]* @ivtv_log_status.output_modes, i64 0, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8* %117)
  %119 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %120 = load i32, i32* @CX2341X_OSD_GET_STATE, align 4
  %121 = call i32 @ivtv_vapi_result(%struct.ivtv* %119, i32* %24, i32 %120, i32 0)
  %122 = call i32 @read_reg(i32 10752)
  %123 = ashr i32 %122, 7
  %124 = and i32 %123, 64
  %125 = getelementptr inbounds i32, i32* %24, i64 0
  %126 = load i32, i32* %125, align 16
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 16
  %128 = getelementptr inbounds i32, i32* %24, i64 0
  %129 = load i32, i32* %128, align 16
  %130 = and i32 %129, 1
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)
  %134 = getelementptr inbounds i32, i32* %24, i64 0
  %135 = load i32, i32* %134, align 16
  %136 = ashr i32 %135, 1
  %137 = and i32 %136, 3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x i8*], [4 x i8*]* @ivtv_log_status.alpha_mode, i64 0, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i32, i32* %24, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = ashr i32 %142, 3
  %144 = and i32 %143, 15
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [16 x i8*], [16 x i8*]* @ivtv_log_status.pixel_format, i64 0, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i64 0, i64 0), i8* %133, i8* %140, i8* %147)
  br label %149

149:                                              ; preds = %113, %48
  %150 = load i32, i32* @IVTV_F_I_RADIO_USER, align 4
  %151 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %152 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %151, i32 0, i32 7
  %153 = call i64 @test_bit(i32 %150, i8** %152)
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0)
  %157 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i8* %156)
  %158 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %159 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %158, i32 0, i32 12
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %162 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @v4l2_ctrl_handler_log_status(i32* %160, i32 %164)
  %166 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %167 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %166, i32 0, i32 7
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.44, i64 0, i64 0), i8* %168)
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %223, %149
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %226

174:                                              ; preds = %170
  %175 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %176 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %175, i32 0, i32 10
  %177 = load %struct.ivtv_stream*, %struct.ivtv_stream** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %177, i64 %179
  store %struct.ivtv_stream* %180, %struct.ivtv_stream** %16, align 8
  %181 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %182 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %190, label %185

185:                                              ; preds = %174
  %186 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %187 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185, %174
  br label %223

191:                                              ; preds = %185
  %192 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %193 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %196 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %199 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %202 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sub nsw i32 %200, %204
  %206 = mul nsw i32 %205, 100
  %207 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %208 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %206, %209
  %211 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %212 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %215 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %213, %216
  %218 = sdiv i32 %217, 1024
  %219 = load %struct.ivtv_stream*, %struct.ivtv_stream** %16, align 8
  %220 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.45, i64 0, i64 0), i32 %194, i32 %197, i32 %210, i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %191, %190
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %170

226:                                              ; preds = %170
  %227 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %228 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %227, i32 0, i32 9
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %231 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %230, i32 0, i32 8
  %232 = load i64, i64* %231, align 8
  %233 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i64 %229, i64 %232)
  %234 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %235 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 (i8*, ...) @IVTV_INFO(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.47, i64 0, i64 0), i8* %236)
  %238 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %238)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IVTV_INFO(i8*, ...) #2

declare dso_local i32 @ivtv_read_eeprom(%struct.ivtv*, %struct.tveeprom*) #2

declare dso_local i32 @ivtv_call_all(%struct.ivtv*, i32, i32) #2

declare dso_local i32 @ivtv_get_input(%struct.ivtv*, i32, %struct.v4l2_input*) #2

declare dso_local i32 @ivtv_get_audio_input(%struct.ivtv*, i32, %struct.v4l2_audio*) #2

declare dso_local i32 @ivtv_get_output(%struct.ivtv*, i32, %struct.v4l2_output*) #2

declare dso_local i32 @ivtv_get_audio_output(%struct.ivtv*, i32, %struct.v4l2_audioout*) #2

declare dso_local i32 @ivtv_vapi_result(%struct.ivtv*, i32*, i32, i32) #2

declare dso_local i32 @read_reg(i32) #2

declare dso_local i64 @test_bit(i32, i8**) #2

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
