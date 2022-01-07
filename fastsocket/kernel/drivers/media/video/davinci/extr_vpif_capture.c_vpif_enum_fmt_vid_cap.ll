; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i32, i32, i8* }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid format index\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VPIF_IF_RAW_BAYER = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Raw Mode -Bayer Pattern GrRBGb\00", align 1
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"YCbCr4:2:2 YC Planar\00", align 1
@V4L2_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @vpif_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.vpif_fh*
  store %struct.vpif_fh* %11, %struct.vpif_fh** %8, align 8
  %12 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %13 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %12, i32 0, i32 0
  %14 = load %struct.channel_obj*, %struct.channel_obj** %13, align 8
  store %struct.channel_obj* %14, %struct.channel_obj** %9, align 8
  %15 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @debug, align 4
  %21 = call i32 @vpif_dbg(i32 1, i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %26 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VPIF_IF_RAW_BAYER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %34 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcpy(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %41 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %54

43:                                               ; preds = %24
  %44 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %45 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strcpy(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @V4L2_PIX_FMT_YUV422P, align 4
  %52 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %43, %32
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
