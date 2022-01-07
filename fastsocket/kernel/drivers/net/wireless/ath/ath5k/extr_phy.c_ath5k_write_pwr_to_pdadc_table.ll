; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_write_pwr_to_pdadc_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_write_pwr_to_pdadc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i64**, i64* }

@AR5K_PHY_TPC_RG1 = common dso_local global i32 0, align 4
@AR5K_PHY_TPC_RG1_PDGAIN_1 = common dso_local global i32 0, align 4
@AR5K_PHY_TPC_RG1_PDGAIN_2 = common dso_local global i32 0, align 4
@AR5K_PHY_TPC_RG1_PDGAIN_3 = common dso_local global i32 0, align 4
@AR5K_PHY_TPC_RG1_NUM_PD_GAIN = common dso_local global i32 0, align 4
@AR5K_EEPROM_POWER_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, i64)* @ath5k_write_pwr_to_pdadc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_write_pwr_to_pdadc_table(%struct.ath5k_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath5k_eeprom_info*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %14, %struct.ath5k_eeprom_info** %5, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %6, align 8
  %19 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %20 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %19, i32 0, i32 0
  %21 = load i64**, i64*** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i64*, i64** %21, i64 %22
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %7, align 8
  %25 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %5, align 8
  %26 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %32 = load i32, i32* @AR5K_PHY_TPC_RG1, align 4
  %33 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @AR5K_PHY_TPC_RG1_PDGAIN_1, align 4
  %35 = load i32, i32* @AR5K_PHY_TPC_RG1_PDGAIN_2, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @AR5K_PHY_TPC_RG1_PDGAIN_3, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @AR5K_PHY_TPC_RG1_NUM_PD_GAIN, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* @AR5K_PHY_TPC_RG1_NUM_PD_GAIN, align 4
  %46 = call i32 @AR5K_REG_SM(i64 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i64, i64* %8, align 8
  switch i64 %49, label %74 [
    i64 3, label %50
    i64 2, label %58
    i64 1, label %66
  ]

50:                                               ; preds = %2
  %51 = load i64*, i64** %7, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @AR5K_PHY_TPC_RG1_PDGAIN_3, align 4
  %55 = call i32 @AR5K_REG_SM(i64 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %2, %50
  %59 = load i64*, i64** %7, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @AR5K_PHY_TPC_RG1_PDGAIN_2, align 4
  %63 = call i32 @AR5K_REG_SM(i64 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %2, %58
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @AR5K_PHY_TPC_RG1_PDGAIN_1, align 4
  %71 = call i32 @AR5K_REG_SM(i64 %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %2, %66
  %75 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @AR5K_PHY_TPC_RG1, align 4
  %78 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %75, i32 %76, i32 %77)
  store i64 0, i64* %10, align 8
  br label %79

79:                                               ; preds = %96, %74
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* @AR5K_EEPROM_POWER_TABLE_SIZE, align 4
  %82 = sdiv i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* %10, align 8
  %88 = mul i64 4, %87
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = call i32 @get_unaligned_le32(i64* %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @AR5K_PHY_PDADC_TXPOWER(i64 %93)
  %95 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %91, i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %85
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %79

99:                                               ; preds = %79
  ret void
}

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_REG_SM(i64, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i64*) #1

declare dso_local i32 @AR5K_PHY_PDADC_TXPOWER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
