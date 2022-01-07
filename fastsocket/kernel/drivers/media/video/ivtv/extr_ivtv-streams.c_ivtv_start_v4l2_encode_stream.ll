; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_start_v4l2_encode_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_start_v4l2_encode_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i32, i32, i64, i32, i32*, %struct.ivtv* }
%struct.ivtv = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i64, i8*, i8*, i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Start encoder stream %s\0A\00", align 1
@OUT_PASSTHROUGH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_DMA_BLOCK_SIZE = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_VERT_CROP_LINE = common dso_local global i32 0, align 4
@CX2341X_ENC_MISC = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_PLACEHOLDER = common dso_local global i32 0, align 4
@IVTV_HW_SAA7115 = common dso_local global i32 0, align 4
@IVTV_HW_SAA717X = common dso_local global i32 0, align 4
@IVTV_HW_SAA7114 = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_NUM_VSYNC_LINES = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_PGM_INDEX_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"PGM Index at 0x%08x with %d elements\0A\00", align 1
@IVTV_F_I_RADIO_USER = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_VIDEO = common dso_local global i32 0, align 4
@IVTV_F_I_DIG_RST = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_EVENT_NOTIFICATION = common dso_local global i32 0, align 4
@IVTV_IRQ_ENC_VIM_RST = common dso_local global i32 0, align 4
@IVTV_IRQ_MASK_CAPTURE = common dso_local global i32 0, align 4
@IVTV_F_I_EOS = common dso_local global i32 0, align 4
@audio = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@CX2341X_ENC_INITIALIZE_INPUT = common dso_local global i32 0, align 4
@CX2341X_ENC_START_CAPTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Error starting capture!\0A\00", align 1
@IVTV_IRQ_ENC_VBI_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_start_v4l2_encode_stream(%struct.ivtv_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv_stream*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %3, align 8
  %12 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %17 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %16, i32 0, i32 6
  %18 = load %struct.ivtv*, %struct.ivtv** %17, align 8
  store %struct.ivtv* %18, %struct.ivtv** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %20 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %300

26:                                               ; preds = %1
  %27 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %28 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %34 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %83 [
    i32 131, label %36
    i32 128, label %62
    i32 130, label %70
    i32 129, label %71
  ]

36:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  store i32 3, i32* %8, align 4
  %37 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 14
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OUT_PASSTHROUGH, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %44 = call i32 @ivtv_passthrough_mode(%struct.ivtv* %43, i32 0)
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %47 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %46, i32 0, i32 17
  store i32 0, i32* %47, align 8
  %48 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %49 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %48, i32 0, i32 18
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %52 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %51, i32 0, i32 16
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %54 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @v4l2_ctrl_g_ctrl(i32 %56)
  %58 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %59 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %61 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %60, i32 0, i32 15
  store i32 0, i32* %61, align 8
  br label %86

62:                                               ; preds = %26
  %63 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %64 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %63, i32 0, i32 14
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @OUT_PASSTHROUGH, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 2, i32* %7, align 4
  store i32 11, i32* %8, align 4
  br label %86

69:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %86

70:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %86

71:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %72 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %73 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %72, i32 0, i32 13
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 13
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 13
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @memset(i32 %81, i32 0, i32 4)
  br label %86

83:                                               ; preds = %26
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %300

86:                                               ; preds = %71, %70, %69, %68, %45
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %89 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %91 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %93 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %94 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %93, i32 0, i32 2
  %95 = call i32 @clear_bit(i32 %92, i32* %94)
  %96 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %97 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %96, i32 0, i32 2
  %98 = call i64 @atomic_read(i32* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %209

100:                                              ; preds = %86
  %101 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %102 = load i32, i32* @CX2341X_ENC_SET_DMA_BLOCK_SIZE, align 4
  %103 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %101, i32 %102, i32 2, i32 1, i32 1)
  %104 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %105 = load i32, i32* @CX2341X_ENC_SET_VERT_CROP_LINE, align 4
  %106 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %104, i32 %105, i32 1, i32 0)
  %107 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %108 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %109 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %110 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %107, i32 %108, i32 2, i32 3, i32 %114)
  %116 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %117 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %118 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %116, i32 %117, i32 2, i32 8, i32 0)
  %119 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %120 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %121 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %119, i32 %120, i32 2, i32 4, i32 1)
  %122 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %123 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %124 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %122, i32 %123, i32 1, i32 12)
  %125 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %126 = load i32, i32* @CX2341X_ENC_SET_PLACEHOLDER, align 4
  %127 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %125, i32 %126, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %128 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %129 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %128, i32 0, i32 12
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IVTV_HW_SAA7115, align 4
  %134 = load i32, i32* @IVTV_HW_SAA717X, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %100
  store i32 241, i32* %11, align 4
  br label %151

139:                                              ; preds = %100
  %140 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %141 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %140, i32 0, i32 12
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @IVTV_HW_SAA7114, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  store i32 239, i32* %11, align 4
  br label %150

149:                                              ; preds = %139
  store i32 320, i32* %11, align 4
  br label %150

150:                                              ; preds = %149, %148
  br label %151

151:                                              ; preds = %150, %138
  %152 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %153 = load i32, i32* @CX2341X_ENC_SET_NUM_VSYNC_LINES, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %152, i32 %153, i32 2, i32 %154, i32 %155)
  %157 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %158 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %151
  %164 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %165 = call i32 @ivtv_vbi_setup(%struct.ivtv* %164)
  br label %166

166:                                              ; preds = %163, %151
  %167 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %168 = load i32, i32* @CX2341X_ENC_SET_PGM_INDEX_INFO, align 4
  %169 = call i32 @ivtv_vapi_result(%struct.ivtv* %167, i8** %15, i32 %168, i32 2, i32 7, i32 400)
  %170 = getelementptr inbounds i8*, i8** %15, i64 0
  %171 = load i8*, i8** %170, align 16
  %172 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %173 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %172, i32 0, i32 9
  store i8* %171, i8** %173, align 8
  %174 = getelementptr inbounds i8*, i8** %15, i64 1
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %177 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %176, i32 0, i32 8
  store i8* %175, i8** %177, align 8
  %178 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %179 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %178, i32 0, i32 11
  store i64 0, i64* %179, align 8
  %180 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %181 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %180, i32 0, i32 10
  store i64 0, i64* %181, align 8
  %182 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %183 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %182, i32 0, i32 9
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %186 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %185, i32 0, i32 8
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i8*, i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %184, i8* %187)
  %189 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %190 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %189, i32 0, i32 5
  %191 = call i32 @cx2341x_handler_setup(%struct.TYPE_7__* %190)
  %192 = load i32, i32* @IVTV_F_I_RADIO_USER, align 4
  %193 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %194 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %193, i32 0, i32 6
  %195 = call i64 @test_bit(i32 %192, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %166
  %198 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %199 = load i32, i32* @CX2341X_ENC_MUTE_VIDEO, align 4
  %200 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %201 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @v4l2_ctrl_g_ctrl(i32 %203)
  %205 = shl i32 %204, 8
  %206 = or i32 1, %205
  %207 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %198, i32 %199, i32 1, i32 %206)
  br label %208

208:                                              ; preds = %197, %166
  br label %209

209:                                              ; preds = %208, %86
  %210 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %211 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %210, i32 0, i32 7
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %228

214:                                              ; preds = %209
  %215 = load i32, i32* @IVTV_F_I_DIG_RST, align 4
  %216 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %217 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %216, i32 0, i32 6
  %218 = call i32 @test_and_set_bit(i32 %215, i32* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %228, label %220

220:                                              ; preds = %214
  %221 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %222 = load i32, i32* @CX2341X_ENC_SET_EVENT_NOTIFICATION, align 4
  %223 = load i32, i32* @IVTV_IRQ_ENC_VIM_RST, align 4
  %224 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %221, i32 %222, i32 4, i32 0, i32 1, i32 %223, i32 -1)
  %225 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %226 = load i32, i32* @IVTV_IRQ_ENC_VIM_RST, align 4
  %227 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %225, i32 %226)
  br label %228

228:                                              ; preds = %220, %214, %209
  %229 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %230 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %229, i32 0, i32 2
  %231 = call i64 @atomic_read(i32* %230)
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %266

233:                                              ; preds = %228
  %234 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %235 = load i32, i32* @IVTV_IRQ_MASK_CAPTURE, align 4
  %236 = call i32 @ivtv_set_irq_mask(%struct.ivtv* %234, i32 %235)
  %237 = load i32, i32* @IVTV_F_I_EOS, align 4
  %238 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %239 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %238, i32 0, i32 6
  %240 = call i32 @clear_bit(i32 %237, i32* %239)
  %241 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %242 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %241, i32 0, i32 5
  %243 = call i32 @cx2341x_handler_set_busy(%struct.TYPE_7__* %242, i32 1)
  %244 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %245 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @audio, align 4
  %248 = load i32, i32* @s_stream, align 4
  %249 = call i32 @v4l2_subdev_call(i32 %246, i32 %247, i32 %248, i32 1)
  %250 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %251 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @video, align 4
  %254 = load i32, i32* @s_stream, align 4
  %255 = call i32 @v4l2_subdev_call(i32 %252, i32 %253, i32 %254, i32 0)
  %256 = call i32 @ivtv_msleep_timeout(i32 300, i32 1)
  %257 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %258 = load i32, i32* @CX2341X_ENC_INITIALIZE_INPUT, align 4
  %259 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %257, i32 %258, i32 0)
  %260 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %261 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @video, align 4
  %264 = load i32, i32* @s_stream, align 4
  %265 = call i32 @v4l2_subdev_call(i32 %262, i32 %263, i32 %264, i32 1)
  br label %266

266:                                              ; preds = %233, %228
  %267 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %268 = load i32, i32* @CX2341X_ENC_START_CAPTURE, align 4
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* %8, align 4
  %271 = call i64 (%struct.ivtv*, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %267, i32 %268, i32 2, i32 %269, i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %275 = load i32, i32* @EINVAL, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %300

277:                                              ; preds = %266
  %278 = load i32, i32* %9, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %282 = call i32 @ivtv_passthrough_mode(%struct.ivtv* %281, i32 1)
  br label %283

283:                                              ; preds = %280, %277
  %284 = load %struct.ivtv_stream*, %struct.ivtv_stream** %3, align 8
  %285 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp eq i32 %286, 129
  br i1 %287, label %288, label %292

288:                                              ; preds = %283
  %289 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %290 = load i32, i32* @IVTV_IRQ_ENC_VBI_CAP, align 4
  %291 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %289, i32 %290)
  br label %296

292:                                              ; preds = %283
  %293 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %294 = load i32, i32* @IVTV_IRQ_MASK_CAPTURE, align 4
  %295 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %288
  %297 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %298 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %297, i32 0, i32 2
  %299 = call i32 @atomic_inc(i32* %298)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %300

300:                                              ; preds = %296, %273, %83, %23
  %301 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %301)
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i8*, ...) #2

declare dso_local i32 @ivtv_passthrough_mode(%struct.ivtv*, i32) #2

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i64 @ivtv_vapi(%struct.ivtv*, i32, i32, ...) #2

declare dso_local i32 @ivtv_vbi_setup(%struct.ivtv*) #2

declare dso_local i32 @ivtv_vapi_result(%struct.ivtv*, i8**, i32, i32, i32, i32) #2

declare dso_local i32 @cx2341x_handler_setup(%struct.TYPE_7__*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @test_and_set_bit(i32, i32*) #2

declare dso_local i32 @ivtv_clear_irq_mask(%struct.ivtv*, i32) #2

declare dso_local i32 @ivtv_set_irq_mask(%struct.ivtv*, i32) #2

declare dso_local i32 @cx2341x_handler_set_busy(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #2

declare dso_local i32 @ivtv_msleep_timeout(i32, i32) #2

declare dso_local i32 @IVTV_DEBUG_WARN(i8*) #2

declare dso_local i32 @atomic_inc(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
