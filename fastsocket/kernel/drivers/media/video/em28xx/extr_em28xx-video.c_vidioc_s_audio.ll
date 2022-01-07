; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_audio = type { i64 }
%struct.em28xx_fh = type { %struct.em28xx* }
%struct.em28xx = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_EM28XX_INPUT = common dso_local global i64 0, align 8
@EM28XX_AOUT_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_s_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_audio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
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
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %69

23:                                               ; preds = %3
  %24 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_EM28XX_INPUT, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %23
  %33 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.TYPE_4__* @INPUT(i64 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 0, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %69

43:                                               ; preds = %32
  %44 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call %struct.TYPE_4__* @INPUT(i64 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %51 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.TYPE_4__* @INPUT(i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %59 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %61 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %43
  %65 = load i64, i64* @EM28XX_AOUT_MASTER, align 8
  %66 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %67 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %43
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %40, %29, %20
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_4__* @INPUT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
