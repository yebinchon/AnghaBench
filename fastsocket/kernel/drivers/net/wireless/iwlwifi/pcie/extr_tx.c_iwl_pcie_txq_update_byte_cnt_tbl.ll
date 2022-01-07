; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_update_byte_cnt_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_pcie_txq_update_byte_cnt_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.iwlagn_scd_bc_tbl = type { i8** }
%struct.iwl_trans_pcie = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.iwlagn_scd_bc_tbl* }
%struct.iwl_tx_cmd = type { i32, i32 }

@IWL_TX_CRC_SIZE = common dso_local global i32 0, align 4
@IWL_TX_DELIMITER_SIZE = common dso_local global i32 0, align 4
@TFD_QUEUE_SIZE_MAX = common dso_local global i32 0, align 4
@TX_CMD_SEC_MSK = common dso_local global i32 0, align 4
@CCMP_MIC_LEN = common dso_local global i32 0, align 4
@TKIP_ICV_LEN = common dso_local global i32 0, align 4
@WEP_IV_LEN = common dso_local global i32 0, align 4
@WEP_ICV_LEN = common dso_local global i32 0, align 4
@TFD_QUEUE_SIZE_BC_DUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*, %struct.iwl_txq*, i32)* @iwl_pcie_txq_update_byte_cnt_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_txq_update_byte_cnt_tbl(%struct.iwl_trans* %0, %struct.iwl_txq* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwlagn_scd_bc_tbl*, align 8
  %8 = alloca %struct.iwl_trans_pcie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.iwl_tx_cmd*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %17 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %16)
  store %struct.iwl_trans_pcie* %17, %struct.iwl_trans_pcie** %8, align 8
  %18 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IWL_TX_CRC_SIZE, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @IWL_TX_DELIMITER_SIZE, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.iwl_txq*, %struct.iwl_txq** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast i8* %44 to %struct.iwl_tx_cmd*
  store %struct.iwl_tx_cmd* %45, %struct.iwl_tx_cmd** %15, align 8
  %46 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %47 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %48, align 8
  store %struct.iwlagn_scd_bc_tbl* %49, %struct.iwlagn_scd_bc_tbl** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = icmp sgt i32 %50, 4095
  br i1 %51, label %56, label %52

52:                                               ; preds = %3
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %55 = icmp sge i32 %53, %54
  br label %56

56:                                               ; preds = %52, %3
  %57 = phi i1 [ true, %3 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  %60 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %15, align 8
  %61 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %15, align 8
  %64 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @TX_CMD_SEC_MSK, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %83 [
    i32 130, label %69
    i32 129, label %73
    i32 128, label %77
  ]

69:                                               ; preds = %56
  %70 = load i32, i32* @CCMP_MIC_LEN, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %83

73:                                               ; preds = %56
  %74 = load i32, i32* @TKIP_ICV_LEN, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %13, align 4
  br label %83

77:                                               ; preds = %56
  %78 = load i32, i32* @WEP_IV_LEN, align 4
  %79 = load i32, i32* @WEP_ICV_LEN, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %56, %77, %73, %69
  %84 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %8, align 8
  %85 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @DIV_ROUND_UP(i32 %89, i32 4)
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = shl i32 %93, 12
  %95 = or i32 %92, %94
  %96 = call i8* @cpu_to_le16(i32 %95)
  store i8* %96, i8** %14, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %7, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %98, i64 %100
  %102 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  store i8* %97, i8** %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @TFD_QUEUE_SIZE_BC_DUP, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %91
  %111 = load i8*, i8** %14, align 8
  %112 = load %struct.iwlagn_scd_bc_tbl*, %struct.iwlagn_scd_bc_tbl** %7, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %112, i64 %114
  %116 = getelementptr inbounds %struct.iwlagn_scd_bc_tbl, %struct.iwlagn_scd_bc_tbl* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* @TFD_QUEUE_SIZE_MAX, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %117, i64 %121
  store i8* %111, i8** %122, align 8
  br label %123

123:                                              ; preds = %110, %91
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
