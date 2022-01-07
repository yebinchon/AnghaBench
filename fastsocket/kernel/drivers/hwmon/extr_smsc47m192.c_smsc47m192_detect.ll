; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_smsc47m192_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_smsc47m192_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SMSC47M192_REG_COMPANY_ID = common dso_local global i32 0, align 4
@SMSC47M192_REG_VERSION = common dso_local global i32 0, align 4
@SMSC47M192_REG_VID = common dso_local global i32 0, align 4
@SMSC47M192_REG_VID4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"found SMSC47M192 or compatible, version 2, stepping A%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"SMSC47M192 detection failed at 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"smsc47m192\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @smsc47m192_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc47m192_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
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
  br label %68

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %20
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = load i32, i32* @SMSC47M192_REG_COMPANY_ID, align 4
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %25)
  %27 = icmp eq i32 %26, 85
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load i32, i32* @SMSC47M192_REG_VERSION, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = and i32 %31, 240
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %36 = load i32, i32* @SMSC47M192_REG_VID, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  %38 = and i32 %37, 112
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = load i32, i32* @SMSC47M192_REG_VID4, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  %44 = and i32 %43, 254
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %48 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 15
  %51 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %61

52:                                               ; preds = %40, %34, %28, %23
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 0
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_dbg(i32* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %68

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %20
  %63 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %64 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @I2C_NAME_SIZE, align 4
  %67 = call i32 @strlcpy(i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %52, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
