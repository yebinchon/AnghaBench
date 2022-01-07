; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/chips/extr_ds1682.c_ds1682_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/chips/extr_ds1682.c_ds1682_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"ds1682_eeprom_read(p=%p, off=%lli, c=%zi)\0A\00", align 1
@DS1682_EEPROM_SIZE = common dso_local global i64 0, align 8
@DS1682_REG_EEPROM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @ds1682_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ds1682_eeprom_read(%struct.kobject* %0, %struct.bin_attribute* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.bin_attribute*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %7, align 8
  store %struct.bin_attribute* %1, %struct.bin_attribute** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.kobject*, %struct.kobject** %7, align 8
  %15 = call %struct.i2c_client* @kobj_to_i2c_client(%struct.kobject* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %12, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i8*, i8** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %18, i64 %19, i64 %20)
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @DS1682_EEPROM_SIZE, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %51

26:                                               ; preds = %5
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* @DS1682_EEPROM_SIZE, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* @DS1682_EEPROM_SIZE, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %38 = load i64, i64* @DS1682_REG_EEPROM, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* %11, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %37, i64 %40, i64 %41, i8* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i64, i64* @EIO, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %6, align 8
  br label %51

49:                                               ; preds = %36
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %49, %46, %25
  %52 = load i64, i64* %6, align 8
  ret i64 %52
}

declare dso_local %struct.i2c_client* @kobj_to_i2c_client(%struct.kobject*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i64, i64) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
