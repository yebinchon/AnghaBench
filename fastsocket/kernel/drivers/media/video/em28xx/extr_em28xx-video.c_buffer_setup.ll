; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_buffer_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_buffer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.em28xx_fh* }
%struct.em28xx_fh = type { i64, %struct.em28xx* }
%struct.em28xx = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_frequency = type { i32, i32 }

@EM28XX_DEF_BUF = common dso_local global i32 0, align 4
@EM28XX_MIN_BUF = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @buffer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.em28xx_fh*, align 8
  %8 = alloca %struct.em28xx*, align 8
  %9 = alloca %struct.v4l2_frequency, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %11 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %10, i32 0, i32 0
  %12 = load %struct.em28xx_fh*, %struct.em28xx_fh** %11, align 8
  store %struct.em28xx_fh* %12, %struct.em28xx_fh** %7, align 8
  %13 = load %struct.em28xx_fh*, %struct.em28xx_fh** %7, align 8
  %14 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %13, i32 0, i32 1
  %15 = load %struct.em28xx*, %struct.em28xx** %14, align 8
  store %struct.em28xx* %15, %struct.em28xx** %8, align 8
  %16 = load %struct.em28xx_fh*, %struct.em28xx_fh** %7, align 8
  %17 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %16, i32 0, i32 1
  %18 = load %struct.em28xx*, %struct.em28xx** %17, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.em28xx_fh*, %struct.em28xx_fh** %7, align 8
  %22 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %21, i32 0, i32 1
  %23 = load %struct.em28xx*, %struct.em28xx** %22, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %20, %25
  %27 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %26, %31
  %33 = add nsw i32 %32, 7
  %34 = ashr i32 %33, 3
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 0, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EM28XX_DEF_BUF, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %3
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EM28XX_MIN_BUF, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EM28XX_MIN_BUF, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = call i32 @memset(%struct.v4l2_frequency* %9, i32 0, i32 8)
  %52 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %9, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.em28xx_fh*, %struct.em28xx_fh** %7, align 8
  %57 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  br label %64

62:                                               ; preds = %50
  %63 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %9, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %68 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %67, i32 0, i32 2
  %69 = load i32, i32* @tuner, align 4
  %70 = load i32, i32* @s_frequency, align 4
  %71 = call i32 @v4l2_device_call_all(i32* %68, i32 0, i32 %69, i32 %70, %struct.v4l2_frequency* %9)
  ret i32 0
}

declare dso_local i32 @memset(%struct.v4l2_frequency*, i32, i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
