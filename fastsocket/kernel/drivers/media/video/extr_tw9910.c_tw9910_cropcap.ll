; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_cropcap = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_cropcap*)* @tw9910_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_cropcap(%struct.v4l2_subdev* %0, %struct.v4l2_cropcap* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_cropcap*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_cropcap* %1, %struct.v4l2_cropcap** %4, align 8
  %5 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 768, i32* %13, align 8
  %14 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 576, i32* %16, align 4
  %17 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 640, i32* %25, align 8
  %26 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 480, i32* %28, align 4
  %29 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %30 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
