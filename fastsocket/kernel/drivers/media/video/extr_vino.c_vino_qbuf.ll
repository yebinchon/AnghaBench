; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i32 }
%struct.vino_channel_settings = type { i64, i64 }
%struct.vino_framebuffer = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"type not mmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vino_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.vino_channel_settings*, align 8
  %9 = alloca %struct.vino_framebuffer*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %11)
  store %struct.vino_channel_settings* %12, %struct.vino_channel_settings** %8, align 8
  %13 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %14 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %20
  %31 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %32 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.vino_framebuffer* @vino_capture_enqueue(%struct.vino_channel_settings* %31, i32 %34)
  store %struct.vino_framebuffer* %35, %struct.vino_framebuffer** %9, align 8
  %36 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %9, align 8
  %37 = icmp eq %struct.vino_framebuffer* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %59

41:                                               ; preds = %30
  %42 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %43 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %9, align 8
  %44 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %45 = call i32 @vino_v4l2_get_buffer_status(%struct.vino_channel_settings* %42, %struct.vino_framebuffer* %43, %struct.v4l2_buffer* %44)
  %46 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %47 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %52 = call i32 @vino_capture_next(%struct.vino_channel_settings* %51, i32 1)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %41
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55, %38, %26, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local %struct.vino_framebuffer* @vino_capture_enqueue(%struct.vino_channel_settings*, i32) #1

declare dso_local i32 @vino_v4l2_get_buffer_status(%struct.vino_channel_settings*, %struct.vino_framebuffer*, %struct.v4l2_buffer*) #1

declare dso_local i32 @vino_capture_next(%struct.vino_channel_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
