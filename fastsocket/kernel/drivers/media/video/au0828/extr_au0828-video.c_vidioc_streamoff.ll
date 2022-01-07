; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.au0828_fh = type { i64, i32, i32, i32, %struct.au0828_dev* }
%struct.au0828_dev = type { i32, i64, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.au0828_dev*, i32)* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"vidioc_streamoff fh=%p t=%d fh->res=%d dev->res=%d\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@AU0828_MAX_INPUT = common dso_local global i32 0, align 4
@AU0828_RESOURCE_VIDEO = common dso_local global i32 0, align 4
@AU0828_RESOURCE_VBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.au0828_fh*, align 8
  %9 = alloca %struct.au0828_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__, align 8
  %13 = alloca %struct.TYPE_2__, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.au0828_fh*
  store %struct.au0828_fh* %15, %struct.au0828_fh** %8, align 8
  %16 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %17 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %16, i32 0, i32 4
  %18 = load %struct.au0828_dev*, %struct.au0828_dev** %17, align 8
  store %struct.au0828_dev* %18, %struct.au0828_dev** %9, align 8
  %19 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %20 = call i32 @check_dev(%struct.au0828_dev* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %133

25:                                               ; preds = %3
  %26 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %27 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %33 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %133

40:                                               ; preds = %31, %25
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %44 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %133

50:                                               ; preds = %40
  %51 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %54 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %57 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.au0828_fh* %51, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %61 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %113

65:                                               ; preds = %50
  %66 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %67 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %69 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %68, i32 0, i32 3
  %70 = call i32 @del_timer_sync(i32* %69)
  %71 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %72 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %71, i32 0, i32 2
  %73 = load i32, i32* @video, align 4
  %74 = load i32, i32* @s_stream, align 4
  %75 = call i32 @v4l2_device_call_all(i32* %72, i32 0, i32 %73, i32 %74, i32 0)
  %76 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %77 = call i32 @au0828_stream_interrupt(%struct.au0828_dev* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %133

82:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %103, %82
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @AU0828_MAX_INPUT, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (%struct.au0828_dev*, i32)* @AUVI_INPUT(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 (%struct.au0828_dev*, i32)* %89, i32 (%struct.au0828_dev*, i32)** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %92 = load i32 (%struct.au0828_dev*, i32)*, i32 (%struct.au0828_dev*, i32)** %91, align 8
  %93 = icmp eq i32 (%struct.au0828_dev*, i32)* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %103

95:                                               ; preds = %87
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (%struct.au0828_dev*, i32)* @AUVI_INPUT(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 (%struct.au0828_dev*, i32)* %97, i32 (%struct.au0828_dev*, i32)** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %100 = load i32 (%struct.au0828_dev*, i32)*, i32 (%struct.au0828_dev*, i32)** %99, align 8
  %101 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %102 = call i32 %100(%struct.au0828_dev* %101, i32 0)
  br label %103

103:                                              ; preds = %95, %94
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %83

106:                                              ; preds = %83
  %107 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %108 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %107, i32 0, i32 2
  %109 = call i32 @videobuf_streamoff(i32* %108)
  %110 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %111 = load i32, i32* @AU0828_RESOURCE_VIDEO, align 4
  %112 = call i32 @res_free(%struct.au0828_fh* %110, i32 %111)
  br label %132

113:                                              ; preds = %50
  %114 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %115 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %121 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %123 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %122, i32 0, i32 0
  %124 = call i32 @del_timer_sync(i32* %123)
  %125 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %126 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %125, i32 0, i32 1
  %127 = call i32 @videobuf_streamoff(i32* %126)
  %128 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %129 = load i32, i32* @AU0828_RESOURCE_VBI, align 4
  %130 = call i32 @res_free(%struct.au0828_fh* %128, i32 %129)
  br label %131

131:                                              ; preds = %119, %113
  br label %132

132:                                              ; preds = %131, %106
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %80, %47, %37, %23
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @check_dev(%struct.au0828_dev*) #1

declare dso_local i32 @dprintk(i32, i8*, %struct.au0828_fh*, i32, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @au0828_stream_interrupt(%struct.au0828_dev*) #1

declare dso_local i32 (%struct.au0828_dev*, i32)* @AUVI_INPUT(i32) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

declare dso_local i32 @res_free(%struct.au0828_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
