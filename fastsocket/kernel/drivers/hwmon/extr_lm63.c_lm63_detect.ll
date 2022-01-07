; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_lm63_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_lm63_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM63_REG_MAN_ID = common dso_local global i32 0, align 4
@LM63_REG_CHIP_ID = common dso_local global i32 0, align 4
@LM63_REG_CONFIG1 = common dso_local global i32 0, align 4
@LM63_REG_CONFIG2 = common dso_local global i32 0, align 4
@LM63_REG_ALERT_STATUS = common dso_local global i32 0, align 4
@LM63_REG_ALERT_MASK = common dso_local global i32 0, align 4
@lm63 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unsupported chip (man_id=0x%02X, chip_id=0x%02X).\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lm63\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @lm63_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm63_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
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
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %16, align 8
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %8, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @LM63_REG_MAN_ID, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %33 = load i32, i32* @LM63_REG_CHIP_ID, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %36 = load i32, i32* @LM63_REG_CONFIG1, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = load i32, i32* @LM63_REG_CONFIG2, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = load i32, i32* @LM63_REG_ALERT_STATUS, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = load i32, i32* @LM63_REG_ALERT_MASK, align 4
  %46 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %70

49:                                               ; preds = %28
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 65
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 24
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 248
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, 32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = and i32 %65, 164
  %67 = icmp eq i32 %66, 164
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @lm63, align 4
  store i32 %69, i32* %6, align 4
  br label %78

70:                                               ; preds = %64, %60, %56, %52, %49, %28
  %71 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %72 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %85

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %25
  %80 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %81 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @I2C_NAME_SIZE, align 4
  %84 = call i32 @strlcpy(i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %70, %22
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
