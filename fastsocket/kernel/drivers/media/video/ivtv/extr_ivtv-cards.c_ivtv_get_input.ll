; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-cards.c_ivtv_get_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-cards.c_ivtv_get_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ivtv_card_video_input* }
%struct.ivtv_card_video_input = type { i32 }
%struct.v4l2_input = type { i32, i64, i32, i32, i32 }

@ivtv_get_input.input_strs = internal constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"Tuner 1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"S-Video 1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"S-Video 2\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Composite 1\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Composite 2\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Composite 3\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IVTV_CARD_INPUT_VID_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_TUNER = common dso_local global i64 0, align 8
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i64 0, align 8
@V4L2_STD_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_get_input(%struct.ivtv* %0, i32 %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.ivtv_card_video_input*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %9 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ivtv_card_video_input*, %struct.ivtv_card_video_input** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ivtv_card_video_input, %struct.ivtv_card_video_input* %13, i64 %15
  store %struct.ivtv_card_video_input* %16, %struct.ivtv_card_video_input** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ivtv_card_video_input*, %struct.ivtv_card_video_input** %8, align 8
  %33 = getelementptr inbounds %struct.ivtv_card_video_input, %struct.ivtv_card_video_input* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x i8*], [6 x i8*]* @ivtv_get_input.input_strs, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strlcpy(i32 %31, i8* %38, i32 4)
  %40 = load %struct.ivtv_card_video_input*, %struct.ivtv_card_video_input** %8, align 8
  %41 = getelementptr inbounds %struct.ivtv_card_video_input, %struct.ivtv_card_video_input* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IVTV_CARD_INPUT_VID_TUNER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = load i64, i64* @V4L2_INPUT_TYPE_TUNER, align 8
  br label %49

47:                                               ; preds = %25
  %48 = load i64, i64* @V4L2_INPUT_TYPE_CAMERA, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %54 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 1, %55
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @V4L2_INPUT_TYPE_TUNER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %49
  %66 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  br label %71

69:                                               ; preds = %49
  %70 = load i32, i32* @V4L2_STD_ALL, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i32 [ %68, %65 ], [ %70, %69 ]
  %73 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %22
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
