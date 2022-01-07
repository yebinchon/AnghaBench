; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ath9k_hw_process_rxdesc_edma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_mac.c_ath9k_hw_process_rxdesc_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_rx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ar9003_rxs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AR_RxDone = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AR_DescId = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR_TxRxDesc = common dso_local global i32 0, align 4
@AR_CtrlStat = common dso_local global i32 0, align 4
@AR_DataLen = common dso_local global i32 0, align 4
@AR_RxRSSICombined = common dso_local global i32 0, align 4
@AR_RxRSSIAnt00 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt01 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt02 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt10 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt11 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt12 = common dso_local global i32 0, align 4
@AR_RxKeyIdxValid = common dso_local global i32 0, align 4
@AR_KeyIdx = common dso_local global i32 0, align 4
@ATH9K_RXKEYIX_INVALID = common dso_local global i32 0, align 4
@AR_RxRate = common dso_local global i32 0, align 4
@AR_RxMore = common dso_local global i32 0, align 4
@AR_RxAggr = common dso_local global i32 0, align 4
@AR_RxMoreAggr = common dso_local global i32 0, align 4
@AR_RxAntenna = common dso_local global i32 0, align 4
@AR_GI = common dso_local global i32 0, align 4
@ATH9K_RX_GI = common dso_local global i32 0, align 4
@AR_2040 = common dso_local global i32 0, align 4
@ATH9K_RX_2040 = common dso_local global i32 0, align 4
@AR_PreDelimCRCErr = common dso_local global i32 0, align 4
@ATH9K_RX_DELIM_CRC_PRE = common dso_local global i32 0, align 4
@AR_PostDelimCRCErr = common dso_local global i32 0, align 4
@ATH9K_RX_DELIM_CRC_POST = common dso_local global i32 0, align 4
@AR_DecryptBusyErr = common dso_local global i32 0, align 4
@ATH9K_RX_DECRYPT_BUSY = common dso_local global i32 0, align 4
@AR_RxFrameOK = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_CRC = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR_MichaelErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_MIC = common dso_local global i32 0, align 4
@AR_PHYErr = common dso_local global i32 0, align 4
@AR_PHYErrCode = common dso_local global i32 0, align 4
@ATH9K_PHYERR_OFDM_RESTART = common dso_local global i32 0, align 4
@ATH9K_RXERR_PHY = common dso_local global i32 0, align 4
@AR_KeyMiss = common dso_local global i32 0, align 4
@ATH9K_RXERR_KEYMISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_process_rxdesc_edma(%struct.ath_hw* %0, %struct.ath_rx_status* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_rx_status*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ar9003_rxs*, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.ar9003_rxs*
  store %struct.ar9003_rxs* %11, %struct.ar9003_rxs** %8, align 8
  %12 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %13 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AR_RxDone, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %364

21:                                               ; preds = %3
  %22 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %23 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AR_DescId, align 4
  %26 = call i32 @MS(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 5772
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %364

31:                                               ; preds = %21
  %32 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %33 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AR_TxRxDesc, align 4
  %36 = load i32, i32* @AR_CtrlStat, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINPROGRESS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %364

43:                                               ; preds = %31
  %44 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %45 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %44, i32 0, i32 16
  store i32 0, i32* %45, align 4
  %46 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %47 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %46, i32 0, i32 17
  store i32 0, i32* %47, align 4
  %48 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %49 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AR_DataLen, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %54 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %56 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %59 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %58, i32 0, i32 22
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %61 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AR_RxRSSICombined, align 4
  %64 = call i32 @MS(i32 %62, i32 %63)
  %65 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %66 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %68 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AR_RxRSSIAnt00, align 4
  %71 = call i32 @MS(i32 %69, i32 %70)
  %72 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %73 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %75 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AR_RxRSSIAnt01, align 4
  %78 = call i32 @MS(i32 %76, i32 %77)
  %79 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %80 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %82 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AR_RxRSSIAnt02, align 4
  %85 = call i32 @MS(i32 %83, i32 %84)
  %86 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %87 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %89 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AR_RxRSSIAnt10, align 4
  %92 = call i32 @MS(i32 %90, i32 %91)
  %93 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %94 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %96 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AR_RxRSSIAnt11, align 4
  %99 = call i32 @MS(i32 %97, i32 %98)
  %100 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %101 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %103 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AR_RxRSSIAnt12, align 4
  %106 = call i32 @MS(i32 %104, i32 %105)
  %107 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %108 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %110 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AR_RxKeyIdxValid, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %43
  %116 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %117 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @AR_KeyIdx, align 4
  %120 = call i32 @MS(i32 %118, i32 %119)
  %121 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %122 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 4
  br label %127

123:                                              ; preds = %43
  %124 = load i32, i32* @ATH9K_RXKEYIX_INVALID, align 4
  %125 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %126 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %115
  %128 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %129 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AR_RxRate, align 4
  %132 = call i32 @MS(i32 %130, i32 %131)
  %133 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %134 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %133, i32 0, i32 9
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %136 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @AR_RxMore, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 1, i32 0
  %143 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %144 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %143, i32 0, i32 10
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %146 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AR_RxAggr, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  %153 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %154 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %153, i32 0, i32 11
  store i32 %152, i32* %154, align 4
  %155 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %156 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AR_RxMoreAggr, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 1, i32 0
  %163 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %164 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %163, i32 0, i32 12
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %166 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @AR_RxAntenna, align 4
  %169 = call i32 @MS(i32 %167, i32 %168)
  %170 = and i32 %169, 7
  %171 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %172 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %171, i32 0, i32 13
  store i32 %170, i32* %172, align 4
  %173 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %174 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @AR_GI, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %127
  %180 = load i32, i32* @ATH9K_RX_GI, align 4
  br label %182

181:                                              ; preds = %127
  br label %182

182:                                              ; preds = %181, %179
  %183 = phi i32 [ %180, %179 ], [ 0, %181 ]
  %184 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %185 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %184, i32 0, i32 17
  store i32 %183, i32* %185, align 4
  %186 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %187 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @AR_2040, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %182
  %193 = load i32, i32* @ATH9K_RX_2040, align 4
  br label %195

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194, %192
  %196 = phi i32 [ %193, %192 ], [ 0, %194 ]
  %197 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %198 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %197, i32 0, i32 17
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  %201 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %202 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %201, i32 0, i32 10
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %205 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %204, i32 0, i32 21
  store i32 %203, i32* %205, align 4
  %206 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %207 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %210 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %209, i32 0, i32 20
  store i32 %208, i32* %210, align 4
  %211 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %212 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %215 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %214, i32 0, i32 19
  store i32 %213, i32* %215, align 4
  %216 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %217 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %220 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %219, i32 0, i32 18
  store i32 %218, i32* %220, align 4
  %221 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %222 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 65535
  %225 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %226 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %225, i32 0, i32 14
  store i32 %224, i32* %226, align 4
  %227 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %228 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @AR_PreDelimCRCErr, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %195
  %234 = load i32, i32* @ATH9K_RX_DELIM_CRC_PRE, align 4
  %235 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %236 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %235, i32 0, i32 17
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %233, %195
  %240 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %241 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @AR_PostDelimCRCErr, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %239
  %247 = load i32, i32* @ATH9K_RX_DELIM_CRC_POST, align 4
  %248 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %249 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %248, i32 0, i32 17
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %246, %239
  %253 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %254 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @AR_DecryptBusyErr, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %252
  %260 = load i32, i32* @ATH9K_RX_DECRYPT_BUSY, align 4
  %261 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %262 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %261, i32 0, i32 17
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %259, %252
  %266 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %267 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @AR_RxFrameOK, align 4
  %270 = and i32 %268, %269
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %350

272:                                              ; preds = %265
  %273 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %274 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @AR_CRCErr, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %272
  %280 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %281 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %282 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %281, i32 0, i32 16
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  br label %313

285:                                              ; preds = %272
  %286 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %287 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @AR_DecryptCRCErr, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %285
  %293 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %294 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %295 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %294, i32 0, i32 16
  %296 = load i32, i32* %295, align 4
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 4
  br label %312

298:                                              ; preds = %285
  %299 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %300 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @AR_MichaelErr, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %311

305:                                              ; preds = %298
  %306 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %307 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %308 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %307, i32 0, i32 16
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %305, %298
  br label %312

312:                                              ; preds = %311, %292
  br label %313

313:                                              ; preds = %312, %279
  %314 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %315 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @AR_PHYErr, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %349

320:                                              ; preds = %313
  %321 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %322 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @AR_PHYErrCode, align 4
  %325 = call i32 @MS(i32 %323, i32 %324)
  store i32 %325, i32* %9, align 4
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* @ATH9K_PHYERR_OFDM_RESTART, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %339

329:                                              ; preds = %320
  %330 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %331 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @AR_PostDelimCRCErr, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %329
  %337 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %338 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %337, i32 0, i32 15
  store i32 0, i32* %338, align 4
  br label %348

339:                                              ; preds = %329, %320
  %340 = load i32, i32* @ATH9K_RXERR_PHY, align 4
  %341 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %342 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %341, i32 0, i32 16
  %343 = load i32, i32* %342, align 4
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 4
  %345 = load i32, i32* %9, align 4
  %346 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %347 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %346, i32 0, i32 15
  store i32 %345, i32* %347, align 4
  br label %348

348:                                              ; preds = %339, %336
  br label %349

349:                                              ; preds = %348, %313
  br label %350

350:                                              ; preds = %349, %265
  %351 = load %struct.ar9003_rxs*, %struct.ar9003_rxs** %8, align 8
  %352 = getelementptr inbounds %struct.ar9003_rxs, %struct.ar9003_rxs* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @AR_KeyMiss, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %350
  %358 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %359 = load %struct.ath_rx_status*, %struct.ath_rx_status** %6, align 8
  %360 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %359, i32 0, i32 16
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 4
  br label %363

363:                                              ; preds = %357, %350
  store i32 0, i32* %4, align 4
  br label %364

364:                                              ; preds = %363, %40, %28, %18
  %365 = load i32, i32* %4, align 4
  ret i32 %365
}

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
