; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i32 }
%struct.vino_channel_settings = type { i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"type not mmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"count = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"busy, capturing\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"busy, buffers still mapped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vino_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.vino_channel_settings*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %9)
  store %struct.vino_channel_settings* %10, %struct.vino_channel_settings** %8, align 8
  %11 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %12 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %75

28:                                               ; preds = %18
  %29 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %28
  %38 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %39 = call i64 @vino_is_capturing(%struct.vino_channel_settings* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %75

45:                                               ; preds = %37
  %46 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %47 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %46, i32 0, i32 0
  %48 = call i64 @vino_queue_has_mapped_buffers(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %75

54:                                               ; preds = %45
  %55 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %56 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %58 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %57, i32 0, i32 0
  %59 = call i32 @vino_queue_free(i32* %58)
  %60 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %61 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %60, i32 0, i32 0
  %62 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %62, i32 0, i32 1
  %64 = call i32 @vino_queue_init(i32* %61, i32* %63)
  br label %65

65:                                               ; preds = %54
  br label %74

66:                                               ; preds = %28
  %67 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %68 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %70 = call i32 @vino_capture_stop(%struct.vino_channel_settings* %69)
  %71 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %72 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %71, i32 0, i32 0
  %73 = call i32 @vino_queue_free(i32* %72)
  br label %74

74:                                               ; preds = %66, %65
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %50, %41, %24, %15
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @vino_is_capturing(%struct.vino_channel_settings*) #1

declare dso_local i64 @vino_queue_has_mapped_buffers(i32*) #1

declare dso_local i32 @vino_queue_free(i32*) #1

declare dso_local i32 @vino_queue_init(i32*, i32*) #1

declare dso_local i32 @vino_capture_stop(%struct.vino_channel_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
