; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_max6875.c_max6875_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_max6875.c_max6875_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.max6875_data = type { i32* }

@USER_EEPROM_SIZE = common dso_local global i64 0, align 8
@SLICE_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @max6875_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max6875_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.i2c_client*, align 8
  %15 = alloca %struct.max6875_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.kobject*, %struct.kobject** %9, align 8
  %19 = call %struct.i2c_client* @kobj_to_i2c_client(%struct.kobject* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %14, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %21 = call %struct.max6875_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.max6875_data* %21, %struct.max6875_data** %15, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @USER_EEPROM_SIZE, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %69

26:                                               ; preds = %6
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* @USER_EEPROM_SIZE, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* @USER_EEPROM_SIZE, align 8
  %34 = load i64, i64* %12, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = add i64 %37, %38
  %40 = sub i64 %39, 1
  %41 = load i64, i64* @SLICE_BITS, align 8
  %42 = lshr i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %17, align 4
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @SLICE_BITS, align 8
  %46 = lshr i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %16, align 4
  br label %48

48:                                               ; preds = %56, %36
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @max6875_update_slice(%struct.i2c_client* %53, i32 %54)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  br label %48

59:                                               ; preds = %48
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.max6875_data*, %struct.max6875_data** %15, align 8
  %62 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @memcpy(i8* %60, i32* %65, i64 %66)
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %59, %25
  %70 = load i64, i64* %7, align 8
  ret i64 %70
}

declare dso_local %struct.i2c_client* @kobj_to_i2c_client(%struct.kobject*) #1

declare dso_local %struct.max6875_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @max6875_update_slice(%struct.i2c_client*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
