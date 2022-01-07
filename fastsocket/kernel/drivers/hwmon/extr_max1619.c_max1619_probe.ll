; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1619.c_max1619_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1619.c_max1619_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max1619_data = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max1619_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max1619_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1619_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max1619_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.max1619_data* @kzalloc(i32 16, i32 %8)
  store %struct.max1619_data* %9, %struct.max1619_data** %6, align 8
  %10 = load %struct.max1619_data*, %struct.max1619_data** %6, align 8
  %11 = icmp ne %struct.max1619_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.max1619_data*, %struct.max1619_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.max1619_data* %17)
  %19 = load %struct.max1619_data*, %struct.max1619_data** %6, align 8
  %20 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.max1619_data*, %struct.max1619_data** %6, align 8
  %22 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %21, i32 0, i32 1
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @max1619_init_client(%struct.i2c_client* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @sysfs_create_group(i32* %28, i32* @max1619_group)
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %54

32:                                               ; preds = %15
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @hwmon_device_register(%struct.TYPE_2__* %34)
  %36 = load %struct.max1619_data*, %struct.max1619_data** %6, align 8
  %37 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.max1619_data*, %struct.max1619_data** %6, align 8
  %39 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.max1619_data*, %struct.max1619_data** %6, align 8
  %45 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %49

48:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %59

49:                                               ; preds = %43
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @sysfs_remove_group(i32* %52, i32* @max1619_group)
  br label %54

54:                                               ; preds = %49, %31
  %55 = load %struct.max1619_data*, %struct.max1619_data** %6, align 8
  %56 = call i32 @kfree(%struct.max1619_data* %55)
  br label %57

57:                                               ; preds = %54, %12
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %48
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.max1619_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max1619_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @max1619_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.max1619_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
