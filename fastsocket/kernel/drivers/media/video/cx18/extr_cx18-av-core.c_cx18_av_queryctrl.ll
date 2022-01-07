; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_queryctrl = type { i32 }
%struct.cx18_av_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_queryctrl*)* @cx18_av_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_av_queryctrl(%struct.v4l2_subdev* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  %6 = alloca %struct.cx18_av_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev* %7)
  store %struct.cx18_av_state* %8, %struct.cx18_av_state** %6, align 8
  %9 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %21 [
    i32 131, label %12
    i32 130, label %15
    i32 128, label %15
    i32 129, label %18
  ]

12:                                               ; preds = %2
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %14 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %13, i32 0, i32 255, i32 1, i32 128)
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2, %2
  %16 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %17 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %16, i32 0, i32 127, i32 1, i32 64)
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %20 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %19, i32 -128, i32 127, i32 1, i32 0)
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %38 [
    i32 132, label %26
    i32 134, label %32
    i32 136, label %35
    i32 135, label %35
    i32 133, label %35
  ]

26:                                               ; preds = %22
  %27 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %28 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %29 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %27, i32 0, i32 65535, i32 655, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %22
  %33 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %34 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %33, i32 0, i32 1, i32 1, i32 0)
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %22, %22, %22
  %36 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %37 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %36, i32 0, i32 65535, i32 655, i32 32768)
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %22
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %35, %32, %26, %18, %15, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
