; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_queue_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_queue_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i64, i64, i32, i32, i32, i32, i32, %struct.uvc_buffer* }
%struct.uvc_buffer = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.v4l2_buffer = type { i64, i64, i64, i64 }

@UVC_TRACE_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Queuing buffer %u.\0A\00", align 1
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"[E] Invalid buffer type (%u) and/or memory (%u).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"[E] Out of range index.\0A\00", align 1
@UVC_BUF_STATE_IDLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"[E] Invalid buffer state (%u).\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"[E] Bytes used out of bounds.\0A\00", align 1
@UVC_QUEUE_DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UVC_BUF_STATE_QUEUED = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_queue_buffer(%struct.uvc_video_queue* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_video_queue*, align 8
  %5 = alloca %struct.v4l2_buffer*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %4, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @UVC_TRACE_CAPTURE, align 4
  %10 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 (i32, i8*, ...) @uvc_trace(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %18 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21, %2
  %28 = load i32, i32* @UVC_TRACE_CAPTURE, align 4
  %29 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (i32, i8*, ...) @uvc_trace(i32 %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %153

38:                                               ; preds = %21
  %39 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %40 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %39, i32 0, i32 3
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %46 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i32, i32* @UVC_TRACE_CAPTURE, align 4
  %51 = call i32 (i32, i8*, ...) @uvc_trace(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %148

54:                                               ; preds = %38
  %55 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %56 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %55, i32 0, i32 7
  %57 = load %struct.uvc_buffer*, %struct.uvc_buffer** %56, align 8
  %58 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %57, i64 %60
  store %struct.uvc_buffer* %61, %struct.uvc_buffer** %6, align 8
  %62 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @UVC_BUF_STATE_IDLE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = load i32, i32* @UVC_TRACE_CAPTURE, align 4
  %69 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i32, i8*, ...) @uvc_trace(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %148

75:                                               ; preds = %54
  %76 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %86 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %84, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load i32, i32* @UVC_TRACE_CAPTURE, align 4
  %92 = call i32 (i32, i8*, ...) @uvc_trace(i32 %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %148

95:                                               ; preds = %81, %75
  %96 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %97 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %96, i32 0, i32 4
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %101 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @UVC_QUEUE_DISCONNECTED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %95
  %107 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %108 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %107, i32 0, i32 4
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %8, align 4
  br label %148

113:                                              ; preds = %95
  %114 = load i64, i64* @UVC_BUF_STATE_QUEUED, align 8
  %115 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %116 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %124 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  br label %133

126:                                              ; preds = %113
  %127 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %128 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %131 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %126, %122
  %134 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %135 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %134, i32 0, i32 2
  %136 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %137 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %136, i32 0, i32 6
  %138 = call i32 @list_add_tail(i32* %135, i32* %137)
  %139 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %140 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %139, i32 0, i32 1
  %141 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %142 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %141, i32 0, i32 5
  %143 = call i32 @list_add_tail(i32* %140, i32* %142)
  %144 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %145 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %144, i32 0, i32 4
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  br label %148

148:                                              ; preds = %133, %106, %90, %67, %49
  %149 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %150 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %149, i32 0, i32 3
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %148, %27
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @uvc_trace(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
