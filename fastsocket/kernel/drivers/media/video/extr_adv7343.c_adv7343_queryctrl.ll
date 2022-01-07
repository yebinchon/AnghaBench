; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7343.c_adv7343_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_queryctrl = type { i32 }

@ADV7343_BRIGHTNESS_MIN = common dso_local global i32 0, align 4
@ADV7343_BRIGHTNESS_MAX = common dso_local global i32 0, align 4
@ADV7343_BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@ADV7343_HUE_MIN = common dso_local global i32 0, align 4
@ADV7343_HUE_MAX = common dso_local global i32 0, align 4
@ADV7343_HUE_DEF = common dso_local global i32 0, align 4
@ADV7343_GAIN_MIN = common dso_local global i32 0, align 4
@ADV7343_GAIN_MAX = common dso_local global i32 0, align 4
@ADV7343_GAIN_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_queryctrl*)* @adv7343_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7343_queryctrl(%struct.v4l2_subdev* %0, %struct.v4l2_queryctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %5, align 8
  %6 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %27 [
    i32 130, label %9
    i32 128, label %15
    i32 129, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %11 = load i32, i32* @ADV7343_BRIGHTNESS_MIN, align 4
  %12 = load i32, i32* @ADV7343_BRIGHTNESS_MAX, align 4
  %13 = load i32, i32* @ADV7343_BRIGHTNESS_DEF, align 4
  %14 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %10, i32 %11, i32 %12, i32 1, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %17 = load i32, i32* @ADV7343_HUE_MIN, align 4
  %18 = load i32, i32* @ADV7343_HUE_MAX, align 4
  %19 = load i32, i32* @ADV7343_HUE_DEF, align 4
  %20 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %16, i32 %17, i32 %18, i32 1, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %5, align 8
  %23 = load i32, i32* @ADV7343_GAIN_MIN, align 4
  %24 = load i32, i32* @ADV7343_GAIN_MAX, align 4
  %25 = load i32, i32* @ADV7343_GAIN_DEF, align 4
  %26 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %22, i32 %23, i32 %24, i32 1, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %21, %15, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
