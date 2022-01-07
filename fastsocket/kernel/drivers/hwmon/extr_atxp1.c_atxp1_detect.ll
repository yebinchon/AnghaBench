; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"atxp1: Not supporting VRM %d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"atxp1\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @atxp1_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atxp1_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
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
  br label %77

20:                                               ; preds = %3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %21, i32 62)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %25, i32 63)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 254)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 255)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %28, %24, %20
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %77

39:                                               ; preds = %32
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 16)
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %47, i32 17)
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %46, %39
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %77

54:                                               ; preds = %46
  %55 = call i32 (...) @vid_which_vrm()
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 90
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 91
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %63 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %9, align 4
  %65 = sdiv i32 %64, 10
  %66 = load i32, i32* %9, align 4
  %67 = srem i32 %66, 10
  %68 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %58, %54
  %72 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %73 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I2C_NAME_SIZE, align 4
  %76 = call i32 @strlcpy(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %61, %51, %36, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
