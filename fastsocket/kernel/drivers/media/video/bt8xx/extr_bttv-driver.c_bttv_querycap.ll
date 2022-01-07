; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }
%struct.bttv_fh = type { %struct.bttv* }
%struct.bttv = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@v4l2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bttv\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@BTTV_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@no_overlay = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_OVERLAY = common dso_local global i32 0, align 4
@V4L2_CAP_RDS_CAPTURE = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @bttv_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_capability*, align 8
  %8 = alloca %struct.bttv_fh*, align 8
  %9 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bttv_fh*
  store %struct.bttv_fh* %11, %struct.bttv_fh** %8, align 8
  %12 = load %struct.bttv_fh*, %struct.bttv_fh** %8, align 8
  %13 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %12, i32 0, i32 0
  %14 = load %struct.bttv*, %struct.bttv** %13, align 8
  store %struct.bttv* %14, %struct.bttv** %9, align 8
  %15 = load i64, i64* @v4l2, align 8
  %16 = icmp eq i64 0, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strlcpy(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %25 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bttv*, %struct.bttv** %9, align 8
  %29 = getelementptr inbounds %struct.bttv, %struct.bttv* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlcpy(i32 %27, i8* %32, i32 4)
  %34 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bttv*, %struct.bttv** %9, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @pci_name(i32 %40)
  %42 = call i32 @snprintf(i32 %36, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* @BTTV_VERSION_CODE, align 4
  %44 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %47 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* @no_overlay, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %20
  %58 = load i32, i32* @V4L2_CAP_VIDEO_OVERLAY, align 4
  %59 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %20
  %64 = load %struct.bttv*, %struct.bttv** %9, align 8
  %65 = getelementptr inbounds %struct.bttv, %struct.bttv* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @V4L2_CAP_RDS_CAPTURE, align 4
  %70 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.bttv*, %struct.bttv** %9, align 8
  %76 = getelementptr inbounds %struct.bttv, %struct.bttv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TUNER_ABSENT, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %82 = load %struct.v4l2_capability*, %struct.v4l2_capability** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %74
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %17
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
