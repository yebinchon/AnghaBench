; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_adt7475_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_adt7475_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i64, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@REG_VENDID = common dso_local global i32 0, align 4
@REG_DEVID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Couldn't detect a adt7475 part at 0x%02x\0A\00", align 1
@adt7475_id = common dso_local global %struct.TYPE_2__* null, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @adt7475_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7475_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %8, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %51

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, i32* @REG_VENDID, align 4
  %24 = call i32 @adt7475_read(i32 %23)
  %25 = icmp ne i32 %24, 65
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @REG_DEVID, align 4
  %28 = call i32 @adt7475_read(i32 %27)
  %29 = icmp ne i32 %28, 117
  br i1 %29, label %30, label %40

30:                                               ; preds = %26, %22
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 0
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %19
  %42 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %43 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adt7475_id, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @I2C_NAME_SIZE, align 4
  %50 = call i32 @strlcpy(i32 %44, i32 %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %41, %30, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
