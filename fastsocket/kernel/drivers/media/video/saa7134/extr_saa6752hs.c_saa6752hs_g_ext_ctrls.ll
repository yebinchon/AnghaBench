; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_g_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_saa6752hs_g_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, i64 }
%struct.saa6752hs_state = type { i32, i32 }

@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_ext_controls*)* @saa6752hs_g_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa6752hs_g_ext_ctrls(%struct.v4l2_subdev* %0, %struct.v4l2_ext_controls* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_ext_controls*, align 8
  %6 = alloca %struct.saa6752hs_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.saa6752hs_state* %10, %struct.saa6752hs_state** %6, align 8
  %11 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  %27 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %28 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.saa6752hs_state*, %struct.saa6752hs_state** %6, align 8
  %31 = getelementptr inbounds %struct.saa6752hs_state, %struct.saa6752hs_state* %30, i32 0, i32 0
  %32 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @get_ctrl(i32 %29, i32* %31, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %20

50:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %41, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.saa6752hs_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @get_ctrl(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
