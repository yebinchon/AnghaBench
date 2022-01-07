; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp421.c_tmp421_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp421.c_tmp421_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tmp421_data = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tmp421_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tmp421_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp421_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tmp421_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tmp421_data* @kzalloc(i32 16, i32 %8)
  store %struct.tmp421_data* %9, %struct.tmp421_data** %6, align 8
  %10 = load %struct.tmp421_data*, %struct.tmp421_data** %6, align 8
  %11 = icmp ne %struct.tmp421_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.tmp421_data*, %struct.tmp421_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.tmp421_data* %17)
  %19 = load %struct.tmp421_data*, %struct.tmp421_data** %6, align 8
  %20 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tmp421_data*, %struct.tmp421_data** %6, align 8
  %26 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call i32 @tmp421_init_client(%struct.i2c_client* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %64

32:                                               ; preds = %15
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @sysfs_create_group(i32* %35, i32* @tmp421_group)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %64

40:                                               ; preds = %32
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32* @hwmon_device_register(%struct.TYPE_2__* %42)
  %44 = load %struct.tmp421_data*, %struct.tmp421_data** %6, align 8
  %45 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  %46 = load %struct.tmp421_data*, %struct.tmp421_data** %6, align 8
  %47 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @IS_ERR(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.tmp421_data*, %struct.tmp421_data** %6, align 8
  %53 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @PTR_ERR(i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.tmp421_data*, %struct.tmp421_data** %6, align 8
  %57 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %59

58:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %70

59:                                               ; preds = %51
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @sysfs_remove_group(i32* %62, i32* @tmp421_group)
  br label %64

64:                                               ; preds = %59, %39, %31
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = call i32 @i2c_set_clientdata(%struct.i2c_client* %65, %struct.tmp421_data* null)
  %67 = load %struct.tmp421_data*, %struct.tmp421_data** %6, align 8
  %68 = call i32 @kfree(%struct.tmp421_data* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %58, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.tmp421_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tmp421_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tmp421_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32* @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.tmp421_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
