; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_adm1031_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_adm1031_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@adm1030 = common dso_local global i32 0, align 4
@adm1031 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"adm1030\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"adm1031\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %struct.i2c_board_info*)* @adm1031_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1031_detect(%struct.i2c_client* %0, i32 %1, %struct.i2c_board_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i2c_board_info* %2, %struct.i2c_board_info** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 61)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 62)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 49
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 48
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %25
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 65
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 48
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @adm1030, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @adm1031, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %22
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @adm1031, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @adm1030, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @adm1031, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %65

65:                                               ; preds = %64, %60
  br label %66

66:                                               ; preds = %65, %59
  %67 = load %struct.i2c_board_info*, %struct.i2c_board_info** %7, align 8
  %68 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* @I2C_NAME_SIZE, align 4
  %72 = call i32 @strlcpy(i32 %69, i8* %70, i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %66, %38, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
