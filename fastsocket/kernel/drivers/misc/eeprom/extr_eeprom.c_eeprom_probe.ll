; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom.c_eeprom_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_eeprom.c_eeprom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__, %struct.i2c_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.eeprom_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_SIZE = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PCG-\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"VGN-\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Vaio EEPROM detected, enabling privacy protection\0A\00", align 1
@VAIO = common dso_local global i32 0, align 4
@eeprom_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @eeprom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.eeprom_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.eeprom_data* @kzalloc(i32 12, i32 %13)
  store %struct.eeprom_data* %14, %struct.eeprom_data** %7, align 8
  %15 = icmp ne %struct.eeprom_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %83

19:                                               ; preds = %2
  %20 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %21 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EEPROM_SIZE, align 4
  %24 = call i32 @memset(i32 %22, i32 255, i32 %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %27 = call i32 @i2c_set_clientdata(%struct.i2c_client* %25, %struct.eeprom_data* %26)
  %28 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %29 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load i32, i32* @UNKNOWN, align 4
  %32 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %33 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 87
  br i1 %37, label %38, label %71

38:                                               ; preds = %19
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %40 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %41 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %44, i32 128)
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 %45, i8* %46, align 1
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %47, i32 129)
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 %48, i8* %49, align 1
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %50, i32 130)
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  store i8 %51, i8* %52, align 1
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 131)
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 %54, i8* %55, align 1
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %57 = call i32 @memcmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %61 = call i32 @memcmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59, %43
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 1
  %66 = call i32 @dev_info(%struct.TYPE_2__* %65, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @VAIO, align 4
  %68 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %69 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %59
  br label %71

71:                                               ; preds = %70, %38, %19
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @sysfs_create_bin_file(i32* %74, i32* @eeprom_attr)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %80

79:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %85

80:                                               ; preds = %78
  %81 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %82 = call i32 @kfree(%struct.eeprom_data* %81)
  br label %83

83:                                               ; preds = %80, %16
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.eeprom_data* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.eeprom_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.eeprom_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
