; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32* }
%struct.cx25840_ir_state = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_ir_remove(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.cx25840_state*, align 8
  %5 = alloca %struct.cx25840_ir_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.cx25840_state* %7, %struct.cx25840_state** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev* %8)
  store %struct.cx25840_ir_state* %9, %struct.cx25840_ir_state** %5, align 8
  %10 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %11 = icmp eq %struct.cx25840_ir_state* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %17 = call i32 @cx25840_ir_rx_shutdown(%struct.v4l2_subdev* %16)
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = call i32 @cx25840_ir_tx_shutdown(%struct.v4l2_subdev* %18)
  %20 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %21 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfifo_free(i32 %22)
  %24 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %25 = call i32 @kfree(%struct.cx25840_ir_state* %24)
  %26 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %27 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %15, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_ir_rx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_ir_tx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local i32 @kfifo_free(i32) #1

declare dso_local i32 @kfree(%struct.cx25840_ir_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
