; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_update_eeprom_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_update_eeprom_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"e1000_update_eeprom_checksum\00", align 1
@EEPROM_CHECKSUM_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"EEPROM Read Error\0A\00", align 1
@E1000_ERR_EEPROM = common dso_local global i32 0, align 4
@EEPROM_SUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"EEPROM Write Error\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_update_eeprom_checksum(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = call i32 @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @EEPROM_CHECKSUM_REG, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %13, i64 %14, i32 1, i64* %6)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %12
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %8

28:                                               ; preds = %8
  %29 = load i64, i64* @EEPROM_SUM, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %4, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i64, i64* @EEPROM_CHECKSUM_REG, align 8
  %34 = call i64 @e1000_write_eeprom(%struct.e1000_hw* %32, i64 %33, i32 1, i64* %4)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @E1000_ERR_EEPROM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %36, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i64, i32, i64*) #1

declare dso_local i64 @e1000_write_eeprom(%struct.e1000_hw*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
