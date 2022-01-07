; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.acpi_smbus_cmi* }
%struct.acpi_smbus_cmi = type { i32, i32 }

@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BLOCK_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @acpi_smbus_cmi_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_smbus_cmi_func(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.acpi_smbus_cmi*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 0
  %7 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %6, align 8
  store %struct.acpi_smbus_cmi* %7, %struct.acpi_smbus_cmi** %3, align 8
  %8 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  store i32 %20, i32* %4, align 4
  %21 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %27 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @I2C_FUNC_SMBUS_READ_BLOCK_DATA, align 4
  %32 = or i32 %30, %31
  br label %34

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %25
  %35 = phi i32 [ %32, %25 ], [ 0, %33 ]
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %44 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_WORD_DATA, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BLOCK_DATA, align 4
  %49 = or i32 %47, %48
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %42
  %52 = phi i32 [ %49, %42 ], [ 0, %50 ]
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
