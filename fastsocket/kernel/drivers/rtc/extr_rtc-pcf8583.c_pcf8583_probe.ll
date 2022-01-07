; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.pcf8583 = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcf8583_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@pcf8583_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pcf8583_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8583_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pcf8583*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_I2C, align 4
  %12 = call i32 @i2c_check_functionality(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pcf8583* @kzalloc(i32 4, i32 %18)
  store %struct.pcf8583* %19, %struct.pcf8583** %6, align 8
  %20 = load %struct.pcf8583*, %struct.pcf8583** %6, align 8
  %21 = icmp ne %struct.pcf8583* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %17
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pcf8583_driver, i32 0, i32 0, i32 0), align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* @THIS_MODULE, align 4
  %30 = call i32 @rtc_device_register(i32 %26, i32* %28, i32* @pcf8583_rtc_ops, i32 %29)
  %31 = load %struct.pcf8583*, %struct.pcf8583** %6, align 8
  %32 = getelementptr inbounds %struct.pcf8583, %struct.pcf8583* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pcf8583*, %struct.pcf8583** %6, align 8
  %34 = getelementptr inbounds %struct.pcf8583, %struct.pcf8583* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load %struct.pcf8583*, %struct.pcf8583** %6, align 8
  %40 = getelementptr inbounds %struct.pcf8583, %struct.pcf8583* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %25
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.pcf8583*, %struct.pcf8583** %6, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.i2c_client* %44, %struct.pcf8583* %45)
  store i32 0, i32* %3, align 4
  br label %51

47:                                               ; preds = %38
  %48 = load %struct.pcf8583*, %struct.pcf8583** %6, align 8
  %49 = call i32 @kfree(%struct.pcf8583* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %43, %22, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.pcf8583* @kzalloc(i32, i32) #1

declare dso_local i32 @rtc_device_register(i32, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pcf8583*) #1

declare dso_local i32 @kfree(%struct.pcf8583*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
