; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-cards.c_cx18_get_audio_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-cards.c_cx18_get_audio_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cx18_card_audio_input* }
%struct.cx18_card_audio_input = type { i32 }
%struct.v4l2_audio = type { i32, i32, i32 }

@cx18_get_audio_input.input_strs = internal constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"Tuner 1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Line In 1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Line In 2\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_AUDCAP_STEREO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_get_audio_input(%struct.cx18* %0, i32 %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_audio*, align 8
  %8 = alloca %struct.cx18_card_audio_input*, align 8
  store %struct.cx18* %0, %struct.cx18** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %7, align 8
  %9 = load %struct.cx18*, %struct.cx18** %5, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.cx18_card_audio_input*, %struct.cx18_card_audio_input** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cx18_card_audio_input, %struct.cx18_card_audio_input* %13, i64 %15
  store %struct.cx18_card_audio_input* %16, %struct.cx18_card_audio_input** %8, align 8
  %17 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %18 = call i32 @memset(%struct.v4l2_audio* %17, i32 0, i32 12)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.cx18*, %struct.cx18** %5, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cx18_card_audio_input*, %struct.cx18_card_audio_input** %8, align 8
  %32 = getelementptr inbounds %struct.cx18_card_audio_input, %struct.cx18_card_audio_input* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* @cx18_get_audio_input.input_strs, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlcpy(i32 %30, i8* %37, i32 4)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @V4L2_AUDCAP_STEREO, align 4
  %43 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %24
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.v4l2_audio*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
