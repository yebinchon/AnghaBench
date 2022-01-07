; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_init_eeprom_params_X540.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_x540.c_ixgbe_init_eeprom_params_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_eeprom_info }
%struct.ixgbe_eeprom_info = type { i64, i32, i32 }

@ixgbe_eeprom_uninitialized = common dso_local global i64 0, align 8
@ixgbe_flash = common dso_local global i64 0, align 8
@IXGBE_EEC = common dso_local global i32 0, align 4
@IXGBE_EEC_SIZE = common dso_local global i32 0, align 4
@IXGBE_EEC_SIZE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_EEPROM_WORD_SIZE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Eeprom params: type = %d, size = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_init_eeprom_params_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_init_eeprom_params_X540(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_eeprom_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  store %struct.ixgbe_eeprom_info* %7, %struct.ixgbe_eeprom_info** %3, align 8
  %8 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ixgbe_eeprom_uninitialized, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %14, i32 0, i32 1
  store i32 10, i32* %15, align 8
  %16 = load i64, i64* @ixgbe_flash, align 8
  %17 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = load i32, i32* @IXGBE_EEC, align 4
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IXGBE_EEC_SIZE, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @IXGBE_EEC_SIZE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IXGBE_EEPROM_WORD_SIZE_SHIFT, align 4
  %29 = add nsw i32 %27, %28
  %30 = shl i32 1, %29
  %31 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %32 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ixgbe_eeprom_info*, %struct.ixgbe_eeprom_info** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_eeprom_info, %struct.ixgbe_eeprom_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hw_dbg(%struct.ixgbe_hw* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
