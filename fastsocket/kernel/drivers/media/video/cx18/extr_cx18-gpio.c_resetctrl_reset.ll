; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_resetctrl_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-gpio.c_resetctrl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx18 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.cx18_gpio_i2c_slave_reset }
%struct.TYPE_3__ = type { i32 }
%struct.cx18_gpio_i2c_slave_reset = type { i32, i32, i32, i32, i32 }

@TUNER_XC2028 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @resetctrl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resetctrl_reset(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.cx18_gpio_i2c_slave_reset*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.cx18* %8, %struct.cx18** %5, align 8
  %9 = load %struct.cx18*, %struct.cx18** %5, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store %struct.cx18_gpio_i2c_slave_reset* %12, %struct.cx18_gpio_i2c_slave_reset** %6, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %62 [
    i32 130, label %14
    i32 128, label %29
    i32 129, label %41
  ]

14:                                               ; preds = %2
  %15 = load %struct.cx18*, %struct.cx18** %5, align 8
  %16 = load %struct.cx18_gpio_i2c_slave_reset*, %struct.cx18_gpio_i2c_slave_reset** %6, align 8
  %17 = getelementptr inbounds %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_i2c_slave_reset* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cx18_gpio_i2c_slave_reset*, %struct.cx18_gpio_i2c_slave_reset** %6, align 8
  %20 = getelementptr inbounds %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_i2c_slave_reset* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cx18_gpio_i2c_slave_reset*, %struct.cx18_gpio_i2c_slave_reset** %6, align 8
  %23 = getelementptr inbounds %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_i2c_slave_reset* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cx18_gpio_i2c_slave_reset*, %struct.cx18_gpio_i2c_slave_reset** %6, align 8
  %26 = getelementptr inbounds %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_i2c_slave_reset* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpio_reset_seq(%struct.cx18* %15, i32 %18, i32 %21, i32 %24, i32 %27)
  br label %62

29:                                               ; preds = %2
  %30 = load %struct.cx18*, %struct.cx18** %5, align 8
  %31 = load %struct.cx18_gpio_i2c_slave_reset*, %struct.cx18_gpio_i2c_slave_reset** %6, align 8
  %32 = getelementptr inbounds %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_i2c_slave_reset* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cx18_gpio_i2c_slave_reset*, %struct.cx18_gpio_i2c_slave_reset** %6, align 8
  %35 = getelementptr inbounds %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_i2c_slave_reset* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cx18_gpio_i2c_slave_reset*, %struct.cx18_gpio_i2c_slave_reset** %6, align 8
  %38 = getelementptr inbounds %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_i2c_slave_reset* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gpio_reset_seq(%struct.cx18* %30, i32 %33, i32 0, i32 %36, i32 %39)
  br label %62

41:                                               ; preds = %2
  %42 = load %struct.cx18*, %struct.cx18** %5, align 8
  %43 = getelementptr inbounds %struct.cx18, %struct.cx18* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TUNER_XC2028, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %41
  %53 = load %struct.cx18*, %struct.cx18** %5, align 8
  %54 = load %struct.cx18*, %struct.cx18** %5, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  %60 = call i32 @gpio_reset_seq(%struct.cx18* %53, i32 %59, i32 0, i32 1, i32 1)
  br label %61

61:                                               ; preds = %52, %41
  br label %62

62:                                               ; preds = %2, %61, %29, %14
  ret i32 0
}

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @gpio_reset_seq(%struct.cx18*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
