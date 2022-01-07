; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_decoder_ioctls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_decoder_ioctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.ivtv_open_id = type { i64, i32, %struct.ivtv* }
%struct.ivtv = type { i32, i32*, i64, i64, i64, i32, i32, i32, %struct.TYPE_3__, i32, i32, %struct.ivtv_stream* }
%struct.TYPE_3__ = type { i32 }
%struct.ivtv_stream = type { i32, i32 }
%struct.ivtv_dma_frame = type { i32*, i32 }
%struct.video_command = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.video_event = type { i32, i32, %struct.TYPE_4__, i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"IVTV_IOC_DMA_FRAME\0A\00", align 1
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@OUT_UDMA_YUV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"VIDEO_GET_PTS\0A\00", align 1
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@IVTV_F_I_VALID_DEC_TIMINGS = common dso_local global i32 0, align 4
@CX2341X_DEC_GET_TIMING_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"GET_TIMING: couldn't read clock\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"VIDEO_GET_FRAME_COUNT\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"VIDEO_PLAY\0A\00", align 1
@VIDEO_CMD_PLAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"VIDEO_STOP\0A\00", align 1
@VIDEO_CMD_STOP = common dso_local global i32 0, align 4
@VIDEO_CMD_STOP_TO_BLACK = common dso_local global i32 0, align 4
@VIDEO_CMD_STOP_IMMEDIATELY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"VIDEO_FREEZE\0A\00", align 1
@VIDEO_CMD_FREEZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"VIDEO_CONTINUE\0A\00", align 1
@VIDEO_CMD_CONTINUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"VIDEO_TRY_COMMAND %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"VIDEO_COMMAND %d\0A\00", align 1
@wait = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"VIDEO_GET_EVENT\0A\00", align 1
@IVTV_F_I_EV_VSYNC_ENABLED = common dso_local global i32 0, align 4
@IVTV_F_I_EV_DEC_STOPPED = common dso_local global i32 0, align 4
@VIDEO_EVENT_DECODER_STOPPED = common dso_local global i32 0, align 4
@IVTV_F_I_EV_VSYNC = common dso_local global i32 0, align 4
@VIDEO_EVENT_VSYNC = common dso_local global i32 0, align 4
@IVTV_F_I_EV_VSYNC_FIELD = common dso_local global i32 0, align 4
@VIDEO_VSYNC_FIELD_ODD = common dso_local global i32 0, align 4
@VIDEO_VSYNC_FIELD_EVEN = common dso_local global i32 0, align 4
@IVTV_YUV_MODE_MASK = common dso_local global i32 0, align 4
@IVTV_YUV_MODE_PROGRESSIVE = common dso_local global i32 0, align 4
@VIDEO_VSYNC_FIELD_PROGRESSIVE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"User stopped wait for event\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"VIDEO_SELECT_SOURCE\0A\00", align 1
@VIDEO_SOURCE_DEMUX = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"AUDIO_SET_MUTE\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"AUDIO_CHANNEL_SELECT\0A\00", align 1
@AUDIO_STEREO_SWAPPED = common dso_local global i64 0, align 8
@CX2341X_DEC_SET_AUDIO_MODE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"AUDIO_BILINGUAL_CHANNEL_SELECT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*)* @ivtv_decoder_ioctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_decoder_ioctls(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ivtv_stream*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ivtv_dma_frame*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.video_command, align 4
  %22 = alloca %struct.video_command, align 4
  %23 = alloca %struct.video_command, align 4
  %24 = alloca %struct.video_command, align 4
  %25 = alloca %struct.video_command*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.video_event*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ivtv_open_id* @fh2id(i32 %30)
  store %struct.ivtv_open_id* %31, %struct.ivtv_open_id** %8, align 8
  %32 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %33 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %32, i32 0, i32 2
  %34 = load %struct.ivtv*, %struct.ivtv** %33, align 8
  store %struct.ivtv* %34, %struct.ivtv** %9, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @O_NONBLOCK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %41 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %40, i32 0, i32 11
  %42 = load %struct.ivtv_stream*, %struct.ivtv_stream** %41, align 8
  %43 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %44 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %42, i64 %45
  store %struct.ivtv_stream* %46, %struct.ivtv_stream** %11, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %12, align 8
  %49 = load i32, i32* %6, align 4
  switch i32 %49, label %528 [
    i32 138, label %50
    i32 132, label %117
    i32 133, label %200
    i32 131, label %269
    i32 129, label %279
    i32 135, label %293
    i32 136, label %303
    i32 137, label %313
    i32 128, label %313
    i32 134, label %338
    i32 130, label %463
    i32 139, label %481
    i32 140, label %486
    i32 141, label %507
  ]

50:                                               ; preds = %3
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to %struct.ivtv_dma_frame*
  store %struct.ivtv_dma_frame* %52, %struct.ivtv_dma_frame** %13, align 8
  %53 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %532

63:                                               ; preds = %50
  %64 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %13, align 8
  %65 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %532

72:                                               ; preds = %63
  %73 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %74 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @OUT_UDMA_YUV, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %13, align 8
  %80 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %532

84:                                               ; preds = %78, %72
  %85 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %86 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %87 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @ivtv_start_decoding(%struct.ivtv_open_id* %85, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %532

94:                                               ; preds = %84
  %95 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %96 = load i32, i32* @OUT_UDMA_YUV, align 4
  %97 = call i32 @ivtv_set_output_mode(%struct.ivtv* %95, i32 %96)
  %98 = load i32, i32* @OUT_UDMA_YUV, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.ivtv_stream*, %struct.ivtv_stream** %11, align 8
  %102 = call i32 @ivtv_release_stream(%struct.ivtv_stream* %101)
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %532

105:                                              ; preds = %94
  %106 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %107 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %106, i32 0, i32 1
  store i32 1, i32* %107, align 8
  %108 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %13, align 8
  %109 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %532

113:                                              ; preds = %105
  %114 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %115 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %13, align 8
  %116 = call i32 @ivtv_yuv_prep_frame(%struct.ivtv* %114, %struct.ivtv_dma_frame* %115)
  store i32 %116, i32* %4, align 4
  br label %532

117:                                              ; preds = %3
  %118 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %119 = zext i32 %118 to i64
  %120 = call i8* @llvm.stacksave()
  store i8* %120, i8** %14, align 8
  %121 = alloca i32, i64 %119, align 16
  store i64 %119, i64* %15, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = bitcast i8* %122 to i32*
  store i32* %123, i32** %16, align 8
  %124 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.ivtv_stream*, %struct.ivtv_stream** %11, align 8
  %126 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IVTV_DEC_STREAM_TYPE_MPG, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %117
  %131 = load %struct.ivtv_stream*, %struct.ivtv_stream** %11, align 8
  %132 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %16, align 8
  store i32 %133, i32* %134, align 4
  store i32 2, i32* %17, align 4
  br label %197

135:                                              ; preds = %117
  %136 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %137 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

145:                                              ; preds = %135
  %146 = load i32, i32* @IVTV_F_I_VALID_DEC_TIMINGS, align 4
  %147 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %148 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %147, i32 0, i32 7
  %149 = call i32 @test_bit(i32 %146, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %153 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 32
  %158 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %159 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %157, %162
  %164 = load i32*, i32** %16, align 8
  store i32 %163, i32* %164, align 4
  store i32 2, i32* %17, align 4
  br label %197

165:                                              ; preds = %145
  %166 = load i32*, i32** %16, align 8
  store i32 0, i32* %166, align 4
  %167 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %168 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %167, i32 0, i32 10
  %169 = call i32 @atomic_read(i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %196

171:                                              ; preds = %165
  %172 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %173 = load i32, i32* @CX2341X_DEC_GET_TIMING_INFO, align 4
  %174 = call i32 @ivtv_api(%struct.ivtv* %172, i32 %173, i32 5, i32* %121)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %178 = load i32, i32* @EIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %197

180:                                              ; preds = %171
  %181 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %182 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @memcpy(i32* %183, i32* %121, i32 8)
  %185 = load i32, i32* @IVTV_F_I_VALID_DEC_TIMINGS, align 4
  %186 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %187 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %186, i32 0, i32 7
  %188 = call i32 @set_bit(i32 %185, i32* %187)
  %189 = getelementptr inbounds i32, i32* %121, i64 2
  %190 = load i32, i32* %189, align 8
  %191 = shl i32 %190, 32
  %192 = getelementptr inbounds i32, i32* %121, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %191, %193
  %195 = load i32*, i32** %16, align 8
  store i32 %194, i32* %195, align 4
  br label %196

196:                                              ; preds = %180, %165
  store i32 2, i32* %17, align 4
  br label %197

197:                                              ; preds = %196, %176, %151, %142, %130
  %198 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %17, align 4
  switch i32 %199, label %534 [
    i32 2, label %531
    i32 1, label %532
  ]

200:                                              ; preds = %3
  %201 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %202 = zext i32 %201 to i64
  %203 = call i8* @llvm.stacksave()
  store i8* %203, i8** %18, align 8
  %204 = alloca i32, i64 %202, align 16
  store i64 %202, i64* %19, align 8
  %205 = load i8*, i8** %7, align 8
  %206 = bitcast i8* %205 to i32*
  store i32* %206, i32** %20, align 8
  %207 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %208 = load %struct.ivtv_stream*, %struct.ivtv_stream** %11, align 8
  %209 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @IVTV_DEC_STREAM_TYPE_MPG, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %200
  %214 = load i32*, i32** %20, align 8
  store i32 0, i32* %214, align 4
  store i32 2, i32* %17, align 4
  br label %266

215:                                              ; preds = %200
  %216 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %217 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %215
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %266

225:                                              ; preds = %215
  %226 = load i32, i32* @IVTV_F_I_VALID_DEC_TIMINGS, align 4
  %227 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %228 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %227, i32 0, i32 7
  %229 = call i32 @test_bit(i32 %226, i32* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %225
  %232 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %233 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %20, align 8
  store i32 %236, i32* %237, align 4
  store i32 2, i32* %17, align 4
  br label %266

238:                                              ; preds = %225
  %239 = load i32*, i32** %20, align 8
  store i32 0, i32* %239, align 4
  %240 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %241 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %240, i32 0, i32 10
  %242 = call i32 @atomic_read(i32* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %265

244:                                              ; preds = %238
  %245 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %246 = load i32, i32* @CX2341X_DEC_GET_TIMING_INFO, align 4
  %247 = call i32 @ivtv_api(%struct.ivtv* %245, i32 %246, i32 5, i32* %204)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %251 = load i32, i32* @EIO, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %266

253:                                              ; preds = %244
  %254 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %255 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = call i32 @memcpy(i32* %256, i32* %204, i32 8)
  %258 = load i32, i32* @IVTV_F_I_VALID_DEC_TIMINGS, align 4
  %259 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %260 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %259, i32 0, i32 7
  %261 = call i32 @set_bit(i32 %258, i32* %260)
  %262 = getelementptr inbounds i32, i32* %204, i64 0
  %263 = load i32, i32* %262, align 16
  %264 = load i32*, i32** %20, align 8
  store i32 %263, i32* %264, align 4
  br label %265

265:                                              ; preds = %253, %238
  store i32 2, i32* %17, align 4
  br label %266

266:                                              ; preds = %265, %249, %231, %222, %213
  %267 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %267)
  %268 = load i32, i32* %17, align 4
  switch i32 %268, label %534 [
    i32 2, label %531
    i32 1, label %532
  ]

269:                                              ; preds = %3
  %270 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %271 = bitcast %struct.video_command* %21 to %struct.video_event*
  %272 = call i32 @memset(%struct.video_event* %271, i32 0, i32 16)
  %273 = load i32, i32* @VIDEO_CMD_PLAY, align 4
  %274 = getelementptr inbounds %struct.video_command, %struct.video_command* %21, i32 0, i32 3
  store i32 %273, i32* %274, align 4
  %275 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %276 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %277 = bitcast %struct.video_command* %21 to %struct.video_event*
  %278 = call i32 @ivtv_video_command(%struct.ivtv* %275, %struct.ivtv_open_id* %276, %struct.video_event* %277, i32 0)
  store i32 %278, i32* %4, align 4
  br label %532

279:                                              ; preds = %3
  %280 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %281 = bitcast %struct.video_command* %22 to %struct.video_event*
  %282 = call i32 @memset(%struct.video_event* %281, i32 0, i32 16)
  %283 = load i32, i32* @VIDEO_CMD_STOP, align 4
  %284 = getelementptr inbounds %struct.video_command, %struct.video_command* %22, i32 0, i32 3
  store i32 %283, i32* %284, align 4
  %285 = load i32, i32* @VIDEO_CMD_STOP_TO_BLACK, align 4
  %286 = load i32, i32* @VIDEO_CMD_STOP_IMMEDIATELY, align 4
  %287 = or i32 %285, %286
  %288 = getelementptr inbounds %struct.video_command, %struct.video_command* %22, i32 0, i32 0
  store i32 %287, i32* %288, align 4
  %289 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %290 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %291 = bitcast %struct.video_command* %22 to %struct.video_event*
  %292 = call i32 @ivtv_video_command(%struct.ivtv* %289, %struct.ivtv_open_id* %290, %struct.video_event* %291, i32 0)
  store i32 %292, i32* %4, align 4
  br label %532

293:                                              ; preds = %3
  %294 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %295 = bitcast %struct.video_command* %23 to %struct.video_event*
  %296 = call i32 @memset(%struct.video_event* %295, i32 0, i32 16)
  %297 = load i32, i32* @VIDEO_CMD_FREEZE, align 4
  %298 = getelementptr inbounds %struct.video_command, %struct.video_command* %23, i32 0, i32 3
  store i32 %297, i32* %298, align 4
  %299 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %300 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %301 = bitcast %struct.video_command* %23 to %struct.video_event*
  %302 = call i32 @ivtv_video_command(%struct.ivtv* %299, %struct.ivtv_open_id* %300, %struct.video_event* %301, i32 0)
  store i32 %302, i32* %4, align 4
  br label %532

303:                                              ; preds = %3
  %304 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %305 = bitcast %struct.video_command* %24 to %struct.video_event*
  %306 = call i32 @memset(%struct.video_event* %305, i32 0, i32 16)
  %307 = load i32, i32* @VIDEO_CMD_CONTINUE, align 4
  %308 = getelementptr inbounds %struct.video_command, %struct.video_command* %24, i32 0, i32 3
  store i32 %307, i32* %308, align 4
  %309 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %310 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %311 = bitcast %struct.video_command* %24 to %struct.video_event*
  %312 = call i32 @ivtv_video_command(%struct.ivtv* %309, %struct.ivtv_open_id* %310, %struct.video_event* %311, i32 0)
  store i32 %312, i32* %4, align 4
  br label %532

313:                                              ; preds = %3, %3
  %314 = load i8*, i8** %7, align 8
  %315 = bitcast i8* %314 to %struct.video_command*
  store %struct.video_command* %315, %struct.video_command** %25, align 8
  %316 = load i32, i32* %6, align 4
  %317 = icmp eq i32 %316, 128
  %318 = zext i1 %317 to i32
  store i32 %318, i32* %26, align 4
  %319 = load i32, i32* %26, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %313
  %322 = load %struct.video_command*, %struct.video_command** %25, align 8
  %323 = getelementptr inbounds %struct.video_command, %struct.video_command* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %324)
  br label %331

326:                                              ; preds = %313
  %327 = load %struct.video_command*, %struct.video_command** %25, align 8
  %328 = getelementptr inbounds %struct.video_command, %struct.video_command* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %326, %321
  %332 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %333 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %334 = load %struct.video_command*, %struct.video_command** %25, align 8
  %335 = bitcast %struct.video_command* %334 to %struct.video_event*
  %336 = load i32, i32* %26, align 4
  %337 = call i32 @ivtv_video_command(%struct.ivtv* %332, %struct.ivtv_open_id* %333, %struct.video_event* %335, i32 %336)
  store i32 %337, i32* %4, align 4
  br label %532

338:                                              ; preds = %3
  %339 = load i8*, i8** %7, align 8
  %340 = bitcast i8* %339 to %struct.video_event*
  store %struct.video_event* %340, %struct.video_event** %27, align 8
  %341 = load i32, i32* @wait, align 4
  %342 = call i32 @DEFINE_WAIT(i32 %341)
  %343 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %344 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %345 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %338
  %351 = load i32, i32* @EINVAL, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %4, align 4
  br label %532

353:                                              ; preds = %338
  %354 = load %struct.video_event*, %struct.video_event** %27, align 8
  %355 = call i32 @memset(%struct.video_event* %354, i32 0, i32 16)
  %356 = load i32, i32* @IVTV_F_I_EV_VSYNC_ENABLED, align 4
  %357 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %358 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %357, i32 0, i32 7
  %359 = call i32 @set_bit(i32 %356, i32* %358)
  br label %360

360:                                              ; preds = %353, %462
  %361 = load i32, i32* @IVTV_F_I_EV_DEC_STOPPED, align 4
  %362 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %363 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %362, i32 0, i32 7
  %364 = call i32 @test_and_clear_bit(i32 %361, i32* %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %360
  %367 = load i32, i32* @VIDEO_EVENT_DECODER_STOPPED, align 4
  %368 = load %struct.video_event*, %struct.video_event** %27, align 8
  %369 = getelementptr inbounds %struct.video_event, %struct.video_event* %368, i32 0, i32 1
  store i32 %367, i32* %369, align 4
  br label %415

370:                                              ; preds = %360
  %371 = load i32, i32* @IVTV_F_I_EV_VSYNC, align 4
  %372 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %373 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %372, i32 0, i32 7
  %374 = call i32 @test_and_clear_bit(i32 %371, i32* %373)
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %414

376:                                              ; preds = %370
  %377 = load i32, i32* @VIDEO_EVENT_VSYNC, align 4
  %378 = load %struct.video_event*, %struct.video_event** %27, align 8
  %379 = getelementptr inbounds %struct.video_event, %struct.video_event* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 4
  %380 = load i32, i32* @IVTV_F_I_EV_VSYNC_FIELD, align 4
  %381 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %382 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %381, i32 0, i32 7
  %383 = call i32 @test_bit(i32 %380, i32* %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %376
  %386 = load i32, i32* @VIDEO_VSYNC_FIELD_ODD, align 4
  br label %389

387:                                              ; preds = %376
  %388 = load i32, i32* @VIDEO_VSYNC_FIELD_EVEN, align 4
  br label %389

389:                                              ; preds = %387, %385
  %390 = phi i32 [ %386, %385 ], [ %388, %387 ]
  %391 = load %struct.video_event*, %struct.video_event** %27, align 8
  %392 = getelementptr inbounds %struct.video_event, %struct.video_event* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  store i32 %390, i32* %393, align 4
  %394 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %395 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %394, i32 0, i32 9
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* @OUT_UDMA_YUV, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %413

399:                                              ; preds = %389
  %400 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %401 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %400, i32 0, i32 8
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @IVTV_YUV_MODE_MASK, align 4
  %405 = and i32 %403, %404
  %406 = load i32, i32* @IVTV_YUV_MODE_PROGRESSIVE, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %408, label %413

408:                                              ; preds = %399
  %409 = load i32, i32* @VIDEO_VSYNC_FIELD_PROGRESSIVE, align 4
  %410 = load %struct.video_event*, %struct.video_event** %27, align 8
  %411 = getelementptr inbounds %struct.video_event, %struct.video_event* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 0
  store i32 %409, i32* %412, align 4
  br label %413

413:                                              ; preds = %408, %399, %389
  br label %414

414:                                              ; preds = %413, %370
  br label %415

415:                                              ; preds = %414, %366
  %416 = load %struct.video_event*, %struct.video_event** %27, align 8
  %417 = getelementptr inbounds %struct.video_event, %struct.video_event* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %415
  store i32 0, i32* %4, align 4
  br label %532

421:                                              ; preds = %415
  %422 = load i32, i32* %10, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  %425 = load i32, i32* @EAGAIN, align 4
  %426 = sub nsw i32 0, %425
  store i32 %426, i32* %4, align 4
  br label %532

427:                                              ; preds = %421
  %428 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %429 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %428, i32 0, i32 5
  %430 = call i32 @mutex_unlock(i32* %429)
  %431 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %432 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %431, i32 0, i32 6
  %433 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %434 = call i32 @prepare_to_wait(i32* %432, i32* @wait, i32 %433)
  %435 = load i32, i32* @IVTV_F_I_EV_DEC_STOPPED, align 4
  %436 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %437 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %436, i32 0, i32 7
  %438 = call i32 @test_bit(i32 %435, i32* %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %448, label %440

440:                                              ; preds = %427
  %441 = load i32, i32* @IVTV_F_I_EV_VSYNC, align 4
  %442 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %443 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %442, i32 0, i32 7
  %444 = call i32 @test_bit(i32 %441, i32* %443)
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %440
  %447 = call i32 (...) @schedule()
  br label %448

448:                                              ; preds = %446, %440, %427
  %449 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %450 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %449, i32 0, i32 6
  %451 = call i32 @finish_wait(i32* %450, i32* @wait)
  %452 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %453 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %452, i32 0, i32 5
  %454 = call i32 @mutex_lock(i32* %453)
  %455 = load i32, i32* @current, align 4
  %456 = call i32 @signal_pending(i32 %455)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %448
  %459 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %460 = load i32, i32* @EINTR, align 4
  %461 = sub nsw i32 0, %460
  store i32 %461, i32* %4, align 4
  br label %532

462:                                              ; preds = %448
  br label %360

463:                                              ; preds = %3
  %464 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %465 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %466 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %474, label %471

471:                                              ; preds = %463
  %472 = load i32, i32* @EINVAL, align 4
  %473 = sub nsw i32 0, %472
  store i32 %473, i32* %4, align 4
  br label %532

474:                                              ; preds = %463
  %475 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %476 = load i64, i64* %12, align 8
  %477 = load i64, i64* @VIDEO_SOURCE_DEMUX, align 8
  %478 = icmp eq i64 %476, %477
  %479 = zext i1 %478 to i32
  %480 = call i32 @ivtv_passthrough_mode(%struct.ivtv* %475, i32 %479)
  store i32 %480, i32* %4, align 4
  br label %532

481:                                              ; preds = %3
  %482 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %483 = load i64, i64* %12, align 8
  %484 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %485 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %484, i32 0, i32 2
  store i64 %483, i64* %485, align 8
  store i32 0, i32* %4, align 4
  br label %532

486:                                              ; preds = %3
  %487 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %488 = load i64, i64* %12, align 8
  %489 = load i64, i64* @AUDIO_STEREO_SWAPPED, align 8
  %490 = icmp ugt i64 %488, %489
  br i1 %490, label %491, label %494

491:                                              ; preds = %486
  %492 = load i32, i32* @EINVAL, align 4
  %493 = sub nsw i32 0, %492
  store i32 %493, i32* %4, align 4
  br label %532

494:                                              ; preds = %486
  %495 = load i64, i64* %12, align 8
  %496 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %497 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %496, i32 0, i32 3
  store i64 %495, i64* %497, align 8
  %498 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %499 = load i32, i32* @CX2341X_DEC_SET_AUDIO_MODE, align 4
  %500 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %501 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %500, i32 0, i32 4
  %502 = load i64, i64* %501, align 8
  %503 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %504 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %503, i32 0, i32 3
  %505 = load i64, i64* %504, align 8
  %506 = call i32 @ivtv_vapi(%struct.ivtv* %498, i32 %499, i32 2, i64 %502, i64 %505)
  store i32 0, i32* %4, align 4
  br label %532

507:                                              ; preds = %3
  %508 = call i32 (i8*, ...) @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %509 = load i64, i64* %12, align 8
  %510 = load i64, i64* @AUDIO_STEREO_SWAPPED, align 8
  %511 = icmp ugt i64 %509, %510
  br i1 %511, label %512, label %515

512:                                              ; preds = %507
  %513 = load i32, i32* @EINVAL, align 4
  %514 = sub nsw i32 0, %513
  store i32 %514, i32* %4, align 4
  br label %532

515:                                              ; preds = %507
  %516 = load i64, i64* %12, align 8
  %517 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %518 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %517, i32 0, i32 4
  store i64 %516, i64* %518, align 8
  %519 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %520 = load i32, i32* @CX2341X_DEC_SET_AUDIO_MODE, align 4
  %521 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %522 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %521, i32 0, i32 4
  %523 = load i64, i64* %522, align 8
  %524 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %525 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %524, i32 0, i32 3
  %526 = load i64, i64* %525, align 8
  %527 = call i32 @ivtv_vapi(%struct.ivtv* %519, i32 %520, i32 2, i64 %523, i64 %526)
  store i32 0, i32* %4, align 4
  br label %532

528:                                              ; preds = %3
  %529 = load i32, i32* @EINVAL, align 4
  %530 = sub nsw i32 0, %529
  store i32 %530, i32* %4, align 4
  br label %532

531:                                              ; preds = %266, %197
  store i32 0, i32* %4, align 4
  br label %532

532:                                              ; preds = %531, %528, %515, %512, %494, %491, %481, %474, %471, %458, %424, %420, %350, %331, %303, %293, %279, %269, %266, %197, %113, %112, %100, %91, %83, %69, %60
  %533 = load i32, i32* %4, align 4
  ret i32 %533

534:                                              ; preds = %266, %197
  unreachable
}

declare dso_local %struct.ivtv_open_id* @fh2id(i32) #1

declare dso_local i32 @IVTV_DEBUG_IOCTL(i8*, ...) #1

declare dso_local i32 @ivtv_start_decoding(%struct.ivtv_open_id*, i64) #1

declare dso_local i32 @ivtv_set_output_mode(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_release_stream(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_yuv_prep_frame(%struct.ivtv*, %struct.ivtv_dma_frame*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ivtv_api(%struct.ivtv*, i32, i32, i32*) #1

declare dso_local i32 @IVTV_DEBUG_WARN(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memset(%struct.video_event*, i32, i32) #1

declare dso_local i32 @ivtv_video_command(%struct.ivtv*, %struct.ivtv_open_id*, %struct.video_event*, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i32 @ivtv_passthrough_mode(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
