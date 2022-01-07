; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_adm9240_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_adm9240_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@adm9240 = common dso_local global i32 0, align 4
@ADM9240_REG_I2C_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"detect fail: address match, 0x%02x\0A\00", align 1
@ADM9240_REG_MAN_ID = common dso_local global i32 0, align 4
@ds1780 = common dso_local global i32 0, align 4
@lm81 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"detect fail: unknown manuf, 0x%02x\0A\00", align 1
@ADM9240_REG_DIE_REV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"found %s revision %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ADM9240\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"DS1780\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LM81\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"adm9240\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ds1780\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"lm81\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @adm9240_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm9240_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
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
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %20 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %21 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %116

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @adm9240, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %31
  %35 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %36 = load i32, i32* @ADM9240_REG_I2C_ADDR, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %116

47:                                               ; preds = %34
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = load i32, i32* @ADM9240_REG_MAN_ID, align 4
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 35
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @adm9240, align 4
  store i32 %54, i32* %6, align 4
  br label %74

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 218
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @ds1780, align 4
  store i32 %59, i32* %6, align 4
  br label %73

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @lm81, align 4
  store i32 %64, i32* %6, align 4
  br label %72

65:                                               ; preds = %60
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %67 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %116

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %76 = load i32, i32* @ADM9240_REG_DIE_REV, align 4
  %77 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %79 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 35
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %88

83:                                               ; preds = %74
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 218
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  br label %88

88:                                               ; preds = %83, %82
  %89 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %82 ], [ %87, %83 ]
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %31
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @adm9240, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %109

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @ds1780, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %108

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @lm81, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %107

107:                                              ; preds = %106, %102
  br label %108

108:                                              ; preds = %107, %101
  br label %109

109:                                              ; preds = %108, %96
  %110 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %111 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %9, align 8
  %114 = load i32, i32* @I2C_NAME_SIZE, align 4
  %115 = call i32 @strlcpy(i32 %112, i8* %113, i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %109, %65, %40, %23
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
