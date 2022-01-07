; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_nic_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_nic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.il3945_eeprom = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"HW Revision ID = 0x%X\0A\00", align 1
@PCI_CFG_REV_ID_BIT_RTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"RTP type\0A\00", align 1
@PCI_CFG_REV_ID_BIT_BASIC_SKU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"3945 RADIO-MB type\0A\00", align 1
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR39_HW_IF_CONFIG_REG_BIT_3945_MB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"3945 RADIO-MM type\0A\00", align 1
@CSR39_HW_IF_CONFIG_REG_BIT_3945_MM = common dso_local global i32 0, align 4
@EEPROM_SKU_CAP_OP_MODE_MRC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"SKU OP mode is mrc\0A\00", align 1
@CSR39_HW_IF_CONFIG_REG_BIT_SKU_MRC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"SKU OP mode is basic\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"3945ABG revision is 0x%X\0A\00", align 1
@CSR39_HW_IF_CONFIG_REG_BIT_BOARD_TYPE = common dso_local global i32 0, align 4
@CSR39_HW_IF_CONFIG_REG_BITS_SILICON_TYPE_A = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Card M type A version is 0x%X\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Card M type B version is 0x%X\0A\00", align 1
@CSR39_HW_IF_CONFIG_REG_BITS_SILICON_TYPE_B = common dso_local global i32 0, align 4
@EEPROM_SKU_CAP_SW_RF_KILL_ENABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"SW RF KILL supported in EEPROM.\0A\00", align 1
@EEPROM_SKU_CAP_HW_RF_KILL_ENABLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"HW RF KILL supported in EEPROM.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il3945_nic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_nic_config(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca %struct.il3945_eeprom*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.il3945_eeprom*
  store %struct.il3945_eeprom* %9, %struct.il3945_eeprom** %3, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PCI_CFG_REV_ID_BIT_RTP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %45

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @PCI_CFG_REV_ID_BIT_BASIC_SKU, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %35 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %36 = load i32, i32* @CSR39_HW_IF_CONFIG_REG_BIT_3945_MB, align 4
  %37 = call i32 @il_set_bit(%struct.il_priv* %34, i32 %35, i32 %36)
  br label %44

38:                                               ; preds = %27
  %39 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %41 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %42 = load i32, i32* @CSR39_HW_IF_CONFIG_REG_BIT_3945_MM, align 4
  %43 = call i32 @il_set_bit(%struct.il_priv* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* @EEPROM_SKU_CAP_OP_MODE_MRC, align 4
  %47 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %3, align 8
  %48 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %54 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %55 = load i32, i32* @CSR39_HW_IF_CONFIG_REG_BIT_SKU_MRC, align 4
  %56 = call i32 @il_set_bit(%struct.il_priv* %53, i32 %54, i32 %55)
  br label %59

57:                                               ; preds = %45
  %58 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %51
  %60 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %3, align 8
  %61 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 240
  %64 = icmp eq i32 %63, 208
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %3, align 8
  %67 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %71 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %72 = load i32, i32* @CSR39_HW_IF_CONFIG_REG_BIT_BOARD_TYPE, align 4
  %73 = call i32 @il_set_bit(%struct.il_priv* %70, i32 %71, i32 %72)
  br label %83

74:                                               ; preds = %59
  %75 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %3, align 8
  %76 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %80 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %81 = load i32, i32* @CSR39_HW_IF_CONFIG_REG_BIT_BOARD_TYPE, align 4
  %82 = call i32 @il_clear_bit(%struct.il_priv* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %65
  %84 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %3, align 8
  %85 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp sle i32 %86, 1
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %90 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %91 = load i32, i32* @CSR39_HW_IF_CONFIG_REG_BITS_SILICON_TYPE_A, align 4
  %92 = call i32 @il_set_bit(%struct.il_priv* %89, i32 %90, i32 %91)
  %93 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %3, align 8
  %94 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  br label %106

97:                                               ; preds = %83
  %98 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %3, align 8
  %99 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %100)
  %102 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %103 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %104 = load i32, i32* @CSR39_HW_IF_CONFIG_REG_BITS_SILICON_TYPE_B, align 4
  %105 = call i32 @il_set_bit(%struct.il_priv* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %97, %88
  %107 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 0
  %109 = load i64, i64* %4, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  %111 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %3, align 8
  %112 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @EEPROM_SKU_CAP_SW_RF_KILL_ENABLE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = call i32 @D_RF_KILL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %106
  %120 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %3, align 8
  %121 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @EEPROM_SKU_CAP_HW_RF_KILL_ENABLE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = call i32 @D_RF_KILL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %119
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @il_set_bit(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_clear_bit(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @D_RF_KILL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
