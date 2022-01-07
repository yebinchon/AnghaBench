; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i32 }
%struct.vino_channel_settings = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"requested index = %d\0A\00", align 1
@VINO_INPUT_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@vino_inputs = common dso_local global %struct.TYPE_2__* null, align 8
@VINO_INPUT_COMPOSITE = common dso_local global i32 0, align 4
@VINO_INPUT_SVIDEO = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_input_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vino_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.vino_channel_settings*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %11)
  store %struct.vino_channel_settings* %12, %struct.vino_channel_settings** %8, align 8
  %13 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @vino_int_enum_input(%struct.vino_channel_settings* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @VINO_INPUT_NONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %68

27:                                               ; preds = %3
  %28 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %29 = call i32 @memset(%struct.v4l2_input* %28, i32 0, i32 20)
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %34 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_inputs, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_inputs, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcpy(i32 %46, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @VINO_INPUT_COMPOSITE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %27
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @VINO_INPUT_SVIDEO, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %27
  %62 = load i32, i32* @video, align 4
  %63 = load i32, i32* @g_input_status, align 4
  %64 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %64, i32 0, i32 0
  %66 = call i32 @decoder_call(i32 %62, i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %61, %57
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @vino_int_enum_input(%struct.vino_channel_settings*, i32) #1

declare dso_local i32 @memset(%struct.v4l2_input*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @decoder_call(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
