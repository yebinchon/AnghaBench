; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vpif_capture_config* }
%struct.vpif_capture_config = type { i8* }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }

@vpif_dev = common dso_local global %struct.TYPE_2__* null, align 8
@VPIF_CAPTURE_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vpif capture\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"DM646x Platform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vpif_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.vpif_capture_config*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpif_dev, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %9, align 8
  store %struct.vpif_capture_config* %10, %struct.vpif_capture_config** %7, align 8
  %11 = load i32, i32* @VPIF_CAPTURE_VERSION_CODE, align 4
  %12 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %15 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strlcpy(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %24 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlcpy(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %27 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %7, align 8
  %31 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlcpy(i32 %29, i8* %32, i32 4)
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
