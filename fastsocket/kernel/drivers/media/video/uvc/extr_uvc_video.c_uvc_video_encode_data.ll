; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_encode_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_video.c_uvc_video_encode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.TYPE_6__, %struct.uvc_video_queue }
%struct.TYPE_6__ = type { i32, i32 }
%struct.uvc_video_queue = type { i32, i8* }
%struct.uvc_buffer = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.uvc_buffer*, i32*, i32)* @uvc_video_encode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_video_encode_data(%struct.uvc_streaming* %0, %struct.uvc_buffer* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.uvc_streaming*, align 8
  %6 = alloca %struct.uvc_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uvc_video_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %5, align 8
  store %struct.uvc_buffer* %1, %struct.uvc_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %13 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %12, i32 0, i32 1
  store %struct.uvc_video_queue* %13, %struct.uvc_video_queue** %9, align 8
  %14 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %9, align 8
  %15 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %16, i64 %22
  %24 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %9, align 8
  %25 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %23, i64 %27
  store i8* %28, i8** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.uvc_buffer*, %struct.uvc_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.uvc_buffer, %struct.uvc_buffer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %9, align 8
  %35 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub i32 %33, %36
  %38 = call i32 @min(i32 %29, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %40 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.uvc_streaming*, %struct.uvc_streaming** %5, align 8
  %44 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %42, %46
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memcpy(i32* %50, i8* %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %9, align 8
  %56 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
