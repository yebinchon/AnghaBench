; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_cx18_gpio_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_cx18_gpio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev_ops = type { i32 }
%struct.cx18 = type { %struct.TYPE_2__, %struct.v4l2_subdev, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i8* }
%struct.v4l2_subdev = type { i32, i32 }

@gpiomux_ops = common dso_local global %struct.v4l2_subdev_ops zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"gpio-mux\00", align 1
@resetctrl_ops = common dso_local global %struct.v4l2_subdev_ops zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"gpio-reset-ctrl\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_gpio_register(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_subdev_ops*, align 8
  %8 = alloca i8*, align 8
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %16 [
    i32 129, label %10
    i32 128, label %13
  ]

10:                                               ; preds = %2
  %11 = load %struct.cx18*, %struct.cx18** %4, align 8
  %12 = getelementptr inbounds %struct.cx18, %struct.cx18* %11, i32 0, i32 2
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_subdev_ops* @gpiomux_ops, %struct.v4l2_subdev_ops** %7, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.cx18*, %struct.cx18** %4, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 1
  store %struct.v4l2_subdev* %15, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_subdev_ops* @resetctrl_ops, %struct.v4l2_subdev_ops** %7, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %13, %10
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = load %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_ops** %7, align 8
  %22 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %20, %struct.v4l2_subdev_ops* %21)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %24 = load %struct.cx18*, %struct.cx18** %4, align 8
  %25 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %23, %struct.cx18* %24)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cx18*, %struct.cx18** %4, align 8
  %30 = getelementptr inbounds %struct.cx18, %struct.cx18* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cx18*, %struct.cx18** %4, align 8
  %39 = getelementptr inbounds %struct.cx18, %struct.cx18* %38, i32 0, i32 0
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %41 = call i32 @v4l2_device_register_subdev(%struct.TYPE_2__* %39, %struct.v4l2_subdev* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %19, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, %struct.v4l2_subdev_ops*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.cx18*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.TYPE_2__*, %struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
