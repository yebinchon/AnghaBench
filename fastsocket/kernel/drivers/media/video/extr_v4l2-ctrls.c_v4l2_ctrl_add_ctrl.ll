; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_add_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_add_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i64 }
%struct.v4l2_ctrl = type { %struct.v4l2_ctrl_handler* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_ctrl* @v4l2_ctrl_add_ctrl(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %6 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %7 = icmp eq %struct.v4l2_ctrl_handler* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %3, align 8
  br label %40

14:                                               ; preds = %8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %16 = icmp eq %struct.v4l2_ctrl* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %18, i32 %20)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %3, align 8
  br label %40

22:                                               ; preds = %14
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 0
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %24, align 8
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %27 = icmp eq %struct.v4l2_ctrl_handler* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  store %struct.v4l2_ctrl* %29, %struct.v4l2_ctrl** %3, align 8
  br label %40

30:                                               ; preds = %22
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %32 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %33 = call i64 @handler_new_ref(%struct.v4l2_ctrl_handler* %31, %struct.v4l2_ctrl* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %38

36:                                               ; preds = %30
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi %struct.v4l2_ctrl* [ null, %35 ], [ %37, %36 ]
  store %struct.v4l2_ctrl* %39, %struct.v4l2_ctrl** %3, align 8
  br label %40

40:                                               ; preds = %38, %28, %17, %13
  %41 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  ret %struct.v4l2_ctrl* %41
}

declare dso_local i32 @handler_set_err(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i64 @handler_new_ref(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
