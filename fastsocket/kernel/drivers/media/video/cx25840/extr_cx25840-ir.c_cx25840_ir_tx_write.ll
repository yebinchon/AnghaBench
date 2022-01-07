; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_tx_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_tx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_ir_state = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IRQEN_TSE = common dso_local global i32 0, align 4
@CX25840_IR_TX_KFIFO_SIZE = common dso_local global i32 0, align 4
@FIFO_RXTX_LVL = common dso_local global i32 0, align 4
@FIFO_TX_DEPTH = common dso_local global i32 0, align 4
@LEVEL_MASK = common dso_local global i32 0, align 4
@i = common dso_local global i32 0, align 4
@j = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*, i64, i64*)* @cx25840_ir_tx_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_ir_tx_write(%struct.v4l2_subdev* %0, i32* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.cx25840_ir_state*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %13 = call %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev* %12)
  store %struct.cx25840_ir_state* %13, %struct.cx25840_ir_state** %10, align 8
  %14 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %10, align 8
  %15 = icmp eq %struct.cx25840_ir_state* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %28

19:                                               ; preds = %4
  %20 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %10, align 8
  %21 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %20, i32 0, i32 2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %11, align 8
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %24 = load i32, i32* @IRQEN_TSE, align 4
  %25 = call i32 @irqenable_tx(%struct.v4l2_subdev* %23, i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.cx25840_ir_state* @to_ir_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @irqenable_tx(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
