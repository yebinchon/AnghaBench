; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7473.c_adt7473_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7473.c_adt7473_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ADT7473_REG_VENDOR = common dso_local global i32 0, align 4
@ADT7473_VENDOR = common dso_local global i32 0, align 4
@ADT7473_REG_DEVICE = common dso_local global i32 0, align 4
@ADT7473_DEVICE = common dso_local global i32 0, align 4
@ADT7473_REG_REVISION = common dso_local global i32 0, align 4
@ADT7473_REV_68 = common dso_local global i32 0, align 4
@ADT7473_REV_69 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"detection forced\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"adt7473\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @adt7473_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7473_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %8, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @ADT7473_REG_VENDOR, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ADT7473_VENDOR, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %70

35:                                               ; preds = %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = load i32, i32* @ADT7473_REG_DEVICE, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ADT7473_DEVICE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %70

45:                                               ; preds = %35
  %46 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %47 = load i32, i32* @ADT7473_REG_REVISION, align 4
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @ADT7473_REV_68, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ADT7473_REV_69, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %70

59:                                               ; preds = %52, %45
  br label %64

60:                                               ; preds = %22
  %61 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %62 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %61, i32 0, i32 0
  %63 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %59
  %65 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %66 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @I2C_NAME_SIZE, align 4
  %69 = call i32 @strlcpy(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %56, %42, %32, %19
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
