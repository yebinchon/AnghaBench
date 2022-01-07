; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { i32 }
%struct.v4l2_buffer = type { i64 }
%struct.vpfe_device = type { i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vpfe_qbuf\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid buf type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"fh->io_allowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vpfe_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_fh*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vpfe_device* @video_drvdata(%struct.file* %10)
  store %struct.vpfe_device* %11, %struct.vpfe_device** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.vpfe_fh*, %struct.vpfe_fh** %13, align 8
  store %struct.vpfe_fh* %14, %struct.vpfe_fh** %9, align 8
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %17 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %16, i32 0, i32 1
  %18 = call i32 @v4l2_dbg(i32 1, i32 %15, i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %20 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %26 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %25, i32 0, i32 1
  %27 = call i32 @v4l2_err(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %46

30:                                               ; preds = %3
  %31 = load %struct.vpfe_fh*, %struct.vpfe_fh** %9, align 8
  %32 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %37 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %36, i32 0, i32 1
  %38 = call i32 @v4l2_err(i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EACCES, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %43 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %42, i32 0, i32 0
  %44 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %45 = call i32 @videobuf_qbuf(i32* %43, %struct.v4l2_buffer* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %35, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @videobuf_qbuf(i32*, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
