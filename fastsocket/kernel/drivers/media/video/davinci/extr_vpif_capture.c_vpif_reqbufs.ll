; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i32, i32 }
%struct.vpif_fh = type { i32*, i32, %struct.channel_obj* }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vpif_reqbufs\0A\00", align 1
@VPIF_CHANNEL0_VIDEO = common dso_local global i64 0, align 8
@VPIF_CHANNEL1_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Channel Busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@video_qops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @vpif_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.vpif_fh*
  store %struct.vpif_fh* %14, %struct.vpif_fh** %8, align 8
  %15 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %16 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %15, i32 0, i32 2
  %17 = load %struct.channel_obj*, %struct.channel_obj** %16, align 8
  store %struct.channel_obj* %17, %struct.channel_obj** %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @debug, align 4
  %19 = call i32 @vpif_dbg(i32 2, i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* @VPIF_CHANNEL0_VIDEO, align 8
  %21 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %22 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load i64, i64* @VPIF_CHANNEL1_VIDEO, align 8
  %27 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %28 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25, %3
  %32 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %33 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @debug, align 4
  %38 = call i32 @vpif_dbg(i32 1, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %113

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %44 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %113

51:                                               ; preds = %42
  %52 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  store i64 %52, i64* %11, align 8
  %53 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %54 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %53, i32 0, i32 1
  %55 = load %struct.common_obj*, %struct.common_obj** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %55, i64 %56
  store %struct.common_obj* %57, %struct.common_obj** %10, align 8
  %58 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %59 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %58, i32 0, i32 1
  %60 = call i64 @mutex_lock_interruptible(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* @ERESTARTSYS, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %113

65:                                               ; preds = %51
  %66 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %67 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 0, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %108

73:                                               ; preds = %65
  %74 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %75 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %74, i32 0, i32 2
  %76 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %77 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %76, i32 0, i32 6
  %78 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %82 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %88 = call i32 @videobuf_queue_dma_contig_init(i32* %75, i32* @video_qops, i32* null, i32* %77, i32 %80, i32 %86, i32 4, %struct.vpif_fh* %87)
  %89 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %90 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 1, i32* %93, align 4
  %94 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %95 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %100 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %102 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %101, i32 0, i32 3
  %103 = call i32 @INIT_LIST_HEAD(i32* %102)
  %104 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %105 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %104, i32 0, i32 2
  %106 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %107 = call i32 @videobuf_reqbufs(i32* %105, %struct.v4l2_requestbuffers* %106)
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %73, %70
  %109 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %110 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %62, %48, %36
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @videobuf_queue_dma_contig_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.vpif_fh*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @videobuf_reqbufs(i32*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
