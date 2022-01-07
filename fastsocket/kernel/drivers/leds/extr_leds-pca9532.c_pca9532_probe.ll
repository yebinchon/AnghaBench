; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/leds/extr_leds-pca9532.c_pca9532_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.pca9532_platform_data* }
%struct.pca9532_platform_data = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pca9532_data = type { i32, %struct.i2c_client* }

@EIO = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"setting platform data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pca9532_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9532_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pca9532_data*, align 8
  %7 = alloca %struct.pca9532_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = call %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.pca9532_data* %10, %struct.pca9532_data** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pca9532_platform_data*, %struct.pca9532_platform_data** %13, align 8
  store %struct.pca9532_platform_data* %14, %struct.pca9532_platform_data** %7, align 8
  %15 = load %struct.pca9532_platform_data*, %struct.pca9532_platform_data** %7, align 8
  %16 = icmp ne %struct.pca9532_platform_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %25 = call i32 @i2c_check_functionality(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %64

30:                                               ; preds = %20
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.pca9532_data* @kzalloc(i32 16, i32 %31)
  store %struct.pca9532_data* %32, %struct.pca9532_data** %6, align 8
  %33 = load %struct.pca9532_data*, %struct.pca9532_data** %6, align 8
  %34 = icmp ne %struct.pca9532_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %30
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 @dev_info(%struct.TYPE_2__* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.pca9532_data*, %struct.pca9532_data** %6, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %42, %struct.pca9532_data* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load %struct.pca9532_data*, %struct.pca9532_data** %6, align 8
  %47 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %46, i32 0, i32 1
  store %struct.i2c_client* %45, %struct.i2c_client** %47, align 8
  %48 = load %struct.pca9532_data*, %struct.pca9532_data** %6, align 8
  %49 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.pca9532_data*, %struct.pca9532_data** %6, align 8
  %53 = load %struct.pca9532_platform_data*, %struct.pca9532_platform_data** %7, align 8
  %54 = call i32 @pca9532_configure(%struct.i2c_client* %51, %struct.pca9532_data* %52, %struct.pca9532_platform_data* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %38
  %58 = load %struct.pca9532_data*, %struct.pca9532_data** %6, align 8
  %59 = call i32 @kfree(%struct.pca9532_data* %58)
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.pca9532_data* null)
  br label %62

62:                                               ; preds = %57, %38
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %35, %27, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.pca9532_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pca9532_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pca9532_configure(%struct.i2c_client*, %struct.pca9532_data*, %struct.pca9532_platform_data*) #1

declare dso_local i32 @kfree(%struct.pca9532_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
