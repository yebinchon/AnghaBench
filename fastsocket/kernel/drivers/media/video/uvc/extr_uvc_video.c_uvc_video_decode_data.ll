; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_decode_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_decode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.uvc_video_queue }
%struct.uvc_video_queue = type { i8* }
%struct.uvc_buffer = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UVC_TRACE_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Frame complete (overflow).\0A\00", align 1
@UVC_BUF_STATE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32)* @uvc_video_decode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_decode_data(%struct.uvc_streaming* %0, %struct.uvc_buffer* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uvc_video_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %5, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %14 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %13, i32 0, i32 0
  store %struct.uvc_video_queue* %14, %struct.uvc_video_queue** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %66

18:                                               ; preds = %4
  %19 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %22, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %9, align 8
  %29 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %30, i64 %36
  %38 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr i8, i8* %37, i64 %42
  store i8* %43, i8** %12, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @memcpy(i8* %47, i32* %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %18
  %61 = load i32, i32* @UVC_TRACE_FRAME, align 4
  %62 = call i32 @uvc_trace(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @UVC_BUF_STATE_READY, align 4
  %64 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %17, %60, %18
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @uvc_trace(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
