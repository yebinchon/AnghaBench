; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8775.c_wm8775_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8775.c_wm8775_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.wm8775_state = type { i32 }

@R21 = common dso_local global i32 0, align 4
@R14 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @wm8775_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8775_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.wm8775_state*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.wm8775_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.wm8775_state* %9, %struct.wm8775_state** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %36 [
    i32 128, label %13
  ]

13:                                               ; preds = %1
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load i32, i32* @R21, align 4
  %16 = call i32 @wm8775_write(%struct.v4l2_subdev* %14, i32 %15, i32 192)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %18 = load i32, i32* @R14, align 4
  %19 = call i32 @wm8775_write(%struct.v4l2_subdev* %17, i32 %18, i32 468)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = load i32, i32* @R15, align 4
  %22 = call i32 @wm8775_write(%struct.v4l2_subdev* %20, i32 %21, i32 468)
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %13
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %29 = load i32, i32* @R21, align 4
  %30 = load %struct.wm8775_state*, %struct.wm8775_state** %5, align 8
  %31 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 256, %32
  %34 = call i32 @wm8775_write(%struct.v4l2_subdev* %28, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %27, %13
  store i32 0, i32* %2, align 4
  br label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %35
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.wm8775_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @wm8775_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
