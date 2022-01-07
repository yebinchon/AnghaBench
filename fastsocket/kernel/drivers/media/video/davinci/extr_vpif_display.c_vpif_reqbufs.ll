; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i32, i32 }
%struct.vpif_fh = type { i32*, i32, %struct.channel_obj* }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@VPIF_CHANNEL2_VIDEO = common dso_local global i64 0, align 8
@VPIF_CHANNEL3_VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Channel Busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_VBI_INTERLACED = common dso_local global i32 0, align 4
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
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.vpif_fh*
  store %struct.vpif_fh* %15, %struct.vpif_fh** %8, align 8
  %16 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %17 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %16, i32 0, i32 2
  %18 = load %struct.channel_obj*, %struct.channel_obj** %17, align 8
  store %struct.channel_obj* %18, %struct.channel_obj** %9, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i64, i64* @VPIF_CHANNEL2_VIDEO, align 8
  %20 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %21 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* @VPIF_CHANNEL3_VIDEO, align 8
  %26 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %27 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24, %3
  %31 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %32 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = call i32 @vpif_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %146

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %24
  %41 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %42 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %146

49:                                               ; preds = %40
  %50 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  store i64 %50, i64* %12, align 8
  %51 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %52 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %51, i32 0, i32 1
  %53 = load %struct.common_obj*, %struct.common_obj** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %53, i64 %54
  store %struct.common_obj* %55, %struct.common_obj** %10, align 8
  %56 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %57 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %56, i32 0, i32 1
  %58 = call i64 @mutex_lock_interruptible(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @ERESTARTSYS, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %146

63:                                               ; preds = %49
  %64 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %65 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %13, align 4
  br label %141

75:                                               ; preds = %63
  %76 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %77 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 0, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %141

83:                                               ; preds = %75
  %84 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %83
  %90 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %91 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  store i32 %99, i32* %11, align 4
  br label %108

100:                                              ; preds = %89
  %101 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %102 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %100, %98
  br label %111

109:                                              ; preds = %83
  %110 = load i32, i32* @V4L2_VBI_INTERLACED, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %109, %108
  %112 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %113 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %112, i32 0, i32 2
  %114 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %115 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %114, i32 0, i32 5
  %116 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %121 = call i32 @videobuf_queue_dma_contig_init(i32* %113, i32* @video_qops, i32* null, i32* %115, i32 %118, i32 %119, i32 4, %struct.vpif_fh* %120)
  %122 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %123 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 1, i32* %126, align 4
  %127 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %128 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %133 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %135 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %134, i32 0, i32 3
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %138 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %137, i32 0, i32 2
  %139 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %140 = call i32 @videobuf_reqbufs(i32* %138, %struct.v4l2_requestbuffers* %139)
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %111, %80, %72
  %142 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %143 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %142, i32 0, i32 1
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %141, %60, %46, %35
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @vpif_err(i8*) #1

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
