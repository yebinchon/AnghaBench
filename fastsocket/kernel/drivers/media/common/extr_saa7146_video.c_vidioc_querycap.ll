; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i64, i64, i64 }
%struct.saa7146_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [13 x i8] c"saa7146 v4l2\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@SAA7146_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OVERLAY = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.saa7146_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.saa7146_fh*
  %10 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %9, i32 0, i32 0
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  store %struct.saa7146_dev* %11, %struct.saa7146_dev** %7, align 8
  %12 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %22 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlcpy(i8* %20, i32 %25, i32 8)
  %27 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %32 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @pci_name(i32 %33)
  %35 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @SAA7146_VERSION_CODE, align 4
  %37 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %40 = load i32, i32* @V4L2_CAP_VIDEO_OVERLAY, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %49 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  ret i32 0
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
