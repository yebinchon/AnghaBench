; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm83.c_lm83_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm83.c_lm83_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lm83 = common dso_local global i32 0, align 4
@LM83_REG_R_STATUS1 = common dso_local global i32 0, align 4
@LM83_REG_R_STATUS2 = common dso_local global i32 0, align 4
@LM83_REG_R_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"LM83 detection failed at 0x%02x.\0A\00", align 1
@LM83_REG_R_MAN_ID = common dso_local global i32 0, align 4
@LM83_REG_R_CHIP_ID = common dso_local global i32 0, align 4
@lm82 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Unsupported chip (man_id=0x%02X, chip_id=0x%02X).\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"lm83\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lm82\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @lm83_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm83_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %112

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @lm83, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @LM83_REG_R_STATUS1, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  %34 = and i32 %33, 168
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = load i32, i32* @LM83_REG_R_STATUS2, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  %40 = and i32 %39, 72
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %44 = load i32, i32* @LM83_REG_R_CONFIG, align 4
  %45 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %43, i32 %44)
  %46 = and i32 %45, 65
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42, %36, %30
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %112

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i32, i32* %6, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = load i32, i32* @LM83_REG_R_MAN_ID, align 4
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %66 = load i32, i32* @LM83_REG_R_CHIP_ID, align 4
  %67 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %65, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %82

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @lm83, align 4
  store i32 %74, i32* %6, align 4
  br label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @lm82, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %75
  br label %81

81:                                               ; preds = %80, %73
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i32, i32* %6, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %87 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @dev_info(i32* %87, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %112

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %58
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @lm83, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %105

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @lm82, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %104

104:                                              ; preds = %103, %99
  br label %105

105:                                              ; preds = %104, %98
  %106 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %107 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* @I2C_NAME_SIZE, align 4
  %111 = call i32 @strlcpy(i32 %108, i8* %109, i32 %110)
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %105, %85, %48, %19
  %113 = load i32, i32* %4, align 4
  ret i32 %113
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
