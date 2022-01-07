; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.cx23885_fh* }
%struct.cx23885_fh = type { %struct.cx23885_dev* }
%struct.cx23885_dev = type { i64, i32, i32, %struct.cx23885_tsport }
%struct.cx23885_tsport = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }

@cx23885_boards = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@CX23885_VERSION_CODE = common dso_local global i32 0, align 4
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
  %7 = alloca %struct.cx23885_fh*, align 8
  %8 = alloca %struct.cx23885_dev*, align 8
  %9 = alloca %struct.cx23885_tsport*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.cx23885_fh*, %struct.cx23885_fh** %11, align 8
  store %struct.cx23885_fh* %12, %struct.cx23885_fh** %7, align 8
  %13 = load %struct.cx23885_fh*, %struct.cx23885_fh** %7, align 8
  %14 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %13, i32 0, i32 0
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %14, align 8
  store %struct.cx23885_dev* %15, %struct.cx23885_dev** %8, align 8
  %16 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %17 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %16, i32 0, i32 3
  store %struct.cx23885_tsport* %17, %struct.cx23885_tsport** %9, align 8
  %18 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %22 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strlcpy(i32 %20, i32 %23, i32 4)
  %25 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx23885_boards, align 8
  %29 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %9, align 8
  %30 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strlcpy(i32 %27, i32 %36, i32 4)
  %38 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %42 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @pci_name(i32 %43)
  %45 = call i32 @sprintf(i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @CX23885_VERSION_CODE, align 4
  %47 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %50 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* @UNSET, align 8
  %57 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %58 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %3
  %62 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %63 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %64 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %3
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
