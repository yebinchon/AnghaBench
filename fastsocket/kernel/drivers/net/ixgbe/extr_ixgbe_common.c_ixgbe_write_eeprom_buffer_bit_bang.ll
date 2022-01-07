; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_write_eeprom_buffer_bit_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IXGBE_EEPROM_WRITE_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_ERR_EEPROM = common dso_local global i64 0, align 8
@IXGBE_EEPROM_WREN_OPCODE_SPI = common dso_local global i32 0, align 4
@IXGBE_EEPROM_OPCODE_BITS = common dso_local global i32 0, align 4
@IXGBE_EEPROM_A8_OPCODE_SPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_write_eeprom_buffer_bit_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_write_eeprom_buffer_bit_bang(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @IXGBE_EEPROM_WRITE_OPCODE_SPI, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = call i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = call i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %25 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %24)
  %26 = load i64, i64* @IXGBE_ERR_EEPROM, align 8
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %122

31:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %116, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %119

36:                                               ; preds = %32
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %37)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %40 = load i32, i32* @IXGBE_EEPROM_WREN_OPCODE_SPI, align 4
  %41 = load i32, i32* @IXGBE_EEPROM_OPCODE_BITS, align 4
  %42 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %39, i32 %40, i32 %41)
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %44 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %43)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %59

50:                                               ; preds = %36
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %51, %52
  %54 = icmp sge i32 %53, 128
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @IXGBE_EEPROM_A8_OPCODE_SPI, align 4
  %57 = load i32, i32* %13, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %55, %50, %36
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @IXGBE_EEPROM_OPCODE_BITS, align 4
  %63 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %60, i32 %61, i32 %62)
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = mul nsw i32 %67, 2
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %64, i32 %68, i32 %72)
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %107, %59
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = ashr i32 %84, 8
  %86 = load i32, i32* %10, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %85, %87
  store i32 %88, i32* %10, align 4
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw* %89, i32 %90, i32 16)
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  br label %112

95:                                               ; preds = %78
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 1
  %101 = and i32 %98, %100
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %102, 1
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %112

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %78, label %112

112:                                              ; preds = %107, %105, %94
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %114 = call i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw* %113)
  %115 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %32

119:                                              ; preds = %32
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %121 = call i32 @ixgbe_release_eeprom(%struct.ixgbe_hw* %120)
  br label %122

122:                                              ; preds = %119, %28
  %123 = load i64, i64* %9, align 8
  ret i64 %123
}

declare dso_local i64 @ixgbe_acquire_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_ready_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_release_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_standby_eeprom(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_shift_out_eeprom_bits(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
