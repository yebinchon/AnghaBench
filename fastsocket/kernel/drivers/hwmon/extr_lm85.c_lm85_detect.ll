; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm85.c_lm85_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm85.c_lm85_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM85_REG_COMPANY = common dso_local global i32 0, align 4
@LM85_REG_VERSTEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Detecting device at 0x%02x with COMPANY: 0x%02x and VERSTEP: 0x%02x\0A\00", align 1
@LM85_VERSTEP_VMASK = common dso_local global i32 0, align 4
@LM85_VERSTEP_GENERIC = common dso_local global i32 0, align 4
@LM85_VERSTEP_GENERIC2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Autodetection failed: unsupported version\0A\00", align 1
@any_chip = common dso_local global i32 0, align 4
@LM85_COMPANY_NATIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Found Winbond WPCD377I, ignoring\0A\00", align 1
@LM85_COMPANY_ANALOG_DEV = common dso_local global i32 0, align 4
@LM85_COMPANY_SMSC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Autodetection failed: unknown vendor\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"lm85b\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"lm85c\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"adm1027\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"adt7463\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"adt7468\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"emc6d100\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"emc6d102\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"lm85\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @lm85_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm85_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %8, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %20 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %21 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %125

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %108

29:                                               ; preds = %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = load i32, i32* @LM85_REG_COMPANY, align 4
  %32 = call i32 @lm85_read_value(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = load i32, i32* @LM85_REG_VERSTEP, align 4
  %35 = call i32 @lm85_read_value(%struct.i2c_client* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @LM85_VERSTEP_VMASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @LM85_VERSTEP_GENERIC, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %29
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @LM85_VERSTEP_VMASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @LM85_VERSTEP_GENERIC2, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %125

59:                                               ; preds = %47, %29
  %60 = load i32, i32* @any_chip, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @LM85_COMPANY_NATIONAL, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load i32, i32* %12, align 4
  switch i32 %65, label %79 [
    i32 137, label %66
    i32 138, label %67
    i32 136, label %68
    i32 135, label %68
  ]

66:                                               ; preds = %64
  store i32 128, i32* %6, align 4
  br label %79

67:                                               ; preds = %64
  store i32 129, i32* %6, align 4
  br label %79

68:                                               ; preds = %64, %64
  %69 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %70 = call i32 @lm85_is_fake(%struct.i2c_client* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %74 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %125

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %64, %78, %67, %66
  br label %107

80:                                               ; preds = %59
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @LM85_COMPANY_ANALOG_DEV, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  switch i32 %85, label %89 [
    i32 146, label %86
    i32 145, label %87
    i32 144, label %87
    i32 143, label %88
    i32 142, label %88
  ]

86:                                               ; preds = %84
  store i32 134, i32* %6, align 4
  br label %89

87:                                               ; preds = %84, %84
  store i32 133, i32* %6, align 4
  br label %89

88:                                               ; preds = %84, %84
  store i32 132, i32* %6, align 4
  br label %89

89:                                               ; preds = %84, %88, %87, %86
  br label %106

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @LM85_COMPANY_SMSC, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  switch i32 %95, label %98 [
    i32 141, label %96
    i32 140, label %96
    i32 139, label %97
  ]

96:                                               ; preds = %94, %94
  store i32 131, i32* %6, align 4
  br label %98

97:                                               ; preds = %94
  store i32 130, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %97, %96
  br label %105

99:                                               ; preds = %90
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %101 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %100, i32 0, i32 0
  %102 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %125

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106, %79
  br label %108

108:                                              ; preds = %107, %26
  %109 = load i32, i32* %6, align 4
  switch i32 %109, label %117 [
    i32 129, label %110
    i32 128, label %111
    i32 134, label %112
    i32 133, label %113
    i32 132, label %114
    i32 131, label %115
    i32 130, label %116
  ]

110:                                              ; preds = %108
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %118

111:                                              ; preds = %108
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %118

112:                                              ; preds = %108
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %118

113:                                              ; preds = %108
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %118

114:                                              ; preds = %108
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %118

115:                                              ; preds = %108
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %118

116:                                              ; preds = %108
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %118

117:                                              ; preds = %108
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %118

118:                                              ; preds = %117, %116, %115, %114, %113, %112, %111, %110
  %119 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %120 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = load i32, i32* @I2C_NAME_SIZE, align 4
  %124 = call i32 @strlcpy(i32 %121, i8* %122, i32 %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %118, %99, %72, %53, %23
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @lm85_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @lm85_is_fake(%struct.i2c_client*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
