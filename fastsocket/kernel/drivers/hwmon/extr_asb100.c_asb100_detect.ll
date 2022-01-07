; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_asb100_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_asb100_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"asb100.o: detect failed, smbus byte data not supported!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ASB100_REG_BANK = common dso_local global i32 0, align 4
@ASB100_REG_CHIPMAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"asb100.o: detect failed, bad chip id 0x%02x!\0A\00", align 1
@ASB100_REG_WCHIPID = common dso_local global i32 0, align 4
@asb100 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"ignoring 'force' parameter for unknown chip at adapter %d, address 0x%02x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"asb100\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @asb100_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asb100_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
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
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %18 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %104

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = load i32, i32* @ASB100_REG_BANK, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @ASB100_REG_CHIPMAN, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 7
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 148
  br i1 %43, label %51, label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 128
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 6
  br i1 %50, label %51, label %56

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %104

56:                                               ; preds = %48, %44, %27
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %59 = load i32, i32* @ASB100_REG_BANK, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %61 = load i32, i32* @ASB100_REG_BANK, align 4
  %62 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %60, i32 %61)
  %63 = and i32 %62, 120
  %64 = or i32 %63, 128
  %65 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %58, i32 %59, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %57
  %69 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %70 = load i32, i32* @ASB100_REG_WCHIPID, align 4
  %71 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %73 = load i32, i32* @ASB100_REG_CHIPMAN, align 4
  %74 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 49
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 6
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @asb100, align 4
  store i32 %81, i32* %6, align 4
  br label %97

82:                                               ; preds = %77, %68
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %87 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %86, i32 0, i32 0
  %88 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %89 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %88)
  %90 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_warn(i32* %87, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %85, %82
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %104

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %57
  %99 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %100 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @I2C_NAME_SIZE, align 4
  %103 = call i32 @strlcpy(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %98, %94, %51, %20
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
