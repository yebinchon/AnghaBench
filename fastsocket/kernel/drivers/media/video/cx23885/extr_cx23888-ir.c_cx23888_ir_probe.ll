; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23888-ir.c_cx23888_ir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i8*, i32 }
%struct.cx23888_ir_state = type { i32, i32, i32, %struct.v4l2_subdev, i64, i32, %struct.cx23885_dev*, i32 }
%struct.v4l2_subdev = type { i32, i32 }
%struct.v4l2_subdev_ir_parameters = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CX23888_IR_RX_KFIFO_SIZE = common dso_local global i32 0, align 4
@V4L2_IDENT_CX23888_IR = common dso_local global i32 0, align 4
@cx23888_ir_controller_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/888-ir\00", align 1
@CX23885_HW_888_IR = common dso_local global i32 0, align 4
@CX23888_IR_IRQEN_REG = common dso_local global i32 0, align 4
@default_rx_params = common dso_local global i32 0, align 4
@ir = common dso_local global i32 0, align 4
@rx_s_parameters = common dso_local global i32 0, align 4
@default_tx_params = common dso_local global i32 0, align 4
@tx_s_parameters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23888_ir_probe(%struct.cx23885_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca %struct.cx23888_ir_state*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_ir_parameters, align 4
  %7 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cx23888_ir_state* @kzalloc(i32 56, i32 %8)
  store %struct.cx23888_ir_state* %9, %struct.cx23888_ir_state** %4, align 8
  %10 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %11 = icmp eq %struct.cx23888_ir_state* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %17 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %16, i32 0, i32 7
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load i32, i32* @CX23888_IR_RX_KFIFO_SIZE, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %22 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %21, i32 0, i32 7
  %23 = call i32 @kfifo_alloc(i32 %19, i32 %20, i32* %22)
  %24 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %25 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %27 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IS_ERR(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %33 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @IS_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %95

36:                                               ; preds = %15
  %37 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %38 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %39 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %38, i32 0, i32 6
  store %struct.cx23885_dev* %37, %struct.cx23885_dev** %39, align 8
  %40 = load i32, i32* @V4L2_IDENT_CX23888_IR, align 4
  %41 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %42 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %44 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %46 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %45, i32 0, i32 3
  store %struct.v4l2_subdev* %46, %struct.v4l2_subdev** %5, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %48 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %47, i32* @cx23888_ir_controller_ops)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %50 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %51 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %49, %struct.cx23888_ir_state* %50)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %56 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @snprintf(i32 %54, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @CX23885_HW_888_IR, align 4
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %63 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %62, i32 0, i32 1
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %65 = call i32 @v4l2_device_register_subdev(i32* %63, %struct.v4l2_subdev* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %36
  %69 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %70 = load i32, i32* @CX23888_IR_IRQEN_REG, align 4
  %71 = call i32 @cx23888_ir_write4(%struct.cx23885_dev* %69, i32 %70, i32 0)
  %72 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %73 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %72, i32 0, i32 2
  %74 = call i32 @mutex_init(i32* %73)
  %75 = call i32 @memcpy(%struct.v4l2_subdev_ir_parameters* %6, i32* @default_rx_params, i32 4)
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %77 = load i32, i32* @ir, align 4
  %78 = load i32, i32* @rx_s_parameters, align 4
  %79 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %76, i32 %77, i32 %78, %struct.v4l2_subdev_ir_parameters* %6)
  %80 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %81 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %80, i32 0, i32 1
  %82 = call i32 @mutex_init(i32* %81)
  %83 = call i32 @memcpy(%struct.v4l2_subdev_ir_parameters* %6, i32* @default_tx_params, i32 4)
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %85 = load i32, i32* @ir, align 4
  %86 = load i32, i32* @tx_s_parameters, align 4
  %87 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %84, i32 %85, i32 %86, %struct.v4l2_subdev_ir_parameters* %6)
  br label %93

88:                                               ; preds = %36
  %89 = load %struct.cx23888_ir_state*, %struct.cx23888_ir_state** %4, align 8
  %90 = getelementptr inbounds %struct.cx23888_ir_state, %struct.cx23888_ir_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @kfifo_free(i32 %91)
  br label %93

93:                                               ; preds = %88, %68
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %31, %12
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.cx23888_ir_state* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfifo_alloc(i32, i32, i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.cx23888_ir_state*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.v4l2_subdev*) #1

declare dso_local i32 @cx23888_ir_write4(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memcpy(%struct.v4l2_subdev_ir_parameters*, i32*, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_subdev_ir_parameters*) #1

declare dso_local i32 @kfifo_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
