; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_smbus_cmi*, i32, i32 }
%struct.acpi_smbus_cmi = type { i64, %struct.TYPE_4__, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.acpi_smbus_cmi*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_SMBUS_HC_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_SMBUS_HC_CLASS = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@acpi_smbus_cmi_query_methods = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SMBus CMI adapter %s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@acpi_smbus_cmi_algorithm = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't register adapter!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_smbus_cmi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_smbus_cmi_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_smbus_cmi*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.acpi_smbus_cmi* @kzalloc(i32 72, i32 %5)
  store %struct.acpi_smbus_cmi* %6, %struct.acpi_smbus_cmi** %4, align 8
  %7 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %8 = icmp ne %struct.acpi_smbus_cmi* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %94

12:                                               ; preds = %1
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %19 = call i8* @acpi_device_name(%struct.acpi_device* %18)
  %20 = load i32, i32* @ACPI_SMBUS_HC_DEVICE_NAME, align 4
  %21 = call i32 @strcpy(i8* %19, i32 %20)
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = call i8* @acpi_device_class(%struct.acpi_device* %22)
  %24 = load i32, i32* @ACPI_SMBUS_HC_CLASS, align 4
  %25 = call i32 @strcpy(i8* %23, i32 %24)
  %26 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %27 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 0
  store %struct.acpi_smbus_cmi* %26, %struct.acpi_smbus_cmi** %28, align 8
  %29 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %30 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %36 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @acpi_smbus_cmi_query_methods, align 4
  %40 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %41 = call i32 @acpi_walk_namespace(i32 %35, i32 %38, i32 1, i32 %39, %struct.acpi_smbus_cmi* %40, i32* null)
  %42 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %12
  br label %87

47:                                               ; preds = %12
  %48 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %49 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %53 = call i8* @acpi_device_name(%struct.acpi_device* %52)
  %54 = call i32 @snprintf(i32 %51, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %57 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 8
  %59 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32* @acpi_smbus_cmi_algorithm, i32** %61, align 8
  %62 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %63 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %64 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  store %struct.acpi_smbus_cmi* %62, %struct.acpi_smbus_cmi** %65, align 8
  %66 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %67 = load i32, i32* @I2C_CLASS_SPD, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %70 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %73 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %72, i32 0, i32 1
  %74 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %75 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32* %73, i32** %77, align 8
  %78 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %79 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %78, i32 0, i32 1
  %80 = call i64 @i2c_add_adapter(%struct.TYPE_4__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %47
  %83 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %84 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %83, i32 0, i32 1
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %87

86:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %94

87:                                               ; preds = %82, %46
  %88 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %89 = call i32 @kfree(%struct.acpi_smbus_cmi* %88)
  %90 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %91 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %90, i32 0, i32 0
  store %struct.acpi_smbus_cmi* null, %struct.acpi_smbus_cmi** %91, align 8
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %87, %86, %9
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.acpi_smbus_cmi* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i8* @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, %struct.acpi_smbus_cmi*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @i2c_add_adapter(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.acpi_smbus_cmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
