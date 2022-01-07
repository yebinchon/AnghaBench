; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pci.c_ath5k_pci_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pci.c_ath5k_pci_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i64 }
%struct.ath5k_hw = type { i64 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_PCICFG = common dso_local global i32 0, align 4
@AR5K_PCICFG_EEAE = common dso_local global i32 0, align 4
@AR5K_EEPROM_BASE = common dso_local global i64 0, align 8
@AR5K_EEPROM_CMD = common dso_local global i32 0, align 4
@AR5K_EEPROM_CMD_READ = common dso_local global i32 0, align 4
@AR5K_TUNE_REGISTER_TIMEOUT = common dso_local global i32 0, align 4
@AR5K_EEPROM_STATUS = common dso_local global i64 0, align 8
@AR5K_EEPROM_STAT_RDDONE = common dso_local global i32 0, align 4
@AR5K_EEPROM_STAT_RDERR = common dso_local global i32 0, align 4
@AR5K_EEPROM_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, i32, i64*)* @ath5k_pci_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_pci_eeprom_read(%struct.ath_common* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ath5k_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %12 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ath5k_hw*
  store %struct.ath5k_hw* %14, %struct.ath5k_hw** %8, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AR5K_AR5210, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %22 = load i32, i32* @AR5K_PCICFG, align 4
  %23 = load i32, i32* @AR5K_PCICFG_EEAE, align 4
  %24 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %21, i32 %22, i32 %23)
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %26 = load i64, i64* @AR5K_EEPROM_BASE, align 8
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 4, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %25, i64 %30)
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* @AR5K_EEPROM_BASE, align 8
  %36 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %33, i32 %34, i64 %35)
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %38 = load i32, i32* @AR5K_EEPROM_CMD, align 4
  %39 = load i32, i32* @AR5K_EEPROM_CMD_READ, align 4
  %40 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %20
  %42 = load i32, i32* @AR5K_TUNE_REGISTER_TIMEOUT, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %69, %41
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %48 = load i64, i64* @AR5K_EEPROM_STATUS, align 8
  %49 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %47, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @AR5K_EEPROM_STAT_RDDONE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @AR5K_EEPROM_STAT_RDERR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %73

60:                                               ; preds = %54
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  %62 = load i64, i64* @AR5K_EEPROM_DATA, align 8
  %63 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %61, i64 %62)
  %64 = and i32 %63, 65535
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %7, align 8
  store i64 %65, i64* %66, align 8
  store i32 1, i32* %4, align 4
  br label %73

67:                                               ; preds = %46
  %68 = call i32 @usleep_range(i32 15, i32 20)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %10, align 4
  br label %43

72:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %60, %59
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i64) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
