; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.vpfe_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vpfe_querycap\0A\00", align 1
@VPFE_CAPTURE_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@CAPTURE_DRV_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"VPFE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vpfe_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.vpfe_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.vpfe_device* @video_drvdata(%struct.file* %8)
  store %struct.vpfe_device* %9, %struct.vpfe_device** %7, align 8
  %10 = load i32, i32* @debug, align 4
  %11 = load %struct.vpfe_device*, %struct.vpfe_device** %7, align 8
  %12 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %11, i32 0, i32 1
  %13 = call i32 @v4l2_dbg(i32 1, i32 %10, i32* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @VPFE_CAPTURE_VERSION_CODE, align 4
  %15 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %18 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** @CAPTURE_DRV_NAME, align 8
  %26 = call i32 @strlcpy(i32 %24, i8* %25, i32 4)
  %27 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlcpy(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %31 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vpfe_device*, %struct.vpfe_device** %7, align 8
  %35 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlcpy(i32 %33, i8* %38, i32 4)
  ret i32 0
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
