; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_tx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_trans_pcie_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_trans_pcie = type { i32, %struct.TYPE_8__, %struct.iwl_txq* }
%struct.TYPE_8__ = type { i32 }
%struct.iwl_txq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64 }

@FH_KW_MEM_ADDR_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_trans_pcie_tx_reset(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_txq*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %7 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %6)
  store %struct.iwl_trans_pcie* %7, %struct.iwl_trans_pcie** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %11 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %9, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %8
  %19 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %19, i32 0, i32 2
  %21 = load %struct.iwl_txq*, %struct.iwl_txq** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %21, i64 %23
  store %struct.iwl_txq* %24, %struct.iwl_txq** %5, align 8
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @FH_MEM_CBBC_QUEUE(i32 %26)
  %28 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 8
  %33 = call i32 @iwl_write_direct32(%struct.iwl_trans* %25, i32 %27, i32 %32)
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @iwl_pcie_txq_unmap(%struct.iwl_trans* %34, i32 %35)
  %37 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %41 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %18
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %8

46:                                               ; preds = %8
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %48 = load i32, i32* @FH_KW_MEM_ADDR_REG, align 4
  %49 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %50 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 4
  %54 = call i32 @iwl_write_direct32(%struct.iwl_trans* %47, i32 %48, i32 %53)
  %55 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %56 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @iwl_pcie_tx_start(%struct.iwl_trans* %55, i32 %58)
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_write_direct32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @FH_MEM_CBBC_QUEUE(i32) #1

declare dso_local i32 @iwl_pcie_txq_unmap(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_pcie_tx_start(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
