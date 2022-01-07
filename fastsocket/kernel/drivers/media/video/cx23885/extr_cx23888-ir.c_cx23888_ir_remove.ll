; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.cx23888_ir_state = type { i32 }

@CX23885_HW_888_IR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23888_ir_remove(%struct.cx23885_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.cx23888_ir_state*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  %6 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %7 = load i32, i32* @CX23885_HW_888_IR, align 4
  %8 = call %struct.v4l2_subdev* @cx23885_find_hw(%struct.cx23885_dev* %6, i32 %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = icmp eq %struct.v4l2_subdev* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call i32 @cx23888_ir_rx_shutdown(%struct.v4l2_subdev* %15)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %18 = call i32 @cx23888_ir_tx_shutdown(%struct.v4l2_subdev* %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = call %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev* %19)
  store %struct.cx23888_ir_state* %20, %struct.cx23888_ir_state** %5, align 8
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %22 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %21)
  %23 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %5, align 8
  %24 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kfifo_free(i32 %25)
  %27 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %5, align 8
  %28 = call i32 @kfree(%struct.cx23888_ir_state* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %14, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.v4l2_subdev* @cx23885_find_hw(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx23888_ir_rx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx23888_ir_tx_shutdown(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx23888_ir_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @kfifo_free(i32) #1

declare dso_local i32 @kfree(%struct.cx23888_ir_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
