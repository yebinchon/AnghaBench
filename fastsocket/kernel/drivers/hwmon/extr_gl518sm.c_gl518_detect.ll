; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl518sm.c_gl518_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl518sm.c_gl518_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GL518_REG_CHIP_ID = common dso_local global i32 0, align 4
@GL518_REG_CONF = common dso_local global i32 0, align 4
@GL518_REG_REVISION = common dso_local global i32 0, align 4
@gl518sm_r00 = common dso_local global i32 0, align 4
@gl518sm_r80 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Ignoring 'force' parameter for unknown chip at adapter %d, address 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"gl518sm\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @gl518_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl518_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
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
  %15 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %79

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @GL518_REG_CHIP_ID, align 4
  %28 = call i32 @gl518_read_value(%struct.i2c_client* %26, i32 %27)
  %29 = icmp ne i32 %28, 128
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = load i32, i32* @GL518_REG_CONF, align 4
  %33 = call i32 @gl518_read_value(%struct.i2c_client* %31, i32 %32)
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %25
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %79

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %45 = load i32, i32* @GL518_REG_REVISION, align 4
  %46 = call i32 @gl518_read_value(%struct.i2c_client* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @gl518sm_r00, align 4
  store i32 %50, i32* %6, align 4
  br label %72

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @gl518sm_r80, align 4
  store i32 %55, i32* %6, align 4
  br label %71

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %61 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %60, i32 0, i32 0
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %63 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %62)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %59, %56
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %79

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %49
  br label %73

73:                                               ; preds = %72, %40
  %74 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %75 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @I2C_NAME_SIZE, align 4
  %78 = call i32 @strlcpy(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %68, %36, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @gl518_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
