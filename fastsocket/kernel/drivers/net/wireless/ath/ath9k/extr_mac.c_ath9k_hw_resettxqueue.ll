; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_resettxqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_resettxqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.ath9k_tx_queue_info*, %struct.ath9k_channel* }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.ath9k_tx_queue_info = type { i32, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@ATH9K_TX_QUEUE_INACTIVE = common dso_local global i32 0, align 4
@QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Reset TXQ, inactive queue: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Reset TX queue: %u\0A\00", align 1
@ATH9K_TXQ_USEDEFAULT = common dso_local global i64 0, align 8
@INIT_CWMIN_11B = common dso_local global i64 0, align 8
@INIT_CWMIN = common dso_local global i64 0, align 8
@AR_D_LCL_IFS_CWMIN = common dso_local global i32 0, align 4
@AR_D_LCL_IFS_CWMAX = common dso_local global i32 0, align 4
@AR_D_LCL_IFS_AIFS = common dso_local global i32 0, align 4
@INIT_SSH_RETRY = common dso_local global i64 0, align 8
@AR_D_RETRY_LIMIT_STA_SH = common dso_local global i32 0, align 4
@INIT_SLG_RETRY = common dso_local global i64 0, align 8
@AR_D_RETRY_LIMIT_STA_LG = common dso_local global i32 0, align 4
@AR_D_RETRY_LIMIT_FR_SH = common dso_local global i32 0, align 4
@AR_Q_MISC_DCU_EARLY_TERM_REQ = common dso_local global i64 0, align 8
@AR_D_MISC_CW_BKOFF_EN = common dso_local global i32 0, align 4
@AR_D_MISC_FRAG_WAIT_EN = common dso_local global i32 0, align 4
@AR_Q_CBRCFG_INTERVAL = common dso_local global i32 0, align 4
@AR_Q_CBRCFG_OVF_THRESH = common dso_local global i32 0, align 4
@AR_Q_MISC_FSP_CBR = common dso_local global i64 0, align 8
@AR_Q_MISC_CBR_EXP_CNTR_LIMIT_EN = common dso_local global i64 0, align 8
@AR_Q_RDYTIMECFG_DURATION = common dso_local global i32 0, align 4
@AR_Q_RDYTIMECFG_EN = common dso_local global i64 0, align 8
@AR_D_CHNTIME_DUR = common dso_local global i32 0, align 4
@AR_D_CHNTIME_EN = common dso_local global i64 0, align 8
@TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE = common dso_local global i32 0, align 4
@AR_Q_MISC_RDYTIME_EXP_POLICY = common dso_local global i64 0, align 8
@TXQ_FLAG_BACKOFF_DISABLE = common dso_local global i32 0, align 4
@AR_D_MISC_POST_FR_BKOFF_DIS = common dso_local global i64 0, align 8
@TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE = common dso_local global i32 0, align 4
@AR_D_MISC_FRAG_BKOFF_EN = common dso_local global i64 0, align 8
@AR_Q_MISC_FSP_DBA_GATED = common dso_local global i64 0, align 8
@AR_Q_MISC_BEACON_USE = common dso_local global i64 0, align 8
@AR_Q_MISC_CBR_INCR_DIS1 = common dso_local global i64 0, align 8
@AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL = common dso_local global i64 0, align 8
@AR_D_MISC_ARB_LOCKOUT_CNTRL_S = common dso_local global i64 0, align 8
@AR_D_MISC_BEACON_USE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@AR_Q_MISC_CBR_INCR_DIS0 = common dso_local global i64 0, align 8
@ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS = common dso_local global i32 0, align 4
@AR_D_MISC_ARB_LOCKOUT_CNTRL = common dso_local global i32 0, align 4
@AR_Q_DESC_CRCCHK = common dso_local global i32 0, align 4
@AR_Q_DESC_CRCCHK_EN = common dso_local global i64 0, align 8
@TXQ_FLAG_TXINT_ENABLE = common dso_local global i32 0, align 4
@TXQ_FLAG_TXDESCINT_ENABLE = common dso_local global i32 0, align 4
@TXQ_FLAG_TXEOLINT_ENABLE = common dso_local global i32 0, align 4
@TXQ_FLAG_TXURNINT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_resettxqueue(%struct.ath_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_channel*, align 8
  %8 = alloca %struct.ath9k_tx_queue_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %6, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 8
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %15, align 8
  store %struct.ath9k_channel* %16, %struct.ath9k_channel** %7, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 7
  %19 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %19, i64 %20
  store %struct.ath9k_tx_queue_info* %21, %struct.ath9k_tx_queue_info** %8, align 8
  %22 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %23 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ATH9K_TX_QUEUE_INACTIVE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %29 = load i32, i32* @QUEUE, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @ath_dbg(%struct.ath_common* %28, i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i32 1, i32* %3, align 4
  br label %479

32:                                               ; preds = %2
  %33 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %34 = load i32, i32* @QUEUE, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @ath_dbg(%struct.ath_common* %33, i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %38 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ATH9K_TXQ_USEDEFAULT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %32
  %43 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %44 = icmp ne %struct.ath9k_channel* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.ath9k_channel*, %struct.ath9k_channel** %7, align 8
  %47 = call i64 @IS_CHAN_B(%struct.ath9k_channel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @INIT_CWMIN_11B, align 8
  store i64 %50, i64* %10, align 8
  br label %53

51:                                               ; preds = %45, %42
  %52 = load i64, i64* @INIT_CWMIN, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %49
  store i64 1, i64* %9, align 8
  br label %54

54:                                               ; preds = %59, %53
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %9, align 8
  %61 = shl i64 %60, 1
  %62 = or i64 %61, 1
  store i64 %62, i64* %9, align 8
  br label %54

63:                                               ; preds = %54
  br label %68

64:                                               ; preds = %32
  %65 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %66 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %70 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %69)
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @AR_DLCL_IFS(i64 %72)
  %74 = load i64, i64* %9, align 8
  %75 = load i32, i32* @AR_D_LCL_IFS_CWMIN, align 4
  %76 = call i64 @SM(i64 %74, i32 %75)
  %77 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %78 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @AR_D_LCL_IFS_CWMAX, align 4
  %81 = call i64 @SM(i64 %79, i32 %80)
  %82 = or i64 %76, %81
  %83 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %84 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @AR_D_LCL_IFS_AIFS, align 4
  %87 = call i64 @SM(i64 %85, i32 %86)
  %88 = or i64 %82, %87
  %89 = call i32 @REG_WRITE(%struct.ath_hw* %71, i32 %73, i64 %88)
  %90 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @AR_DRETRY_LIMIT(i64 %91)
  %93 = load i64, i64* @INIT_SSH_RETRY, align 8
  %94 = load i32, i32* @AR_D_RETRY_LIMIT_STA_SH, align 4
  %95 = call i64 @SM(i64 %93, i32 %94)
  %96 = load i64, i64* @INIT_SLG_RETRY, align 8
  %97 = load i32, i32* @AR_D_RETRY_LIMIT_STA_LG, align 4
  %98 = call i64 @SM(i64 %96, i32 %97)
  %99 = or i64 %95, %98
  %100 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %101 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @AR_D_RETRY_LIMIT_FR_SH, align 4
  %104 = call i64 @SM(i64 %102, i32 %103)
  %105 = or i64 %99, %104
  %106 = call i32 @REG_WRITE(%struct.ath_hw* %90, i32 %92, i64 %105)
  %107 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i32 @AR_QMISC(i64 %108)
  %110 = load i64, i64* @AR_Q_MISC_DCU_EARLY_TERM_REQ, align 8
  %111 = call i32 @REG_WRITE(%struct.ath_hw* %107, i32 %109, i64 %110)
  %112 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %113 = call i64 @AR_SREV_9340(%struct.ath_hw* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %68
  %116 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %117 = call i32 @AR_SREV_9340_13_OR_LATER(%struct.ath_hw* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %115
  %120 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @AR_DMISC(i64 %121)
  %123 = load i32, i32* @AR_D_MISC_CW_BKOFF_EN, align 4
  %124 = load i32, i32* @AR_D_MISC_FRAG_WAIT_EN, align 4
  %125 = or i32 %123, %124
  %126 = or i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = call i32 @REG_WRITE(%struct.ath_hw* %120, i32 %122, i64 %127)
  br label %139

129:                                              ; preds = %115, %68
  %130 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @AR_DMISC(i64 %131)
  %133 = load i32, i32* @AR_D_MISC_CW_BKOFF_EN, align 4
  %134 = load i32, i32* @AR_D_MISC_FRAG_WAIT_EN, align 4
  %135 = or i32 %133, %134
  %136 = or i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = call i32 @REG_WRITE(%struct.ath_hw* %130, i32 %132, i64 %137)
  br label %139

139:                                              ; preds = %129, %119
  %140 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %141 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %139
  %145 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i32 @AR_QCBRCFG(i64 %146)
  %148 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %149 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = load i32, i32* @AR_Q_CBRCFG_INTERVAL, align 4
  %153 = call i64 @SM(i64 %151, i32 %152)
  %154 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %155 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @AR_Q_CBRCFG_OVF_THRESH, align 4
  %158 = call i64 @SM(i64 %156, i32 %157)
  %159 = or i64 %153, %158
  %160 = call i32 @REG_WRITE(%struct.ath_hw* %145, i32 %147, i64 %159)
  %161 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i32 @AR_QMISC(i64 %162)
  %164 = load i64, i64* @AR_Q_MISC_FSP_CBR, align 8
  %165 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %166 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %144
  %170 = load i64, i64* @AR_Q_MISC_CBR_EXP_CNTR_LIMIT_EN, align 8
  br label %172

171:                                              ; preds = %144
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i64 [ %170, %169 ], [ 0, %171 ]
  %174 = or i64 %164, %173
  %175 = call i32 @REG_SET_BIT(%struct.ath_hw* %161, i32 %163, i64 %174)
  br label %176

176:                                              ; preds = %172, %139
  %177 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %178 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %177, i32 0, i32 7
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %176
  %182 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %183 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 130
  br i1 %185, label %186, label %198

186:                                              ; preds = %181
  %187 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %188 = load i64, i64* %5, align 8
  %189 = call i32 @AR_QRDYTIMECFG(i64 %188)
  %190 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %191 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %190, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* @AR_Q_RDYTIMECFG_DURATION, align 4
  %194 = call i64 @SM(i64 %192, i32 %193)
  %195 = load i64, i64* @AR_Q_RDYTIMECFG_EN, align 8
  %196 = or i64 %194, %195
  %197 = call i32 @REG_WRITE(%struct.ath_hw* %187, i32 %189, i64 %196)
  br label %198

198:                                              ; preds = %186, %181, %176
  %199 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %200 = load i64, i64* %5, align 8
  %201 = call i32 @AR_DCHNTIME(i64 %200)
  %202 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %203 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %202, i32 0, i32 8
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @AR_D_CHNTIME_DUR, align 4
  %206 = call i64 @SM(i64 %204, i32 %205)
  %207 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %208 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %207, i32 0, i32 8
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %198
  %212 = load i64, i64* @AR_D_CHNTIME_EN, align 8
  br label %214

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213, %211
  %215 = phi i64 [ %212, %211 ], [ 0, %213 ]
  %216 = or i64 %206, %215
  %217 = call i32 @REG_WRITE(%struct.ath_hw* %199, i32 %201, i64 %216)
  %218 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %219 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %218, i32 0, i32 8
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %214
  %223 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %224 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @TXQ_FLAG_RDYTIME_EXP_POLICY_ENABLE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %222
  %230 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %231 = load i64, i64* %5, align 8
  %232 = call i32 @AR_QMISC(i64 %231)
  %233 = load i64, i64* @AR_Q_MISC_RDYTIME_EXP_POLICY, align 8
  %234 = call i32 @REG_SET_BIT(%struct.ath_hw* %230, i32 %232, i64 %233)
  br label %235

235:                                              ; preds = %229, %222, %214
  %236 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %237 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %236, i32 0, i32 9
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @TXQ_FLAG_BACKOFF_DISABLE, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %235
  %243 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %244 = load i64, i64* %5, align 8
  %245 = call i32 @AR_DMISC(i64 %244)
  %246 = load i64, i64* @AR_D_MISC_POST_FR_BKOFF_DIS, align 8
  %247 = call i32 @REG_SET_BIT(%struct.ath_hw* %243, i32 %245, i64 %246)
  br label %248

248:                                              ; preds = %242, %235
  %249 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %250 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %249)
  %251 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %252 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %251, i32 0, i32 9
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @TXQ_FLAG_FRAG_BURST_BACKOFF_ENABLE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %248
  %258 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %259 = load i64, i64* %5, align 8
  %260 = call i32 @AR_DMISC(i64 %259)
  %261 = load i64, i64* @AR_D_MISC_FRAG_BKOFF_EN, align 8
  %262 = call i32 @REG_SET_BIT(%struct.ath_hw* %258, i32 %260, i64 %261)
  br label %263

263:                                              ; preds = %257, %248
  %264 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %265 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  switch i32 %266, label %378 [
    i32 131, label %267
    i32 130, label %318
    i32 129, label %366
    i32 128, label %372
  ]

267:                                              ; preds = %263
  %268 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %269 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %268)
  %270 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %271 = load i64, i64* %5, align 8
  %272 = call i32 @AR_QMISC(i64 %271)
  %273 = load i64, i64* @AR_Q_MISC_FSP_DBA_GATED, align 8
  %274 = load i64, i64* @AR_Q_MISC_BEACON_USE, align 8
  %275 = or i64 %273, %274
  %276 = load i64, i64* @AR_Q_MISC_CBR_INCR_DIS1, align 8
  %277 = or i64 %275, %276
  %278 = call i32 @REG_SET_BIT(%struct.ath_hw* %270, i32 %272, i64 %277)
  %279 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %280 = load i64, i64* %5, align 8
  %281 = call i32 @AR_DMISC(i64 %280)
  %282 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL, align 8
  %283 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_S, align 8
  %284 = shl i64 %282, %283
  %285 = load i64, i64* @AR_D_MISC_BEACON_USE, align 8
  %286 = or i64 %284, %285
  %287 = load i64, i64* @AR_D_MISC_POST_FR_BKOFF_DIS, align 8
  %288 = or i64 %286, %287
  %289 = call i32 @REG_SET_BIT(%struct.ath_hw* %279, i32 %281, i64 %288)
  %290 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %291 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %290)
  %292 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %293 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %317

295:                                              ; preds = %267
  %296 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %297 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %295
  %302 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %303 = load i64, i64* %5, align 8
  %304 = call i32 @AR_DLCL_IFS(i64 %303)
  %305 = load i32, i32* @AR_D_LCL_IFS_CWMIN, align 4
  %306 = call i64 @SM(i64 0, i32 %305)
  %307 = load i32, i32* @AR_D_LCL_IFS_CWMAX, align 4
  %308 = call i64 @SM(i64 0, i32 %307)
  %309 = or i64 %306, %308
  %310 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %311 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = load i32, i32* @AR_D_LCL_IFS_AIFS, align 4
  %314 = call i64 @SM(i64 %312, i32 %313)
  %315 = or i64 %309, %314
  %316 = call i32 @REG_WRITE(%struct.ath_hw* %302, i32 %304, i64 %315)
  br label %317

317:                                              ; preds = %301, %295, %267
  br label %379

318:                                              ; preds = %263
  %319 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %320 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %319)
  %321 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %322 = load i64, i64* %5, align 8
  %323 = call i32 @AR_QMISC(i64 %322)
  %324 = load i64, i64* @AR_Q_MISC_FSP_DBA_GATED, align 8
  %325 = load i64, i64* @AR_Q_MISC_CBR_INCR_DIS1, align 8
  %326 = or i64 %324, %325
  %327 = load i64, i64* @AR_Q_MISC_CBR_INCR_DIS0, align 8
  %328 = or i64 %326, %327
  %329 = call i32 @REG_SET_BIT(%struct.ath_hw* %321, i32 %323, i64 %328)
  %330 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %331 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %330, i32 0, i32 7
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %334 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %333, i32 0, i32 5
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %338 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %337, i32 0, i32 5
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = sub nsw i64 %336, %340
  %342 = sub i64 %332, %341
  %343 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %344 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = sub i64 %342, %347
  %349 = mul i64 %348, 1024
  store i64 %349, i64* %11, align 8
  %350 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %351 = load i64, i64* %5, align 8
  %352 = call i32 @AR_QRDYTIMECFG(i64 %351)
  %353 = load i64, i64* %11, align 8
  %354 = load i64, i64* @AR_Q_RDYTIMECFG_EN, align 8
  %355 = or i64 %353, %354
  %356 = call i32 @REG_WRITE(%struct.ath_hw* %350, i32 %352, i64 %355)
  %357 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %358 = load i64, i64* %5, align 8
  %359 = call i32 @AR_DMISC(i64 %358)
  %360 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL, align 8
  %361 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_S, align 8
  %362 = shl i64 %360, %361
  %363 = call i32 @REG_SET_BIT(%struct.ath_hw* %357, i32 %359, i64 %362)
  %364 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %365 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %364)
  br label %379

366:                                              ; preds = %263
  %367 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %368 = load i64, i64* %5, align 8
  %369 = call i32 @AR_QMISC(i64 %368)
  %370 = load i64, i64* @AR_Q_MISC_CBR_INCR_DIS1, align 8
  %371 = call i32 @REG_SET_BIT(%struct.ath_hw* %367, i32 %369, i64 %370)
  br label %379

372:                                              ; preds = %263
  %373 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %374 = load i64, i64* %5, align 8
  %375 = call i32 @AR_DMISC(i64 %374)
  %376 = load i64, i64* @AR_D_MISC_POST_FR_BKOFF_DIS, align 8
  %377 = call i32 @REG_SET_BIT(%struct.ath_hw* %373, i32 %375, i64 %376)
  br label %379

378:                                              ; preds = %263
  br label %379

379:                                              ; preds = %378, %372, %366, %318, %317
  %380 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %381 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %380, i32 0, i32 10
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %396

386:                                              ; preds = %379
  %387 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %388 = load i64, i64* %5, align 8
  %389 = call i32 @AR_DMISC(i64 %388)
  %390 = load i64, i64* @AR_D_MISC_ARB_LOCKOUT_CNTRL_GLOBAL, align 8
  %391 = load i32, i32* @AR_D_MISC_ARB_LOCKOUT_CNTRL, align 4
  %392 = call i64 @SM(i64 %390, i32 %391)
  %393 = load i64, i64* @AR_D_MISC_POST_FR_BKOFF_DIS, align 8
  %394 = or i64 %392, %393
  %395 = call i32 @REG_SET_BIT(%struct.ath_hw* %387, i32 %389, i64 %394)
  br label %396

396:                                              ; preds = %386, %379
  %397 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %398 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %396
  %401 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %402 = load i32, i32* @AR_Q_DESC_CRCCHK, align 4
  %403 = load i64, i64* @AR_Q_DESC_CRCCHK_EN, align 8
  %404 = call i32 @REG_WRITE(%struct.ath_hw* %401, i32 %402, i64 %403)
  br label %405

405:                                              ; preds = %400, %396
  %406 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %407 = load i64, i64* %5, align 8
  %408 = call i32 @ath9k_hw_clear_queue_interrupts(%struct.ath_hw* %406, i64 %407)
  %409 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %410 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %409, i32 0, i32 9
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @TXQ_FLAG_TXINT_ENABLE, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %430

415:                                              ; preds = %405
  %416 = load i64, i64* %5, align 8
  %417 = trunc i64 %416 to i32
  %418 = shl i32 1, %417
  %419 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %420 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = or i32 %421, %418
  store i32 %422, i32* %420, align 8
  %423 = load i64, i64* %5, align 8
  %424 = trunc i64 %423 to i32
  %425 = shl i32 1, %424
  %426 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %427 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = or i32 %428, %425
  store i32 %429, i32* %427, align 4
  br label %430

430:                                              ; preds = %415, %405
  %431 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %432 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %431, i32 0, i32 9
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* @TXQ_FLAG_TXDESCINT_ENABLE, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %430
  %438 = load i64, i64* %5, align 8
  %439 = trunc i64 %438 to i32
  %440 = shl i32 1, %439
  %441 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %442 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = or i32 %443, %440
  store i32 %444, i32* %442, align 8
  br label %445

445:                                              ; preds = %437, %430
  %446 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %447 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %446, i32 0, i32 9
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @TXQ_FLAG_TXEOLINT_ENABLE, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %460

452:                                              ; preds = %445
  %453 = load i64, i64* %5, align 8
  %454 = trunc i64 %453 to i32
  %455 = shl i32 1, %454
  %456 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %457 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 4
  %459 = or i32 %458, %455
  store i32 %459, i32* %457, align 4
  br label %460

460:                                              ; preds = %452, %445
  %461 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %462 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %461, i32 0, i32 9
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @TXQ_FLAG_TXURNINT_ENABLE, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %475

467:                                              ; preds = %460
  %468 = load i64, i64* %5, align 8
  %469 = trunc i64 %468 to i32
  %470 = shl i32 1, %469
  %471 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %472 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 8
  %474 = or i32 %473, %470
  store i32 %474, i32* %472, align 8
  br label %475

475:                                              ; preds = %467, %460
  %476 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %477 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %8, align 8
  %478 = call i32 @ath9k_hw_set_txq_interrupts(%struct.ath_hw* %476, %struct.ath9k_tx_queue_info* %477)
  store i32 1, i32* %3, align 4
  br label %479

479:                                              ; preds = %475, %27
  %480 = load i32, i32* %3, align 4
  ret i32 %480
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i64 @IS_CHAN_B(%struct.ath9k_channel*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

declare dso_local i32 @AR_DLCL_IFS(i64) #1

declare dso_local i64 @SM(i64, i32) #1

declare dso_local i32 @AR_DRETRY_LIMIT(i64) #1

declare dso_local i32 @AR_QMISC(i64) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9340_13_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_DMISC(i64) #1

declare dso_local i32 @AR_QCBRCFG(i64) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i64) #1

declare dso_local i32 @AR_QRDYTIMECFG(i64) #1

declare dso_local i32 @AR_DCHNTIME(i64) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_clear_queue_interrupts(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath9k_hw_set_txq_interrupts(%struct.ath_hw*, %struct.ath9k_tx_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
