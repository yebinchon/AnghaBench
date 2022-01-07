; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.au0828_fh = type { i32, i32, i32, i32, %struct.au0828_dev* }
%struct.au0828_dev = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"vidioc_streamon fh=%p t=%d fh->res=%d dev->res=%d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.au0828_fh*, align 8
  %9 = alloca %struct.au0828_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.au0828_fh*
  store %struct.au0828_fh* %12, %struct.au0828_fh** %8, align 8
  %13 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %14 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %13, i32 0, i32 4
  %15 = load %struct.au0828_dev*, %struct.au0828_dev** %14, align 8
  store %struct.au0828_dev* %15, %struct.au0828_dev** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %19 = call i32 @check_dev(%struct.au0828_dev* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %114

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %27 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %114

36:                                               ; preds = %24
  %37 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %40 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %43 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.au0828_fh* %37, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %47 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %48 = call i32 @get_ressource(%struct.au0828_fh* %47)
  %49 = call i32 @res_get(%struct.au0828_fh* %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %114

58:                                               ; preds = %36
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %64 = call i32 @au0828_analog_stream_enable(%struct.au0828_dev* %63)
  %65 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %66 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %65, i32 0, i32 4
  %67 = load i32, i32* @video, align 4
  %68 = load i32, i32* @s_stream, align 4
  %69 = call i32 @v4l2_device_call_all(i32* %66, i32 0, i32 %67, i32 %68, i32 1)
  br label %70

70:                                               ; preds = %62, %58
  %71 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %72 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %78 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %77, i32 0, i32 2
  %79 = call i32 @videobuf_streamon(i32* %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %81 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  %82 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %83 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %82, i32 0, i32 3
  %84 = load i64, i64* @jiffies, align 8
  %85 = load i32, i32* @HZ, align 4
  %86 = sdiv i32 %85, 10
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i32 @mod_timer(i32* %83, i64 %88)
  br label %112

90:                                               ; preds = %70
  %91 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %92 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %99 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %98, i32 0, i32 1
  %100 = call i32 @videobuf_streamon(i32* %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %102 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %104 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %103, i32 0, i32 2
  %105 = load i64, i64* @jiffies, align 8
  %106 = load i32, i32* @HZ, align 4
  %107 = sdiv i32 %106, 10
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %105, %108
  %110 = call i32 @mod_timer(i32* %104, i64 %109)
  br label %111

111:                                              ; preds = %97, %90
  br label %112

112:                                              ; preds = %111, %76
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %55, %33, %22
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @check_dev(%struct.au0828_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dprintk(i32, i8*, %struct.au0828_fh*, i32, i32, i32) #1

declare dso_local i32 @res_get(%struct.au0828_fh*, i32) #1

declare dso_local i32 @get_ressource(%struct.au0828_fh*) #1

declare dso_local i32 @au0828_analog_stream_enable(%struct.au0828_dev*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @videobuf_streamon(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
