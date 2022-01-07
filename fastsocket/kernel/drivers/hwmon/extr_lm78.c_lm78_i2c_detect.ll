; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm78.c_lm78_i2c_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm78.c_lm78_i2c_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }
%struct.lm78_data = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM78_REG_CONFIG = common dso_local global i32 0, align 4
@LM78_REG_I2C_ADDR = common dso_local global i32 0, align 4
@LM78_REG_CHIPID = common dso_local global i32 0, align 4
@lm78 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Ignoring 'force' parameter for unknown chip at adapter %d, address 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Device at 0x%02x appears to be the same as ISA device\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lm79\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"lm78\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @lm78_i2c_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm78_i2c_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lm78_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.i2c_adapter*, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %13 = call %struct.lm78_data* (...) @lm78_data_if_isa()
  store %struct.lm78_data* %13, %struct.lm78_data** %9, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %11, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %21 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %22 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %133

27:                                               ; preds = %3
  %28 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %29 = icmp ne %struct.lm78_data* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %32 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = load i32, i32* @LM78_REG_CONFIG, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = load i32, i32* @LM78_REG_I2C_ADDR, align 4
  %46 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37
  br label %123

50:                                               ; preds = %43
  %51 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %52 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 79)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 163
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 92
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %50
  br label %123

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i32, i32* %6, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %105

63:                                               ; preds = %60
  %64 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %65 = load i32, i32* @LM78_REG_CHIPID, align 4
  %66 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 64
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %69, %63
  %76 = load i32, i32* @lm78, align 4
  store i32 %76, i32* %6, align 4
  br label %94

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 254
  %80 = icmp eq i32 %79, 192
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 128, i32* %6, align 4
  br label %93

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %87 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %86, i32 0, i32 0
  %88 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %89 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %88)
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @dev_warn(i32* %87, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %82
  br label %123

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %75
  %95 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @lm78_alias_detect(%struct.i2c_client* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %101 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %100, i32 0, i32 0
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @dev_dbg(i32* %101, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %123

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %60
  %106 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %107 = icmp ne %struct.lm78_data* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %110 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* %6, align 4
  switch i32 %113, label %115 [
    i32 128, label %114
  ]

114:                                              ; preds = %112
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %116

115:                                              ; preds = %112
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %116

116:                                              ; preds = %115, %114
  %117 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %118 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* @I2C_NAME_SIZE, align 4
  %122 = call i32 @strlcpy(i32 %119, i8* %120, i32 %121)
  store i32 0, i32* %4, align 4
  br label %133

123:                                              ; preds = %99, %92, %58, %49
  %124 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %125 = icmp ne %struct.lm78_data* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.lm78_data*, %struct.lm78_data** %9, align 8
  %128 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  br label %130

130:                                              ; preds = %126, %123
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %130, %116, %24
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.lm78_data* @lm78_data_if_isa(...) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i64 @lm78_alias_detect(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
