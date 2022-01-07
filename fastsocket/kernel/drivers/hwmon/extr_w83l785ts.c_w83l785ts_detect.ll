; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l785ts.c_w83l785ts_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l785ts.c_w83l785ts_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83L785TS_REG_CONFIG = common dso_local global i32 0, align 4
@W83L785TS_REG_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"W83L785TS-S detection failed at 0x%02x.\0A\00", align 1
@W83L785TS_REG_MAN_ID1 = common dso_local global i32 0, align 4
@W83L785TS_REG_MAN_ID2 = common dso_local global i32 0, align 4
@W83L785TS_REG_CHIP_ID = common dso_local global i32 0, align 4
@w83l785ts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unsupported chip (man_id=0x%04X, chip_id=0x%02X).\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"w83l785ts\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @w83l785ts_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83l785ts_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %8, align 8
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %87

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = load i32, i32* @W83L785TS_REG_CONFIG, align 4
  %27 = call i32 @w83l785ts_read_value(%struct.i2c_client* %25, i32 %26, i32 0)
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @W83L785TS_REG_TYPE, align 4
  %33 = call i32 @w83l785ts_read_value(%struct.i2c_client* %31, i32 %32, i32 0)
  %34 = and i32 %33, 252
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30, %24
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %38 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %37, i32 0, i32 0
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %87

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = load i32, i32* @W83L785TS_REG_MAN_ID1, align 4
  %52 = call i32 @w83l785ts_read_value(%struct.i2c_client* %50, i32 %51, i32 0)
  %53 = shl i32 %52, 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %55 = load i32, i32* @W83L785TS_REG_MAN_ID2, align 4
  %56 = call i32 @w83l785ts_read_value(%struct.i2c_client* %54, i32 %55, i32 0)
  %57 = add nsw i32 %53, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %59 = load i32, i32* @W83L785TS_REG_CHIP_ID, align 4
  %60 = call i32 @w83l785ts_read_value(%struct.i2c_client* %58, i32 %59, i32 0)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 23715
  br i1 %62, label %63, label %69

63:                                               ; preds = %49
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 112
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @w83l785ts, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %63
  br label %69

69:                                               ; preds = %68, %49
  %70 = load i32, i32* %6, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %74 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %87

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %46
  %82 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %83 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @I2C_NAME_SIZE, align 4
  %86 = call i32 @strlcpy(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %81, %72, %36, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @w83l785ts_read_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
