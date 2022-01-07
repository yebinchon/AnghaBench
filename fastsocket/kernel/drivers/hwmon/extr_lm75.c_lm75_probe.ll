; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm75.c_lm75_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm75.c_lm75_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm75_data = type { i32, i32, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LM75_REG_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't read config? %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Config %02x\0A\00", align 1
@lm75_group = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%s: sensor '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm75_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm75_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_check_functionality(i32 %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %116

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.lm75_data* @kzalloc(i32 12, i32 %23)
  store %struct.lm75_data* %24, %struct.lm75_data** %6, align 8
  %25 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %26 = icmp ne %struct.lm75_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %116

30:                                               ; preds = %22
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %33 = call i32 @i2c_set_clientdata(%struct.i2c_client* %31, %struct.lm75_data* %32)
  %34 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %35 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %34, i32 0, i32 2
  %36 = call i32 @mutex_init(i32* %35)
  store i32 0, i32* %8, align 4
  store i32 97, i32* %9, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @LM75_REG_CONF, align 4
  %39 = call i32 @lm75_read_value(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_dbg(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %110

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %50 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load i32, i32* @LM75_REG_CONF, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @lm75_write_value(%struct.i2c_client* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %47
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @dev_dbg(%struct.TYPE_4__* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @sysfs_create_group(i32* %73, i32* @lm75_group)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %110

78:                                               ; preds = %66
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = call i32 @hwmon_device_register(%struct.TYPE_4__* %80)
  %82 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %83 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %85 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %91 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %7, align 4
  br label %105

94:                                               ; preds = %78
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %98 = getelementptr inbounds %struct.lm75_data, %struct.lm75_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_name(i32 %99)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_info(%struct.TYPE_4__* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %103)
  store i32 0, i32* %3, align 4
  br label %116

105:                                              ; preds = %89
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @sysfs_remove_group(i32* %108, i32* @lm75_group)
  br label %110

110:                                              ; preds = %105, %77, %42
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = call i32 @i2c_set_clientdata(%struct.i2c_client* %111, %struct.lm75_data* null)
  %113 = load %struct.lm75_data*, %struct.lm75_data** %6, align 8
  %114 = call i32 @kfree(%struct.lm75_data* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %94, %27, %19
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.lm75_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm75_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm75_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @lm75_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.lm75_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
