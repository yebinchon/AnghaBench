; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_dqbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.vino_channel_settings = type { i32, i64 }
%struct.vino_framebuffer = type { i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"vino_queue_get_incoming() failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"vino_queue_get_outgoing() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"incoming = %d, outgoing = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"no incoming or outgoing buffers\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"non-blocking I/O was selected and there are no buffers to dequeue\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"vino_queue_remove() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vino_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.vino_channel_settings*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vino_framebuffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %14)
  store %struct.vino_channel_settings* %15, %struct.vino_channel_settings** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @O_NONBLOCK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %22 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %109

28:                                               ; preds = %3
  %29 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %30 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %29, i32 0, i32 0
  %31 = call i32 @vino_queue_get_incoming(i32* %30, i32* %11)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %109

38:                                               ; preds = %28
  %39 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %40 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %39, i32 0, i32 0
  %41 = call i32 @vino_queue_get_outgoing(i32* %40, i32* %12)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %109

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %109

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %109

68:                                               ; preds = %61
  %69 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %70 = call i32 @vino_wait_for_frame(%struct.vino_channel_settings* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %75 = call i32 @vino_wait_for_frame(%struct.vino_channel_settings* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %109

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %68
  br label %83

83:                                               ; preds = %82, %48
  %84 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %85 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %84, i32 0, i32 0
  %86 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %86, i32 0, i32 0
  %88 = call %struct.vino_framebuffer* @vino_queue_remove(i32* %85, i32* %87)
  store %struct.vino_framebuffer* %88, %struct.vino_framebuffer** %10, align 8
  %89 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %90 = icmp eq %struct.vino_framebuffer* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %109

95:                                               ; preds = %83
  %96 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %97 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %98 = call i32 @vino_check_buffer(%struct.vino_channel_settings* %96, %struct.vino_framebuffer* %97)
  store i32 %98, i32* %13, align 4
  %99 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %100 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %10, align 8
  %101 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %102 = call i32 @vino_v4l2_get_buffer_status(%struct.vino_channel_settings* %99, %struct.vino_framebuffer* %100, %struct.v4l2_buffer* %101)
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105, %91, %78, %64, %57, %44, %34, %25
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vino_queue_get_incoming(i32*, i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @vino_queue_get_outgoing(i32*, i32*) #1

declare dso_local i32 @vino_wait_for_frame(%struct.vino_channel_settings*) #1

declare dso_local %struct.vino_framebuffer* @vino_queue_remove(i32*, i32*) #1

declare dso_local i32 @vino_check_buffer(%struct.vino_channel_settings*, %struct.vino_framebuffer*) #1

declare dso_local i32 @vino_v4l2_get_buffer_status(%struct.vino_channel_settings*, %struct.vino_framebuffer*, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
