; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_def.c_ath9k_hw_def_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.ath_hw*, i32)* }
%struct.TYPE_4__ = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.TYPE_5__, %struct.modal_eep_header* }
%struct.TYPE_5__ = type { i32 }
%struct.modal_eep_header = type { i64, i64, i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_regulatory = type { i64 }

@Ar5416RateSize = common dso_local global i32 0, align 4
@AR5416_EEP_VER_MINOR_MASK = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_2 = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i64 0, align 8
@EEP_PWR_TABLE_OFFSET = common dso_local global i32 0, align 4
@AR_PHY_POWER_TX_RATE1 = common dso_local global i32 0, align 4
@rate18mb = common dso_local global i64 0, align 8
@rate12mb = common dso_local global i64 0, align 8
@rate9mb = common dso_local global i64 0, align 8
@rate6mb = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE2 = common dso_local global i32 0, align 4
@rate54mb = common dso_local global i64 0, align 8
@rate48mb = common dso_local global i64 0, align 8
@rate36mb = common dso_local global i64 0, align 8
@rate24mb = common dso_local global i64 0, align 8
@OLC_FOR_AR9280_20_LATER = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE3 = common dso_local global i32 0, align 4
@rate2s = common dso_local global i64 0, align 8
@rate2l = common dso_local global i64 0, align 8
@rateXr = common dso_local global i64 0, align 8
@rate1l = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE4 = common dso_local global i32 0, align 4
@rate11s = common dso_local global i64 0, align 8
@rate11l = common dso_local global i64 0, align 8
@rate5_5s = common dso_local global i64 0, align 8
@rate5_5l = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE5 = common dso_local global i32 0, align 4
@rateHt20_3 = common dso_local global i64 0, align 8
@rateHt20_2 = common dso_local global i64 0, align 8
@rateHt20_1 = common dso_local global i64 0, align 8
@rateHt20_0 = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE6 = common dso_local global i32 0, align 4
@rateHt20_7 = common dso_local global i64 0, align 8
@rateHt20_6 = common dso_local global i64 0, align 8
@rateHt20_5 = common dso_local global i64 0, align 8
@rateHt20_4 = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE7 = common dso_local global i32 0, align 4
@rateHt40_3 = common dso_local global i64 0, align 8
@rateHt40_2 = common dso_local global i64 0, align 8
@rateHt40_1 = common dso_local global i64 0, align 8
@rateHt40_0 = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE8 = common dso_local global i32 0, align 4
@rateHt40_7 = common dso_local global i64 0, align 8
@rateHt40_6 = common dso_local global i64 0, align 8
@rateHt40_5 = common dso_local global i64 0, align 8
@rateHt40_4 = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_RATE9 = common dso_local global i32 0, align 4
@rateExtOfdm = common dso_local global i64 0, align 8
@rateExtCck = common dso_local global i64 0, align 8
@rateDupOfdm = common dso_local global i64 0, align 8
@rateDupCck = common dso_local global i64 0, align 8
@AR_PHY_POWER_TX_SUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32, i64, i64, i32)* @ath9k_hw_def_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_def_set_txpower(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_regulatory*, align 8
  %14 = alloca %struct.ar5416_eeprom_def*, align 8
  %15 = alloca %struct.modal_eep_header*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %24 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %23)
  store %struct.ath_regulatory* %24, %struct.ath_regulatory** %13, align 8
  %25 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.ar5416_eeprom_def* %27, %struct.ar5416_eeprom_def** %14, align 8
  %28 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %14, align 8
  %29 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %28, i32 0, i32 1
  %30 = load %struct.modal_eep_header*, %struct.modal_eep_header** %29, align 8
  %31 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %32 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %30, i64 %33
  store %struct.modal_eep_header* %34, %struct.modal_eep_header** %15, align 8
  %35 = load i32, i32* @Ar5416RateSize, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %16, align 8
  %38 = alloca i64, i64 %36, align 16
  store i64 %36, i64* %17, align 8
  store i64 2, i64* %18, align 8
  store i32 0, i32* %20, align 4
  %39 = mul nuw i64 8, %36
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memset(i64* %38, i32 0, i32 %40)
  %42 = load %struct.ar5416_eeprom_def*, %struct.ar5416_eeprom_def** %14, align 8
  %43 = getelementptr inbounds %struct.ar5416_eeprom_def, %struct.ar5416_eeprom_def* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AR5416_EEP_VER_MINOR_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @AR5416_EEP_MINOR_VER_2, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %6
  %51 = load %struct.modal_eep_header*, %struct.modal_eep_header** %15, align 8
  %52 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %18, align 8
  br label %54

54:                                               ; preds = %50, %6
  %55 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %56 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %57 = getelementptr inbounds i64, i64* %38, i64 0
  %58 = load i32, i32* %9, align 4
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @ath9k_hw_set_def_power_per_rate_table(%struct.ath_hw* %55, %struct.ath9k_channel* %56, i64* %57, i32 %58, i64 %59, i64 %60)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %63 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %64 = call i32 @ath9k_hw_set_def_power_cal_table(%struct.ath_hw* %62, %struct.ath9k_channel* %63)
  %65 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %66 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  store i32 0, i32* %19, align 4
  br label %67

67:                                               ; preds = %100, %54
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @ARRAY_SIZE(i64* %38)
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %67
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %38, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MAX_RATE_POWER, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i64, i64* @MAX_RATE_POWER, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %38, i64 %81
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %71
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %38, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %89 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %38, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %98 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %92, %83
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %19, align 4
  br label %67

103:                                              ; preds = %67
  %104 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %105 = call i32 @ath9k_hw_update_regulatory_maxpower(%struct.ath_hw* %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 1, i32* %21, align 4
  br label %483

109:                                              ; preds = %103
  %110 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %111 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %109
  store i32 0, i32* %19, align 4
  br label %114

114:                                              ; preds = %135, %113
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* @Ar5416RateSize, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %114
  %119 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %120 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %122, align 8
  %124 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %125 = load i32, i32* @EEP_PWR_TABLE_OFFSET, align 4
  %126 = call i32 %123(%struct.ath_hw* %124, i32 %125)
  store i32 %126, i32* %22, align 4
  %127 = load i32, i32* %22, align 4
  %128 = mul nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %38, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %133, %129
  store i64 %134, i64* %132, align 8
  br label %135

135:                                              ; preds = %118
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %114

138:                                              ; preds = %114
  br label %139

139:                                              ; preds = %138, %109
  %140 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %141 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %140)
  %142 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %143 = load i32, i32* @AR_PHY_POWER_TX_RATE1, align 4
  %144 = load i64, i64* @rate18mb, align 8
  %145 = getelementptr inbounds i64, i64* %38, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @ATH9K_POW_SM(i64 %146, i32 24)
  %148 = load i64, i64* @rate12mb, align 8
  %149 = getelementptr inbounds i64, i64* %38, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @ATH9K_POW_SM(i64 %150, i32 16)
  %152 = or i32 %147, %151
  %153 = load i64, i64* @rate9mb, align 8
  %154 = getelementptr inbounds i64, i64* %38, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ATH9K_POW_SM(i64 %155, i32 8)
  %157 = or i32 %152, %156
  %158 = load i64, i64* @rate6mb, align 8
  %159 = getelementptr inbounds i64, i64* %38, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @ATH9K_POW_SM(i64 %160, i32 0)
  %162 = or i32 %157, %161
  %163 = call i32 @REG_WRITE(%struct.ath_hw* %142, i32 %143, i32 %162)
  %164 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %165 = load i32, i32* @AR_PHY_POWER_TX_RATE2, align 4
  %166 = load i64, i64* @rate54mb, align 8
  %167 = getelementptr inbounds i64, i64* %38, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @ATH9K_POW_SM(i64 %168, i32 24)
  %170 = load i64, i64* @rate48mb, align 8
  %171 = getelementptr inbounds i64, i64* %38, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @ATH9K_POW_SM(i64 %172, i32 16)
  %174 = or i32 %169, %173
  %175 = load i64, i64* @rate36mb, align 8
  %176 = getelementptr inbounds i64, i64* %38, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @ATH9K_POW_SM(i64 %177, i32 8)
  %179 = or i32 %174, %178
  %180 = load i64, i64* @rate24mb, align 8
  %181 = getelementptr inbounds i64, i64* %38, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @ATH9K_POW_SM(i64 %182, i32 0)
  %184 = or i32 %179, %183
  %185 = call i32 @REG_WRITE(%struct.ath_hw* %164, i32 %165, i32 %184)
  %186 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %187 = call i32 @IS_CHAN_2GHZ(%struct.ath9k_channel* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %304

189:                                              ; preds = %139
  %190 = load i64, i64* @OLC_FOR_AR9280_20_LATER, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %258

192:                                              ; preds = %189
  store i32 2, i32* %20, align 4
  %193 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %194 = load i32, i32* @AR_PHY_POWER_TX_RATE3, align 4
  %195 = load i64, i64* @rate2s, align 8
  %196 = getelementptr inbounds i64, i64* %38, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %20, align 4
  %199 = sext i32 %198 to i64
  %200 = sub nsw i64 %197, %199
  %201 = call i32 @ATH9K_POW_SM(i64 %200, i32 24)
  %202 = load i64, i64* @rate2l, align 8
  %203 = getelementptr inbounds i64, i64* %38, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = sub nsw i64 %204, %206
  %208 = call i32 @ATH9K_POW_SM(i64 %207, i32 16)
  %209 = or i32 %201, %208
  %210 = load i64, i64* @rateXr, align 8
  %211 = getelementptr inbounds i64, i64* %38, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @ATH9K_POW_SM(i64 %212, i32 8)
  %214 = or i32 %209, %213
  %215 = load i64, i64* @rate1l, align 8
  %216 = getelementptr inbounds i64, i64* %38, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %20, align 4
  %219 = sext i32 %218 to i64
  %220 = sub nsw i64 %217, %219
  %221 = call i32 @ATH9K_POW_SM(i64 %220, i32 0)
  %222 = or i32 %214, %221
  %223 = call i32 @REG_WRITE(%struct.ath_hw* %193, i32 %194, i32 %222)
  %224 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %225 = load i32, i32* @AR_PHY_POWER_TX_RATE4, align 4
  %226 = load i64, i64* @rate11s, align 8
  %227 = getelementptr inbounds i64, i64* %38, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %20, align 4
  %230 = sext i32 %229 to i64
  %231 = sub nsw i64 %228, %230
  %232 = call i32 @ATH9K_POW_SM(i64 %231, i32 24)
  %233 = load i64, i64* @rate11l, align 8
  %234 = getelementptr inbounds i64, i64* %38, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %20, align 4
  %237 = sext i32 %236 to i64
  %238 = sub nsw i64 %235, %237
  %239 = call i32 @ATH9K_POW_SM(i64 %238, i32 16)
  %240 = or i32 %232, %239
  %241 = load i64, i64* @rate5_5s, align 8
  %242 = getelementptr inbounds i64, i64* %38, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %20, align 4
  %245 = sext i32 %244 to i64
  %246 = sub nsw i64 %243, %245
  %247 = call i32 @ATH9K_POW_SM(i64 %246, i32 8)
  %248 = or i32 %240, %247
  %249 = load i64, i64* @rate5_5l, align 8
  %250 = getelementptr inbounds i64, i64* %38, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %20, align 4
  %253 = sext i32 %252 to i64
  %254 = sub nsw i64 %251, %253
  %255 = call i32 @ATH9K_POW_SM(i64 %254, i32 0)
  %256 = or i32 %248, %255
  %257 = call i32 @REG_WRITE(%struct.ath_hw* %224, i32 %225, i32 %256)
  br label %303

258:                                              ; preds = %189
  %259 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %260 = load i32, i32* @AR_PHY_POWER_TX_RATE3, align 4
  %261 = load i64, i64* @rate2s, align 8
  %262 = getelementptr inbounds i64, i64* %38, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @ATH9K_POW_SM(i64 %263, i32 24)
  %265 = load i64, i64* @rate2l, align 8
  %266 = getelementptr inbounds i64, i64* %38, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @ATH9K_POW_SM(i64 %267, i32 16)
  %269 = or i32 %264, %268
  %270 = load i64, i64* @rateXr, align 8
  %271 = getelementptr inbounds i64, i64* %38, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @ATH9K_POW_SM(i64 %272, i32 8)
  %274 = or i32 %269, %273
  %275 = load i64, i64* @rate1l, align 8
  %276 = getelementptr inbounds i64, i64* %38, i64 %275
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @ATH9K_POW_SM(i64 %277, i32 0)
  %279 = or i32 %274, %278
  %280 = call i32 @REG_WRITE(%struct.ath_hw* %259, i32 %260, i32 %279)
  %281 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %282 = load i32, i32* @AR_PHY_POWER_TX_RATE4, align 4
  %283 = load i64, i64* @rate11s, align 8
  %284 = getelementptr inbounds i64, i64* %38, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @ATH9K_POW_SM(i64 %285, i32 24)
  %287 = load i64, i64* @rate11l, align 8
  %288 = getelementptr inbounds i64, i64* %38, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @ATH9K_POW_SM(i64 %289, i32 16)
  %291 = or i32 %286, %290
  %292 = load i64, i64* @rate5_5s, align 8
  %293 = getelementptr inbounds i64, i64* %38, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @ATH9K_POW_SM(i64 %294, i32 8)
  %296 = or i32 %291, %295
  %297 = load i64, i64* @rate5_5l, align 8
  %298 = getelementptr inbounds i64, i64* %38, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @ATH9K_POW_SM(i64 %299, i32 0)
  %301 = or i32 %296, %300
  %302 = call i32 @REG_WRITE(%struct.ath_hw* %281, i32 %282, i32 %301)
  br label %303

303:                                              ; preds = %258, %192
  br label %304

304:                                              ; preds = %303, %139
  %305 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %306 = load i32, i32* @AR_PHY_POWER_TX_RATE5, align 4
  %307 = load i64, i64* @rateHt20_3, align 8
  %308 = getelementptr inbounds i64, i64* %38, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = call i32 @ATH9K_POW_SM(i64 %309, i32 24)
  %311 = load i64, i64* @rateHt20_2, align 8
  %312 = getelementptr inbounds i64, i64* %38, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @ATH9K_POW_SM(i64 %313, i32 16)
  %315 = or i32 %310, %314
  %316 = load i64, i64* @rateHt20_1, align 8
  %317 = getelementptr inbounds i64, i64* %38, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @ATH9K_POW_SM(i64 %318, i32 8)
  %320 = or i32 %315, %319
  %321 = load i64, i64* @rateHt20_0, align 8
  %322 = getelementptr inbounds i64, i64* %38, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = call i32 @ATH9K_POW_SM(i64 %323, i32 0)
  %325 = or i32 %320, %324
  %326 = call i32 @REG_WRITE(%struct.ath_hw* %305, i32 %306, i32 %325)
  %327 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %328 = load i32, i32* @AR_PHY_POWER_TX_RATE6, align 4
  %329 = load i64, i64* @rateHt20_7, align 8
  %330 = getelementptr inbounds i64, i64* %38, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = call i32 @ATH9K_POW_SM(i64 %331, i32 24)
  %333 = load i64, i64* @rateHt20_6, align 8
  %334 = getelementptr inbounds i64, i64* %38, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @ATH9K_POW_SM(i64 %335, i32 16)
  %337 = or i32 %332, %336
  %338 = load i64, i64* @rateHt20_5, align 8
  %339 = getelementptr inbounds i64, i64* %38, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = call i32 @ATH9K_POW_SM(i64 %340, i32 8)
  %342 = or i32 %337, %341
  %343 = load i64, i64* @rateHt20_4, align 8
  %344 = getelementptr inbounds i64, i64* %38, i64 %343
  %345 = load i64, i64* %344, align 8
  %346 = call i32 @ATH9K_POW_SM(i64 %345, i32 0)
  %347 = or i32 %342, %346
  %348 = call i32 @REG_WRITE(%struct.ath_hw* %327, i32 %328, i32 %347)
  %349 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %350 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %468

352:                                              ; preds = %304
  %353 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %354 = load i32, i32* @AR_PHY_POWER_TX_RATE7, align 4
  %355 = load i64, i64* @rateHt40_3, align 8
  %356 = getelementptr inbounds i64, i64* %38, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* %18, align 8
  %359 = add nsw i64 %357, %358
  %360 = call i32 @ATH9K_POW_SM(i64 %359, i32 24)
  %361 = load i64, i64* @rateHt40_2, align 8
  %362 = getelementptr inbounds i64, i64* %38, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* %18, align 8
  %365 = add nsw i64 %363, %364
  %366 = call i32 @ATH9K_POW_SM(i64 %365, i32 16)
  %367 = or i32 %360, %366
  %368 = load i64, i64* @rateHt40_1, align 8
  %369 = getelementptr inbounds i64, i64* %38, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* %18, align 8
  %372 = add nsw i64 %370, %371
  %373 = call i32 @ATH9K_POW_SM(i64 %372, i32 8)
  %374 = or i32 %367, %373
  %375 = load i64, i64* @rateHt40_0, align 8
  %376 = getelementptr inbounds i64, i64* %38, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* %18, align 8
  %379 = add nsw i64 %377, %378
  %380 = call i32 @ATH9K_POW_SM(i64 %379, i32 0)
  %381 = or i32 %374, %380
  %382 = call i32 @REG_WRITE(%struct.ath_hw* %353, i32 %354, i32 %381)
  %383 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %384 = load i32, i32* @AR_PHY_POWER_TX_RATE8, align 4
  %385 = load i64, i64* @rateHt40_7, align 8
  %386 = getelementptr inbounds i64, i64* %38, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* %18, align 8
  %389 = add nsw i64 %387, %388
  %390 = call i32 @ATH9K_POW_SM(i64 %389, i32 24)
  %391 = load i64, i64* @rateHt40_6, align 8
  %392 = getelementptr inbounds i64, i64* %38, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* %18, align 8
  %395 = add nsw i64 %393, %394
  %396 = call i32 @ATH9K_POW_SM(i64 %395, i32 16)
  %397 = or i32 %390, %396
  %398 = load i64, i64* @rateHt40_5, align 8
  %399 = getelementptr inbounds i64, i64* %38, i64 %398
  %400 = load i64, i64* %399, align 8
  %401 = load i64, i64* %18, align 8
  %402 = add nsw i64 %400, %401
  %403 = call i32 @ATH9K_POW_SM(i64 %402, i32 8)
  %404 = or i32 %397, %403
  %405 = load i64, i64* @rateHt40_4, align 8
  %406 = getelementptr inbounds i64, i64* %38, i64 %405
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* %18, align 8
  %409 = add nsw i64 %407, %408
  %410 = call i32 @ATH9K_POW_SM(i64 %409, i32 0)
  %411 = or i32 %404, %410
  %412 = call i32 @REG_WRITE(%struct.ath_hw* %383, i32 %384, i32 %411)
  %413 = load i64, i64* @OLC_FOR_AR9280_20_LATER, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %444

415:                                              ; preds = %352
  %416 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %417 = load i32, i32* @AR_PHY_POWER_TX_RATE9, align 4
  %418 = load i64, i64* @rateExtOfdm, align 8
  %419 = getelementptr inbounds i64, i64* %38, i64 %418
  %420 = load i64, i64* %419, align 8
  %421 = call i32 @ATH9K_POW_SM(i64 %420, i32 24)
  %422 = load i64, i64* @rateExtCck, align 8
  %423 = getelementptr inbounds i64, i64* %38, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = load i32, i32* %20, align 4
  %426 = sext i32 %425 to i64
  %427 = sub nsw i64 %424, %426
  %428 = call i32 @ATH9K_POW_SM(i64 %427, i32 16)
  %429 = or i32 %421, %428
  %430 = load i64, i64* @rateDupOfdm, align 8
  %431 = getelementptr inbounds i64, i64* %38, i64 %430
  %432 = load i64, i64* %431, align 8
  %433 = call i32 @ATH9K_POW_SM(i64 %432, i32 8)
  %434 = or i32 %429, %433
  %435 = load i64, i64* @rateDupCck, align 8
  %436 = getelementptr inbounds i64, i64* %38, i64 %435
  %437 = load i64, i64* %436, align 8
  %438 = load i32, i32* %20, align 4
  %439 = sext i32 %438 to i64
  %440 = sub nsw i64 %437, %439
  %441 = call i32 @ATH9K_POW_SM(i64 %440, i32 0)
  %442 = or i32 %434, %441
  %443 = call i32 @REG_WRITE(%struct.ath_hw* %416, i32 %417, i32 %442)
  br label %467

444:                                              ; preds = %352
  %445 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %446 = load i32, i32* @AR_PHY_POWER_TX_RATE9, align 4
  %447 = load i64, i64* @rateExtOfdm, align 8
  %448 = getelementptr inbounds i64, i64* %38, i64 %447
  %449 = load i64, i64* %448, align 8
  %450 = call i32 @ATH9K_POW_SM(i64 %449, i32 24)
  %451 = load i64, i64* @rateExtCck, align 8
  %452 = getelementptr inbounds i64, i64* %38, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = call i32 @ATH9K_POW_SM(i64 %453, i32 16)
  %455 = or i32 %450, %454
  %456 = load i64, i64* @rateDupOfdm, align 8
  %457 = getelementptr inbounds i64, i64* %38, i64 %456
  %458 = load i64, i64* %457, align 8
  %459 = call i32 @ATH9K_POW_SM(i64 %458, i32 8)
  %460 = or i32 %455, %459
  %461 = load i64, i64* @rateDupCck, align 8
  %462 = getelementptr inbounds i64, i64* %38, i64 %461
  %463 = load i64, i64* %462, align 8
  %464 = call i32 @ATH9K_POW_SM(i64 %463, i32 0)
  %465 = or i32 %460, %464
  %466 = call i32 @REG_WRITE(%struct.ath_hw* %445, i32 %446, i32 %465)
  br label %467

467:                                              ; preds = %444, %415
  br label %468

468:                                              ; preds = %467, %304
  %469 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %470 = load i32, i32* @AR_PHY_POWER_TX_SUB, align 4
  %471 = load %struct.modal_eep_header*, %struct.modal_eep_header** %15, align 8
  %472 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %471, i32 0, i32 1
  %473 = load i64, i64* %472, align 8
  %474 = call i32 @ATH9K_POW_SM(i64 %473, i32 6)
  %475 = load %struct.modal_eep_header*, %struct.modal_eep_header** %15, align 8
  %476 = getelementptr inbounds %struct.modal_eep_header, %struct.modal_eep_header* %475, i32 0, i32 2
  %477 = load i64, i64* %476, align 8
  %478 = call i32 @ATH9K_POW_SM(i64 %477, i32 0)
  %479 = or i32 %474, %478
  %480 = call i32 @REG_WRITE(%struct.ath_hw* %469, i32 %470, i32 %479)
  %481 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %482 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %481)
  store i32 0, i32* %21, align 4
  br label %483

483:                                              ; preds = %468, %108
  %484 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %484)
  %485 = load i32, i32* %21, align 4
  switch i32 %485, label %487 [
    i32 0, label %486
    i32 1, label %486
  ]

486:                                              ; preds = %483, %483
  ret void

487:                                              ; preds = %483
  unreachable
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

declare dso_local i32 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_def_power_per_rate_table(%struct.ath_hw*, %struct.ath9k_channel*, i64*, i32, i64, i64) #1

declare dso_local i32 @ath9k_hw_set_def_power_cal_table(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @ath9k_hw_update_regulatory_maxpower(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ATH9K_POW_SM(i64, i32) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
