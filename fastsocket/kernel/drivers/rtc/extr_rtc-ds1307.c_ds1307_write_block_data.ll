; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_write_block_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1307.c_ds1307_write_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ds1307_write_block_data (length=%d)\0A\00", align 1
@BLOCK_DATA_MAX_TRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ds1307_write_block_data failed\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i2c_client*, i64, i64, i64*)* @ds1307_write_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ds1307_write_block_data(%struct.i2c_client* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %68, %4
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @BLOCK_DATA_MAX_TRIES, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @EIO, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %75

35:                                               ; preds = %24
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %42, %43
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %41, i64 %44, i64 %48)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp ult i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i64, i64* %14, align 8
  store i64 %53, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %75

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %36

58:                                               ; preds = %36
  %59 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @ds1307_read_block_data_once(%struct.i2c_client* %59, i64 %60, i64 %61, i64* %19)
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp ult i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i64, i64* %14, align 8
  store i64 %66, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %75

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @memcmp(i64* %19, i64* %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %24, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %75

75:                                               ; preds = %73, %65, %52, %29
  %76 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i64) #2

declare dso_local i64 @ds1307_read_block_data_once(%struct.i2c_client*, i64, i64, i64*) #2

declare dso_local i64 @memcmp(i64*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
