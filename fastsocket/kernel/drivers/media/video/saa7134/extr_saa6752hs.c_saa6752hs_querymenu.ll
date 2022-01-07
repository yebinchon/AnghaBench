; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_querymenu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_querymenu = type { i32 }
%struct.saa6752hs_state = type { i32 }
%struct.v4l2_queryctrl = type { i32 }

@saa6752hs_querymenu.mpeg_audio_encoding = internal constant [2 x i32] [i32 130, i32 134], align 4
@saa6752hs_querymenu.mpeg_audio_ac3_encoding = internal constant [3 x i32] [i32 130, i32 131, i32 134], align 4
@saa6752hs_querymenu.mpeg_audio_l2_bitrate = internal constant [3 x i32] [i32 129, i32 128, i32 134], align 4
@saa6752hs_querymenu.mpeg_audio_ac3_bitrate = internal constant [3 x i32] [i32 133, i32 132, i32 134], align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_querymenu*)* @saa6752hs_querymenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6752hs_querymenu(%struct.v4l2_subdev* %0, %struct.v4l2_querymenu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_querymenu*, align 8
  %6 = alloca %struct.saa6752hs_state*, align 8
  %7 = alloca %struct.v4l2_queryctrl, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_querymenu* %1, %struct.v4l2_querymenu** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.saa6752hs_state* %10, %struct.saa6752hs_state** %6, align 8
  %11 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call i32 @saa6752hs_queryctrl(%struct.v4l2_subdev* %15, %struct.v4l2_queryctrl* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %48 [
    i32 135, label %25
    i32 137, label %28
    i32 136, label %39
  ]

25:                                               ; preds = %21
  %26 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %27 = call i32 @v4l2_ctrl_query_menu_valid_items(%struct.v4l2_querymenu* %26, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @saa6752hs_querymenu.mpeg_audio_l2_bitrate, i64 0, i64 0))
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %21
  %29 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %30 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %51

36:                                               ; preds = %28
  %37 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %38 = call i32 @v4l2_ctrl_query_menu_valid_items(%struct.v4l2_querymenu* %37, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @saa6752hs_querymenu.mpeg_audio_ac3_bitrate, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %21
  %40 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %41 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %42 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @saa6752hs_querymenu.mpeg_audio_ac3_encoding, i64 0, i64 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @saa6752hs_querymenu.mpeg_audio_encoding, i64 0, i64 0)
  %47 = call i32 @v4l2_ctrl_query_menu_valid_items(%struct.v4l2_querymenu* %40, i32* %46)
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %21
  %49 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %50 = call i32 @v4l2_ctrl_query_menu(%struct.v4l2_querymenu* %49, %struct.v4l2_queryctrl* %7, i32* null)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %39, %36, %33, %25, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa6752hs_queryctrl(%struct.v4l2_subdev*, %struct.v4l2_queryctrl*) #1

declare dso_local i32 @v4l2_ctrl_query_menu_valid_items(%struct.v4l2_querymenu*, i32*) #1

declare dso_local i32 @v4l2_ctrl_query_menu(%struct.v4l2_querymenu*, %struct.v4l2_queryctrl*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
