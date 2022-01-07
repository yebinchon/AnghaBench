; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_adm1025_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_adm1025_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ADM1025_REG_CONFIG = common dso_local global i32 0, align 4
@ADM1025_REG_STATUS1 = common dso_local global i32 0, align 4
@ADM1025_REG_STATUS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ADM1025 detection failed at 0x%02x.\0A\00", align 1
@ADM1025_REG_MAN_ID = common dso_local global i32 0, align 4
@ADM1025_REG_CHIP_ID = common dso_local global i32 0, align 4
@adm1025 = common dso_local global i32 0, align 4
@ne1619 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Unsupported chip (man_id=0x%02X, chip_id=0x%02X).\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"adm1025\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ne1619\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @adm1025_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1025_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %120

23:                                               ; preds = %3
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = load i32, i32* @ADM1025_REG_CONFIG, align 4
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = load i32, i32* @ADM1025_REG_STATUS1, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  %37 = and i32 %36, 192
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = load i32, i32* @ADM1025_REG_STATUS2, align 4
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i32 %41)
  %43 = and i32 %42, 188
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39, %33, %29
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %47 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %46, i32 0, i32 0
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %120

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %55
  %59 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %60 = load i32, i32* @ADM1025_REG_MAN_ID, align 4
  %61 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %63 = load i32, i32* @ADM1025_REG_CHIP_ID, align 4
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, 240
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @adm1025, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %67
  br label %90

74:                                               ; preds = %58
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 161
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 46
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, 240
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @ne1619, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %82, %77
  br label %89

89:                                               ; preds = %88, %74
  br label %90

90:                                               ; preds = %89, %73
  %91 = load i32, i32* %6, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %95 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @dev_info(i32* %95, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %120

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %55
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @adm1025, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %113

107:                                              ; preds = %102
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @ne1619, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %112

112:                                              ; preds = %111, %107
  br label %113

113:                                              ; preds = %112, %106
  %114 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %115 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* @I2C_NAME_SIZE, align 4
  %119 = call i32 @strlcpy(i32 %116, i8* %117, i32 %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %113, %93, %45, %20
  %121 = load i32, i32* %4, align 4
  ret i32 %121
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
