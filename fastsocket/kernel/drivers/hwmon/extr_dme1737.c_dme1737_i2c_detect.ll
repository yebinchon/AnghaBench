; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_i2c_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_dme1737_i2c_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DME1737_REG_COMPANY = common dso_local global i32 0, align 4
@DME1737_REG_VERSTEP = common dso_local global i32 0, align 4
@DME1737_COMPANY_SMSC = common dso_local global i64 0, align 8
@DME1737_VERSTEP_MASK = common dso_local global i64 0, align 8
@DME1737_VERSTEP = common dso_local global i64 0, align 8
@dme1737 = common dso_local global i32 0, align 4
@SCH5027_VERSTEP = common dso_local global i64 0, align 8
@sch5027 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sch5027\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dme1737\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Found a %s chip at 0x%02x (rev 0x%02x).\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SCH5027\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"DME1737\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @dme1737_i2c_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme1737_i2c_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %8, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %9, align 8
  store i64 0, i64* %11, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %86

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @DME1737_REG_COMPANY, align 4
  %31 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %33 = load i32, i32* @DME1737_REG_VERSTEP, align 4
  %34 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @DME1737_COMPANY_SMSC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @DME1737_VERSTEP_MASK, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* @DME1737_VERSTEP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @dme1737, align 4
  store i32 %45, i32* %6, align 4
  br label %60

46:                                               ; preds = %38, %28
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @DME1737_COMPANY_SMSC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @SCH5027_VERSTEP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @sch5027, align 4
  store i32 %55, i32* %6, align 4
  br label %59

56:                                               ; preds = %50, %46
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %86

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %25
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @sch5027, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @dme1737, align 4
  store i32 %67, i32* %6, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %68

68:                                               ; preds = %66, %65
  %69 = load %struct.device*, %struct.device** %9, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @sch5027, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %75 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @dev_info(%struct.device* %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %74, i32 %77, i64 %78)
  %80 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %81 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* @I2C_NAME_SIZE, align 4
  %85 = call i32 @strlcpy(i32 %82, i8* %83, i32 %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %68, %56, %22
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i32, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
