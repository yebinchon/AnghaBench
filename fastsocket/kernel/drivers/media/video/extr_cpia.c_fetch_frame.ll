; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_fetch_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_fetch_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i32, i64, i32, i64, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 (i32, i32, i32)*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"retry=%d\0A\00", align 1
@CPIA_COMPRESSION_NONE = common dso_local global i64 0, align 8
@CPIA_COMMAND_SetCompression = common dso_local global i32 0, align 4
@NO_DECIMATION = common dso_local global i32 0, align 4
@CPIA_COMMAND_DiscardFrame = common dso_local global i32 0, align 4
@CPIA_COMMAND_GrabFrame = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetCameraStatus = common dso_local global i32 0, align 4
@STREAM_READY = common dso_local global i64 0, align 8
@READY_TIMEOUT = common dso_local global i32 0, align 4
@STREAM_PAUSED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"streamRead failed: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetColourBalance = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetExposure = common dso_local global i32 0, align 4
@CPIA_COMMAND_ReadMCPorts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"parse_picture failed %d\0A\00", align 1
@CPIA_COMMAND_SetGrabMode = common dso_local global i32 0, align 4
@CPIA_GRAB_SINGLE = common dso_local global i64 0, align 8
@FRAME_READY = common dso_local global i64 0, align 8
@FRAME_DONE = common dso_local global i8* null, align 8
@CPIA_GRAB_CONTINUOUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fetch_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_frame(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cam_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.cam_data*
  store %struct.cam_data* %12, %struct.cam_data** %6, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %228, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %231

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %24 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %23, i32 0, i32 9
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %228

28:                                               ; preds = %22
  %29 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %30 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %35 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CPIA_COMPRESSION_NONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %43 = load i32, i32* @CPIA_COMMAND_SetCompression, align 4
  %44 = load i64, i64* @CPIA_COMPRESSION_NONE, align 8
  %45 = load i32, i32* @NO_DECIMATION, align 4
  %46 = call i64 @do_command(%struct.cam_data* %42, i32 %43, i64 %44, i32 %45, i32 0, i32 0)
  %47 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %48 = load i32, i32* @CPIA_COMMAND_DiscardFrame, align 4
  %49 = call i64 @do_command(%struct.cam_data* %47, i32 %48, i64 0, i32 0, i32 0, i32 0)
  br label %50

50:                                               ; preds = %41, %33, %28
  %51 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %52 = load i32, i32* @CPIA_COMMAND_GrabFrame, align 4
  %53 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %54 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @do_command(%struct.cam_data* %51, i32 %52, i64 0, i32 %56, i32 0, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %228

60:                                               ; preds = %50
  %61 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %62 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %61, i32 0, i32 9
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %124

67:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  %68 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %69 = load i32, i32* @CPIA_COMMAND_GetCameraStatus, align 4
  %70 = call i64 @do_command(%struct.cam_data* %68, i32 %69, i64 0, i32 0, i32 0, i32 0)
  br label %71

71:                                               ; preds = %110, %67
  %72 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %73 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @STREAM_READY, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @READY_TIMEOUT, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %114

85:                                               ; preds = %79
  %86 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %87 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @STREAM_PAUSED, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %95 = call i32 @clear_stall(%struct.cam_data* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %309

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %85
  %102 = call i32 (...) @cond_resched()
  %103 = call i32 @msleep_interruptible(i32 10)
  %104 = load i32, i32* @current, align 4
  %105 = call i64 @signal_pending(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EINTR, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %309

110:                                              ; preds = %101
  %111 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %112 = load i32, i32* @CPIA_COMMAND_GetCameraStatus, align 4
  %113 = call i64 @do_command(%struct.cam_data* %111, i32 %112, i64 0, i32 0, i32 0, i32 0)
  br label %71

114:                                              ; preds = %84, %71
  %115 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %116 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @STREAM_READY, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %228

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %60
  %125 = call i32 (...) @cond_resched()
  %126 = load i64, i64* @jiffies, align 8
  store i64 %126, i64* %7, align 8
  %127 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %128 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %127, i32 0, i32 9
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %130, align 8
  %132 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %133 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %136 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = call i32 %131(i32 %134, i32 %137, i32 0)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %124
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  br label %228

144:                                              ; preds = %124
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @HZ, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sdiv i32 %147, 1024
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %8, align 8
  %150 = load i64, i64* @jiffies, align 8
  %151 = load i64, i64* %7, align 8
  %152 = sub i64 %150, %151
  store i64 %152, i64* %9, align 8
  %153 = load i64, i64* %9, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %144
  %156 = load i64, i64* %8, align 8
  br label %161

157:                                              ; preds = %144
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* %9, align 8
  %160 = udiv i64 %158, %159
  br label %161

161:                                              ; preds = %157, %155
  %162 = phi i64 [ %156, %155 ], [ %160, %157 ]
  %163 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %164 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %166 = call i32 @restart_flicker(%struct.cam_data* %165)
  %167 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %168 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %176

173:                                              ; preds = %161
  %174 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %175 = call i32 @monitor_exposure(%struct.cam_data* %174)
  br label %176

176:                                              ; preds = %173, %161
  %177 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %178 = call i32 @dispatch_commands(%struct.cam_data* %177)
  %179 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %180 = load i32, i32* @CPIA_COMMAND_GetColourBalance, align 4
  %181 = call i64 @do_command(%struct.cam_data* %179, i32 %180, i64 0, i32 0, i32 0, i32 0)
  %182 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %183 = load i32, i32* @CPIA_COMMAND_GetExposure, align 4
  %184 = call i64 @do_command(%struct.cam_data* %182, i32 %183, i64 0, i32 0, i32 0, i32 0)
  %185 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %186 = load i32, i32* @CPIA_COMMAND_ReadMCPorts, align 4
  %187 = call i64 @do_command(%struct.cam_data* %185, i32 %186, i64 0, i32 0, i32 0, i32 0)
  %188 = call i32 (...) @cond_resched()
  %189 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @parse_picture(%struct.cam_data* %189, i32 %190)
  %192 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %193 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %195 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp sle i32 %196, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %176
  %199 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %200 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %201)
  %203 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %204 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @CPIA_COMPRESSION_NONE, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %225

210:                                              ; preds = %198
  %211 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %212 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %211, i32 0, i32 0
  store i32 1, i32* %212, align 8
  %213 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %214 = load i32, i32* @CPIA_COMMAND_SetGrabMode, align 4
  %215 = load i64, i64* @CPIA_GRAB_SINGLE, align 8
  %216 = call i64 @do_command(%struct.cam_data* %213, i32 %214, i64 %215, i32 0, i32 0, i32 0)
  %217 = call i32 @msleep_interruptible(i32 70)
  %218 = load i32, i32* @current, align 4
  %219 = call i64 @signal_pending(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %210
  %222 = load i32, i32* @EINTR, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %2, align 4
  br label %309

224:                                              ; preds = %210
  br label %225

225:                                              ; preds = %224, %198
  br label %227

226:                                              ; preds = %176
  br label %231

227:                                              ; preds = %225
  br label %228

228:                                              ; preds = %227, %141, %122, %59, %27
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %5, align 4
  br label %13

231:                                              ; preds = %226, %13
  %232 = load i32, i32* %5, align 4
  %233 = icmp slt i32 %232, 3
  br i1 %233, label %234, label %306

234:                                              ; preds = %231
  %235 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %236 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %235, i32 0, i32 6
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %239 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @FRAME_READY, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %275

246:                                              ; preds = %234
  %247 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %248 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %247, i32 0, i32 6
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %251 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %257 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %261 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @memcpy(i32 %255, i32 %259, i32 %263)
  %265 = load i8*, i8** @FRAME_DONE, align 8
  %266 = ptrtoint i8* %265 to i64
  %267 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %268 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %267, i32 0, i32 6
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %268, align 8
  %270 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %271 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  store i64 %266, i64* %274, align 8
  br label %280

275:                                              ; preds = %234
  %276 = load i8*, i8** @FRAME_DONE, align 8
  %277 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %278 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  store i8* %276, i8** %279, align 8
  br label %280

280:                                              ; preds = %275, %246
  %281 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %282 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %305

285:                                              ; preds = %280
  %286 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %287 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %286, i32 0, i32 0
  store i32 0, i32* %287, align 8
  %288 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %289 = load i32, i32* @CPIA_COMMAND_SetCompression, align 4
  %290 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %291 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %296 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %295, i32 0, i32 4
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call i64 @do_command(%struct.cam_data* %288, i32 %289, i64 %294, i32 %299, i32 0, i32 0)
  %301 = load %struct.cam_data*, %struct.cam_data** %6, align 8
  %302 = load i32, i32* @CPIA_COMMAND_SetGrabMode, align 4
  %303 = load i64, i64* @CPIA_GRAB_CONTINUOUS, align 8
  %304 = call i64 @do_command(%struct.cam_data* %301, i32 %302, i64 %303, i32 0, i32 0, i32 0)
  br label %305

305:                                              ; preds = %285, %280
  store i32 0, i32* %2, align 4
  br label %309

306:                                              ; preds = %231
  %307 = load i32, i32* @EIO, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %2, align 4
  br label %309

309:                                              ; preds = %306, %305, %221, %107, %97
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @do_command(%struct.cam_data*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @clear_stall(%struct.cam_data*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @restart_flicker(%struct.cam_data*) #1

declare dso_local i32 @monitor_exposure(%struct.cam_data*) #1

declare dso_local i32 @dispatch_commands(%struct.cam_data*) #1

declare dso_local i32 @parse_picture(%struct.cam_data*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
