; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_read_eeprom_buffer_bit_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_EEPROM_READ_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_A8_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_EEPROM_OPCODE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_read_eeprom_buffer_bit_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_read_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @IXGBE_EEPROM_READ_OPCODE_SPI, align 4
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = call i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = call i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %24 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %23)
  %25 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %4
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %78, %30
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %36)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp sge i32 %46, 128
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @IXGBE_EEPROM_A8_OPCODE_SPI, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %43, %35
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @IXGBE_EEPROM_OPCODE_BITS, align 4
  %56 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %53, i32 %54, i32 %55)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %58, %59
  %61 = mul nsw i32 %60, 2
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %57, i32 %61, i32 %65)
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %68 = call i32 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw* %67, i32 16)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = ashr i32 %69, 8
  %71 = load i32, i32* %10, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %70, %72
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %52
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %31

81:                                               ; preds = %31
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %83 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %82)
  br label %84

84:                                               ; preds = %81, %27
  %85 = load i64, i64* %9, align 8
  ret i64 %85
}

declare dso_local i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_release_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_shift_in_eeprom_bits(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
