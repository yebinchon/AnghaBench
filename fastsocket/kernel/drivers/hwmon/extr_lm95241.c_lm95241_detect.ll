; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm95241.c_lm95241_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm95241.c_lm95241_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM95241_REG_R_MAN_ID = common dso_local global i32 0, align 4
@MANUFACTURER_ID = common dso_local global i64 0, align 8
@LM95241_REG_R_CHIP_ID = common dso_local global i32 0, align 4
@DEFAULT_REVISION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"LM95241 detection failed at 0x%02x.\0A\00", align 1
@lm95241 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Unsupported chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"lm95241\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @lm95241_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95241_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %86

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = load i32, i32* @LM95241_REG_R_MAN_ID, align 4
  %30 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  %31 = load i64, i64* @MANUFACTURER_ID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = load i32, i32* @LM95241_REG_R_CHIP_ID, align 4
  %36 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  %37 = load i64, i64* @DEFAULT_REVISION, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33, %27
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %41 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %86

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %52 = load i32, i32* @LM95241_REG_R_MAN_ID, align 4
  %53 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  %54 = load i64, i64* @MANUFACTURER_ID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %58 = load i32, i32* @LM95241_REG_R_CHIP_ID, align 4
  %59 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %57, i32 %58)
  %60 = load i64, i64* @DEFAULT_REVISION, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i32, i32* @lm95241, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %67, i32 0, i32 0
  %69 = call i32 @dev_info(i32* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %86

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %56, %50
  br label %74

74:                                               ; preds = %73, %47
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @lm95241, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %81 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* @I2C_NAME_SIZE, align 4
  %85 = call i32 @strlcpy(i32 %82, i8* %83, i32 %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %79, %66, %39, %21
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
