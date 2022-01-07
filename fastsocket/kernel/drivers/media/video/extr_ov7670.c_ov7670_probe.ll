; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ov7670_info = type { %struct.v4l2_subdev }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ov7670_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov7670_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.ov7670_info*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ov7670_info* @kzalloc(i32 4, i32 %8)
  store %struct.ov7670_info* %9, %struct.ov7670_info** %7, align 8
  %10 = load %struct.ov7670_info*, %struct.ov7670_info** %7, align 8
  %11 = icmp eq %struct.ov7670_info* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.ov7670_info*, %struct.ov7670_info** %7, align 8
  %17 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %16, i32 0, i32 0
  store %struct.v4l2_subdev* %17, %struct.v4l2_subdev** %6, align 8
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %18, %struct.i2c_client* %19, i32* @ov7670_ops)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.ov7670_info* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
