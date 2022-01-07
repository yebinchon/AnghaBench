; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8775.c_wm8775_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8775.c_wm8775_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.wm8775_state = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid input %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R21 = common dso_local global i32 0, align 4
@R14 = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @wm8775_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8775_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8775_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %12 = call %struct.wm8775_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.wm8775_state* %12, %struct.wm8775_state** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 15
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @v4l2_err(%struct.v4l2_subdev* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.wm8775_state*, %struct.wm8775_state** %10, align 8
  %24 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.wm8775_state*, %struct.wm8775_state** %10, align 8
  %26 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l2_ctrl_g_ctrl(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %48

31:                                               ; preds = %21
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %33 = load i32, i32* @R21, align 4
  %34 = call i32 @wm8775_write(%struct.v4l2_subdev* %32, i32 %33, i32 192)
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %36 = load i32, i32* @R14, align 4
  %37 = call i32 @wm8775_write(%struct.v4l2_subdev* %35, i32 %36, i32 468)
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %39 = load i32, i32* @R15, align 4
  %40 = call i32 @wm8775_write(%struct.v4l2_subdev* %38, i32 %39, i32 468)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %42 = load i32, i32* @R21, align 4
  %43 = load %struct.wm8775_state*, %struct.wm8775_state** %10, align 8
  %44 = getelementptr inbounds %struct.wm8775_state, %struct.wm8775_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 256, %45
  %47 = call i32 @wm8775_write(%struct.v4l2_subdev* %41, i32 %42, i32 %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %31, %30, %15
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.wm8775_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @wm8775_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
