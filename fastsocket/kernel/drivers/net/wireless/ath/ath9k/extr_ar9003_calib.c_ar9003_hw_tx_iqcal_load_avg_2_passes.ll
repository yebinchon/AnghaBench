; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_tx_iqcal_load_avg_2_passes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_tx_iqcal_load_avg_2_passes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ath9k_hw_cal_data* }
%struct.ath9k_hw_cal_data = type { i32**, i32*, i32 }
%struct.coeff = type { i32**, i32**, i32* }

@MAX_MEASUREMENT = common dso_local global i32 0, align 4
@AR9300_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_STATUS_B0 = common dso_local global i32 0, align 4
@AR_PHY_CALIBRATED_GAINS_0 = common dso_local global i32 0, align 4
@MAX_MAG_DELTA = common dso_local global i32 0, align 4
@MAX_PHS_DELTA = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_3 = common dso_local global i32 0, align 4
@AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_B0 = common dso_local global i32 0, align 4
@AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.coeff*, i32)* @ar9003_hw_tx_iqcal_load_avg_2_passes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_tx_iqcal_load_avg_2_passes(%struct.ath_hw* %0, %struct.coeff* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.coeff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ath9k_hw_cal_data*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.coeff* %1, %struct.coeff** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @MAX_MEASUREMENT, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = mul nuw i64 %15, %17
  %20 = alloca i32, i64 %19, align 16
  store i64 %15, i64* %11, align 8
  store i64 %17, i64* %12, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 1
  %23 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %22, align 8
  store %struct.ath9k_hw_cal_data* %23, %struct.ath9k_hw_cal_data** %13, align 8
  %24 = bitcast i32* %20 to i32**
  %25 = mul nuw i64 %15, %17
  %26 = mul nuw i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32** %24, i32 0, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %85, %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MAX_MEASUREMENT, align 4
  %32 = sdiv i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B0(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %37, 2
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %40, %17
  %42 = getelementptr inbounds i32, i32* %20, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %36, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, %17
  %48 = getelementptr inbounds i32, i32* %20, i64 %47
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %36, i32* %49, align 4
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = call i32 @AR_SREV_9485(%struct.ath_hw* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B1(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %17
  %61 = getelementptr inbounds i32, i32* %20, i64 %60
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %55, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, %17
  %67 = getelementptr inbounds i32, i32* %20, i64 %66
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %55, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B2(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 2
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, %17
  %76 = getelementptr inbounds i32, i32* %20, i64 %75
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %80, %17
  %82 = getelementptr inbounds i32, i32* %20, i64 %81
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 %70, i32* %83, align 4
  br label %84

84:                                               ; preds = %53, %34
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %29

88:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %244, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @AR9300_MAX_CHAINS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %247

93:                                               ; preds = %89
  %94 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %95 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = shl i32 1, %97
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  br label %244

102:                                              ; preds = %93
  %103 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %104 = load i32, i32* @AR_PHY_TX_IQCAL_STATUS_B0, align 4
  %105 = load i32, i32* @AR_PHY_CALIBRATED_GAINS_0, align 4
  %106 = call i32 @REG_READ_FIELD(%struct.ath_hw* %103, i32 %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @MAX_MEASUREMENT, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @MAX_MEASUREMENT, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %110, %102
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load %struct.coeff*, %struct.coeff** %5, align 8
  %117 = getelementptr inbounds %struct.coeff, %struct.coeff* %116, i32 0, i32 0
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @MAX_MAG_DELTA, align 4
  %125 = call i32 @ar9003_hw_detect_outlier(i32* %122, i32 %123, i32 %124)
  %126 = load %struct.coeff*, %struct.coeff** %5, align 8
  %127 = getelementptr inbounds %struct.coeff, %struct.coeff* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @MAX_PHS_DELTA, align 4
  %135 = call i32 @ar9003_hw_detect_outlier(i32* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %115, %112
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %229, %136
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %232

141:                                              ; preds = %137
  %142 = load %struct.coeff*, %struct.coeff** %5, align 8
  %143 = getelementptr inbounds %struct.coeff, %struct.coeff* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 127
  %154 = load %struct.coeff*, %struct.coeff** %5, align 8
  %155 = getelementptr inbounds %struct.coeff, %struct.coeff* %154, i32 0, i32 1
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 127
  %166 = shl i32 %165, 7
  %167 = or i32 %153, %166
  %168 = load %struct.coeff*, %struct.coeff** %5, align 8
  %169 = getelementptr inbounds %struct.coeff, %struct.coeff* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %167, i32* %171, align 4
  %172 = load i32, i32* %8, align 4
  %173 = srem i32 %172, 2
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %141
  %176 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = mul nsw i64 %178, %17
  %180 = getelementptr inbounds i32, i32* %20, i64 %179
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_00_COEFF_TABLE, align 4
  %186 = load %struct.coeff*, %struct.coeff** %5, align 8
  %187 = getelementptr inbounds %struct.coeff, %struct.coeff* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %176, i32 %184, i32 %185, i32 %190)
  br label %209

192:                                              ; preds = %141
  %193 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = mul nsw i64 %195, %17
  %197 = getelementptr inbounds i32, i32* %20, i64 %196
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @AR_PHY_TX_IQCAL_CORR_COEFF_01_COEFF_TABLE, align 4
  %203 = load %struct.coeff*, %struct.coeff** %5, align 8
  %204 = getelementptr inbounds %struct.coeff, %struct.coeff* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %193, i32 %201, i32 %202, i32 %207)
  br label %209

209:                                              ; preds = %192, %175
  %210 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  %211 = icmp ne %struct.ath9k_hw_cal_data* %210, null
  br i1 %211, label %212, label %228

212:                                              ; preds = %209
  %213 = load %struct.coeff*, %struct.coeff** %5, align 8
  %214 = getelementptr inbounds %struct.coeff, %struct.coeff* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  %219 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %218, i32 0, i32 0
  %220 = load i32**, i32*** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %217, i32* %227, align 4
  br label %228

228:                                              ; preds = %212, %209
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %137

232:                                              ; preds = %137
  %233 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  %234 = icmp ne %struct.ath9k_hw_cal_data* %233, null
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  %238 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %236, i32* %242, align 4
  br label %243

243:                                              ; preds = %235, %232
  br label %244

244:                                              ; preds = %243, %101
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %89

247:                                              ; preds = %89
  %248 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %249 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_3, align 4
  %250 = load i32, i32* @AR_PHY_TX_IQCAL_CONTROL_3_IQCORR_EN, align 4
  %251 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %248, i32 %249, i32 %250, i32 1)
  %252 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %253 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_B0, align 4
  %254 = load i32, i32* @AR_PHY_RX_IQCAL_CORR_B0_LOOPBACK_IQCORR_EN, align 4
  %255 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %252, i32 %253, i32 %254, i32 1)
  %256 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  %257 = icmp ne %struct.ath9k_hw_cal_data* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %247
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.ath9k_hw_cal_data*, %struct.ath9k_hw_cal_data** %13, align 8
  %261 = getelementptr inbounds %struct.ath9k_hw_cal_data, %struct.ath9k_hw_cal_data* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  br label %262

262:                                              ; preds = %258, %247
  %263 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %263)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B0(i32) #2

declare dso_local i32 @AR_SREV_9485(%struct.ath_hw*) #2

declare dso_local i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B1(i32) #2

declare dso_local i32 @AR_PHY_TX_IQCAL_CORR_COEFF_B2(i32) #2

declare dso_local i32 @REG_READ_FIELD(%struct.ath_hw*, i32, i32) #2

declare dso_local i32 @ar9003_hw_detect_outlier(i32*, i32, i32) #2

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
