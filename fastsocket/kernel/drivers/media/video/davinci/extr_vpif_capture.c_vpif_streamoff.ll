; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.file = type { i32 }
%struct.vpif_fh = type { i32*, %struct.channel_obj* }
%struct.channel_obj = type { i64, i64, %struct.common_obj* }
%struct.common_obj = type { i32, i32, i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"vpif_streamoff\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"buffer type not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"io not allowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"channel->started\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@VPIF_CHANNEL0_VIDEO = common dso_local global i64 0, align 8
@vpif_obj = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"stream off failed in subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vpif_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.vpif_fh*
  store %struct.vpif_fh* %13, %struct.vpif_fh** %8, align 8
  %14 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %15 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %14, i32 0, i32 1
  %16 = load %struct.channel_obj*, %struct.channel_obj** %15, align 8
  store %struct.channel_obj* %16, %struct.channel_obj** %9, align 8
  %17 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %18 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %17, i32 0, i32 2
  %19 = load %struct.common_obj*, %struct.common_obj** %18, align 8
  %20 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %19, i64 %20
  store %struct.common_obj* %21, %struct.common_obj** %10, align 8
  %22 = load i32, i32* @debug, align 4
  %23 = call i32 @vpif_dbg(i32 2, i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @debug, align 4
  %29 = call i32 @vpif_dbg(i32 1, i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %104

32:                                               ; preds = %3
  %33 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %34 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @debug, align 4
  %42 = call i32 @vpif_dbg(i32 1, i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EACCES, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %104

45:                                               ; preds = %32
  %46 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %47 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @debug, align 4
  %52 = call i32 @vpif_dbg(i32 1, i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %104

55:                                               ; preds = %45
  %56 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %57 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %56, i32 0, i32 1
  %58 = call i64 @mutex_lock_interruptible(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ERESTARTSYS, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %104

63:                                               ; preds = %55
  %64 = load i64, i64* @VPIF_CHANNEL0_VIDEO, align 8
  %65 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %66 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = call i32 @enable_channel0(i32 0)
  %71 = call i32 @channel0_intr_enable(i32 0)
  br label %75

72:                                               ; preds = %63
  %73 = call i32 @enable_channel1(i32 0)
  %74 = call i32 @channel1_intr_enable(i32 0)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %77 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpif_obj, i32 0, i32 0), align 8
  %79 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %80 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @video, align 4
  %85 = load i32, i32* @s_stream, align 4
  %86 = call i32 @v4l2_subdev_call(i32 %83, i32 %84, i32 %85, i32 0)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %75
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @ENOIOCTLCMD, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @debug, align 4
  %96 = call i32 @vpif_dbg(i32 1, i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %89, %75
  %98 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %99 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %102 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %101, i32 0, i32 0
  %103 = call i32 @videobuf_streamoff(i32* %102)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %97, %60, %50, %40, %27
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @enable_channel0(i32) #1

declare dso_local i32 @channel0_intr_enable(i32) #1

declare dso_local i32 @enable_channel1(i32) #1

declare dso_local i32 @channel1_intr_enable(i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
