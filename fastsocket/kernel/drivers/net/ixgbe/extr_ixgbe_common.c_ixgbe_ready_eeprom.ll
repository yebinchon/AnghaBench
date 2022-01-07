; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_ready_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_ready_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_EEPROM_MAX_RETRY_SPI = common dso_local global i64 0, align 8
@IXGBE_EEPROM_RDSR_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_EEPROM_OPCODE_BITS = common dso_local global i32 0, align 4
@IXGBE_EEPROM_STATUS_RDY_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SPI EEPROM Status error\0A\00", align 1
@IXGBE_ERR_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_ready_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_ready_eeprom(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @IXGBE_EEPROM_MAX_RETRY_SPI, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = load i32, i32* @IXGBE_EEPROM_RDSR_OPCODE_SPI, align 4
  %13 = load i32, i32* @IXGBE_EEPROM_OPCODE_BITS, align 4
  %14 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %11, i32 %12, i32 %13)
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = call i64 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw* %15, i32 8)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IXGBE_EEPROM_STATUS_RDY_SPI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %30

23:                                               ; preds = %10
  %24 = call i32 @udelay(i32 5)
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %26 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %25)
  br label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = add nsw i64 %28, 5
  store i64 %29, i64* %4, align 8
  br label %6

30:                                               ; preds = %22, %6
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @IXGBE_EEPROM_MAX_RETRY_SPI, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %36 = call i32 @hw_dbg(%struct.ixgbe_hw* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @IXGBE_ERR_EEPROM, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i64 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
