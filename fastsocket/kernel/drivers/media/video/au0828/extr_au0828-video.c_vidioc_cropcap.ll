; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/au0828/extr_au0828-video.c_vidioc_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_cropcap = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.au0828_fh = type { %struct.au0828_dev* }
%struct.au0828_dev = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_cropcap*)* @vidioc_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_cropcap(%struct.file* %0, i8* %1, %struct.v4l2_cropcap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_cropcap*, align 8
  %8 = alloca %struct.au0828_fh*, align 8
  %9 = alloca %struct.au0828_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_cropcap* %2, %struct.v4l2_cropcap** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.au0828_fh*
  store %struct.au0828_fh* %11, %struct.au0828_fh** %8, align 8
  %12 = load %struct.au0828_fh*, %struct.au0828_fh** %8, align 8
  %13 = getelementptr inbounds %struct.au0828_fh, %struct.au0828_fh* %12, i32 0, i32 0
  %14 = load %struct.au0828_dev*, %struct.au0828_dev** %13, align 8
  store %struct.au0828_dev* %14, %struct.au0828_dev** %9, align 8
  %15 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %3
  %24 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %31 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.au0828_dev*, %struct.au0828_dev** %9, align 8
  %37 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %42, i32 0, i32 3
  %44 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %44, i32 0, i32 2
  %46 = bitcast %struct.TYPE_3__* %43 to i8*
  %47 = bitcast %struct.TYPE_3__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false)
  %48 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 54, i32* %50, align 8
  %51 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 59, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %23, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
