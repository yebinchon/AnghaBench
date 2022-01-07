; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_cx25840_ir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { %struct.cx25840_ir_state*, i32 }
%struct.cx25840_ir_state = type { i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_ir_parameters = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CX25840_IR_RX_KFIFO_SIZE = common dso_local global i32 0, align 4
@CX25840_IR_IRQEN_REG = common dso_local global i32 0, align 4
@IRQEN_MSK = common dso_local global i32 0, align 4
@default_rx_params = common dso_local global i32 0, align 4
@ir = common dso_local global i32 0, align 4
@rx_s_parameters = common dso_local global i32 0, align 4
@default_tx_params = common dso_local global i32 0, align 4
@tx_s_parameters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_ir_probe(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.cx25840_state*, align 8
  %5 = alloca %struct.cx25840_ir_state*, align 8
  %6 = alloca %struct.v4l2_subdev_ir_parameters, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.cx25840_state* %8, %struct.cx25840_state** %4, align 8
  %9 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %10 = call i64 @is_cx23885(%struct.cx25840_state* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %14 = call i64 @is_cx23887(%struct.cx25840_state* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %92

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.cx25840_ir_state* @kzalloc(i32 20, i32 %18)
  store %struct.cx25840_ir_state* %19, %struct.cx25840_ir_state** %5, align 8
  %20 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %21 = icmp eq %struct.cx25840_ir_state* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %92

25:                                               ; preds = %17
  %26 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %27 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %26, i32 0, i32 4
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load i32, i32* @CX25840_IR_RX_KFIFO_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %32 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %31, i32 0, i32 4
  %33 = call i32 @kfifo_alloc(i32 %29, i32 %30, i32* %32)
  %34 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %35 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %37 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %25
  %42 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %43 = call i32 @kfree(%struct.cx25840_ir_state* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %92

46:                                               ; preds = %25
  %47 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %48 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %51 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %53 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %54 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %53, i32 0, i32 0
  store %struct.cx25840_ir_state* %52, %struct.cx25840_ir_state** %54, align 8
  %55 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %56 = call i64 @is_cx23885(%struct.cx25840_state* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %46
  %59 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %60 = call i64 @is_cx23887(%struct.cx25840_state* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %46
  %63 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %64 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CX25840_IR_IRQEN_REG, align 4
  %67 = load i32, i32* @IRQEN_MSK, align 4
  %68 = call i32 @cx25840_write4(i32 %65, i32 %66, i32 %67)
  br label %75

69:                                               ; preds = %58
  %70 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %71 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CX25840_IR_IRQEN_REG, align 4
  %74 = call i32 @cx25840_write4(i32 %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %77 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %76, i32 0, i32 1
  %78 = call i32 @mutex_init(i32* %77)
  %79 = call i32 @memcpy(%struct.v4l2_subdev_ir_parameters* %6, i32* @default_rx_params, i32 4)
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %81 = load i32, i32* @ir, align 4
  %82 = load i32, i32* @rx_s_parameters, align 4
  %83 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %80, i32 %81, i32 %82, %struct.v4l2_subdev_ir_parameters* %6)
  %84 = load %struct.cx25840_ir_state*, %struct.cx25840_ir_state** %5, align 8
  %85 = getelementptr inbounds %struct.cx25840_ir_state, %struct.cx25840_ir_state* %84, i32 0, i32 0
  %86 = call i32 @mutex_init(i32* %85)
  %87 = call i32 @memcpy(%struct.v4l2_subdev_ir_parameters* %6, i32* @default_tx_params, i32 4)
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %89 = load i32, i32* @ir, align 4
  %90 = load i32, i32* @tx_s_parameters, align 4
  %91 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %88, i32 %89, i32 %90, %struct.v4l2_subdev_ir_parameters* %6)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %75, %41, %22, %16
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx23885(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx23887(%struct.cx25840_state*) #1

declare dso_local %struct.cx25840_ir_state* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfifo_alloc(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.cx25840_ir_state*) #1

declare dso_local i32 @cx25840_write4(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memcpy(%struct.v4l2_subdev_ir_parameters*, i32*, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_subdev_ir_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
