; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.v4l2_cropcap = type { i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_cropcap(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_cropcap*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.v4l2_cropcap*
  store %struct.v4l2_cropcap* %8, %struct.v4l2_cropcap** %6, align 8
  %9 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %25 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %32 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %45 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %52 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %17, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
