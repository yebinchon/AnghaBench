; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_shift_out_ee_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_shift_out_ee_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i32 }

@EECD = common dso_local global i32 0, align 4
@e1000_eeprom_microwire = common dso_local global i64 0, align 8
@E1000_EECD_DO = common dso_local global i32 0, align 4
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32, i32)* @e1000_shift_out_ee_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_shift_out_ee_bits(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_eeprom_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  store %struct.e1000_eeprom_info* %11, %struct.e1000_eeprom_info** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  %14 = shl i32 1, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @EECD, align 4
  %16 = call i32 @er32(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %7, align 8
  %18 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_eeprom_microwire, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @E1000_EECD_DO, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %7, align 8
  %29 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @e1000_eeprom_spi, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @E1000_EECD_DO, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %67, %38
  %40 = load i32, i32* @E1000_EECD_DI, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* @E1000_EECD_DI, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %39
  %53 = load i32, i32* @EECD, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ew32(i32 %53, i32 %54)
  %56 = call i32 (...) @E1000_WRITE_FLUSH()
  %57 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %7, align 8
  %58 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @udelay(i32 %59)
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %62 = call i32 @e1000_raise_ee_clk(%struct.e1000_hw* %61, i32* %8)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %64 = call i32 @e1000_lower_ee_clk(%struct.e1000_hw* %63, i32* %8)
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %52
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %39, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @E1000_EECD_DI, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @EECD, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ew32(i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_raise_ee_clk(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @e1000_lower_ee_clk(%struct.e1000_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
