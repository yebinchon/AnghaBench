; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_firmware_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_firmware_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@FH_SRVC_CHNL = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE = common dso_local global i32 0, align 4
@FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK = common dso_local global i32 0, align 4
@FH_MEM_TFDIB_REG1_ADDR_BITSHIFT = common dso_local global i32 0, align 4
@FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM = common dso_local global i32 0, align 4
@FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX = common dso_local global i32 0, align 4
@FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to load firmware chunk!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32, i32, i32)* @iwl_pcie_load_firmware_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_load_firmware_chunk(%struct.iwl_trans* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_trans_pcie*, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %13 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %12)
  store %struct.iwl_trans_pcie* %13, %struct.iwl_trans_pcie** %10, align 8
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %17 = load i32, i32* @FH_SRVC_CHNL, align 4
  %18 = call i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32 %17)
  %19 = load i32, i32* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE, align 4
  %20 = call i32 @iwl_write_direct32(%struct.iwl_trans* %16, i32 %18, i32 %19)
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %22 = load i32, i32* @FH_SRVC_CHNL, align 4
  %23 = call i32 @FH_SRVC_CHNL_SRAM_ADDR_REG(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @iwl_write_direct32(%struct.iwl_trans* %21, i32 %23, i32 %24)
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %27 = load i32, i32* @FH_SRVC_CHNL, align 4
  %28 = call i32 @FH_TFDIB_CTRL0_REG(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @iwl_write_direct32(%struct.iwl_trans* %26, i32 %28, i32 %31)
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %34 = load i32, i32* @FH_SRVC_CHNL, align 4
  %35 = call i32 @FH_TFDIB_CTRL1_REG(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @iwl_get_dma_hi_addr(i32 %36)
  %38 = load i32, i32* @FH_MEM_TFDIB_REG1_ADDR_BITSHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @iwl_write_direct32(%struct.iwl_trans* %33, i32 %35, i32 %41)
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %44 = load i32, i32* @FH_SRVC_CHNL, align 4
  %45 = call i32 @FH_TCSR_CHNL_TX_BUF_STS_REG(i32 %44)
  %46 = load i32, i32* @FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* @FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load i32, i32* @FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @iwl_write_direct32(%struct.iwl_trans* %43, i32 %45, i32 %52)
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %55 = load i32, i32* @FH_SRVC_CHNL, align 4
  %56 = call i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32 %55)
  %57 = load i32, i32* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE, align 4
  %58 = load i32, i32* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @iwl_write_direct32(%struct.iwl_trans* %54, i32 %56, i32 %61)
  %63 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %64 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %67 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HZ, align 4
  %70 = mul nsw i32 5, %69
  %71 = call i32 @wait_event_timeout(i32 %65, i32 %68, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %4
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %76 = call i32 @IWL_ERR(%struct.iwl_trans* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i32 @FH_SRVC_CHNL_SRAM_ADDR_REG(i32) #1

declare dso_local i32 @FH_TFDIB_CTRL0_REG(i32) #1

declare dso_local i32 @FH_TFDIB_CTRL1_REG(i32) #1

declare dso_local i32 @iwl_get_dma_hi_addr(i32) #1

declare dso_local i32 @FH_TCSR_CHNL_TX_BUF_STS_REG(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
