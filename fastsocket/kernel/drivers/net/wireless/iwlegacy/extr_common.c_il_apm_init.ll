; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_apm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_apm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"Init card's basic functions\0A\00", align 1
@CSR_GIO_CHICKEN_BITS = common dso_local global i32 0, align 4
@CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER = common dso_local global i64 0, align 8
@CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX = common dso_local global i64 0, align 8
@CSR_DBG_HPET_MEM_REG = common dso_local global i32 0, align 4
@CSR_DBG_HPET_MEM_REG_VAL = common dso_local global i64 0, align 8
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL_ASPM_L1 = common dso_local global i32 0, align 4
@CSR_GIO_REG = common dso_local global i32 0, align 4
@CSR_GIO_REG_VAL_L0S_ENABLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"L1 Enabled; Disabling L0S\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"L1 Disabled; Enabling L0S\0A\00", align 1
@CSR_ANA_PLL_CFG = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_INIT_DONE = common dso_local global i64 0, align 8
@CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to init the card\0A\00", align 1
@APMG_CLK_EN_REG = common dso_local global i32 0, align 4
@APMG_CLK_VAL_DMA_CLK_RQT = common dso_local global i32 0, align 4
@APMG_CLK_VAL_BSM_CLK_RQT = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_REG = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_VAL_L1_ACT_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_apm_init(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @D_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = load i32, i32* @CSR_GIO_CHICKEN_BITS, align 4
  %8 = load i64, i64* @CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER, align 8
  %9 = call i32 @il_set_bit(%struct.il_priv* %6, i32 %7, i64 %8)
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = load i32, i32* @CSR_GIO_CHICKEN_BITS, align 4
  %12 = load i64, i64* @CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX, align 8
  %13 = call i32 @il_set_bit(%struct.il_priv* %10, i32 %11, i64 %12)
  %14 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %15 = load i32, i32* @CSR_DBG_HPET_MEM_REG, align 4
  %16 = load i64, i64* @CSR_DBG_HPET_MEM_REG_VAL, align 8
  %17 = call i32 @il_set_bit(%struct.il_priv* %14, i32 %15, i64 %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %20 = load i64, i64* @CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A, align 8
  %21 = call i32 @il_set_bit(%struct.il_priv* %18, i32 %19, i64 %20)
  %22 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %1
  %29 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PCI_EXP_LNKCTL, align 4
  %33 = call i32 @pcie_capability_read_word(i32 %31, i32 %32, i32* %4)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PCI_EXP_LNKCTL_ASPM_L1, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %40 = load i32, i32* @CSR_GIO_REG, align 4
  %41 = load i64, i64* @CSR_GIO_REG_VAL_L0S_ENABLED, align 8
  %42 = call i32 @il_set_bit(%struct.il_priv* %39, i32 %40, i64 %41)
  %43 = call i32 @D_POWER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %50

44:                                               ; preds = %28
  %45 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %46 = load i32, i32* @CSR_GIO_REG, align 4
  %47 = load i64, i64* @CSR_GIO_REG_VAL_L0S_ENABLED, align 8
  %48 = call i32 @il_clear_bit(%struct.il_priv* %45, i32 %46, i64 %47)
  %49 = call i32 @D_POWER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %60 = load i32, i32* @CSR_ANA_PLL_CFG, align 4
  %61 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %62 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @il_set_bit(%struct.il_priv* %59, i32 %60, i64 %65)
  br label %67

67:                                               ; preds = %58, %51
  %68 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %69 = load i32, i32* @CSR_GP_CNTRL, align 4
  %70 = load i64, i64* @CSR_GP_CNTRL_REG_FLAG_INIT_DONE, align 8
  %71 = call i32 @il_set_bit(%struct.il_priv* %68, i32 %69, i64 %70)
  %72 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %73 = load i32, i32* @CSR_GP_CNTRL, align 4
  %74 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %75 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %76 = call i32 @_il_poll_bit(%struct.il_priv* %72, i32 %73, i32 %74, i32 %75, i32 25000)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = call i32 @D_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %106

81:                                               ; preds = %67
  %82 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %83 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %90 = load i32, i32* @APMG_CLK_EN_REG, align 4
  %91 = load i32, i32* @APMG_CLK_VAL_DMA_CLK_RQT, align 4
  %92 = load i32, i32* @APMG_CLK_VAL_BSM_CLK_RQT, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @il_wr_prph(%struct.il_priv* %89, i32 %90, i32 %93)
  br label %100

95:                                               ; preds = %81
  %96 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %97 = load i32, i32* @APMG_CLK_EN_REG, align 4
  %98 = load i32, i32* @APMG_CLK_VAL_DMA_CLK_RQT, align 4
  %99 = call i32 @il_wr_prph(%struct.il_priv* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %88
  %101 = call i32 @udelay(i32 20)
  %102 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %103 = load i32, i32* @APMG_PCIDEV_STT_REG, align 4
  %104 = load i32, i32* @APMG_PCIDEV_STT_VAL_L1_ACT_DIS, align 4
  %105 = call i32 @il_set_bits_prph(%struct.il_priv* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %79
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il_set_bit(%struct.il_priv*, i32, i64) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @D_POWER(i8*) #1

declare dso_local i32 @il_clear_bit(%struct.il_priv*, i32, i64) #1

declare dso_local i32 @_il_poll_bit(%struct.il_priv*, i32, i32, i32, i32) #1

declare dso_local i32 @il_wr_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @il_set_bits_prph(%struct.il_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
