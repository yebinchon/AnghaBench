; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_adm1025_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_adm1025_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adm1025_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm1025_group = common dso_local global i32 0, align 4
@ADM1025_REG_CONFIG = common dso_local global i32 0, align 4
@adm1025_group_in4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adm1025_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1025_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adm1025_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.adm1025_data* @kzalloc(i32 8, i32 %9)
  store %struct.adm1025_data* %10, %struct.adm1025_data** %6, align 8
  %11 = load %struct.adm1025_data*, %struct.adm1025_data** %6, align 8
  %12 = icmp ne %struct.adm1025_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %75

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.adm1025_data*, %struct.adm1025_data** %6, align 8
  %19 = call i32 @i2c_set_clientdata(%struct.i2c_client* %17, %struct.adm1025_data* %18)
  %20 = load %struct.adm1025_data*, %struct.adm1025_data** %6, align 8
  %21 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @adm1025_init_client(%struct.i2c_client* %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @sysfs_create_group(i32* %27, i32* @adm1025_group)
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %72

31:                                               ; preds = %16
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @ADM1025_REG_CONFIG, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @sysfs_create_group(i32* %41, i32* @adm1025_group_in4)
  store i32 %42, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %63

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @hwmon_device_register(%struct.TYPE_2__* %48)
  %50 = load %struct.adm1025_data*, %struct.adm1025_data** %6, align 8
  %51 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.adm1025_data*, %struct.adm1025_data** %6, align 8
  %53 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.adm1025_data*, %struct.adm1025_data** %6, align 8
  %59 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %7, align 4
  br label %63

62:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %77

63:                                               ; preds = %57, %44
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @sysfs_remove_group(i32* %66, i32* @adm1025_group)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @sysfs_remove_group(i32* %70, i32* @adm1025_group_in4)
  br label %72

72:                                               ; preds = %63, %30
  %73 = load %struct.adm1025_data*, %struct.adm1025_data** %6, align 8
  %74 = call i32 @kfree(%struct.adm1025_data* %73)
  br label %75

75:                                               ; preds = %72, %13
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %62
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.adm1025_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adm1025_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adm1025_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.adm1025_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
