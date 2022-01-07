; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_w83l786ng_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_w83l786ng_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83L786NG_REG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"W83L786NG detection failed at 0x%02x.\0A\00", align 1
@W83L786NG_REG_MAN_ID1 = common dso_local global i32 0, align 4
@W83L786NG_REG_MAN_ID2 = common dso_local global i32 0, align 4
@W83L786NG_REG_CHIP_ID = common dso_local global i32 0, align 4
@w83l786ng = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Unsupported chip (man_id=0x%04X, chip_id=0x%02X).\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"w83l786ng\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @w83l786ng_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83l786ng_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
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
  br label %81

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = load i32, i32* @W83L786NG_REG_CONFIG, align 4
  %27 = call i32 @w83l786ng_read_value(%struct.i2c_client* %25, i32 %26)
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 0
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %81

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = load i32, i32* @W83L786NG_REG_MAN_ID1, align 4
  %46 = call i32 @w83l786ng_read_value(%struct.i2c_client* %44, i32 %45)
  %47 = shl i32 %46, 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = load i32, i32* @W83L786NG_REG_MAN_ID2, align 4
  %50 = call i32 @w83l786ng_read_value(%struct.i2c_client* %48, i32 %49)
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %53 = load i32, i32* @W83L786NG_REG_CHIP_ID, align 4
  %54 = call i32 @w83l786ng_read_value(%struct.i2c_client* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 23715
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 128
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @w83l786ng, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %57
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %68 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @dev_info(i32* %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %81

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %40
  %76 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %77 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @I2C_NAME_SIZE, align 4
  %80 = call i32 @strlcpy(i32 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %75, %66, %30, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
