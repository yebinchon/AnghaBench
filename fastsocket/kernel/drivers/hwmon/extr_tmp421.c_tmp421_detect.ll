; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp421.c_tmp421_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp421.c_tmp421_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"TMP421\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TMP422\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TMP423\00", align 1
@__const.tmp421_detect.names = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], align 16
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TMP421_MANUFACTURER_ID_REG = common dso_local global i32 0, align 4
@TMP421_MANUFACTURER_ID = common dso_local global i32 0, align 4
@TMP421_DEVICE_ID_REG = common dso_local global i32 0, align 4
@tmp421 = common dso_local global i32 0, align 4
@tmp422 = common dso_local global i32 0, align 4
@tmp423 = common dso_local global i32 0, align 4
@tmp421_id = common dso_local global %struct.TYPE_2__* null, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Detected TI %s chip at 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @tmp421_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp421_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca [3 x i8*], align 16
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %8, align 8
  %14 = bitcast [3 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([3 x i8*]* @__const.tmp421_detect.names to i8*), i64 24, i1 false)
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %74

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @TMP421_MANUFACTURER_ID_REG, align 4
  %28 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @TMP421_MANUFACTURER_ID, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %74

35:                                               ; preds = %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %37 = load i32, i32* @TMP421_DEVICE_ID_REG, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %46 [
    i32 130, label %40
    i32 129, label %42
    i32 128, label %44
  ]

40:                                               ; preds = %35
  %41 = load i32, i32* @tmp421, align 4
  store i32 %41, i32* %6, align 4
  br label %49

42:                                               ; preds = %35
  %43 = load i32, i32* @tmp422, align 4
  store i32 %43, i32* %6, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @tmp423, align 4
  store i32 %45, i32* %6, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %74

49:                                               ; preds = %44, %42, %40
  br label %50

50:                                               ; preds = %49, %22
  %51 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %52 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmp421_id, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @I2C_NAME_SIZE, align 4
  %62 = call i32 @strlcpy(i32 %53, i32 %60, i32 %61)
  %63 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %64 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_info(i32* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %69, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %50, %46, %32, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #2

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
