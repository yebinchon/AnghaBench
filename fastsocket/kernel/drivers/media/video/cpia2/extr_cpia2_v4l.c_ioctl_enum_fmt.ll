; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"MJPEG\00", align 1
@V4L2_PIX_FMT_MJPEG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@V4L2_PIX_FMT_JPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_enum_fmt(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_fmtdesc*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.v4l2_fmtdesc*
  store %struct.v4l2_fmtdesc* %9, %struct.v4l2_fmtdesc** %6, align 8
  %10 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %15
  %22 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %23 = call i32 @memset(%struct.v4l2_fmtdesc* %22, i32 0, i32 20)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %28 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_FMT_FLAG_COMPRESSED, align 4
  %31 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %50 [
    i32 0, label %34
    i32 1, label %42
  ]

34:                                               ; preds = %21
  %35 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcpy(i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @V4L2_PIX_FMT_MJPEG, align 4
  %40 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %53

42:                                               ; preds = %21
  %43 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcpy(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @V4L2_PIX_FMT_JPEG, align 4
  %48 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %53

50:                                               ; preds = %21
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %42, %34
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.v4l2_fmtdesc*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
