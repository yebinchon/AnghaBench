; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@FH_TCSR_CHNL_NUM = common dso_local global i32 0, align 4
@FH_TSSR_TX_STATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Failing on timeout while stopping DMA channel %d [0x%08x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Stopping tx queues that aren't allocated...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_tx_stop(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %9 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %10 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %9)
  store %struct.iwl_trans_pcie* %10, %struct.iwl_trans_pcie** %4, align 8
  %11 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %16 = call i32 @iwl_pcie_txq_set_sched(%struct.iwl_trans* %15, i32 0)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %41, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @FH_TCSR_CHNL_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32 %23)
  %25 = call i32 @iwl_write_direct32(%struct.iwl_trans* %22, i32 %24, i32 0)
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %27 = load i32, i32* @FH_TSSR_TX_STATUS_REG, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32 %28)
  %30 = call i32 @iwl_poll_direct_bit(%struct.iwl_trans* %26, i32 %27, i32 %29, i32 1000)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %37 = load i32, i32* @FH_TSSR_TX_STATUS_REG, align 4
  %38 = call i32 @iwl_read_direct32(%struct.iwl_trans* %36, i32 %37)
  %39 = call i32 @IWL_ERR(%struct.iwl_trans* %34, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %33, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %17

44:                                               ; preds = %17
  %45 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %45, i32 0, i32 1
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %50 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %55 = call i32 @IWL_WARN(%struct.iwl_trans* %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %75

56:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %58, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @iwl_pcie_txq_unmap(%struct.iwl_trans* %68, i32 %69)
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %57

74:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_pcie_txq_set_sched(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @FH_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i32 @iwl_poll_direct_bit(%struct.iwl_trans*, i32, i32, i32) #1

declare dso_local i32 @FH_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32, i32) #1

declare dso_local i32 @iwl_read_direct32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_pcie_txq_unmap(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
