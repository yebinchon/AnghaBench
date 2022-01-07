; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-audio.c_cx18_av_audio_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-audio.c_cx18_av_audio_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_audio_g_ctrl(%struct.cx18* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %6 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %34 [
    i32 128, label %9
    i32 131, label %14
    i32 129, label %19
    i32 132, label %24
    i32 130, label %29
  ]

9:                                                ; preds = %2
  %10 = load %struct.cx18*, %struct.cx18** %4, align 8
  %11 = call i32 @get_volume(%struct.cx18* %10)
  %12 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.cx18*, %struct.cx18** %4, align 8
  %16 = call i32 @get_bass(%struct.cx18* %15)
  %17 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.cx18*, %struct.cx18** %4, align 8
  %21 = call i32 @get_treble(%struct.cx18* %20)
  %22 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.cx18*, %struct.cx18** %4, align 8
  %26 = call i32 @get_balance(%struct.cx18* %25)
  %27 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.cx18*, %struct.cx18** %4, align 8
  %31 = call i32 @get_mute(%struct.cx18* %30)
  %32 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %29, %24, %19, %14, %9
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @get_volume(%struct.cx18*) #1

declare dso_local i32 @get_bass(%struct.cx18*) #1

declare dso_local i32 @get_treble(%struct.cx18*) #1

declare dso_local i32 @get_balance(%struct.cx18*) #1

declare dso_local i32 @get_mute(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
