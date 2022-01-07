; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64 }
%struct.vino_channel_settings = type { i32, i64 }
%struct.vino_framebuffer = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid index = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"vino_queue_get_buffer() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vino_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.vino_channel_settings*, align 8
  %9 = alloca %struct.vino_framebuffer*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %10)
  store %struct.vino_channel_settings* %11, %struct.vino_channel_settings** %8, align 8
  %12 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %13 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %24 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %23, i32 0, i32 0
  %25 = call i64 @vino_queue_get_length(i32* %24)
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %19
  %35 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %36 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %35, i32 0, i32 0
  %37 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.vino_framebuffer* @vino_queue_get_buffer(i32* %36, i64 %39)
  store %struct.vino_framebuffer* %40, %struct.vino_framebuffer** %9, align 8
  %41 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %9, align 8
  %42 = icmp eq %struct.vino_framebuffer* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %34
  %48 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %49 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %9, align 8
  %50 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %51 = call i32 @vino_v4l2_get_buffer_status(%struct.vino_channel_settings* %48, %struct.vino_framebuffer* %49, %struct.v4l2_buffer* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %43, %27, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vino_queue_get_length(i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.vino_framebuffer* @vino_queue_get_buffer(i32*, i64) #1

declare dso_local i32 @vino_v4l2_get_buffer_status(%struct.vino_channel_settings*, %struct.vino_framebuffer*, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
