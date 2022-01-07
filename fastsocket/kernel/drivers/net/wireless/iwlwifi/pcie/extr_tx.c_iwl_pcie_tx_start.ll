; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_trans_pcie = type { i64, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SCD_CONTEXT_MEM_LOWER_BOUND = common dso_local global i32 0, align 4
@SCD_SRAM_BASE_ADDR = common dso_local global i32 0, align 4
@SCD_DRAM_BASE_ADDR = common dso_local global i32 0, align 4
@SCD_CHAINEXT_EN = common dso_local global i32 0, align 4
@FH_TCSR_CHNL_NUM = common dso_local global i32 0, align 4
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE = common dso_local global i64 0, align 8
@FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE = common dso_local global i64 0, align 8
@FH_TX_CHICKEN_BITS_REG = common dso_local global i32 0, align 4
@FH_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN = common dso_local global i64 0, align 8
@APMG_PCIDEV_STT_REG = common dso_local global i32 0, align 4
@APMG_PCIDEV_STT_VAL_L1_ACT_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_pcie_tx_start(%struct.iwl_trans* %0, i64 %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %5, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32 %19)
  %21 = load i32, i32* @SCD_CONTEXT_MEM_LOWER_BOUND, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memset(i32 %28, i32 0, i32 4)
  %30 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %35 = load i32, i32* @SCD_SRAM_BASE_ADDR, align 4
  %36 = call i64 @iwl_read_prph(%struct.iwl_trans* %34, i32 %35)
  %37 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br label %47

47:                                               ; preds = %41, %2
  %48 = phi i1 [ false, %2 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @SCD_CONTEXT_MEM_LOWER_BOUND, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @iwl_trans_write_mem(%struct.iwl_trans* %51, i32 %58, i32* null, i32 %59)
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %62 = load i32, i32* @SCD_DRAM_BASE_ADDR, align 4
  %63 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %64 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 10
  %68 = call i32 @iwl_write_prph(%struct.iwl_trans* %61, i32 %62, i32 %67)
  %69 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %70 = load i32, i32* @SCD_CHAINEXT_EN, align 4
  %71 = call i32 @iwl_write_prph(%struct.iwl_trans* %69, i32 %70, i32 0)
  %72 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %73 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %74 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %77 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @iwl_trans_ac_txq_enable(%struct.iwl_trans* %72, i32 %75, i32 %78)
  %80 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %81 = call i32 @IWL_MASK(i32 0, i32 7)
  %82 = call i32 @iwl_pcie_txq_set_sched(%struct.iwl_trans* %80, i32 %81)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %95, %47
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @FH_TCSR_CHNL_NUM, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32 %89)
  %91 = load i64, i64* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE, align 8
  %92 = load i64, i64* @FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE, align 8
  %93 = or i64 %91, %92
  %94 = call i32 @iwl_write_direct32(%struct.iwl_trans* %88, i32 %90, i64 %93)
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %83

98:                                               ; preds = %83
  %99 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %100 = load i32, i32* @FH_TX_CHICKEN_BITS_REG, align 4
  %101 = call i64 @iwl_read_direct32(%struct.iwl_trans* %99, i32 %100)
  store i64 %101, i64* %8, align 8
  %102 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %103 = load i32, i32* @FH_TX_CHICKEN_BITS_REG, align 4
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* @FH_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN, align 8
  %106 = or i64 %104, %105
  %107 = call i32 @iwl_write_direct32(%struct.iwl_trans* %102, i32 %103, i64 %106)
  %108 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %109 = load i32, i32* @APMG_PCIDEV_STT_REG, align 4
  %110 = load i32, i32* @APMG_PCIDEV_STT_VAL_L1_ACT_DIS, align 4
  %111 = call i32 @iwl_clear_bits_prph(%struct.iwl_trans* %108, i32 %109, i32 %110)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @SCD_TRANS_TBL_OFFSET_QUEUE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_trans_write_mem(%struct.iwl_trans*, i32, i32*, i32) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_trans_ac_txq_enable(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_pcie_txq_set_sched(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_MASK(i32, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i64) #1

declare dso_local i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i64 @iwl_read_direct32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_clear_bits_prph(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
