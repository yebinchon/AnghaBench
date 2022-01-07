; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.videobuf_queue = type { i64, i64, i32, i32, %struct.TYPE_8__*, i64, i32, %struct.videobuf_buffer**, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)* }
%struct.videobuf_buffer = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_buffer = type { i32, i64, i64, i32, i64, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MAGIC_QTYPE_OPS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"qbuf: Reading running...\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"qbuf: Wrong type.\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"qbuf: index out of range.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"qbuf: buffer is null.\0A\00", align 1
@MAGIC_BUFFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"qbuf: memory type is wrong.\0A\00", align 1
@VIDEOBUF_NEEDS_INIT = common dso_local global i64 0, align 8
@VIDEOBUF_IDLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"qbuf: buffer is already queued or active.\0A\00", align 1
@V4L2_BUF_FLAG_INPUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"qbuf: wrong input.\0A\00", align 1
@UNSET = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"qbuf: mmap requested but buffer addr is zero!\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_OUTPUT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"qbuf: buffer length is not enough\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"qbuf: wrong memory type\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"qbuf: requesting next field\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"qbuf: buffer_prepare returned %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"qbuf: succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_qbuf(%struct.videobuf_queue* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_queue*, align 8
  %4 = alloca %struct.v4l2_buffer*, align 8
  %5 = alloca %struct.videobuf_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %3, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %4, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 9
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAGIC_QTYPE_OPS, align 4
  %15 = call i32 @MAGIC_CHECK(i32 %13, i32 %14)
  %16 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 130
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = call i32 @down_read(i32* %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %28 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %32 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %274

37:                                               ; preds = %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %44 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %274

49:                                               ; preds = %37
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %51 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VIDEO_MAX_FRAME, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %274

57:                                               ; preds = %49
  %58 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %59 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %58, i32 0, i32 7
  %60 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %59, align 8
  %61 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %60, i64 %63
  %65 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %64, align 8
  store %struct.videobuf_buffer* %65, %struct.videobuf_buffer** %5, align 8
  %66 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %67 = icmp eq %struct.videobuf_buffer* null, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %274

70:                                               ; preds = %57
  %71 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MAGIC_BUFFER, align 4
  %75 = call i32 @MAGIC_CHECK(i32 %73, i32 %74)
  %76 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %80 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %274

85:                                               ; preds = %70
  %86 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %87 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %93 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VIDEOBUF_IDLE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %274

99:                                               ; preds = %91, %85
  %100 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %101 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @V4L2_BUF_FLAG_INPUT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %99
  %107 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %108 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %111 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %274

116:                                              ; preds = %106
  %117 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %118 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %121 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  br label %126

122:                                              ; preds = %99
  %123 = load i64, i64* @UNSET, align 8
  %124 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %125 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %128 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %220 [
    i32 130, label %130
    i32 128, label %172
    i32 129, label %213
  ]

130:                                              ; preds = %126
  %131 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %132 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 0, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %274

137:                                              ; preds = %130
  %138 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %139 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %155, label %143

143:                                              ; preds = %137
  %144 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %145 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @V4L2_BUF_TYPE_VBI_OUTPUT, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %151 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @V4L2_BUF_TYPE_SLICED_VBI_OUTPUT, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %149, %143, %137
  %156 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %157 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %160 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 8
  %161 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %162 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %165 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 4
  %166 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %167 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %170 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %155, %149
  br label %222

172:                                              ; preds = %126
  %173 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %174 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %177 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %172
  %181 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %274

182:                                              ; preds = %172
  %183 = load i64, i64* @VIDEOBUF_NEEDS_INIT, align 8
  %184 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %185 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %183, %186
  br i1 %187, label %188, label %206

188:                                              ; preds = %182
  %189 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %190 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %193 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %191, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %188
  %198 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %199 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %198, i32 0, i32 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  %202 = load i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)** %201, align 8
  %203 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %204 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %205 = call i32 %202(%struct.videobuf_queue* %203, %struct.videobuf_buffer* %204)
  br label %206

206:                                              ; preds = %197, %188, %182
  %207 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %208 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %212 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 8
  br label %222

213:                                              ; preds = %126
  %214 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %215 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %219 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 4
  br label %222

220:                                              ; preds = %126
  %221 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %274

222:                                              ; preds = %213, %206, %171
  %223 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %224 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %225 = call i32 @videobuf_next_field(%struct.videobuf_queue* %224)
  store i32 %225, i32* %6, align 4
  %226 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %227 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %226, i32 0, i32 4
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, i32)** %229, align 8
  %231 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %232 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i32 %230(%struct.videobuf_queue* %231, %struct.videobuf_buffer* %232, i32 %233)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 0, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %222
  %238 = load i32, i32* %8, align 4
  %239 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %238)
  br label %274

240:                                              ; preds = %222
  %241 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %242 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %241, i32 0, i32 3
  %243 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %244 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %243, i32 0, i32 6
  %245 = call i32 @list_add_tail(i32* %242, i32* %244)
  %246 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %247 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %246, i32 0, i32 5
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %269

250:                                              ; preds = %240
  %251 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %252 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load i64, i64* %7, align 8
  %255 = call i32 @spin_lock_irqsave(i32 %253, i64 %254)
  %256 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %257 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %256, i32 0, i32 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)*, i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*)** %259, align 8
  %261 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %262 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %263 = call i32 %260(%struct.videobuf_queue* %261, %struct.videobuf_buffer* %262)
  %264 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %265 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i64, i64* %7, align 8
  %268 = call i32 @spin_unlock_irqrestore(i32 %266, i64 %267)
  br label %269

269:                                              ; preds = %250, %240
  %270 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %271 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %272 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %271, i32 0, i32 2
  %273 = call i32 @wake_up_interruptible_sync(i32* %272)
  br label %274

274:                                              ; preds = %269, %237, %220, %180, %135, %114, %97, %83, %68, %55, %47, %35
  %275 = load %struct.videobuf_queue*, %struct.videobuf_queue** %3, align 8
  %276 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %275)
  %277 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %4, align 8
  %278 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 130
  br i1 %280, label %281, label %287

281:                                              ; preds = %274
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = call i32 @up_read(i32* %285)
  br label %287

287:                                              ; preds = %281, %274
  %288 = load i32, i32* %8, align 4
  ret i32 %288
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @videobuf_next_field(%struct.videobuf_queue*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
