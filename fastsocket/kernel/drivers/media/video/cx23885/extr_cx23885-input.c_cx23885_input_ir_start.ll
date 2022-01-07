; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-input.c_cx23885_input_ir_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-input.c_cx23885_input_ir_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32, i32*, i32 }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@ENODEV = common dso_local global i32 0, align 4
@ir = common dso_local global i32 0, align 4
@rx_g_parameters = common dso_local global i32 0, align 4
@V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = common dso_local global i8* null, align 8
@rx_s_parameters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_dev*)* @cx23885_input_ir_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_input_ir_start(%struct.cx23885_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca %struct.v4l2_subdev_ir_parameters, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  %5 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %6 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %13, i32 0, i32 2
  %15 = call i32 @atomic_set(i32* %14, i32 0)
  %16 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %17 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @ir, align 4
  %20 = load i32, i32* @rx_g_parameters, align 4
  %21 = call i32 @v4l2_subdev_call(i32* %18, i32 %19, i32 %20, %struct.v4l2_subdev_ir_parameters* %4)
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %23 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %49 [
    i32 129, label %25
    i32 130, label %25
    i32 131, label %25
    i32 128, label %35
  ]

25:                                               ; preds = %12, %12, %12
  %26 = load i8*, i8** @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 11
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 4
  store i32 3333333, i32* %32, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 5
  store i32 333333, i32* %33, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 6
  store i32 1, i32* %34, align 8
  br label %49

35:                                               ; preds = %12
  %36 = load i8*, i8** @V4L2_SUBDEV_IR_MODE_PULSE_WIDTH, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 11
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 2
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 7
  store i32 37917, i32* %41, align 4
  %42 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 8
  store i32 33000, i32* %42, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 9
  store i32 43000, i32* %43, align 4
  %44 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 10
  store i32 33, i32* %44, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 4
  store i32 12378022, i32* %45, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 5
  store i32 351648, i32* %46, align 4
  %47 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, %struct.v4l2_subdev_ir_parameters* %4, i32 0, i32 6
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %12, %35, %25
  %50 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %51 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @ir, align 4
  %54 = load i32, i32* @rx_s_parameters, align 4
  %55 = call i32 @v4l2_subdev_call(i32* %52, i32 %53, i32 %54, %struct.v4l2_subdev_ir_parameters* %4)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32*, i32, i32, %struct.v4l2_subdev_ir_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
