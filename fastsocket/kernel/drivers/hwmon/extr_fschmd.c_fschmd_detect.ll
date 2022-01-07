; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_fschmd_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_fschmd_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FSCHMD_REG_IDENT_0 = common dso_local global i32 0, align 4
@FSCHMD_REG_IDENT_1 = common dso_local global i32 0, align 4
@FSCHMD_REG_IDENT_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PEG\00", align 1
@fscpos = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"HER\00", align 1
@fscher = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"SCY\00", align 1
@fscscy = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"HRC\00", align 1
@fschrc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"HMD\00", align 1
@fschmd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"HDS\00", align 1
@fschds = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"SYL\00", align 1
@fscsyl = common dso_local global i32 0, align 4
@fschmd_id = common dso_local global %struct.TYPE_2__* null, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @fschmd_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fschmd_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca [4 x i8], align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %8, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %101

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %88

23:                                               ; preds = %20
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = load i32, i32* @FSCHMD_REG_IDENT_0, align 4
  %26 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %25)
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 %26, i8* %27, align 1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = load i32, i32* @FSCHMD_REG_IDENT_1, align 4
  %30 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 %30, i8* %31, align 1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %33 = load i32, i32* @FSCHMD_REG_IDENT_2, align 4
  %34 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* @fscpos, align 4
  store i32 %41, i32* %6, align 4
  br label %87

42:                                               ; preds = %23
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @fscher, align 4
  store i32 %47, i32* %6, align 4
  br label %86

48:                                               ; preds = %42
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @fscscy, align 4
  store i32 %53, i32* %6, align 4
  br label %85

54:                                               ; preds = %48
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @fschrc, align 4
  store i32 %59, i32* %6, align 4
  br label %84

60:                                               ; preds = %54
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @fschmd, align 4
  store i32 %65, i32* %6, align 4
  br label %83

66:                                               ; preds = %60
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @fschds, align 4
  store i32 %71, i32* %6, align 4
  br label %82

72:                                               ; preds = %66
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @fscsyl, align 4
  store i32 %77, i32* %6, align 4
  br label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %101

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %52
  br label %86

86:                                               ; preds = %85, %46
  br label %87

87:                                               ; preds = %86, %40
  br label %88

88:                                               ; preds = %87, %20
  %89 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %90 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fschmd_id, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @I2C_NAME_SIZE, align 4
  %100 = call i32 @strlcpy(i32 %91, i32 %98, i32 %99)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %88, %78, %17
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
