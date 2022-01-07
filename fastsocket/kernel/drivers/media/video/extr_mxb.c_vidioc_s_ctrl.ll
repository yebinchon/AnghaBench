; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.file = type { i32 }
%struct.v4l2_control = type { i64, i64 }
%struct.saa7146_dev = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.file*, i8*, %struct.v4l2_control*)* }
%struct.mxb = type { i64, i64 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@MAXCONTROLS = common dso_local global i32 0, align 4
@mxb_controls = common dso_local global %struct.TYPE_6__* null, align 8
@V4L2_CID_AUDIO_MUTE = common dso_local global i64 0, align 8
@video_audio_connect = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"VIDIOC_S_CTRL, V4L2_CID_AUDIO_MUTE: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.mxb*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.saa7146_fh*
  %13 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %12, i32 0, i32 0
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %13, align 8
  store %struct.saa7146_dev* %14, %struct.saa7146_dev** %8, align 8
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %16 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mxb*
  store %struct.mxb* %18, %struct.mxb** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @MAXCONTROLS, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %37, %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxb_controls, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  br label %21

40:                                               ; preds = %35, %21
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %45 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.file*, i8*, %struct.v4l2_control*)*, i32 (%struct.file*, i8*, %struct.v4l2_control*)** %49, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %54 = call i32 %50(%struct.file* %51, i8* %52, %struct.v4l2_control* %53)
  store i32 %54, i32* %4, align 4
  br label %89

55:                                               ; preds = %40
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @V4L2_CID_AUDIO_MUTE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mxb*, %struct.mxb** %9, align 8
  %66 = getelementptr inbounds %struct.mxb, %struct.mxb* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.mxb*, %struct.mxb** %9, align 8
  %68 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %80

73:                                               ; preds = %61
  %74 = load i32*, i32** @video_audio_connect, align 8
  %75 = load %struct.mxb*, %struct.mxb** %9, align 8
  %76 = getelementptr inbounds %struct.mxb, %struct.mxb* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  br label %80

80:                                               ; preds = %73, %72
  %81 = phi i32 [ 6, %72 ], [ %79, %73 ]
  %82 = call i32 @tea6420_route_line(%struct.mxb* %67, i32 %81)
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 @DEB_EE(i8* %86)
  br label %88

88:                                               ; preds = %80, %55
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %43
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @tea6420_route_line(%struct.mxb*, i32) #1

declare dso_local i32 @DEB_EE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
