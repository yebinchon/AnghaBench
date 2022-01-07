; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_bq27x00_battery.c_bq27200_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_bq27x00_battery.c_bq27200_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq27x00_device_info = type { %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i8*, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32*, i32, %struct.bq27x00_device_info*)* @bq27200_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27200_read(i8 zeroext %0, i32* %1, i32 %2, %struct.bq27x00_device_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bq27x00_device_info*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [1 x %struct.i2c_msg], align 16
  %12 = alloca [2 x i8], align 1
  %13 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bq27x00_device_info* %3, %struct.bq27x00_device_info** %9, align 8
  %14 = load %struct.bq27x00_device_info*, %struct.bq27x00_device_info** %9, align 8
  %15 = getelementptr inbounds %struct.bq27x00_device_info, %struct.bq27x00_device_info* %14, i32 0, i32 0
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %82

24:                                               ; preds = %4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 2
  store i64 0, i64* %31, align 16
  %32 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  store i32 1, i32* %33, align 16
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %35 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i8, i8* %6, align 1
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %37, i8* %38, align 1
  %39 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %43 = call i32 @i2c_transfer(i32 %41, %struct.i2c_msg* %42, i32 1)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %24
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 0
  store i32 2, i32* %51, align 16
  br label %55

52:                                               ; preds = %46
  %53 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 0
  store i32 1, i32* %54, align 16
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, i64* @I2C_M_RD, align 8
  %57 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 16
  %59 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %63 = call i32 @i2c_transfer(i32 %61, %struct.i2c_msg* %62, i32 1)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %71 = call i32 @get_unaligned_be16(i8* %70)
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %78

73:                                               ; preds = %66
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %69
  store i32 0, i32* %5, align 4
  br label %82

79:                                               ; preds = %55
  br label %80

80:                                               ; preds = %79, %24
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %78, %21
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
