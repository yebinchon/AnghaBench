; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm80.c_lm80_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm80.c_lm80_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm80_data = type { i32, i8**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm80_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm80_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm80_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm80_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lm80_data* @kzalloc(i32 24, i32 %8)
  store %struct.lm80_data* %9, %struct.lm80_data** %6, align 8
  %10 = load %struct.lm80_data*, %struct.lm80_data** %6, align 8
  %11 = icmp ne %struct.lm80_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %69

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.lm80_data*, %struct.lm80_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.lm80_data* %17)
  %19 = load %struct.lm80_data*, %struct.lm80_data** %6, align 8
  %20 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @lm80_init_client(%struct.i2c_client* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @LM80_REG_FAN_MIN(i32 1)
  %26 = call i8* @lm80_read_value(%struct.i2c_client* %24, i32 %25)
  %27 = load %struct.lm80_data*, %struct.lm80_data** %6, align 8
  %28 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* %26, i8** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @LM80_REG_FAN_MIN(i32 2)
  %33 = call i8* @lm80_read_value(%struct.i2c_client* %31, i32 %32)
  %34 = load %struct.lm80_data*, %struct.lm80_data** %6, align 8
  %35 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  store i8* %33, i8** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @sysfs_create_group(i32* %40, i32* @lm80_group)
  store i32 %41, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %15
  br label %66

44:                                               ; preds = %15
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @hwmon_device_register(%struct.TYPE_2__* %46)
  %48 = load %struct.lm80_data*, %struct.lm80_data** %6, align 8
  %49 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.lm80_data*, %struct.lm80_data** %6, align 8
  %51 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.lm80_data*, %struct.lm80_data** %6, align 8
  %57 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %7, align 4
  br label %61

60:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %71

61:                                               ; preds = %55
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @sysfs_remove_group(i32* %64, i32* @lm80_group)
  br label %66

66:                                               ; preds = %61, %43
  %67 = load %struct.lm80_data*, %struct.lm80_data** %6, align 8
  %68 = call i32 @kfree(%struct.lm80_data* %67)
  br label %69

69:                                               ; preds = %66, %12
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %60
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.lm80_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm80_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm80_init_client(%struct.i2c_client*) #1

declare dso_local i8* @lm80_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM80_REG_FAN_MIN(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.lm80_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
