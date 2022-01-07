; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-audio.c_cx18_av_audio_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-audio.c_cx18_av_audio_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_audio_s_ctrl(%struct.cx18* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %6 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %39 [
    i32 128, label %9
    i32 131, label %15
    i32 129, label %21
    i32 132, label %27
    i32 130, label %33
  ]

9:                                                ; preds = %2
  %10 = load %struct.cx18*, %struct.cx18** %4, align 8
  %11 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_volume(%struct.cx18* %10, i32 %13)
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.cx18*, %struct.cx18** %4, align 8
  %17 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_bass(%struct.cx18* %16, i32 %19)
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.cx18*, %struct.cx18** %4, align 8
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_treble(%struct.cx18* %22, i32 %25)
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.cx18*, %struct.cx18** %4, align 8
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_balance(%struct.cx18* %28, i32 %31)
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.cx18*, %struct.cx18** %4, align 8
  %35 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_mute(%struct.cx18* %34, i32 %37)
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %33, %27, %21, %15, %9
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @set_volume(%struct.cx18*, i32) #1

declare dso_local i32 @set_bass(%struct.cx18*, i32) #1

declare dso_local i32 @set_treble(%struct.cx18*, i32) #1

declare dso_local i32 @set_balance(%struct.cx18*, i32) #1

declare dso_local i32 @set_mute(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
