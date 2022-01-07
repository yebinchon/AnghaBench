; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_mac.c_ar9002_hw_proc_txdesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_mac.c_ar9002_hw_proc_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_tx_status = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ar5416_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR_TxDone = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AR_TxOpExceeded = common dso_local global i32 0, align 4
@ATH9K_TXERR_XTXOP = common dso_local global i32 0, align 4
@AR_TxTid = common dso_local global i32 0, align 4
@AR_FinalTxIdx = common dso_local global i32 0, align 4
@AR_SeqNum = common dso_local global i32 0, align 4
@AR_TxRSSIAnt00 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt01 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt02 = common dso_local global i32 0, align 4
@AR_TxBaStatus = common dso_local global i32 0, align 4
@ATH9K_TX_BA = common dso_local global i32 0, align 4
@AR_FrmXmitOK = common dso_local global i32 0, align 4
@ATH9K_TX_ACKED = common dso_local global i32 0, align 4
@AR_ExcessiveRetries = common dso_local global i32 0, align 4
@ATH9K_TXERR_XRETRY = common dso_local global i32 0, align 4
@AR_Filtered = common dso_local global i32 0, align 4
@ATH9K_TXERR_FILT = common dso_local global i32 0, align 4
@AR_FIFOUnderrun = common dso_local global i32 0, align 4
@ATH9K_TXERR_FIFO = common dso_local global i32 0, align 4
@AR_TxTimerExpired = common dso_local global i32 0, align 4
@ATH9K_TXERR_TIMER_EXPIRED = common dso_local global i32 0, align 4
@AR_DescCfgErr = common dso_local global i32 0, align 4
@ATH9K_TX_DESC_CFG_ERR = common dso_local global i32 0, align 4
@AR_TxDataUnderrun = common dso_local global i32 0, align 4
@ATH9K_TX_DATA_UNDERRUN = common dso_local global i32 0, align 4
@AR_TxDelimUnderrun = common dso_local global i32 0, align 4
@ATH9K_TX_DELIM_UNDERRUN = common dso_local global i32 0, align 4
@AR_RTSFailCnt = common dso_local global i32 0, align 4
@AR_DataFailCnt = common dso_local global i32 0, align 4
@AR_VirtRetryCnt = common dso_local global i32 0, align 4
@AR_TxRSSICombined = common dso_local global i32 0, align 4
@AR_TxRSSIAnt10 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt11 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i8*, %struct.ath_tx_status*)* @ar9002_hw_proc_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_proc_txdesc(%struct.ath_hw* %0, i8* %1, %struct.ath_tx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ath_tx_status*, align 8
  %8 = alloca %struct.ar5416_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ath_tx_status* %2, %struct.ath_tx_status** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.ar5416_desc* @AR5416DESC(i8* %10)
  store %struct.ar5416_desc* %11, %struct.ar5416_desc** %8, align 8
  %12 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %13 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ACCESS_ONCE(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @AR_TxDone, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINPROGRESS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %252

23:                                               ; preds = %3
  %24 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %25 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %28 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %27, i32 0, i32 20
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %30 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %29, i32 0, i32 11
  store i32 0, i32* %30, align 4
  %31 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %32 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %31, i32 0, i32 10
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @AR_TxOpExceeded, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %23
  %38 = load i32, i32* @ATH9K_TXERR_XTXOP, align 4
  %39 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %40 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %23
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @AR_TxTid, align 4
  %46 = call i8* @MS(i32 %44, i32 %45)
  %47 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %48 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %47, i32 0, i32 19
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @AR_FinalTxIdx, align 4
  %51 = call i8* @MS(i32 %49, i32 %50)
  %52 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %53 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %52, i32 0, i32 18
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @AR_SeqNum, align 4
  %56 = call i8* @MS(i32 %54, i32 %55)
  %57 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %58 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %57, i32 0, i32 17
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %60 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ACCESS_ONCE(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @AR_TxRSSIAnt00, align 4
  %65 = call i8* @MS(i32 %63, i32 %64)
  %66 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %67 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %66, i32 0, i32 16
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @AR_TxRSSIAnt01, align 4
  %70 = call i8* @MS(i32 %68, i32 %69)
  %71 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %72 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %71, i32 0, i32 15
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @AR_TxRSSIAnt02, align 4
  %75 = call i8* @MS(i32 %73, i32 %74)
  %76 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %77 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %76, i32 0, i32 14
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @AR_TxBaStatus, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %43
  %83 = load i32, i32* @ATH9K_TX_BA, align 4
  %84 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %85 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %89 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %92 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %91, i32 0, i32 13
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %94 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %97 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %96, i32 0, i32 12
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %82, %43
  %99 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %100 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ACCESS_ONCE(i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @AR_FrmXmitOK, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load i32, i32* @ATH9K_TX_ACKED, align 4
  %109 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %110 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %109, i32 0, i32 11
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %149

113:                                              ; preds = %98
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @AR_ExcessiveRetries, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* @ATH9K_TXERR_XRETRY, align 4
  %120 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %121 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %113
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @AR_Filtered, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @ATH9K_TXERR_FILT, align 4
  %131 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %132 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @AR_FIFOUnderrun, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load i32, i32* @ATH9K_TXERR_FIFO, align 4
  %142 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %143 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %142, i32 0, i32 11
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %147 = call i32 @ath9k_hw_updatetxtriglevel(%struct.ath_hw* %146, i32 1)
  br label %148

148:                                              ; preds = %140, %135
  br label %149

149:                                              ; preds = %148, %107
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @AR_TxTimerExpired, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load i32, i32* @ATH9K_TXERR_TIMER_EXPIRED, align 4
  %156 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %157 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %156, i32 0, i32 11
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %149
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @AR_DescCfgErr, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* @ATH9K_TX_DESC_CFG_ERR, align 4
  %167 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %168 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %160
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @AR_TxDataUnderrun, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load i32, i32* @ATH9K_TX_DATA_UNDERRUN, align 4
  %178 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %179 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %178, i32 0, i32 10
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %183 = call i32 @ath9k_hw_updatetxtriglevel(%struct.ath_hw* %182, i32 1)
  br label %184

184:                                              ; preds = %176, %171
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* @AR_TxDelimUnderrun, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load i32, i32* @ATH9K_TX_DELIM_UNDERRUN, align 4
  %191 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %192 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %196 = call i32 @ath9k_hw_updatetxtriglevel(%struct.ath_hw* %195, i32 1)
  br label %197

197:                                              ; preds = %189, %184
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @AR_RTSFailCnt, align 4
  %200 = call i8* @MS(i32 %198, i32 %199)
  %201 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %202 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %201, i32 0, i32 9
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @AR_DataFailCnt, align 4
  %205 = call i8* @MS(i32 %203, i32 %204)
  %206 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %207 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %206, i32 0, i32 8
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* @AR_VirtRetryCnt, align 4
  %210 = call i8* @MS(i32 %208, i32 %209)
  %211 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %212 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %211, i32 0, i32 7
  store i8* %210, i8** %212, align 8
  %213 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %214 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @ACCESS_ONCE(i32 %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @AR_TxRSSICombined, align 4
  %219 = call i8* @MS(i32 %217, i32 %218)
  %220 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %221 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %220, i32 0, i32 6
  store i8* %219, i8** %221, align 8
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @AR_TxRSSIAnt10, align 4
  %224 = call i8* @MS(i32 %222, i32 %223)
  %225 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %226 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %225, i32 0, i32 5
  store i8* %224, i8** %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* @AR_TxRSSIAnt11, align 4
  %229 = call i8* @MS(i32 %227, i32 %228)
  %230 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %231 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %230, i32 0, i32 4
  store i8* %229, i8** %231, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @AR_TxRSSIAnt12, align 4
  %234 = call i8* @MS(i32 %232, i32 %233)
  %235 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %236 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %235, i32 0, i32 3
  store i8* %234, i8** %236, align 8
  %237 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %238 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %241 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  %242 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %243 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %246 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %248 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %251 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  store i32 0, i32* %4, align 4
  br label %252

252:                                              ; preds = %197, %20
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(i8*) #1

declare dso_local i32 @ACCESS_ONCE(i32) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i32 @ath9k_hw_updatetxtriglevel(%struct.ath_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
