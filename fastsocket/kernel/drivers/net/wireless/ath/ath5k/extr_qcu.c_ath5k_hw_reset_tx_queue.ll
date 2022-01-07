; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_reset_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_reset_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath5k_txq_info*, %struct.TYPE_4__ }
%struct.ath5k_txq_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_TX_QUEUE_INACTIVE = common dso_local global i32 0, align 4
@AR5K_DCU_LCL_IFS_CW_MIN = common dso_local global i32 0, align 4
@AR5K_DCU_LCL_IFS_CW_MAX = common dso_local global i32 0, align 4
@AR5K_DCU_LCL_IFS_AIFS = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_FRAG_WAIT = common dso_local global i32 0, align 4
@AR5K_SREV_AR5211 = common dso_local global i64 0, align 8
@AR5K_DCU_MISC_SEQNUM_CTL = common dso_local global i32 0, align 4
@AR5K_QCU_CBRCFG_INTVAL = common dso_local global i32 0, align 4
@AR5K_QCU_CBRCFG_ORN_THRES = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_FRSHED_CBR = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_CBR_THRES_ENABLE = common dso_local global i32 0, align 4
@AR5K_QCU_RDYTIMECFG_INTVAL = common dso_local global i32 0, align 4
@AR5K_QCU_RDYTIMECFG_ENABLE = common dso_local global i32 0, align 4
@AR5K_DCU_CHAN_TIME_DUR = common dso_local global i32 0, align 4
@AR5K_DCU_CHAN_TIME_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_RDY_VEOL_POLICY = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_BACKOFF_DISABLE = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_POST_FR_BKOFF_DIS = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_BACKOFF_FRAG = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_FRSHED_DBA_GT = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_CBREXP_BCN_DIS = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_BCN_ENABLE = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_ARBLOCK_CTL_S = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_ARBLOCK_IGNORE = common dso_local global i32 0, align 4
@AR5K_DCU_MISC_BCN_ENABLE = common dso_local global i32 0, align 4
@AR5K_QCU_MISC_CBREXP_DIS = common dso_local global i32 0, align 4
@AR5K_TUNE_SW_BEACON_RESP = common dso_local global i32 0, align 4
@AR5K_TUNE_DMA_BEACON_RESP = common dso_local global i32 0, align 4
@AR5K_TUNE_ADDITIONAL_SWBA_BACKOFF = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXOKINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXERRINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXURNINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXDESCINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXEOLINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_CBRORNINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_CBRURNINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_QTRIGINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXNOFRMINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_SIMR0_QCU_TXOK = common dso_local global i32 0, align 4
@AR5K_SIMR0_QCU_TXDESC = common dso_local global i32 0, align 4
@AR5K_SIMR0 = common dso_local global i32 0, align 4
@AR5K_SIMR1_QCU_TXERR = common dso_local global i32 0, align 4
@AR5K_SIMR1_QCU_TXEOL = common dso_local global i32 0, align 4
@AR5K_SIMR1 = common dso_local global i32 0, align 4
@AR5K_SIMR2 = common dso_local global i32 0, align 4
@AR5K_SIMR2_QCU_TXURN = common dso_local global i32 0, align 4
@AR5K_SIMR3_QCBRORN = common dso_local global i32 0, align 4
@AR5K_SIMR3_QCBRURN = common dso_local global i32 0, align 4
@AR5K_SIMR3 = common dso_local global i32 0, align 4
@AR5K_SIMR4_QTRIG = common dso_local global i32 0, align 4
@AR5K_SIMR4 = common dso_local global i32 0, align 4
@AR5K_TXNOFRM_QCU = common dso_local global i32 0, align 4
@AR5K_TXNOFRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_reset_tx_queue(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_txq_info*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 12
  %9 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %9, i64 %11
  store %struct.ath5k_txq_info* %12, %struct.ath5k_txq_info** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 13
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @AR5K_ASSERT_ENTRY(i32 %13, i32 %18)
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %20, i32 0, i32 12
  %22 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %22, i64 %24
  store %struct.ath5k_txq_info* %25, %struct.ath5k_txq_info** %6, align 8
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AR5K_AR5210, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %33 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AR5K_TX_QUEUE_INACTIVE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %2
  store i32 0, i32* %3, align 4
  br label %527

38:                                               ; preds = %31
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %40 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %41 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AR5K_DCU_LCL_IFS_CW_MIN, align 4
  %44 = call i32 @AR5K_REG_SM(i32 %42, i32 %43)
  %45 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %46 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AR5K_DCU_LCL_IFS_CW_MAX, align 4
  %49 = call i32 @AR5K_REG_SM(i32 %47, i32 %48)
  %50 = or i32 %44, %49
  %51 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %52 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AR5K_DCU_LCL_IFS_AIFS, align 4
  %55 = call i32 @AR5K_REG_SM(i32 %53, i32 %54)
  %56 = or i32 %50, %55
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @AR5K_QUEUE_DFS_LOCAL_IFS(i32 %57)
  %59 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %39, i32 %56, i32 %58)
  %60 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw* %60, i32 %61)
  %63 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %64)
  %66 = load i32, i32* @AR5K_DCU_MISC_FRAG_WAIT, align 4
  %67 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %63, i32 %65, i32 %66)
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %69 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %38
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %75)
  %77 = load i32, i32* @AR5K_DCU_MISC_SEQNUM_CTL, align 4
  %78 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %38
  %80 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %81 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %79
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %86 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %87 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AR5K_QCU_CBRCFG_INTVAL, align 4
  %90 = call i32 @AR5K_REG_SM(i32 %88, i32 %89)
  %91 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %92 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @AR5K_QCU_CBRCFG_ORN_THRES, align 4
  %95 = call i32 @AR5K_REG_SM(i32 %93, i32 %94)
  %96 = or i32 %90, %95
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @AR5K_QUEUE_CBRCFG(i32 %97)
  %99 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %85, i32 %96, i32 %98)
  %100 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @AR5K_QUEUE_MISC(i32 %101)
  %103 = load i32, i32* @AR5K_QCU_MISC_FRSHED_CBR, align 4
  %104 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %100, i32 %102, i32 %103)
  %105 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %106 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %84
  %110 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @AR5K_QUEUE_MISC(i32 %111)
  %113 = load i32, i32* @AR5K_QCU_MISC_CBR_THRES_ENABLE, align 4
  %114 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %110, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %84
  br label %116

116:                                              ; preds = %115, %79
  %117 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %118 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  %122 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %123 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 130
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %128 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %129 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AR5K_QCU_RDYTIMECFG_INTVAL, align 4
  %132 = call i32 @AR5K_REG_SM(i32 %130, i32 %131)
  %133 = load i32, i32* @AR5K_QCU_RDYTIMECFG_ENABLE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @AR5K_QUEUE_RDYTIMECFG(i32 %135)
  %137 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %127, i32 %134, i32 %136)
  br label %138

138:                                              ; preds = %126, %121, %116
  %139 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %140 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %168

143:                                              ; preds = %138
  %144 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %145 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %146 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AR5K_DCU_CHAN_TIME_DUR, align 4
  %149 = call i32 @AR5K_REG_SM(i32 %147, i32 %148)
  %150 = load i32, i32* @AR5K_DCU_CHAN_TIME_ENABLE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @AR5K_QUEUE_DFS_CHANNEL_TIME(i32 %152)
  %154 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %144, i32 %151, i32 %153)
  %155 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %156 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AR5K_TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %143
  %162 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @AR5K_QUEUE_MISC(i32 %163)
  %165 = load i32, i32* @AR5K_QCU_MISC_RDY_VEOL_POLICY, align 4
  %166 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %162, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %143
  br label %168

168:                                              ; preds = %167, %138
  %169 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %170 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @AR5K_TXQ_FLAG_BACKOFF_DISABLE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %177 = load i32, i32* @AR5K_DCU_MISC_POST_FR_BKOFF_DIS, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %178)
  %180 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %176, i32 %177, i32 %179)
  br label %181

181:                                              ; preds = %175, %168
  %182 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %183 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @AR5K_TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %190 = load i32, i32* @AR5K_DCU_MISC_BACKOFF_FRAG, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %191)
  %193 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %189, i32 %190, i32 %192)
  br label %194

194:                                              ; preds = %188, %181
  %195 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %196 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  switch i32 %197, label %261 [
    i32 131, label %198
    i32 130, label %221
    i32 128, label %254
    i32 129, label %260
  ]

198:                                              ; preds = %194
  %199 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @AR5K_QUEUE_MISC(i32 %200)
  %202 = load i32, i32* @AR5K_QCU_MISC_FRSHED_DBA_GT, align 4
  %203 = load i32, i32* @AR5K_QCU_MISC_CBREXP_BCN_DIS, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @AR5K_QCU_MISC_BCN_ENABLE, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %199, i32 %201, i32 %206)
  %208 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %209)
  %211 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL, align 4
  %212 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_CTL_S, align 4
  %213 = shl i32 %211, %212
  %214 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_IGNORE, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* @AR5K_DCU_MISC_POST_FR_BKOFF_DIS, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @AR5K_DCU_MISC_BCN_ENABLE, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %208, i32 %210, i32 %219)
  br label %262

221:                                              ; preds = %194
  %222 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @AR5K_QUEUE_MISC(i32 %223)
  %225 = load i32, i32* @AR5K_QCU_MISC_FRSHED_DBA_GT, align 4
  %226 = load i32, i32* @AR5K_QCU_MISC_CBREXP_DIS, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @AR5K_QCU_MISC_CBREXP_BCN_DIS, align 4
  %229 = or i32 %227, %228
  %230 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %222, i32 %224, i32 %229)
  %231 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %232 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %233 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @AR5K_TUNE_SW_BEACON_RESP, align 4
  %236 = load i32, i32* @AR5K_TUNE_DMA_BEACON_RESP, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sub nsw i32 %234, %237
  %239 = load i32, i32* @AR5K_TUNE_ADDITIONAL_SWBA_BACKOFF, align 4
  %240 = sub nsw i32 %238, %239
  %241 = mul nsw i32 %240, 1024
  %242 = load i32, i32* @AR5K_QCU_RDYTIMECFG_ENABLE, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @AR5K_QUEUE_RDYTIMECFG(i32 %244)
  %246 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %231, i32 %243, i32 %245)
  %247 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @AR5K_QUEUE_DFS_MISC(i32 %248)
  %250 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_CTL_GLOBAL, align 4
  %251 = load i32, i32* @AR5K_DCU_MISC_ARBLOCK_CTL_S, align 4
  %252 = shl i32 %250, %251
  %253 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %247, i32 %249, i32 %252)
  br label %262

254:                                              ; preds = %194
  %255 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %256 = load i32, i32* %5, align 4
  %257 = call i32 @AR5K_QUEUE_MISC(i32 %256)
  %258 = load i32, i32* @AR5K_QCU_MISC_CBREXP_DIS, align 4
  %259 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %255, i32 %257, i32 %258)
  br label %262

260:                                              ; preds = %194
  br label %261

261:                                              ; preds = %194, %260
  br label %262

262:                                              ; preds = %261, %254, %221, %198
  %263 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %264 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %263, i32 0, i32 8
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @AR5K_TXQ_FLAG_TXOKINT_ENABLE, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %262
  %270 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %271 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %5, align 4
  %274 = call i32 @AR5K_Q_ENABLE_BITS(i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %269, %262
  %276 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %277 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @AR5K_TXQ_FLAG_TXERRINT_ENABLE, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %275
  %283 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %284 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %5, align 4
  %287 = call i32 @AR5K_Q_ENABLE_BITS(i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %282, %275
  %289 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %290 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @AR5K_TXQ_FLAG_TXURNINT_ENABLE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %288
  %296 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %297 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %5, align 4
  %300 = call i32 @AR5K_Q_ENABLE_BITS(i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %295, %288
  %302 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %303 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @AR5K_TXQ_FLAG_TXDESCINT_ENABLE, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %301
  %309 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %310 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @AR5K_Q_ENABLE_BITS(i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %308, %301
  %315 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %316 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %315, i32 0, i32 8
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @AR5K_TXQ_FLAG_TXEOLINT_ENABLE, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %314
  %322 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %323 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %5, align 4
  %326 = call i32 @AR5K_Q_ENABLE_BITS(i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %321, %314
  %328 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %329 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %328, i32 0, i32 8
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @AR5K_TXQ_FLAG_CBRORNINT_ENABLE, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %327
  %335 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %336 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %335, i32 0, i32 7
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %5, align 4
  %339 = call i32 @AR5K_Q_ENABLE_BITS(i32 %337, i32 %338)
  br label %340

340:                                              ; preds = %334, %327
  %341 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %342 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %341, i32 0, i32 8
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @AR5K_TXQ_FLAG_CBRURNINT_ENABLE, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %340
  %348 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %349 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %348, i32 0, i32 8
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* %5, align 4
  %352 = call i32 @AR5K_Q_ENABLE_BITS(i32 %350, i32 %351)
  br label %353

353:                                              ; preds = %347, %340
  %354 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %355 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %354, i32 0, i32 8
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @AR5K_TXQ_FLAG_QTRIGINT_ENABLE, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %353
  %361 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %362 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %361, i32 0, i32 9
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %5, align 4
  %365 = call i32 @AR5K_Q_ENABLE_BITS(i32 %363, i32 %364)
  br label %366

366:                                              ; preds = %360, %353
  %367 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %6, align 8
  %368 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %367, i32 0, i32 8
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @AR5K_TXQ_FLAG_TXNOFRMINT_ENABLE, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %366
  %374 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %375 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %374, i32 0, i32 10
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* %5, align 4
  %378 = call i32 @AR5K_Q_ENABLE_BITS(i32 %376, i32 %377)
  br label %379

379:                                              ; preds = %373, %366
  %380 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %381 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %380, i32 0, i32 11
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %384 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = and i32 %385, %382
  store i32 %386, i32* %384, align 8
  %387 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %388 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %387, i32 0, i32 11
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %391 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = and i32 %392, %389
  store i32 %393, i32* %391, align 4
  %394 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %395 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %394, i32 0, i32 11
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %398 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = and i32 %399, %396
  store i32 %400, i32* %398, align 8
  %401 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %402 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %401, i32 0, i32 11
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %405 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 4
  %407 = and i32 %406, %403
  store i32 %407, i32* %405, align 4
  %408 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %409 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %408, i32 0, i32 11
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %412 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %411, i32 0, i32 6
  %413 = load i32, i32* %412, align 8
  %414 = and i32 %413, %410
  store i32 %414, i32* %412, align 8
  %415 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %416 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %415, i32 0, i32 11
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %419 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %418, i32 0, i32 7
  %420 = load i32, i32* %419, align 4
  %421 = and i32 %420, %417
  store i32 %421, i32* %419, align 4
  %422 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %423 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %422, i32 0, i32 11
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %426 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %425, i32 0, i32 8
  %427 = load i32, i32* %426, align 8
  %428 = and i32 %427, %424
  store i32 %428, i32* %426, align 8
  %429 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %430 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %429, i32 0, i32 11
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %433 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %432, i32 0, i32 9
  %434 = load i32, i32* %433, align 4
  %435 = and i32 %434, %431
  store i32 %435, i32* %433, align 4
  %436 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %437 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %436, i32 0, i32 11
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %440 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %439, i32 0, i32 10
  %441 = load i32, i32* %440, align 8
  %442 = and i32 %441, %438
  store i32 %442, i32* %440, align 8
  %443 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %444 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %445 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @AR5K_SIMR0_QCU_TXOK, align 4
  %448 = call i32 @AR5K_REG_SM(i32 %446, i32 %447)
  %449 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %450 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %449, i32 0, i32 5
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @AR5K_SIMR0_QCU_TXDESC, align 4
  %453 = call i32 @AR5K_REG_SM(i32 %451, i32 %452)
  %454 = or i32 %448, %453
  %455 = load i32, i32* @AR5K_SIMR0, align 4
  %456 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %443, i32 %454, i32 %455)
  %457 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %458 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %459 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @AR5K_SIMR1_QCU_TXERR, align 4
  %462 = call i32 @AR5K_REG_SM(i32 %460, i32 %461)
  %463 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %464 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %463, i32 0, i32 6
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @AR5K_SIMR1_QCU_TXEOL, align 4
  %467 = call i32 @AR5K_REG_SM(i32 %465, i32 %466)
  %468 = or i32 %462, %467
  %469 = load i32, i32* @AR5K_SIMR1, align 4
  %470 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %457, i32 %468, i32 %469)
  %471 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %472 = load i32, i32* @AR5K_SIMR2, align 4
  %473 = load i32, i32* @AR5K_SIMR2_QCU_TXURN, align 4
  %474 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %471, i32 %472, i32 %473)
  %475 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %476 = load i32, i32* @AR5K_SIMR2, align 4
  %477 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %478 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %477, i32 0, i32 4
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @AR5K_SIMR2_QCU_TXURN, align 4
  %481 = call i32 @AR5K_REG_SM(i32 %479, i32 %480)
  %482 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %475, i32 %476, i32 %481)
  %483 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %484 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %485 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %484, i32 0, i32 7
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* @AR5K_SIMR3_QCBRORN, align 4
  %488 = call i32 @AR5K_REG_SM(i32 %486, i32 %487)
  %489 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %490 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %489, i32 0, i32 8
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @AR5K_SIMR3_QCBRURN, align 4
  %493 = call i32 @AR5K_REG_SM(i32 %491, i32 %492)
  %494 = or i32 %488, %493
  %495 = load i32, i32* @AR5K_SIMR3, align 4
  %496 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %483, i32 %494, i32 %495)
  %497 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %498 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %499 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %498, i32 0, i32 9
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* @AR5K_SIMR4_QTRIG, align 4
  %502 = call i32 @AR5K_REG_SM(i32 %500, i32 %501)
  %503 = load i32, i32* @AR5K_SIMR4, align 4
  %504 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %497, i32 %502, i32 %503)
  %505 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %506 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %507 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %506, i32 0, i32 10
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @AR5K_TXNOFRM_QCU, align 4
  %510 = call i32 @AR5K_REG_SM(i32 %508, i32 %509)
  %511 = load i32, i32* @AR5K_TXNOFRM, align 4
  %512 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %505, i32 %510, i32 %511)
  %513 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %514 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %513, i32 0, i32 10
  %515 = load i32, i32* %514, align 8
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %521

517:                                              ; preds = %379
  %518 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %519 = load i32, i32* @AR5K_TXNOFRM, align 4
  %520 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %518, i32 0, i32 %519)
  br label %521

521:                                              ; preds = %517, %379
  %522 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %523 = load i32, i32* %5, align 4
  %524 = call i32 @AR5K_QUEUE_QCUMASK(i32 %523)
  %525 = load i32, i32* %5, align 4
  %526 = call i32 @AR5K_REG_WRITE_Q(%struct.ath5k_hw* %522, i32 %524, i32 %525)
  store i32 0, i32* %3, align 4
  br label %527

527:                                              ; preds = %521, %37
  %528 = load i32, i32* %3, align 4
  ret i32 %528
}

declare dso_local i32 @AR5K_ASSERT_ENTRY(i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @AR5K_QUEUE_DFS_LOCAL_IFS(i32) #1

declare dso_local i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_QUEUE_DFS_MISC(i32) #1

declare dso_local i32 @AR5K_QUEUE_CBRCFG(i32) #1

declare dso_local i32 @AR5K_QUEUE_MISC(i32) #1

declare dso_local i32 @AR5K_QUEUE_RDYTIMECFG(i32) #1

declare dso_local i32 @AR5K_QUEUE_DFS_CHANNEL_TIME(i32) #1

declare dso_local i32 @AR5K_Q_ENABLE_BITS(i32, i32) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_WRITE_Q(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_QUEUE_QCUMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
