; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ad7414.c_ad7414_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ad7414.c_ad7414_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ad7414_data = type { i32, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"chip found\0A\00", align 1
@AD7414_REG_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"ad7414_probe unable to read config register.\0A\00", align 1
@ad7414_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad7414_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7414_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ad7414_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @i2c_check_functionality(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %85

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ad7414_data* @kzalloc(i32 8, i32 %19)
  store %struct.ad7414_data* %20, %struct.ad7414_data** %6, align 8
  %21 = load %struct.ad7414_data*, %struct.ad7414_data** %6, align 8
  %22 = icmp ne %struct.ad7414_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %85

26:                                               ; preds = %18
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.ad7414_data*, %struct.ad7414_data** %6, align 8
  %29 = call i32 @i2c_set_clientdata(%struct.i2c_client* %27, %struct.ad7414_data* %28)
  %30 = load %struct.ad7414_data*, %struct.ad7414_data** %6, align 8
  %31 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @dev_info(%struct.TYPE_4__* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32, i32* @AD7414_REG_CONF, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_warn(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %52

45:                                               ; preds = %26
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, -129
  store i32 %47, i32* %7, align 4
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* @AD7414_REG_CONF, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %41
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @sysfs_create_group(i32* %55, i32* @ad7414_group)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %82

60:                                               ; preds = %52
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @hwmon_device_register(%struct.TYPE_4__* %62)
  %64 = load %struct.ad7414_data*, %struct.ad7414_data** %6, align 8
  %65 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ad7414_data*, %struct.ad7414_data** %6, align 8
  %67 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.ad7414_data*, %struct.ad7414_data** %6, align 8
  %73 = getelementptr inbounds %struct.ad7414_data, %struct.ad7414_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %8, align 4
  br label %77

76:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %87

77:                                               ; preds = %71
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @sysfs_remove_group(i32* %80, i32* @ad7414_group)
  br label %82

82:                                               ; preds = %77, %59
  %83 = load %struct.ad7414_data*, %struct.ad7414_data** %6, align 8
  %84 = call i32 @kfree(%struct.ad7414_data* %83)
  br label %85

85:                                               ; preds = %82, %23, %17
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %76
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.ad7414_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ad7414_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ad7414_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
