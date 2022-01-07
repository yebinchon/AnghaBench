; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_new_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_new_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl_ops = type { i32 }

@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_ops* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.v4l2_ctrl*, align 8
  %9 = alloca %struct.v4l2_ctrl_handler*, align 8
  %10 = alloca %struct.v4l2_ctrl_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %9, align 8
  store %struct.v4l2_ctrl_ops* %1, %struct.v4l2_ctrl_ops** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @v4l2_ctrl_fill(i32 %19, i8** %16, i32* %17, i32* %12, i32* %13, i32* %14, i32* %15, i32* %18)
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %25, i32 %27)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %8, align 8
  br label %41

29:                                               ; preds = %7
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %31 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i8*, i8** %16, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %18, align 4
  %40 = call %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler* %30, %struct.v4l2_ctrl_ops* %31, i32 %32, i8* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* null, i32* null)
  store %struct.v4l2_ctrl* %40, %struct.v4l2_ctrl** %8, align 8
  br label %41

41:                                               ; preds = %29, %24
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %8, align 8
  ret %struct.v4l2_ctrl* %42
}

declare dso_local i32 @v4l2_ctrl_fill(i32, i8**, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @handler_set_err(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
