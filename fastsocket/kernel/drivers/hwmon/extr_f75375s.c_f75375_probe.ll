; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f75375s.c_f75375_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f75375s.c_f75375_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, %struct.f75375s_platform_data* }
%struct.f75375s_platform_data = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.f75375_data = type { i64, i32, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@f75375_group = common dso_local global i32 0, align 4
@f75375 = common dso_local global i64 0, align 8
@sensor_dev_attr_pwm1_mode = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@sensor_dev_attr_pwm2_mode = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @f75375_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f75375_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.f75375_data*, align 8
  %7 = alloca %struct.f75375s_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %11, align 8
  store %struct.f75375s_platform_data* %12, %struct.f75375s_platform_data** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %112

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.f75375_data* @kzalloc(i32 16, i32 %23)
  store %struct.f75375_data* %24, %struct.f75375_data** %6, align 8
  %25 = icmp ne %struct.f75375_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %112

29:                                               ; preds = %22
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %32 = call i32 @i2c_set_clientdata(%struct.i2c_client* %30, %struct.f75375_data* %31)
  %33 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %34 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %40 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i32 @sysfs_create_group(i32* %43, i32* @f75375_group)
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  br label %106

47:                                               ; preds = %29
  %48 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %49 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @f75375, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* @S_IRUGO, align 4
  %58 = load i32, i32* @S_IWUSR, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @sysfs_chmod_file(i32* %56, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sensor_dev_attr_pwm1_mode, i32 0, i32 0, i32 0), i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %101

64:                                               ; preds = %53
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* @S_IRUGO, align 4
  %69 = load i32, i32* @S_IWUSR, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @sysfs_chmod_file(i32* %67, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sensor_dev_attr_pwm2_mode, i32 0, i32 0, i32 0), i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %101

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = call i32 @hwmon_device_register(%struct.TYPE_10__* %78)
  %80 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %81 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %83 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %76
  %88 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %89 = getelementptr inbounds %struct.f75375_data, %struct.f75375_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %8, align 4
  br label %101

92:                                               ; preds = %76
  %93 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %7, align 8
  %94 = icmp ne %struct.f75375s_platform_data* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %98 = load %struct.f75375s_platform_data*, %struct.f75375s_platform_data** %7, align 8
  %99 = call i32 @f75375_init(%struct.i2c_client* %96, %struct.f75375_data* %97, %struct.f75375s_platform_data* %98)
  br label %100

100:                                              ; preds = %95, %92
  store i32 0, i32* %3, align 4
  br label %112

101:                                              ; preds = %87, %74, %63
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = call i32 @sysfs_remove_group(i32* %104, i32* @f75375_group)
  br label %106

106:                                              ; preds = %101, %46
  %107 = load %struct.f75375_data*, %struct.f75375_data** %6, align 8
  %108 = call i32 @kfree(%struct.f75375_data* %107)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = call i32 @i2c_set_clientdata(%struct.i2c_client* %109, %struct.f75375_data* null)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %106, %100, %26, %19
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.f75375_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.f75375_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @sysfs_chmod_file(i32*, i32*, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @f75375_init(%struct.i2c_client*, %struct.f75375_data*, %struct.f75375s_platform_data*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.f75375_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
