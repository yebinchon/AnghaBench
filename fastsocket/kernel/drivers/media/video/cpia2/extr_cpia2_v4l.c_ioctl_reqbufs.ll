; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i64, i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"REQBUFS requested:%d returning:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_reqbufs(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_requestbuffers*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.v4l2_requestbuffers*
  store %struct.v4l2_requestbuffers* %8, %struct.v4l2_requestbuffers** %6, align 8
  %9 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %14
  %24 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %28 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %32 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %36, i32 0, i32 2
  %38 = call i32 @memset(i32* %37, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %23, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
