; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_adm9240_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_adm9240_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adm9240_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm9240_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adm9240_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm9240_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adm9240_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.adm9240_data* @kzalloc(i32 8, i32 %8)
  store %struct.adm9240_data* %9, %struct.adm9240_data** %6, align 8
  %10 = load %struct.adm9240_data*, %struct.adm9240_data** %6, align 8
  %11 = icmp ne %struct.adm9240_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.adm9240_data*, %struct.adm9240_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.adm9240_data* %17)
  %19 = load %struct.adm9240_data*, %struct.adm9240_data** %6, align 8
  %20 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @adm9240_init_client(%struct.i2c_client* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @sysfs_create_group(i32* %26, i32* @adm9240_group)
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %52

30:                                               ; preds = %15
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @hwmon_device_register(%struct.TYPE_2__* %32)
  %34 = load %struct.adm9240_data*, %struct.adm9240_data** %6, align 8
  %35 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.adm9240_data*, %struct.adm9240_data** %6, align 8
  %37 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.adm9240_data*, %struct.adm9240_data** %6, align 8
  %43 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %47

46:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %57

47:                                               ; preds = %41
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @sysfs_remove_group(i32* %50, i32* @adm9240_group)
  br label %52

52:                                               ; preds = %47, %29
  %53 = load %struct.adm9240_data*, %struct.adm9240_data** %6, align 8
  %54 = call i32 @kfree(%struct.adm9240_data* %53)
  br label %55

55:                                               ; preds = %52, %12
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %46
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.adm9240_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adm9240_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adm9240_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.adm9240_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
