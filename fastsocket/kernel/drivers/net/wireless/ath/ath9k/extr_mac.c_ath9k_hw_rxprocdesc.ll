; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_rxprocdesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_rxprocdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ath_rx_status = type { i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.ar5416_desc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR_RxDone = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@AR_DataLen = common dso_local global i32 0, align 4
@AR_PostDelimCRCErr = common dso_local global i32 0, align 4
@ATH9K_RSSI_BAD = common dso_local global i8* null, align 8
@AR_RxRSSICombined = common dso_local global i32 0, align 4
@AR_RxRSSIAnt00 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt01 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt02 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt10 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt11 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt12 = common dso_local global i32 0, align 4
@AR_RxKeyIdxValid = common dso_local global i32 0, align 4
@AR_KeyIdx = common dso_local global i32 0, align 4
@ATH9K_RXKEYIX_INVALID = common dso_local global i8* null, align 8
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
@ATH9K_RX_DELIM_CRC_POST = common dso_local global i32 0, align 4
@AR_DecryptBusyErr = common dso_local global i32 0, align 4
@ATH9K_RX_DECRYPT_BUSY = common dso_local global i32 0, align 4
@AR_RxFrameOK = common dso_local global i32 0, align 4
@AR_PHYErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_PHY = common dso_local global i32 0, align 4
@AR_PHYErrCode = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_CRC = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR_MichaelErr = common dso_local global i32 0, align 4
@ATH9K_RXERR_MIC = common dso_local global i32 0, align 4
@ATH9K_RXERR_CORRUPT_DESC = common dso_local global i32 0, align 4
@AR_KeyMiss = common dso_local global i32 0, align 4
@ATH9K_RXERR_KEYMISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_rxprocdesc(%struct.ath_hw* %0, %struct.ath_desc* %1, %struct.ath_rx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca %struct.ath_rx_status*, align 8
  %8 = alloca %struct.ar5416_desc, align 4
  %9 = alloca %struct.ar5416_desc*, align 8
  %10 = alloca i8*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %6, align 8
  store %struct.ath_rx_status* %2, %struct.ath_rx_status** %7, align 8
  %11 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %12 = call %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc* %11)
  store %struct.ar5416_desc* %12, %struct.ar5416_desc** %9, align 8
  %13 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %14 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AR_RxDone, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINPROGRESS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %340

22:                                               ; preds = %3
  %23 = load %struct.ar5416_desc*, %struct.ar5416_desc** %9, align 8
  %24 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %30 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %29, i32 0, i32 5
  store i32 0, i32* %30, align 4
  %31 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %32 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %31, i32 0, i32 7
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AR_DataLen, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %38 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %42 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %41, i32 0, i32 17
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AR_PostDelimCRCErr, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %22
  %49 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %50 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %51 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %50, i32 0, i32 16
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %53 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %54 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %53, i32 0, i32 15
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %56 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %57 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %56, i32 0, i32 14
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %59 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %60 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %59, i32 0, i32 13
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %62 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %63 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %62, i32 0, i32 12
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %65 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %66 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %65, i32 0, i32 11
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @ATH9K_RSSI_BAD, align 8
  %68 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %69 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %68, i32 0, i32 10
  store i8* %67, i8** %69, align 8
  br label %113

70:                                               ; preds = %22
  %71 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AR_RxRSSICombined, align 4
  %74 = call i8* @MS(i32 %72, i32 %73)
  %75 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %76 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %75, i32 0, i32 16
  store i8* %74, i8** %76, align 8
  %77 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AR_RxRSSIAnt00, align 4
  %80 = call i8* @MS(i32 %78, i32 %79)
  %81 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %82 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %81, i32 0, i32 15
  store i8* %80, i8** %82, align 8
  %83 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AR_RxRSSIAnt01, align 4
  %86 = call i8* @MS(i32 %84, i32 %85)
  %87 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %88 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %87, i32 0, i32 14
  store i8* %86, i8** %88, align 8
  %89 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AR_RxRSSIAnt02, align 4
  %92 = call i8* @MS(i32 %90, i32 %91)
  %93 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %94 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %93, i32 0, i32 13
  store i8* %92, i8** %94, align 8
  %95 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @AR_RxRSSIAnt10, align 4
  %98 = call i8* @MS(i32 %96, i32 %97)
  %99 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %100 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %99, i32 0, i32 12
  store i8* %98, i8** %100, align 8
  %101 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AR_RxRSSIAnt11, align 4
  %104 = call i8* @MS(i32 %102, i32 %103)
  %105 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %106 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %105, i32 0, i32 11
  store i8* %104, i8** %106, align 8
  %107 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AR_RxRSSIAnt12, align 4
  %110 = call i8* @MS(i32 %108, i32 %109)
  %111 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %112 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %111, i32 0, i32 10
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %70, %48
  %114 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AR_RxKeyIdxValid, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AR_KeyIdx, align 4
  %123 = call i8* @MS(i32 %121, i32 %122)
  %124 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %125 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %124, i32 0, i32 9
  store i8* %123, i8** %125, align 8
  br label %130

126:                                              ; preds = %113
  %127 = load i8*, i8** @ATH9K_RXKEYIX_INVALID, align 8
  %128 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %129 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %128, i32 0, i32 9
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %119
  %131 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AR_RxRate, align 4
  %134 = call i8* @MS(i32 %132, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %137 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @AR_RxMore, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 1, i32 0
  %145 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %146 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @AR_RxAggr, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  %154 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %155 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AR_RxMoreAggr, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 1, i32 0
  %163 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %164 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @AR_RxAntenna, align 4
  %168 = call i8* @MS(i32 %166, i32 %167)
  %169 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %170 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %169, i32 0, i32 8
  store i8* %168, i8** %170, align 8
  %171 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @AR_GI, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %130
  %177 = load i32, i32* @ATH9K_RX_GI, align 4
  br label %179

178:                                              ; preds = %130
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i32 [ %177, %176 ], [ 0, %178 ]
  %181 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %182 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %181, i32 0, i32 7
  store i32 %180, i32* %182, align 8
  %183 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @AR_2040, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %179
  %189 = load i32, i32* @ATH9K_RX_2040, align 4
  br label %191

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190, %188
  %192 = phi i32 [ %189, %188 ], [ 0, %190 ]
  %193 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %194 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @AR_PreDelimCRCErr, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %191
  %203 = load i32, i32* @ATH9K_RX_DELIM_CRC_PRE, align 4
  %204 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %205 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %202, %191
  %209 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @AR_PostDelimCRCErr, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load i32, i32* @ATH9K_RX_DELIM_CRC_POST, align 4
  %216 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %217 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %208
  %221 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @AR_DecryptBusyErr, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = load i32, i32* @ATH9K_RX_DECRYPT_BUSY, align 4
  %228 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %229 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %226, %220
  %233 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @AR_RxFrameOK, align 4
  %236 = and i32 %234, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %297

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @AR_PHYErr, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %257

244:                                              ; preds = %238
  %245 = load i32, i32* @ATH9K_RXERR_PHY, align 4
  %246 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %247 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 4
  %250 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @AR_PHYErrCode, align 4
  %253 = call i8* @MS(i32 %251, i32 %252)
  store i8* %253, i8** %10, align 8
  %254 = load i8*, i8** %10, align 8
  %255 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %256 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %255, i32 0, i32 6
  store i8* %254, i8** %256, align 8
  br label %296

257:                                              ; preds = %238
  %258 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @AR_CRCErr, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %257
  %264 = load i32, i32* @ATH9K_RXERR_CRC, align 4
  %265 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %266 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %295

269:                                              ; preds = %257
  %270 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @AR_DecryptCRCErr, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = load i32, i32* @ATH9K_RXERR_DECRYPT, align 4
  %277 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %278 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 4
  br label %294

281:                                              ; preds = %269
  %282 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @AR_MichaelErr, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %281
  %288 = load i32, i32* @ATH9K_RXERR_MIC, align 4
  %289 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %290 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %281
  br label %294

294:                                              ; preds = %293, %275
  br label %295

295:                                              ; preds = %294, %263
  br label %296

296:                                              ; preds = %295, %244
  br label %327

297:                                              ; preds = %232
  %298 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @AR_CRCErr, align 4
  %301 = load i32, i32* @AR_PHYErr, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @AR_DecryptCRCErr, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @AR_MichaelErr, align 4
  %306 = or i32 %304, %305
  %307 = and i32 %299, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %297
  %310 = load i32, i32* @ATH9K_RXERR_CORRUPT_DESC, align 4
  %311 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %312 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %309, %297
  %316 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %317 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp sge i32 %318, 144
  br i1 %319, label %320, label %326

320:                                              ; preds = %315
  %321 = load i32, i32* @ATH9K_RXERR_CORRUPT_DESC, align 4
  %322 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %323 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 4
  br label %326

326:                                              ; preds = %320, %315
  br label %327

327:                                              ; preds = %326, %296
  %328 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %8, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @AR_KeyMiss, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %327
  %334 = load i32, i32* @ATH9K_RXERR_KEYMISS, align 4
  %335 = load %struct.ath_rx_status*, %struct.ath_rx_status** %7, align 8
  %336 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 4
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 4
  br label %339

339:                                              ; preds = %333, %327
  store i32 0, i32* %4, align 4
  br label %340

340:                                              ; preds = %339, %19
  %341 = load i32, i32* %4, align 4
  ret i32 %341
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(%struct.ath_desc*) #1

declare dso_local i8* @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
