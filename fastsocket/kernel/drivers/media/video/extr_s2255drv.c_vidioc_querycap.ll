; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.s2255_fh* }
%struct.s2255_fh = type { %struct.s2255_dev* }
%struct.s2255_dev = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"s2255\00", align 1
@S2255_VERSION = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.s2255_fh*, align 8
  %8 = alloca %struct.s2255_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.s2255_fh*, %struct.s2255_fh** %10, align 8
  store %struct.s2255_fh* %11, %struct.s2255_fh** %7, align 8
  %12 = load %struct.s2255_fh*, %struct.s2255_fh** %7, align 8
  %13 = getelementptr inbounds %struct.s2255_fh, %struct.s2255_fh* %12, i32 0, i32 0
  %14 = load %struct.s2255_dev*, %struct.s2255_dev** %13, align 8
  store %struct.s2255_dev* %14, %struct.s2255_dev** %8, align 8
  %15 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strlcpy(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %19 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strlcpy(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = load %struct.s2255_dev*, %struct.s2255_dev** %8, align 8
  %24 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_make_path(i32 %25, i32 %28, i32 4)
  %30 = load i32, i32* @S2255_VERSION, align 4
  %31 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %34 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
