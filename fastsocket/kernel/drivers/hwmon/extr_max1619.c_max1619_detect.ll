; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1619.c_max1619_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1619.c_max1619_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MAX1619_REG_R_CONFIG = common dso_local global i32 0, align 4
@MAX1619_REG_R_CONVRATE = common dso_local global i32 0, align 4
@MAX1619_REG_R_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MAX1619 detection failed at 0x%02x.\0A\00", align 1
@MAX1619_REG_R_MAN_ID = common dso_local global i32 0, align 4
@MAX1619_REG_R_CHIP_ID = common dso_local global i32 0, align 4
@max1619 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unsupported chip (man_id=0x%02X, chip_id=0x%02X).\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"max1619\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @max1619_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1619_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %92

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = load i32, i32* @MAX1619_REG_R_CONFIG, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @MAX1619_REG_R_CONVRATE, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = load i32, i32* @MAX1619_REG_R_STATUS, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 3
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = icmp sgt i32 %41, 7
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 97
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43, %40, %27
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %48, i32 0, i32 0
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %92

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i32, i32* %6, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %62 = load i32, i32* @MAX1619_REG_R_MAN_ID, align 4
  %63 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %65 = load i32, i32* @MAX1619_REG_R_CHIP_ID, align 4
  %66 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 77
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @max1619, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %69, %60
  %75 = load i32, i32* %6, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %79 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %92

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %57
  %87 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %88 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @I2C_NAME_SIZE, align 4
  %91 = call i32 @strlcpy(i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %77, %47, %21
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
