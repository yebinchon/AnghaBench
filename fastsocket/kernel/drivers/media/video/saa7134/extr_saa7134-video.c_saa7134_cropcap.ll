; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_cropcap = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OVERLAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_cropcap*)* @saa7134_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_cropcap(%struct.file* %0, i8* %1, %struct.v4l2_cropcap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_cropcap*, align 8
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_cropcap* %2, %struct.v4l2_cropcap** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %11, %struct.saa7134_fh** %8, align 8
  %12 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %13 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %12, i32 0, i32 0
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  store %struct.saa7134_dev* %14, %struct.saa7134_dev** %9, align 8
  %15 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OVERLAY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %78

29:                                               ; preds = %20, %3
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %31 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %47 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @V4L2_STD_525_60, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %29
  %55 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 11, i32* %57, align 8
  %58 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 10, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %29
  %62 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %63 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @V4L2_STD_625_50, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 54, i32* %73, align 8
  %74 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 59, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %61
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %26
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
