; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_reset_temp_history.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_reset_temp_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"temp_reset_history value %ld not supported. Use 1 to reset the history!\0A\00", align 1
@TMP411_TEMP_LOWEST_MSB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reset_temp_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reset_temp_history(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = call i64 @strict_strtol(i8* %11, i32 10, i64* %10)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %5, align 8
  br label %35

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %35

26:                                               ; preds = %17
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @to_i2c_client(%struct.device* %27)
  %29 = load i32*, i32** @TMP411_TEMP_LOWEST_MSB, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @i2c_smbus_write_byte_data(i32 %28, i32 %31, i64 %32)
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %26, %20, %14
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i64) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
