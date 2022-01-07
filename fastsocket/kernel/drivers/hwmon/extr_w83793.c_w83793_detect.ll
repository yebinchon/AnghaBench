; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_w83793_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_w83793_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i16, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83793_REG_BANKSEL = common dso_local global i32 0, align 4
@W83793_REG_VENDORID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"w83793: Detection failed at check vendor id\0A\00", align 1
@W83793_REG_I2C_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"w83793: Detection failed at check i2c addr\0A\00", align 1
@W83793_REG_CHIPID = common dso_local global i32 0, align 4
@w83793 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"w83793: Ignoring 'force' parameter for unknown chip at address 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"w83793\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @w83793_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83793_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca i16, align 2
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %10, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  store i16 %17, i16* %11, align 2
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %19 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %20 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %91

25:                                               ; preds = %3
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @W83793_REG_BANKSEL, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 128
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 92, i32 163
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = load i32, i32* @W83793_REG_VENDORID, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %91

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %52 = load i32, i32* @W83793_REG_I2C_ADDR, align 4
  %53 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  %54 = load i16, i16* %11, align 2
  %55 = zext i16 %54 to i32
  %56 = shl i32 %55, 1
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %91

62:                                               ; preds = %50, %46
  br label %63

63:                                               ; preds = %62, %25
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %68 = load i32, i32* @W83793_REG_CHIPID, align 4
  %69 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %67, i32 %68)
  %70 = icmp eq i32 123, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @w83793, align 4
  store i32 %72, i32* %6, align 4
  br label %84

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %78 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %77, i32 0, i32 0
  %79 = load i16, i16* %11, align 2
  %80 = call i32 @dev_warn(i32* %78, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %79)
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %91

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %87 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @I2C_NAME_SIZE, align 4
  %90 = call i32 @strlcpy(i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %81, %58, %42, %22
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i16 zeroext) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
