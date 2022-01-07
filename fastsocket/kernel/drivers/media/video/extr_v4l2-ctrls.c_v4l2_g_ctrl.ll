; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_ctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_g_ctrl(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %7 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %8 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler* %7, i32 %10)
  store %struct.v4l2_ctrl* %11, %struct.v4l2_ctrl** %6, align 8
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %13 = icmp eq %struct.v4l2_ctrl* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %16 = call i32 @type_is_int(%struct.v4l2_ctrl* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %26

21:                                               ; preds = %14
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %23 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %23, i32 0, i32 0
  %25 = call i32 @get_ctrl(%struct.v4l2_ctrl* %22, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @type_is_int(%struct.v4l2_ctrl*) #1

declare dso_local i32 @get_ctrl(%struct.v4l2_ctrl*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
