; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32, %struct.TYPE_4__, i32, i32, i32, %struct.yuv_playback_info }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }
%struct.yuv_playback_info = type { i32, i32, %struct.TYPE_5__ }
%struct.ivtv_open_id = type { %struct.ivtv* }

@wait = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IVTV_F_I_RADIO_USER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@IVTV_HW_CX25840 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Switching standard to %llx.\0A\00", align 1
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std_output = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@IVTV_REG_DEC_LINE_FIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Mode change failed to sync to decoder\0A\00", align 1
@CX2341X_DEC_SET_STANDARD = common dso_local global i32 0, align 4
@CX2341X_OSD_SET_FRAMEBUFFER_WINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ivtv*, align 8
  %9 = alloca %struct.yuv_playback_info*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = call i32 @DEFINE_WAIT(i32 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.ivtv_open_id*
  %15 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %14, i32 0, i32 0
  %16 = load %struct.ivtv*, %struct.ivtv** %15, align 8
  store %struct.ivtv* %16, %struct.ivtv** %8, align 8
  %17 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 16
  store %struct.yuv_playback_info* %18, %struct.yuv_playback_info** %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V4L2_STD_ALL, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %262

27:                                               ; preds = %3
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %31 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %262

35:                                               ; preds = %27
  %36 = load i32, i32* @IVTV_F_I_RADIO_USER, align 4
  %37 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 15
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %35
  %42 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 14
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 13
  %49 = call i64 @atomic_read(i32* %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %41, %35
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %262

54:                                               ; preds = %46
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %58 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @V4L2_STD_525_60, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %69 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %75 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %77 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %76, i32 0, i32 10
  %78 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @cx2341x_handler_set_50hz(%struct.TYPE_6__* %77, i32 %80)
  %82 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %83 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %82, i32 0, i32 10
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 720, i32* %84, align 8
  %85 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %86 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 576, i32 480
  %91 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %92 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %95 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 18, i32 12
  %100 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %101 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %100, i32 0, i32 12
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %104 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 6, i32 10
  %109 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %110 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %109, i32 0, i32 12
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %108, i32* %113, align 4
  %114 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %115 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 318, i32 273
  %120 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %121 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %120, i32 0, i32 12
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %119, i32* %124, align 4
  %125 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %126 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @IVTV_HW_CX25840, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %54
  %132 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %133 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 272, i32 284
  %138 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %139 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %138, i32 0, i32 12
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  br label %141

141:                                              ; preds = %131, %54
  %142 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %143 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %145)
  %147 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %148 = load i32, i32* @core, align 4
  %149 = load i32, i32* @s_std, align 4
  %150 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %151 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ivtv_call_all(%struct.ivtv* %147, i32 %148, i32 %149, i32 %152)
  %154 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %155 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %261

160:                                              ; preds = %141
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %164 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %166 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %169 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  %170 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %171 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %174 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %173, i32 0, i32 7
  store i32 %172, i32* %174, align 4
  %175 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %176 = load i32, i32* @video, align 4
  %177 = load i32, i32* @s_std_output, align 4
  %178 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %179 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ivtv_call_all(%struct.ivtv* %175, i32 %176, i32 %177, i32 %180)
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %198, %160
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %185, label %201

185:                                              ; preds = %182
  %186 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %187 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %186, i32 0, i32 11
  %188 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %189 = call i32 @prepare_to_wait(i32* %187, i32* @wait, i32 %188)
  %190 = load i32, i32* @IVTV_REG_DEC_LINE_FIELD, align 4
  %191 = call i32 @read_reg(i32 %190)
  %192 = ashr i32 %191, 16
  %193 = icmp slt i32 %192, 100
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %201

195:                                              ; preds = %185
  %196 = call i32 @msecs_to_jiffies(i32 25)
  %197 = call i32 @schedule_timeout(i32 %196)
  br label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  br label %182

201:                                              ; preds = %194, %182
  %202 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %203 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %202, i32 0, i32 11
  %204 = call i32 @finish_wait(i32* %203, i32* @wait)
  %205 = load i32, i32* %10, align 4
  %206 = icmp eq i32 %205, 4
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = call i32 @IVTV_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %201
  %210 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %211 = load i32, i32* @CX2341X_DEC_SET_STANDARD, align 4
  %212 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %213 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %210, i32 %211, i32 1, i32 %214)
  %216 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %217 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %216, i32 0, i32 9
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 2
  store i64 0, i64* %218, align 8
  %219 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %220 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %219, i32 0, i32 9
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 3
  store i64 0, i64* %221, align 8
  %222 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %223 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %222, i32 0, i32 9
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  store i32 720, i32* %224, align 8
  %225 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %226 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %225, i32 0, i32 10
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %230 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %229, i32 0, i32 9
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %233 = load i32, i32* @CX2341X_OSD_SET_FRAMEBUFFER_WINDOW, align 4
  %234 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %235 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %234, i32 0, i32 9
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %232, i32 %233, i32 4, i32 720, i32 %237, i32 0, i32 0)
  %239 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %9, align 8
  %240 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %239, i32 0, i32 2
  %241 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %242 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %241, i32 0, i32 9
  %243 = bitcast %struct.TYPE_5__* %240 to i8*
  %244 = bitcast %struct.TYPE_5__* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %243, i8* align 8 %244, i64 24, i1 false)
  %245 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %246 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %209
  %250 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %9, align 8
  %251 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %250, i32 0, i32 0
  store i32 720, i32* %251, align 8
  %252 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %253 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %252, i32 0, i32 7
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i32 576, i32 480
  %258 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %9, align 8
  %259 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  br label %260

260:                                              ; preds = %249, %209
  br label %261

261:                                              ; preds = %260, %141
  store i32 0, i32* %4, align 4
  br label %262

262:                                              ; preds = %261, %51, %34, %24
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx2341x_handler_set_50hz(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i64) #1

declare dso_local i32 @ivtv_call_all(%struct.ivtv*, i32, i32, i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @IVTV_WARN(i8*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
