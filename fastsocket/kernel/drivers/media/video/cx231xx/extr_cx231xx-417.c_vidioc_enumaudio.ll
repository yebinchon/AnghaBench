; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_enumaudio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_enumaudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_audio = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"VideoGrabber Audio\00", align 1
@V4L2_AUDCAP_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_enumaudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enumaudio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_audio*, align 8
  %8 = alloca %struct.v4l2_audio*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %7, align 8
  %10 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  store %struct.v4l2_audio* %10, %struct.v4l2_audio** %8, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %21 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strncpy(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 14)
  %24 = load i32, i32* @V4L2_AUDCAP_STEREO, align 4
  %25 = load %struct.v4l2_audio*, %struct.v4l2_audio** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %19, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
