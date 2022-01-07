; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_lm75_sensor.c_wf_lm75_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.wf_lm75_sensor = type { %struct.TYPE_4__, %struct.i2c_client*, i32, i64 }
%struct.TYPE_4__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@wf_lm75_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wf_lm75_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_lm75_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wf_lm75_sensor*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.wf_lm75_sensor* @kzalloc(i32 40, i32 %8)
  store %struct.wf_lm75_sensor* %9, %struct.wf_lm75_sensor** %6, align 8
  %10 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %11 = icmp eq %struct.wf_lm75_sensor* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %22 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %25 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %24, i32 0, i32 1
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %31 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %34 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32* @wf_lm75_ops, i32** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %38 = call i32 @i2c_set_clientdata(%struct.i2c_client* %36, %struct.wf_lm75_sensor* %37)
  %39 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %40 = getelementptr inbounds %struct.wf_lm75_sensor, %struct.wf_lm75_sensor* %39, i32 0, i32 0
  %41 = call i32 @wf_register_sensor(%struct.TYPE_4__* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %15
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.i2c_client* %45, %struct.wf_lm75_sensor* null)
  %47 = load %struct.wf_lm75_sensor*, %struct.wf_lm75_sensor** %6, align 8
  %48 = call i32 @kfree(%struct.wf_lm75_sensor* %47)
  br label %49

49:                                               ; preds = %44, %15
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.wf_lm75_sensor* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wf_lm75_sensor*) #1

declare dso_local i32 @wf_register_sensor(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.wf_lm75_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
