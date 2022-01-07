; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"saa7134\00", align 1
@saa7134_boards = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@SAA7134_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RDS_CAPTURE = common dso_local global i32 0, align 4
@saa7134_no_overlay = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_OVERLAY = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i32 0, align 4
@UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @saa7134_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.saa7134_fh*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %11, %struct.saa7134_fh** %7, align 8
  %12 = load %struct.saa7134_fh*, %struct.saa7134_fh** %7, align 8
  %13 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %12, i32 0, i32 0
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  store %struct.saa7134_dev* %14, %struct.saa7134_dev** %8, align 8
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saa7134_boards, align 8
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strlcpy(i32 %24, i32 %31, i32 4)
  %33 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %37 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @pci_name(i32 %38)
  %40 = call i32 @sprintf(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @SAA7134_VERSION_CODE, align 4
  %42 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %45 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %56 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %3
  %60 = load i32, i32* @V4L2_CAP_RDS_CAPTURE, align 4
  %61 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %3
  %66 = load i64, i64* @saa7134_no_overlay, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @V4L2_CAP_VIDEO_OVERLAY, align 4
  %70 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @TUNER_ABSENT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @UNSET, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78, %74
  %83 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %86 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %78
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
