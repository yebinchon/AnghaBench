; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa717x.c_saa717x_s_video_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa717x.c_saa717x_s_video_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa717x_state = type { i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"decoder set input (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"now setting %s input %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"S-Video\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@TUNER_AUDIO_STEREO = common dso_local global i32 0, align 4
@reg_init_tuner_input = common dso_local global i32 0, align 4
@reg_init_svideo_input = common dso_local global i32 0, align 4
@reg_init_composite_input = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @saa717x_s_video_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa717x_s_video_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa717x_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.saa717x_state* @to_state(%struct.v4l2_subdev* %13)
  store %struct.saa717x_state* %14, %struct.saa717x_state** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 128
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 127
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @debug, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %19, %struct.v4l2_subdev* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 9
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %100

31:                                               ; preds = %25
  %32 = load %struct.saa717x_state*, %struct.saa717x_state** %10, align 8
  %33 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.saa717x_state*, %struct.saa717x_state** %10, align 8
  %41 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @debug, align 4
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %44, 6
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %42, %struct.v4l2_subdev* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %48)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %52 = call i32 @saa717x_read(%struct.v4l2_subdev* %51, i32 258)
  %53 = and i32 %52, 240
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @saa717x_write(%struct.v4l2_subdev* %50, i32 258, i32 %55)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %59 = call i32 @saa717x_read(%struct.v4l2_subdev* %58, i32 265)
  %60 = and i32 %59, 127
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 6
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 128
  %65 = or i32 %60, %64
  %66 = call i32 @saa717x_write(%struct.v4l2_subdev* %57, i32 265, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %37
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %71 = load %struct.saa717x_state*, %struct.saa717x_state** %10, align 8
  %72 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @set_audio_mode(%struct.v4l2_subdev* %70, i32 %73)
  br label %79

75:                                               ; preds = %37
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %77 = load i32, i32* @TUNER_AUDIO_STEREO, align 4
  %78 = call i32 @set_audio_mode(%struct.v4l2_subdev* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %69
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %84 = load i32, i32* @reg_init_tuner_input, align 4
  %85 = call i32 @saa717x_write_regs(%struct.v4l2_subdev* %83, i32 %84)
  br label %98

86:                                               ; preds = %79
  %87 = load i32, i32* %12, align 4
  %88 = icmp sge i32 %87, 6
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %91 = load i32, i32* @reg_init_svideo_input, align 4
  %92 = call i32 @saa717x_write_regs(%struct.v4l2_subdev* %90, i32 %91)
  br label %97

93:                                               ; preds = %86
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %95 = load i32, i32* @reg_init_composite_input, align 4
  %96 = call i32 @saa717x_write_regs(%struct.v4l2_subdev* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %82
  br label %99

99:                                               ; preds = %98, %31
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %28
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local %struct.saa717x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @saa717x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa717x_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @set_audio_mode(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa717x_write_regs(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
