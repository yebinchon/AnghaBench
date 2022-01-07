; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-audio-hook.c_lt9415_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-audio-hook.c_lt9415_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.v4l2_tuner = type { i32 }

@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@bttv_gpio = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"lt9415\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lt9415_audio(%struct.bttv* %0, %struct.v4l2_tuner* %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @gpio_read()
  %9 = and i32 %8, 16384
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %13 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %68

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_TUNER_MODE_LANG2, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 128, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 2176, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %34
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @gpio_bits(i32 2176, i32 %50)
  %52 = load i64, i64* @bttv_gpio, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.bttv*, %struct.bttv** %4, align 8
  %56 = call i32 @bttv_gpio_tracking(%struct.bttv* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %49
  br label %68

58:                                               ; preds = %15
  %59 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %60 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @V4L2_TUNER_MODE_LANG2, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %11, %58, %57
  ret void
}

declare dso_local i32 @gpio_read(...) #1

declare dso_local i32 @gpio_bits(i32, i32) #1

declare dso_local i32 @bttv_gpio_tracking(%struct.bttv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
