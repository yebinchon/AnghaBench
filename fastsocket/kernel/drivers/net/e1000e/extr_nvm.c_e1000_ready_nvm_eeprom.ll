; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000_ready_nvm_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000_ready_nvm_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_nvm_info }
%struct.e1000_nvm_info = type { i64, i32 }

@EECD = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@NVM_MAX_RETRY_SPI = common dso_local global i64 0, align 8
@E1000_EECD_CS = common dso_local global i32 0, align 4
@E1000_EECD_SK = common dso_local global i32 0, align 4
@NVM_RDSR_OPCODE_SPI = common dso_local global i32 0, align 4
@NVM_STATUS_RDY_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SPI NVM Status error\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_ready_nvm_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_ready_nvm_eeprom(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_nvm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_nvm_info* %9, %struct.e1000_nvm_info** %4, align 8
  %10 = load i32, i32* @EECD, align 4
  %11 = call i32 @er32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %63

17:                                               ; preds = %1
  %18 = load i64, i64* @NVM_MAX_RETRY_SPI, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* @E1000_EECD_CS, align 4
  %20 = load i32, i32* @E1000_EECD_SK, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @EECD, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ew32(i32 %25, i32 %26)
  %28 = call i32 (...) @e1e_flush()
  %29 = call i32 @udelay(i32 1)
  br label %30

30:                                               ; preds = %49, %17
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = load i32, i32* @NVM_RDSR_OPCODE_SPI, align 4
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @e1000_shift_out_eec_bits(%struct.e1000_hw* %34, i32 %35, i32 %39)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = call i64 @e1000_shift_in_eec_bits(%struct.e1000_hw* %41, i32 8)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @NVM_STATUS_RDY_SPI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %33
  br label %55

49:                                               ; preds = %33
  %50 = call i32 @udelay(i32 5)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = call i32 @e1000_standby_nvm(%struct.e1000_hw* %51)
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %7, align 8
  br label %30

55:                                               ; preds = %48, %30
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @E1000_ERR_NVM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %1
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_shift_out_eec_bits(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_shift_in_eec_bits(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_standby_nvm(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
