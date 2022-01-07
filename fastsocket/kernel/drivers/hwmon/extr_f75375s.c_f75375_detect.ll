; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f75375s.c_f75375_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_f75375s.c_f75375_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@F75375_REG_VENDOR = common dso_local global i32 0, align 4
@F75375_CHIP_ID = common dso_local global i32 0, align 4
@F75375_REG_VERSION = common dso_local global i32 0, align 4
@f75375 = common dso_local global i32 0, align 4
@f75373 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed,%02X,%02X,%02X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"f75375\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"f75373\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"found %s version: %02X\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @f75375_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f75375_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %3
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = load i32, i32* @F75375_REG_VENDOR, align 4
  %21 = call i32 @f75375_read16(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %23 = load i32, i32* @F75375_CHIP_ID, align 4
  %24 = call i32 @f75375_read16(%struct.i2c_client* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = load i32, i32* @F75375_REG_VERSION, align 4
  %27 = call i32 @f75375_read8(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 774
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 6452
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @f75375, align 4
  store i32 %34, i32* %6, align 4
  br label %53

35:                                               ; preds = %30, %18
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 516
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 6452
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @f75373, align 4
  store i32 %42, i32* %6, align 4
  br label %52

43:                                               ; preds = %38, %35
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %45 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %77

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @f75375, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @f75373, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %64

64:                                               ; preds = %63, %59
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %67 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %66, i32 0, i32 0
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @dev_info(i32* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %68, i32 %69)
  %71 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %72 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @I2C_NAME_SIZE, align 4
  %76 = call i32 @strlcpy(i32 %73, i8* %74, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %65, %43
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @f75375_read16(%struct.i2c_client*, i32) #1

declare dso_local i32 @f75375_read8(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
