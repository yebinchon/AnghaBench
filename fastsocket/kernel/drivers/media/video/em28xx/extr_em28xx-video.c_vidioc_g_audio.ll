; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_g_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_g_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_audio = type { i32, i32, i32 }
%struct.em28xx_fh = type { %struct.em28xx* }
%struct.em28xx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Line In\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Television alt\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Phone\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"PCM\00", align 1
@V4L2_AUDCAP_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_g_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_audio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_audio*, align 8
  %8 = alloca %struct.em28xx_fh*, align 8
  %9 = alloca %struct.em28xx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.em28xx_fh*
  store %struct.em28xx_fh* %11, %struct.em28xx_fh** %8, align 8
  %12 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %13 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %12, i32 0, i32 0
  %14 = load %struct.em28xx*, %struct.em28xx** %13, align 8
  store %struct.em28xx* %14, %struct.em28xx** %9, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %79

23:                                               ; preds = %3
  %24 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %67 [
    i32 129, label %27
    i32 133, label %32
    i32 128, label %37
    i32 130, label %42
    i32 132, label %47
    i32 134, label %52
    i32 135, label %57
    i32 131, label %62
  ]

27:                                               ; preds = %23
  %28 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %70

32:                                               ; preds = %23
  %33 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcpy(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %70

37:                                               ; preds = %23
  %38 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcpy(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %70

42:                                               ; preds = %23
  %43 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strcpy(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %70

47:                                               ; preds = %23
  %48 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcpy(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %70

52:                                               ; preds = %23
  %53 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcpy(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %70

57:                                               ; preds = %23
  %58 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strcpy(i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %70

62:                                               ; preds = %23
  %63 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @strcpy(i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %70

67:                                               ; preds = %23
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %79

70:                                               ; preds = %62, %57, %52, %47, %42, %37, %32, %27
  %71 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %72 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @V4L2_AUDCAP_STEREO, align 4
  %77 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %70, %67, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
