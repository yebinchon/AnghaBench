; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SCD_TXFACT = common dso_local global i32 0, align 4
@FH_KW_MEM_ADDR_REG = common dso_local global i32 0, align 4
@TFD_CMD_SLOTS = common dso_local global i32 0, align 4
@TFD_TX_CMD_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Tx %d queue init failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_pcie_tx_init(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %10)
  store %struct.iwl_trans_pcie* %11, %struct.iwl_trans_pcie** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %18 = call i32 @iwl_pcie_tx_alloc(%struct.iwl_trans* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %86

22:                                               ; preds = %16
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %24, i32 0, i32 2
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %29 = load i32, i32* @SCD_TXFACT, align 4
  %30 = call i32 @iwl_write_prph(%struct.iwl_trans* %28, i32 %29, i32 0)
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %32 = load i32, i32* @FH_KW_MEM_ADDR_REG, align 4
  %33 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 4
  %38 = call i32 @iwl_write_direct32(%struct.iwl_trans* %31, i32 %32, i32 %37)
  %39 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %39, i32 0, i32 2
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %82, %23
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %44, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %56 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @TFD_CMD_SLOTS, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @TFD_TX_CMD_SLOTS, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %7, align 4
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %66 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %67 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @iwl_pcie_txq_init(%struct.iwl_trans* %65, i32* %71, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %63
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @IWL_ERR(%struct.iwl_trans* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %86

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %43

85:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %94

86:                                               ; preds = %77, %21
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %91 = call i32 @iwl_pcie_tx_free(%struct.iwl_trans* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %85
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_pcie_tx_alloc(%struct.iwl_trans*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iwl_pcie_txq_init(%struct.iwl_trans*, i32*, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i32) #1

declare dso_local i32 @iwl_pcie_tx_free(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
