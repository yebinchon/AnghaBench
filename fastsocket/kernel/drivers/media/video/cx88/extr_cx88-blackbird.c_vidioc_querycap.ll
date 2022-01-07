; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.cx8802_dev = type { i32, %struct.cx88_core* }
%struct.cx88_core = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.cx8802_fh = type { %struct.cx8802_dev* }

@.str = private unnamed_addr constant [15 x i8] c"cx88_blackbird\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@CX88_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@UNSET = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.cx8802_dev*, align 8
  %8 = alloca %struct.cx88_core*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cx8802_fh*
  %11 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %10, i32 0, i32 0
  %12 = load %struct.cx8802_dev*, %struct.cx8802_dev** %11, align 8
  store %struct.cx8802_dev* %12, %struct.cx8802_dev** %7, align 8
  %13 = load %struct.cx8802_dev*, %struct.cx8802_dev** %7, align 8
  %14 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %13, i32 0, i32 1
  %15 = load %struct.cx88_core*, %struct.cx88_core** %14, align 8
  store %struct.cx88_core* %15, %struct.cx88_core** %8, align 8
  %16 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcpy(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  %24 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strlcpy(i32 %22, i32 %26, i32 4)
  %28 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cx8802_dev*, %struct.cx8802_dev** %7, align 8
  %32 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @pci_name(i32 %33)
  %35 = call i32 @sprintf(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @CX88_VERSION_CODE, align 4
  %37 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %40 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* @UNSET, align 8
  %47 = load %struct.cx88_core*, %struct.cx88_core** %8, align 8
  %48 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %3
  %53 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %54 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %3
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
