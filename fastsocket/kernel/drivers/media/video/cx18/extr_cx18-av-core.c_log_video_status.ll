; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_log_video_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_log_video_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i32, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@log_video_status.fmt_strs = internal constant [16 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"0x0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"NTSC-M\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NTSC-J\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"NTSC-4.43\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PAL-BDGHI\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"PAL-M\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"PAL-N\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"PAL-Nc\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"PAL-60\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"0x9\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"0xA\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"0xB\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"SECAM\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"0xD\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"0xE\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"0xF\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Video signal:              %spresent\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Detected format:           %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Specified standard:        %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"automatic detection\00", align 1
@CX18_AV_COMPOSITE1 = common dso_local global i32 0, align 4
@CX18_AV_COMPOSITE8 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [41 x i8] c"Specified video input:     Composite %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"Specified video input:     S-Video (Luma In%d, Chroma In%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Specified audioclock freq: %d Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @log_video_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_video_status(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca %struct.cx18_av_state*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %9 = load %struct.cx18*, %struct.cx18** %2, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 0
  store %struct.cx18_av_state* %10, %struct.cx18_av_state** %3, align 8
  %11 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %12 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %11, i32 0, i32 2
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %4, align 8
  %13 = load %struct.cx18*, %struct.cx18** %2, align 8
  %14 = call i32 @cx18_av_read(%struct.cx18* %13, i32 1024)
  %15 = and i32 %14, 15
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cx18*, %struct.cx18** %2, align 8
  %17 = call i32 @cx18_av_read(%struct.cx18* %16, i32 1037)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.cx18*, %struct.cx18** %2, align 8
  %19 = call i32 @cx18_av_read(%struct.cx18* %18, i32 1038)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %21 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 32
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)
  %29 = call i32 (%struct.v4l2_subdev*, i8*, ...) @CX18_INFO_DEV(%struct.v4l2_subdev* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i8* %28)
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 15
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i8*], [16 x i8*]* @log_video_status.fmt_strs, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (%struct.v4l2_subdev*, i8*, ...) @CX18_INFO_DEV(%struct.v4l2_subdev* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %35)
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i8*], [16 x i8*]* @log_video_status.fmt_strs, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i8* [ %44, %40 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), %45 ]
  %48 = call i32 (%struct.v4l2_subdev*, i8*, ...) @CX18_INFO_DEV(%struct.v4l2_subdev* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @CX18_AV_COMPOSITE1, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @CX18_AV_COMPOSITE8, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @CX18_AV_COMPOSITE1, align 4
  %60 = sub nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  %62 = call i32 (%struct.v4l2_subdev*, i8*, ...) @CX18_INFO_DEV(%struct.v4l2_subdev* %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 %61)
  br label %72

63:                                               ; preds = %52, %46
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 240
  %67 = ashr i32 %66, 4
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 3840
  %70 = ashr i32 %69, 8
  %71 = call i32 (%struct.v4l2_subdev*, i8*, ...) @CX18_INFO_DEV(%struct.v4l2_subdev* %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.23, i64 0, i64 0), i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %63, %56
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %74 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %75 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.v4l2_subdev*, i8*, ...) @CX18_INFO_DEV(%struct.v4l2_subdev* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i32 %76)
  ret void
}

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

declare dso_local i32 @CX18_INFO_DEV(%struct.v4l2_subdev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
