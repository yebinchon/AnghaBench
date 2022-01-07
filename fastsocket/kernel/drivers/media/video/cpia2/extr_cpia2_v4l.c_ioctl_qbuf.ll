; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_buffer = type { i64, i64, i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"QBUF #%d\0A\00", align 1
@FRAME_READY = common dso_local global i64 0, align 8
@FRAME_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_qbuf(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.v4l2_buffer*
  store %struct.v4l2_buffer* %8, %struct.v4l2_buffer** %6, align 8
  %9 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  %15 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %25 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20, %14, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %20
  %32 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %37 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FRAME_READY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %31
  %48 = load i64, i64* @FRAME_EMPTY, align 8
  %49 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %50 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %48, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %31
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %28
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @DBG(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
