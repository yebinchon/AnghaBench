; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_set_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_9287.c_ath9k_hw_ar9287_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ar9287_eeprom }
%struct.ar9287_eeprom = type { %struct.TYPE_4__, %struct.modal_eep_ar9287_header }
%struct.TYPE_4__ = type { i32 }
%struct.modal_eep_ar9287_header = type { i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_regulatory = type { i64 }

@Ar5416RateSize = common dso_local global i32 0, align 4
@AR9287_EEP_VER_MINOR_MASK = common dso_local global i32 0, align 4
@AR9287_EEP_MINOR_VER_2 = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i64 0, align 8
@AR9287_PWR_TABLE_OFFSET_DB = common dso_local global i32 0, align 4
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
@EEP_OL_PWRCTRL = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32, i64, i64, i32)* @ath9k_hw_ar9287_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_ar9287_set_txpower(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_regulatory*, align 8
  %14 = alloca %struct.ar9287_eeprom*, align 8
  %15 = alloca %struct.modal_eep_ar9287_header*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %22 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %21)
  store %struct.ath_regulatory* %22, %struct.ath_regulatory** %13, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.ar9287_eeprom* %25, %struct.ar9287_eeprom** %14, align 8
  %26 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %14, align 8
  %27 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %26, i32 0, i32 1
  store %struct.modal_eep_ar9287_header* %27, %struct.modal_eep_ar9287_header** %15, align 8
  %28 = load i32, i32* @Ar5416RateSize, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i64, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  store i64 2, i64* %18, align 8
  %32 = mul nuw i64 8, %29
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i64* %31, i32 0, i32 %33)
  %35 = load %struct.ar9287_eeprom*, %struct.ar9287_eeprom** %14, align 8
  %36 = getelementptr inbounds %struct.ar9287_eeprom, %struct.ar9287_eeprom* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AR9287_EEP_VER_MINOR_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @AR9287_EEP_MINOR_VER_2, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %6
  %44 = load %struct.modal_eep_ar9287_header*, %struct.modal_eep_ar9287_header** %15, align 8
  %45 = getelementptr inbounds %struct.modal_eep_ar9287_header, %struct.modal_eep_ar9287_header* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %18, align 8
  br label %47

47:                                               ; preds = %43, %6
  %48 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %49 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %50 = getelementptr inbounds i64, i64* %31, i64 0
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @ath9k_hw_set_ar9287_power_per_rate_table(%struct.ath_hw* %48, %struct.ath9k_channel* %49, i64* %50, i32 %51, i64 %52, i64 %53)
  %55 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %56 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %57 = call i32 @ath9k_hw_set_ar9287_power_cal_table(%struct.ath_hw* %55, %struct.ath9k_channel* %56)
  %58 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %59 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %93, %47
  %61 = load i32, i32* %19, align 4
  %62 = call i32 @ARRAY_SIZE(i64* %31)
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %96

64:                                               ; preds = %60
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %31, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MAX_RATE_POWER, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i64, i64* @MAX_RATE_POWER, align 8
  %73 = load i32, i32* %19, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %31, i64 %74
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %64
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %31, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %82 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %76
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %31, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ath_regulatory*, %struct.ath_regulatory** %13, align 8
  %91 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %85, %76
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %19, align 4
  br label %60

96:                                               ; preds = %60
  %97 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %98 = call i32 @ath9k_hw_update_regulatory_maxpower(%struct.ath_hw* %97)
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 1, i32* %20, align 4
  br label %399

102:                                              ; preds = %96
  store i32 0, i32* %19, align 4
  br label %103

103:                                              ; preds = %116, %102
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* @Ar5416RateSize, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i32, i32* @AR9287_PWR_TABLE_OFFSET_DB, align 4
  %109 = mul nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %31, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, %110
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  br label %103

119:                                              ; preds = %103
  %120 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %121 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %120)
  %122 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %123 = load i32, i32* @AR_PHY_POWER_TX_RATE1, align 4
  %124 = load i64, i64* @rate18mb, align 8
  %125 = getelementptr inbounds i64, i64* %31, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ATH9K_POW_SM(i64 %126, i32 24)
  %128 = load i64, i64* @rate12mb, align 8
  %129 = getelementptr inbounds i64, i64* %31, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @ATH9K_POW_SM(i64 %130, i32 16)
  %132 = or i32 %127, %131
  %133 = load i64, i64* @rate9mb, align 8
  %134 = getelementptr inbounds i64, i64* %31, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @ATH9K_POW_SM(i64 %135, i32 8)
  %137 = or i32 %132, %136
  %138 = load i64, i64* @rate6mb, align 8
  %139 = getelementptr inbounds i64, i64* %31, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @ATH9K_POW_SM(i64 %140, i32 0)
  %142 = or i32 %137, %141
  %143 = call i32 @REG_WRITE(%struct.ath_hw* %122, i32 %123, i32 %142)
  %144 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %145 = load i32, i32* @AR_PHY_POWER_TX_RATE2, align 4
  %146 = load i64, i64* @rate54mb, align 8
  %147 = getelementptr inbounds i64, i64* %31, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @ATH9K_POW_SM(i64 %148, i32 24)
  %150 = load i64, i64* @rate48mb, align 8
  %151 = getelementptr inbounds i64, i64* %31, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @ATH9K_POW_SM(i64 %152, i32 16)
  %154 = or i32 %149, %153
  %155 = load i64, i64* @rate36mb, align 8
  %156 = getelementptr inbounds i64, i64* %31, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @ATH9K_POW_SM(i64 %157, i32 8)
  %159 = or i32 %154, %158
  %160 = load i64, i64* @rate24mb, align 8
  %161 = getelementptr inbounds i64, i64* %31, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @ATH9K_POW_SM(i64 %162, i32 0)
  %164 = or i32 %159, %163
  %165 = call i32 @REG_WRITE(%struct.ath_hw* %144, i32 %145, i32 %164)
  %166 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %167 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %214

169:                                              ; preds = %119
  %170 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %171 = load i32, i32* @AR_PHY_POWER_TX_RATE3, align 4
  %172 = load i64, i64* @rate2s, align 8
  %173 = getelementptr inbounds i64, i64* %31, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @ATH9K_POW_SM(i64 %174, i32 24)
  %176 = load i64, i64* @rate2l, align 8
  %177 = getelementptr inbounds i64, i64* %31, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @ATH9K_POW_SM(i64 %178, i32 16)
  %180 = or i32 %175, %179
  %181 = load i64, i64* @rateXr, align 8
  %182 = getelementptr inbounds i64, i64* %31, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @ATH9K_POW_SM(i64 %183, i32 8)
  %185 = or i32 %180, %184
  %186 = load i64, i64* @rate1l, align 8
  %187 = getelementptr inbounds i64, i64* %31, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @ATH9K_POW_SM(i64 %188, i32 0)
  %190 = or i32 %185, %189
  %191 = call i32 @REG_WRITE(%struct.ath_hw* %170, i32 %171, i32 %190)
  %192 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %193 = load i32, i32* @AR_PHY_POWER_TX_RATE4, align 4
  %194 = load i64, i64* @rate11s, align 8
  %195 = getelementptr inbounds i64, i64* %31, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @ATH9K_POW_SM(i64 %196, i32 24)
  %198 = load i64, i64* @rate11l, align 8
  %199 = getelementptr inbounds i64, i64* %31, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @ATH9K_POW_SM(i64 %200, i32 16)
  %202 = or i32 %197, %201
  %203 = load i64, i64* @rate5_5s, align 8
  %204 = getelementptr inbounds i64, i64* %31, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @ATH9K_POW_SM(i64 %205, i32 8)
  %207 = or i32 %202, %206
  %208 = load i64, i64* @rate5_5l, align 8
  %209 = getelementptr inbounds i64, i64* %31, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @ATH9K_POW_SM(i64 %210, i32 0)
  %212 = or i32 %207, %211
  %213 = call i32 @REG_WRITE(%struct.ath_hw* %192, i32 %193, i32 %212)
  br label %214

214:                                              ; preds = %169, %119
  %215 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %216 = load i32, i32* @AR_PHY_POWER_TX_RATE5, align 4
  %217 = load i64, i64* @rateHt20_3, align 8
  %218 = getelementptr inbounds i64, i64* %31, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @ATH9K_POW_SM(i64 %219, i32 24)
  %221 = load i64, i64* @rateHt20_2, align 8
  %222 = getelementptr inbounds i64, i64* %31, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @ATH9K_POW_SM(i64 %223, i32 16)
  %225 = or i32 %220, %224
  %226 = load i64, i64* @rateHt20_1, align 8
  %227 = getelementptr inbounds i64, i64* %31, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @ATH9K_POW_SM(i64 %228, i32 8)
  %230 = or i32 %225, %229
  %231 = load i64, i64* @rateHt20_0, align 8
  %232 = getelementptr inbounds i64, i64* %31, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @ATH9K_POW_SM(i64 %233, i32 0)
  %235 = or i32 %230, %234
  %236 = call i32 @REG_WRITE(%struct.ath_hw* %215, i32 %216, i32 %235)
  %237 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %238 = load i32, i32* @AR_PHY_POWER_TX_RATE6, align 4
  %239 = load i64, i64* @rateHt20_7, align 8
  %240 = getelementptr inbounds i64, i64* %31, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @ATH9K_POW_SM(i64 %241, i32 24)
  %243 = load i64, i64* @rateHt20_6, align 8
  %244 = getelementptr inbounds i64, i64* %31, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @ATH9K_POW_SM(i64 %245, i32 16)
  %247 = or i32 %242, %246
  %248 = load i64, i64* @rateHt20_5, align 8
  %249 = getelementptr inbounds i64, i64* %31, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @ATH9K_POW_SM(i64 %250, i32 8)
  %252 = or i32 %247, %251
  %253 = load i64, i64* @rateHt20_4, align 8
  %254 = getelementptr inbounds i64, i64* %31, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @ATH9K_POW_SM(i64 %255, i32 0)
  %257 = or i32 %252, %256
  %258 = call i32 @REG_WRITE(%struct.ath_hw* %237, i32 %238, i32 %257)
  %259 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %260 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %396

262:                                              ; preds = %214
  %263 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %264 = load i32, i32* @EEP_OL_PWRCTRL, align 4
  %265 = call i64 @ath9k_hw_ar9287_get_eeprom(%struct.ath_hw* %263, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %312

267:                                              ; preds = %262
  %268 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %269 = load i32, i32* @AR_PHY_POWER_TX_RATE7, align 4
  %270 = load i64, i64* @rateHt40_3, align 8
  %271 = getelementptr inbounds i64, i64* %31, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @ATH9K_POW_SM(i64 %272, i32 24)
  %274 = load i64, i64* @rateHt40_2, align 8
  %275 = getelementptr inbounds i64, i64* %31, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @ATH9K_POW_SM(i64 %276, i32 16)
  %278 = or i32 %273, %277
  %279 = load i64, i64* @rateHt40_1, align 8
  %280 = getelementptr inbounds i64, i64* %31, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @ATH9K_POW_SM(i64 %281, i32 8)
  %283 = or i32 %278, %282
  %284 = load i64, i64* @rateHt40_0, align 8
  %285 = getelementptr inbounds i64, i64* %31, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @ATH9K_POW_SM(i64 %286, i32 0)
  %288 = or i32 %283, %287
  %289 = call i32 @REG_WRITE(%struct.ath_hw* %268, i32 %269, i32 %288)
  %290 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %291 = load i32, i32* @AR_PHY_POWER_TX_RATE8, align 4
  %292 = load i64, i64* @rateHt40_7, align 8
  %293 = getelementptr inbounds i64, i64* %31, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @ATH9K_POW_SM(i64 %294, i32 24)
  %296 = load i64, i64* @rateHt40_6, align 8
  %297 = getelementptr inbounds i64, i64* %31, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @ATH9K_POW_SM(i64 %298, i32 16)
  %300 = or i32 %295, %299
  %301 = load i64, i64* @rateHt40_5, align 8
  %302 = getelementptr inbounds i64, i64* %31, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @ATH9K_POW_SM(i64 %303, i32 8)
  %305 = or i32 %300, %304
  %306 = load i64, i64* @rateHt40_4, align 8
  %307 = getelementptr inbounds i64, i64* %31, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @ATH9K_POW_SM(i64 %308, i32 0)
  %310 = or i32 %305, %309
  %311 = call i32 @REG_WRITE(%struct.ath_hw* %290, i32 %291, i32 %310)
  br label %373

312:                                              ; preds = %262
  %313 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %314 = load i32, i32* @AR_PHY_POWER_TX_RATE7, align 4
  %315 = load i64, i64* @rateHt40_3, align 8
  %316 = getelementptr inbounds i64, i64* %31, i64 %315
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %18, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i32 @ATH9K_POW_SM(i64 %319, i32 24)
  %321 = load i64, i64* @rateHt40_2, align 8
  %322 = getelementptr inbounds i64, i64* %31, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* %18, align 8
  %325 = add nsw i64 %323, %324
  %326 = call i32 @ATH9K_POW_SM(i64 %325, i32 16)
  %327 = or i32 %320, %326
  %328 = load i64, i64* @rateHt40_1, align 8
  %329 = getelementptr inbounds i64, i64* %31, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* %18, align 8
  %332 = add nsw i64 %330, %331
  %333 = call i32 @ATH9K_POW_SM(i64 %332, i32 8)
  %334 = or i32 %327, %333
  %335 = load i64, i64* @rateHt40_0, align 8
  %336 = getelementptr inbounds i64, i64* %31, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* %18, align 8
  %339 = add nsw i64 %337, %338
  %340 = call i32 @ATH9K_POW_SM(i64 %339, i32 0)
  %341 = or i32 %334, %340
  %342 = call i32 @REG_WRITE(%struct.ath_hw* %313, i32 %314, i32 %341)
  %343 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %344 = load i32, i32* @AR_PHY_POWER_TX_RATE8, align 4
  %345 = load i64, i64* @rateHt40_7, align 8
  %346 = getelementptr inbounds i64, i64* %31, i64 %345
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* %18, align 8
  %349 = add nsw i64 %347, %348
  %350 = call i32 @ATH9K_POW_SM(i64 %349, i32 24)
  %351 = load i64, i64* @rateHt40_6, align 8
  %352 = getelementptr inbounds i64, i64* %31, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* %18, align 8
  %355 = add nsw i64 %353, %354
  %356 = call i32 @ATH9K_POW_SM(i64 %355, i32 16)
  %357 = or i32 %350, %356
  %358 = load i64, i64* @rateHt40_5, align 8
  %359 = getelementptr inbounds i64, i64* %31, i64 %358
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* %18, align 8
  %362 = add nsw i64 %360, %361
  %363 = call i32 @ATH9K_POW_SM(i64 %362, i32 8)
  %364 = or i32 %357, %363
  %365 = load i64, i64* @rateHt40_4, align 8
  %366 = getelementptr inbounds i64, i64* %31, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* %18, align 8
  %369 = add nsw i64 %367, %368
  %370 = call i32 @ATH9K_POW_SM(i64 %369, i32 0)
  %371 = or i32 %364, %370
  %372 = call i32 @REG_WRITE(%struct.ath_hw* %343, i32 %344, i32 %371)
  br label %373

373:                                              ; preds = %312, %267
  %374 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %375 = load i32, i32* @AR_PHY_POWER_TX_RATE9, align 4
  %376 = load i64, i64* @rateExtOfdm, align 8
  %377 = getelementptr inbounds i64, i64* %31, i64 %376
  %378 = load i64, i64* %377, align 8
  %379 = call i32 @ATH9K_POW_SM(i64 %378, i32 24)
  %380 = load i64, i64* @rateExtCck, align 8
  %381 = getelementptr inbounds i64, i64* %31, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = call i32 @ATH9K_POW_SM(i64 %382, i32 16)
  %384 = or i32 %379, %383
  %385 = load i64, i64* @rateDupOfdm, align 8
  %386 = getelementptr inbounds i64, i64* %31, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = call i32 @ATH9K_POW_SM(i64 %387, i32 8)
  %389 = or i32 %384, %388
  %390 = load i64, i64* @rateDupCck, align 8
  %391 = getelementptr inbounds i64, i64* %31, i64 %390
  %392 = load i64, i64* %391, align 8
  %393 = call i32 @ATH9K_POW_SM(i64 %392, i32 0)
  %394 = or i32 %389, %393
  %395 = call i32 @REG_WRITE(%struct.ath_hw* %374, i32 %375, i32 %394)
  br label %396

396:                                              ; preds = %373, %214
  %397 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %398 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %397)
  store i32 0, i32* %20, align 4
  br label %399

399:                                              ; preds = %396, %101
  %400 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %400)
  %401 = load i32, i32* %20, align 4
  switch i32 %401, label %403 [
    i32 0, label %402
    i32 1, label %402
  ]

402:                                              ; preds = %399, %399
  ret void

403:                                              ; preds = %399
  unreachable
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_ar9287_power_per_rate_table(%struct.ath_hw*, %struct.ath9k_channel*, i64*, i32, i64, i64) #1

declare dso_local i32 @ath9k_hw_set_ar9287_power_cal_table(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @ath9k_hw_update_regulatory_maxpower(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ATH9K_POW_SM(i64, i32) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i64 @ath9k_hw_ar9287_get_eeprom(%struct.ath_hw*, i32) #1

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
