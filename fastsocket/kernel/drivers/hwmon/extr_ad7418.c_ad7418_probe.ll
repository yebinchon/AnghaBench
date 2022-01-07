; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ad7418.c_ad7418_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ad7418.c_ad7418_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__, i32, %struct.i2c_adapter* }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ad7418_data = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad7416_attributes = common dso_local global i32 0, align 4
@ad7417_attributes = common dso_local global i32 0, align 4
@ad7418_attributes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s chip found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad7418_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7418_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.ad7418_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %108

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ad7418_data* @kzalloc(i32 20, i32 %22)
  store %struct.ad7418_data* %23, %struct.ad7418_data** %7, align 8
  %24 = icmp ne %struct.ad7418_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %108

28:                                               ; preds = %21
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.ad7418_data* %30)
  %32 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %33 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %32, i32 0, i32 4
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %39 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %41 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %64 [
    i32 130, label %43
    i32 129, label %50
    i32 128, label %57
  ]

43:                                               ; preds = %28
  %44 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %45 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* @ad7416_attributes, align 4
  %47 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %48 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %64

50:                                               ; preds = %28
  %51 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %52 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %51, i32 0, i32 1
  store i32 4, i32* %52, align 4
  %53 = load i32, i32* @ad7417_attributes, align 4
  %54 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %55 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %64

57:                                               ; preds = %28
  %58 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %59 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @ad7418_attributes, align 4
  %61 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %62 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %28, %57, %50, %43
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_info(%struct.TYPE_6__* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = call i32 @ad7418_init_client(%struct.i2c_client* %71)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %77 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %76, i32 0, i32 2
  %78 = call i32 @sysfs_create_group(i32* %75, %struct.TYPE_5__* %77)
  store i32 %78, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %105

81:                                               ; preds = %64
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = call i32 @hwmon_device_register(%struct.TYPE_6__* %83)
  %85 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %86 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %88 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %94 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %8, align 4
  br label %98

97:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %110

98:                                               ; preds = %92
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %103 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %102, i32 0, i32 2
  %104 = call i32 @sysfs_remove_group(i32* %101, %struct.TYPE_5__* %103)
  br label %105

105:                                              ; preds = %98, %80
  %106 = load %struct.ad7418_data*, %struct.ad7418_data** %7, align 8
  %107 = call i32 @kfree(%struct.ad7418_data* %106)
  br label %108

108:                                              ; preds = %105, %25, %18
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %97
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.ad7418_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ad7418_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ad7418_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ad7418_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
