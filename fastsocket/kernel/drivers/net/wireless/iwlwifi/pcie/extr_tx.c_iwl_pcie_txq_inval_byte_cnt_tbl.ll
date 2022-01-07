; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_inval_byte_cnt_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_inval_byte_cnt_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.iwl_trans_pcie = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.iwlagn_scd_bc_tbl* }
%struct.iwlagn_scd_bc_tbl = type { i8** }
%struct.iwl_tx_cmd = type { i32 }

@TFD_QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@TFD_QUEUE_SIZE_BC_DUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_txq*)* @iwl_pcie_txq_inval_byte_cnt_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_inval_byte_cnt_tbl(%struct.iwl_trans* %0, %struct.iwl_txq* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_txq*, align 8
  %5 = alloca %struct.iwl_trans_pcie*, align 8
  %6 = alloca %struct.iwlagn_scd_bc_tbl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iwl_tx_cmd*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %4, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %13 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %12)
  store %struct.iwl_trans_pcie* %13, %struct.iwl_trans_pcie** %5, align 8
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %16, align 8
  store %struct.iwlagn_scd_bc_tbl* %17, %struct.iwlagn_scd_bc_tbl** %6, align 8
  %18 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.iwl_txq*, %struct.iwl_txq** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i8* %39 to %struct.iwl_tx_cmd*
  store %struct.iwl_tx_cmd* %40, %struct.iwl_tx_cmd** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %43 = icmp sge i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %2
  %52 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %11, align 8
  %53 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %2
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 12
  %58 = or i32 1, %57
  %59 = call i8* @cpu_to_le16(i32 %58)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %61, i64 %63
  %65 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %60, i8** %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @TFD_QUEUE_SIZE_BC_DUP, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %55
  %74 = load i8*, i8** %10, align 8
  %75 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %75, i64 %77
  %79 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %80, i64 %84
  store i8* %74, i8** %85, align 8
  br label %86

86:                                               ; preds = %73, %55
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
