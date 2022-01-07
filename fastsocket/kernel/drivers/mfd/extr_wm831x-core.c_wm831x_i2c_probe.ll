; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm831x-core.c_wm831x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm831x = type { i32, i32, %struct.i2c_client*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm831x_i2c_read_device = common dso_local global i32 0, align 4
@wm831x_i2c_write_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm831x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm831x*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wm831x* @kzalloc(i32 24, i32 %7)
  store %struct.wm831x* %8, %struct.wm831x** %6, align 8
  %9 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %10 = icmp eq %struct.wm831x* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = call i32 @kfree(%struct.i2c_client* %12)
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %19 = call i32 @i2c_set_clientdata(%struct.i2c_client* %17, %struct.wm831x* %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %23 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %22, i32 0, i32 3
  store i32* %21, i32** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %26 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %25, i32 0, i32 2
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load i32, i32* @wm831x_i2c_read_device, align 4
  %28 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %29 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @wm831x_i2c_write_device, align 4
  %31 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %32 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.wm831x*, %struct.wm831x** %6, align 8
  %34 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wm831x_device_init(%struct.wm831x* %33, i32 %36, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %16, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.wm831x* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.i2c_client*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm831x*) #1

declare dso_local i32 @wm831x_device_init(%struct.wm831x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
