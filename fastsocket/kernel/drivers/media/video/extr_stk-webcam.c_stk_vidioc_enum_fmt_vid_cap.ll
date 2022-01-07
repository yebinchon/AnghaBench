; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_vidioc_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32 }

@V4L2_PIX_FMT_RGB565 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"r5g6b5\00", align 1
@V4L2_PIX_FMT_RGB565X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"r5g6b5BE\00", align 1
@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"yuv4:2:2\00", align 1
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Raw bayer\00", align 1
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @stk_vidioc_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_vidioc_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %8 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %51 [
    i32 0, label %11
    i32 1, label %19
    i32 2, label %27
    i32 3, label %35
    i32 4, label %43
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @V4L2_PIX_FMT_RGB565, align 4
  %13 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %54

19:                                               ; preds = %3
  %20 = load i32, i32* @V4L2_PIX_FMT_RGB565X, align 4
  %21 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcpy(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %54

27:                                               ; preds = %3
  %28 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  %29 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %54

35:                                               ; preds = %3
  %36 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %37 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcpy(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %54

43:                                               ; preds = %3
  %44 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %45 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcpy(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %43, %35, %27, %19, %11
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
