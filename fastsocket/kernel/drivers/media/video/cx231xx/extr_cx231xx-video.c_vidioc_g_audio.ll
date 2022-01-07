; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_g_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_vidioc_g_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_audio = type { i32, i32, i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_AUDCAP_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_g_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_audio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_audio*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx231xx_fh*
  store %struct.cx231xx_fh* %11, %struct.cx231xx_fh** %8, align 8
  %12 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %13 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %12, i32 0, i32 0
  %14 = load %struct.cx231xx*, %struct.cx231xx** %13, align 8
  store %struct.cx231xx* %14, %struct.cx231xx** %9, align 8
  %15 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %28 [
    i32 128, label %18
    i32 129, label %23
  ]

18:                                               ; preds = %3
  %19 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcpy(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %31

23:                                               ; preds = %3
  %24 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %23, %18
  %32 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @V4L2_AUDCAP_STEREO, align 4
  %38 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %31, %28
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
