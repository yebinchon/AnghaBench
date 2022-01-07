; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-vbi.c_fill_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-vbi.c_fill_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_vbi_params = type { i32 }
%struct.v4l2_queryctrl = type { i32 }

@V4L2_MPEG_STREAM_TYPE_MPEG2_PS = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_1x1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_221x100 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_4x3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7164_vbi_params*, %struct.v4l2_queryctrl*)* @fill_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_queryctrl(%struct.saa7164_vbi_params* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7164_vbi_params*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.saa7164_vbi_params* %0, %struct.saa7164_vbi_params** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %6 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %48 [
    i32 137, label %9
    i32 136, label %12
    i32 129, label %15
    i32 135, label %18
    i32 128, label %21
    i32 134, label %24
    i32 138, label %27
    i32 133, label %30
    i32 132, label %36
    i32 130, label %42
    i32 131, label %45
  ]

9:                                                ; preds = %2
  %10 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %11 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %10, i32 0, i32 255, i32 1, i32 127)
  store i32 %11, i32* %3, align 4
  br label %51

12:                                               ; preds = %2
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %14 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %13, i32 0, i32 255, i32 1, i32 66)
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %17 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %16, i32 0, i32 255, i32 1, i32 62)
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %20 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %19, i32 0, i32 255, i32 1, i32 128)
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %23 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %22, i32 0, i32 15, i32 1, i32 8)
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %26 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %25, i32 0, i32 1, i32 1, i32 0)
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %29 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %28, i32 -83, i32 24, i32 1, i32 20)
  store i32 %29, i32* %3, align 4
  br label %51

30:                                               ; preds = %2
  %31 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %32 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_PS, align 4
  %33 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %34 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_PS, align 4
  %35 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %31, i32 %32, i32 %33, i32 1, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %51

36:                                               ; preds = %2
  %37 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %38 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %39 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_221x100, align 4
  %40 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_4x3, align 4
  %41 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %37, i32 %38, i32 %39, i32 1, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %51

42:                                               ; preds = %2
  %43 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %44 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %43, i32 1, i32 255, i32 1, i32 15)
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %47 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %46, i32 1, i32 3, i32 1, i32 1)
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %45, %42, %36, %30, %27, %24, %21, %18, %15, %12, %9
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
