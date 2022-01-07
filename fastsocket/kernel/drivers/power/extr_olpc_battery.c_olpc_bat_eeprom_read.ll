; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_olpc_battery.c_olpc_bat_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_olpc_battery.c_olpc_bat_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }

@EEPROM_SIZE = common dso_local global i64 0, align 8
@EEPROM_START = common dso_local global i64 0, align 8
@EC_BAT_EEPROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"olpc-battery: EC_BAT_EEPROM cmd @ 0x%x failed - %d!\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @olpc_bat_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @olpc_bat_eeprom_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i64, i64* @EEPROM_SIZE, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %64

21:                                               ; preds = %6
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* @EEPROM_SIZE, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i64, i64* @EEPROM_SIZE, align 8
  %29 = load i64, i64* %12, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %27, %21
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %59, %31
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %13, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = load i64, i64* @EEPROM_START, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  store i64 %43, i64* %14, align 8
  %44 = load i32, i32* @EC_BAT_EEPROM, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = call i32 @olpc_ec_cmd(i32 %44, i64* %14, i32 1, i8* %48, i32 1)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %37
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %54)
  %56 = load i64, i64* @EIO, align 8
  %57 = sub i64 0, %56
  store i64 %57, i64* %7, align 8
  br label %64

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  br label %32

62:                                               ; preds = %32
  %63 = load i64, i64* %13, align 8
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %62, %52, %20
  %65 = load i64, i64* %7, align 8
  ret i64 %65
}

declare dso_local i32 @olpc_ec_cmd(i32, i64*, i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
