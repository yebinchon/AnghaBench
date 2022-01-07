; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_ac97_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_ac97_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.em28xx = type { i64, i64 }
%struct.v4l2_control = type { i64, i64 }

@ac97_qctrl = common dso_local global %struct.TYPE_3__* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, %struct.v4l2_control*)* @ac97_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_set_ctrl(%struct.em28xx* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ac97_qctrl, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ac97_qctrl, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %29

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %73

29:                                               ; preds = %23
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ac97_qctrl, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %32, %38
  br i1 %39, label %51, label %40

40:                                               ; preds = %29
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ac97_qctrl, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %43, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40, %29
  %52 = load i32, i32* @ERANGE, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %73

54:                                               ; preds = %40
  %55 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  switch i64 %57, label %70 [
    i64 129, label %58
    i64 128, label %64
  ]

58:                                               ; preds = %54
  %59 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %63 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %54, %64, %58
  %71 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %72 = call i32 @em28xx_audio_analog_set(%struct.em28xx* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %51, %28
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @em28xx_audio_analog_set(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
