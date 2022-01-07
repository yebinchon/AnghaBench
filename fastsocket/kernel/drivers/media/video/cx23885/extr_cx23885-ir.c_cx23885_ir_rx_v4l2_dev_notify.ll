; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-ir.c_cx23885_ir_rx_v4l2_dev_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-ir.c_cx23885_ir_rx_v4l2_dev_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx23885_dev = type { i64, i32, %struct.v4l2_subdev* }

@V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@CX23885_IR_RX_FIFO_SERVICE_REQ = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED = common dso_local global i32 0, align 4
@CX23885_IR_RX_END_OF_RX_DETECTED = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@CX23885_IR_RX_HW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN = common dso_local global i32 0, align 4
@CX23885_IR_RX_SW_FIFO_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_ir_rx_v4l2_dev_notify(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx23885_dev*, align 8
  %6 = alloca i64*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.cx23885_dev* @to_cx23885(i32 %9)
  store %struct.cx23885_dev* %10, %struct.cx23885_dev** %5, align 8
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %12 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %11, i32 0, i32 0
  store i64* %12, i64** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @CX23885_IR_RX_FIFO_SERVICE_REQ, align 4
  %19 = load i64*, i64** %6, align 8
  %20 = call i32 @set_bit(i32 %18, i64* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @CX23885_IR_RX_END_OF_RX_DETECTED, align 4
  %28 = load i64*, i64** %6, align 8
  %29 = call i32 @set_bit(i32 %27, i64* %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @CX23885_IR_RX_HW_FIFO_OVERRUN, align 4
  %37 = load i64*, i64** %6, align 8
  %38 = call i32 @set_bit(i32 %36, i64* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @CX23885_IR_RX_SW_FIFO_OVERRUN, align 4
  %46 = load i64*, i64** %6, align 8
  %47 = call i32 @set_bit(i32 %45, i64* %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %51 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %50, i32 0, i32 2
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %51, align 8
  %53 = icmp eq %struct.v4l2_subdev* %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %56 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %55, i32 0, i32 1
  %57 = call i32 @cx23885_ir_rx_work_handler(i32* %56)
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.cx23885_dev*, %struct.cx23885_dev** %5, align 8
  %60 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %59, i32 0, i32 1
  %61 = call i32 @schedule_work(i32* %60)
  br label %62

62:                                               ; preds = %58, %54
  ret void
}

declare dso_local %struct.cx23885_dev* @to_cx23885(i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @cx23885_ir_rx_work_handler(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
