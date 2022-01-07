; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_lm90_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.i2c_client = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.i2c_device_id = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.lm90_data = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm1032 = common dso_local global i64 0, align 8
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i32 0, align 4
@lm90_group = common dso_local global i32 0, align 4
@dev_attr_pec = common dso_local global i32 0, align 4
@max6657 = common dso_local global i64 0, align 8
@max6646 = common dso_local global i64 0, align 8
@sensor_dev_attr_temp2_offset = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm90_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.lm90_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i2c_adapter* @to_i2c_adapter(i32 %12)
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lm90_data* @kzalloc(i32 16, i32 %14)
  store %struct.lm90_data* %15, %struct.lm90_data** %7, align 8
  %16 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %17 = icmp ne %struct.lm90_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %121

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.lm90_data* %23)
  %25 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %26 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %32 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %34 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @adm1032, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %21
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %40 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %41 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @I2C_CLIENT_PEC, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %38
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = call i32 @lm90_init_client(%struct.i2c_client* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @sysfs_create_group(i32* %56, i32* @lm90_group)
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %118

60:                                               ; preds = %51
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @I2C_CLIENT_PEC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 1
  %70 = call i32 @device_create_file(%struct.TYPE_6__* %69, i32* @dev_attr_pec)
  store i32 %70, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %110

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %60
  %75 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %76 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @max6657, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %82 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @max6646, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 1
  %89 = call i32 @device_create_file(%struct.TYPE_6__* %88, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sensor_dev_attr_temp2_offset, i32 0, i32 0))
  store i32 %89, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %110

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %80, %74
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 1
  %96 = call i32 @hwmon_device_register(%struct.TYPE_6__* %95)
  %97 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %98 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %100 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @IS_ERR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %106 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @PTR_ERR(i32 %107)
  store i32 %108, i32* %8, align 4
  br label %110

109:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %123

110:                                              ; preds = %104, %91, %72
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = call i32 @sysfs_remove_group(i32* %113, i32* @lm90_group)
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 1
  %117 = call i32 @device_remove_file(%struct.TYPE_6__* %116, i32* @dev_attr_pec)
  br label %118

118:                                              ; preds = %110, %59
  %119 = load %struct.lm90_data*, %struct.lm90_data** %7, align 8
  %120 = call i32 @kfree(%struct.lm90_data* %119)
  br label %121

121:                                              ; preds = %118, %18
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %109
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(i32) #1

declare dso_local %struct.lm90_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm90_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @lm90_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @kfree(%struct.lm90_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
