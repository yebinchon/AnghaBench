; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_rx_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_rx_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_ir_state = type { i32, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CNTRL_EDG_NONE = common dso_local global i32 0, align 4
@CX25840_IR_RXCLK_REG = common dso_local global i32 0, align 4
@RXCLK_RCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @cx25840_ir_rx_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_ir_rx_shutdown(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.cx25840_ir_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev* %6)
  store %struct.cx25840_ir_state* %7, %struct.cx25840_ir_state** %4, align 8
  %8 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %4, align 8
  %9 = icmp eq %struct.cx25840_ir_state* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %4, align 8
  %15 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %14, i32 0, i32 2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %5, align 8
  %17 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %4, align 8
  %18 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = call i32 @irqenable_rx(%struct.v4l2_subdev* %20, i32 0)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %23 = call i32 @control_rx_enable(%struct.i2c_client* %22, i32 0)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = call i32 @control_rx_demodulation_enable(%struct.i2c_client* %24, i32 0)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @CNTRL_EDG_NONE, align 4
  %28 = call i32 @control_rx_s_edge_detection(%struct.i2c_client* %26, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = call i32 @filter_rx_s_min_width(%struct.i2c_client* %29, i32 0)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @CX25840_IR_RXCLK_REG, align 4
  %33 = load i32, i32* @RXCLK_RCD, align 4
  %34 = call i32 @cx25840_write4(%struct.i2c_client* %31, i32 %32, i32 %33)
  %35 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %4, align 8
  %36 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %4, align 8
  %39 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %13, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irqenable_rx(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @control_rx_enable(%struct.i2c_client*, i32) #1

declare dso_local i32 @control_rx_demodulation_enable(%struct.i2c_client*, i32) #1

declare dso_local i32 @control_rx_s_edge_detection(%struct.i2c_client*, i32) #1

declare dso_local i32 @filter_rx_s_min_width(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
