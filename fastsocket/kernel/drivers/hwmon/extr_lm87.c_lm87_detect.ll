; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_lm87_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_lm87_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@lm87_detect.names = internal global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"lm87\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"adm1024\00", align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lm87 = common dso_local global i32 0, align 4
@LM87_REG_COMPANY_ID = common dso_local global i32 0, align 4
@LM87_REG_REVISION = common dso_local global i32 0, align 4
@adm1024 = common dso_local global i32 0, align 4
@LM87_REG_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"LM87 detection failed at 0x%02x.\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @lm87_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm87_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
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
  br label %86

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @lm87, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %75

29:                                               ; preds = %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = load i32, i32* @LM87_REG_COMPANY_ID, align 4
  %32 = call i32 @lm87_read_value(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* @LM87_REG_REVISION, align 4
  %35 = call i32 @lm87_read_value(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp sle i32 %42, 8
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @lm87, align 4
  store i32 %45, i32* %6, align 4
  br label %56

46:                                               ; preds = %41, %38, %29
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 65
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 240
  %52 = icmp eq i32 %51, 16
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @adm1024, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %49, %46
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %61 = load i32, i32* @LM87_REG_CONFIG, align 4
  %62 = call i32 @lm87_read_value(%struct.i2c_client* %60, i32 %61)
  %63 = and i32 %62, 128
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59, %56
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %67 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %66, i32 0, i32 0
  %68 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %86

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %26
  %76 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %77 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* @lm87_detect.names, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @I2C_NAME_SIZE, align 4
  %85 = call i32 @strlcpy(i32 %78, i8* %83, i32 %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %75, %65, %18
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @lm87_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
