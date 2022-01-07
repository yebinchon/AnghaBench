; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_apm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_trans_pcie = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Init card's basic functions\0A\00", align 1
@CSR_GIO_CHICKEN_BITS = common dso_local global i32 0, align 4
@CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER = common dso_local global i64 0, align 8
@CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX = common dso_local global i64 0, align 8
@CSR_DBG_HPET_MEM_REG = common dso_local global i32 0, align 4
@CSR_DBG_HPET_MEM_REG_VAL = common dso_local global i64 0, align 8
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A = common dso_local global i64 0, align 8
@CSR_ANA_PLL_CFG = common dso_local global i32 0, align 4
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_INIT_DONE = common dso_local global i64 0, align 8
@CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to init the card\0A\00", align 1
@APMG_CLK_EN_REG = common dso_local global i32 0, align 4
@APMG_CLK_VAL_DMA_CLK_RQT = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_REG = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_VAL_L1_ACT_DIS = common dso_local global i32 0, align 4
@STATUS_DEVICE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_apm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_apm_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %5 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %6 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %5)
  store %struct.iwl_trans_pcie* %6, %struct.iwl_trans_pcie** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %8 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %10 = load i32, i32* @CSR_GIO_CHICKEN_BITS, align 4
  %11 = load i64, i64* @CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER, align 8
  %12 = call i32 @iwl_set_bit(%struct.iwl_trans* %9, i32 %10, i64 %11)
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %14 = load i32, i32* @CSR_GIO_CHICKEN_BITS, align 4
  %15 = load i64, i64* @CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX, align 8
  %16 = call i32 @iwl_set_bit(%struct.iwl_trans* %13, i32 %14, i64 %15)
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %18 = load i32, i32* @CSR_DBG_HPET_MEM_REG, align 4
  %19 = load i64, i64* @CSR_DBG_HPET_MEM_REG_VAL, align 8
  %20 = call i32 @iwl_set_bit(%struct.iwl_trans* %17, i32 %18, i64 %19)
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %22 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %23 = load i64, i64* @CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A, align 8
  %24 = call i32 @iwl_set_bit(%struct.iwl_trans* %21, i32 %22, i64 %23)
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %26 = call i32 @iwl_pcie_apm_config(%struct.iwl_trans* %25)
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %28 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %37 = load i32, i32* @CSR_ANA_PLL_CFG, align 4
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @iwl_set_bit(%struct.iwl_trans* %36, i32 %37, i64 %44)
  br label %46

46:                                               ; preds = %35, %1
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %48 = load i32, i32* @CSR_GP_CNTRL, align 4
  %49 = load i64, i64* @CSR_GP_CNTRL_REG_FLAG_INIT_DONE, align 8
  %50 = call i32 @iwl_set_bit(%struct.iwl_trans* %47, i32 %48, i64 %49)
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %52 = load i32, i32* @CSR_GP_CNTRL, align 4
  %53 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %54 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, align 4
  %55 = call i32 @iwl_poll_bit(%struct.iwl_trans* %51, i32 %52, i32 %53, i32 %54, i32 25000)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %60 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %75

61:                                               ; preds = %46
  %62 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %63 = load i32, i32* @APMG_CLK_EN_REG, align 4
  %64 = load i32, i32* @APMG_CLK_VAL_DMA_CLK_RQT, align 4
  %65 = call i32 @iwl_write_prph(%struct.iwl_trans* %62, i32 %63, i32 %64)
  %66 = call i32 @udelay(i32 20)
  %67 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %68 = load i32, i32* @APMG_PCIDEV_STT_REG, align 4
  %69 = load i32, i32* @APMG_PCIDEV_STT_VAL_L1_ACT_DIS, align 4
  %70 = call i32 @iwl_set_bits_prph(%struct.iwl_trans* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @STATUS_DEVICE_ENABLED, align 4
  %72 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %73 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %72, i32 0, i32 0
  %74 = call i32 @set_bit(i32 %71, i32* %73)
  br label %75

75:                                               ; preds = %61, %58
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i64) #1

declare dso_local i32 @iwl_pcie_apm_config(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iwl_set_bits_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
