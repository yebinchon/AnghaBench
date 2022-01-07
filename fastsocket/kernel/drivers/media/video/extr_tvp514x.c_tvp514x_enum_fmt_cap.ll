; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_enum_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp514x.c_tvp514x_enum_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i64 }
%struct.tvp514x_decoder = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Current FMT: index - %d (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_fmtdesc*)* @tvp514x_enum_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_enum_fmt_cap(%struct.v4l2_subdev* %0, %struct.v4l2_fmtdesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_fmtdesc*, align 8
  %6 = alloca %struct.tvp514x_decoder*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_fmtdesc* %1, %struct.v4l2_fmtdesc** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %8)
  store %struct.tvp514x_decoder* %9, %struct.tvp514x_decoder** %6, align 8
  %10 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %11 = icmp eq %struct.v4l2_fmtdesc* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %21 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %15
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %67

30:                                               ; preds = %24
  %31 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %67

39:                                               ; preds = %30
  %40 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %5, align 8
  %41 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %42 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = call i32 @memcpy(%struct.v4l2_fmtdesc* %40, %struct.TYPE_2__* %46, i32 16)
  %48 = load i32, i32* @debug, align 4
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %51 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %6, align 8
  %59 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @v4l2_dbg(i32 1, i32 %48, %struct.v4l2_subdev* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %39, %36, %27, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @memcpy(%struct.v4l2_fmtdesc*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
