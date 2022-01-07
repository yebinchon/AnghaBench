; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_eeprom_4k.c_ath9k_hw_4k_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ar5416_eeprom_4k }
%struct.ar5416_eeprom_4k = type { %struct.TYPE_4__, %struct.modal_eep_4k_header }
%struct.TYPE_4__ = type { i32 }
%struct.modal_eep_4k_header = type { i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_regulatory = type { i64 }

@Ar5416RateSize = common dso_local global i32 0, align 4
@AR5416_EEP_VER_MINOR_MASK = common dso_local global i32 0, align 4
@AR5416_EEP_MINOR_VER_2 = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i64 0, align 8
@AR5416_PWR_TABLE_OFFSET_DB = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*, i32, i64, i64, i32)* @ath9k_hw_4k_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_4k_set_txpower(%struct.ath_hw* %0, %struct.ath9k_channel* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ath9k_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_regulatory*, align 8
  %14 = alloca %struct.ar5416_eeprom_4k*, align 8
  %15 = alloca %struct.modal_eep_4k_header*, align 8
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
  store %struct.ar5416_eeprom_4k* %25, %struct.ar5416_eeprom_4k** %14, align 8
  %26 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %14, align 8
  %27 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %26, i32 0, i32 1
  store %struct.modal_eep_4k_header* %27, %struct.modal_eep_4k_header** %15, align 8
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
  %35 = load %struct.ar5416_eeprom_4k*, %struct.ar5416_eeprom_4k** %14, align 8
  %36 = getelementptr inbounds %struct.ar5416_eeprom_4k, %struct.ar5416_eeprom_4k* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AR5416_EEP_VER_MINOR_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @AR5416_EEP_MINOR_VER_2, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %6
  %44 = load %struct.modal_eep_4k_header*, %struct.modal_eep_4k_header** %15, align 8
  %45 = getelementptr inbounds %struct.modal_eep_4k_header, %struct.modal_eep_4k_header* %44, i32 0, i32 0
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
  %54 = call i32 @ath9k_hw_set_4k_power_per_rate_table(%struct.ath_hw* %48, %struct.ath9k_channel* %49, i64* %50, i32 %51, i64 %52, i64 %53)
  %55 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %56 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %57 = call i32 @ath9k_hw_set_4k_power_cal_table(%struct.ath_hw* %55, %struct.ath9k_channel* %56)
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
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* %20, align 4
  br label %341

100:                                              ; preds = %96
  store i32 0, i32* %19, align 4
  br label %101

101:                                              ; preds = %114, %100
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* @Ar5416RateSize, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i32, i32* @AR5416_PWR_TABLE_OFFSET_DB, align 4
  %107 = mul nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %31, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %112, %108
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %19, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %19, align 4
  br label %101

117:                                              ; preds = %101
  %118 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %119 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %118)
  %120 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %121 = load i32, i32* @AR_PHY_POWER_TX_RATE1, align 4
  %122 = load i64, i64* @rate18mb, align 8
  %123 = getelementptr inbounds i64, i64* %31, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @ATH9K_POW_SM(i64 %124, i32 24)
  %126 = load i64, i64* @rate12mb, align 8
  %127 = getelementptr inbounds i64, i64* %31, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @ATH9K_POW_SM(i64 %128, i32 16)
  %130 = or i32 %125, %129
  %131 = load i64, i64* @rate9mb, align 8
  %132 = getelementptr inbounds i64, i64* %31, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @ATH9K_POW_SM(i64 %133, i32 8)
  %135 = or i32 %130, %134
  %136 = load i64, i64* @rate6mb, align 8
  %137 = getelementptr inbounds i64, i64* %31, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @ATH9K_POW_SM(i64 %138, i32 0)
  %140 = or i32 %135, %139
  %141 = call i32 @REG_WRITE(%struct.ath_hw* %120, i32 %121, i32 %140)
  %142 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %143 = load i32, i32* @AR_PHY_POWER_TX_RATE2, align 4
  %144 = load i64, i64* @rate54mb, align 8
  %145 = getelementptr inbounds i64, i64* %31, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @ATH9K_POW_SM(i64 %146, i32 24)
  %148 = load i64, i64* @rate48mb, align 8
  %149 = getelementptr inbounds i64, i64* %31, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @ATH9K_POW_SM(i64 %150, i32 16)
  %152 = or i32 %147, %151
  %153 = load i64, i64* @rate36mb, align 8
  %154 = getelementptr inbounds i64, i64* %31, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ATH9K_POW_SM(i64 %155, i32 8)
  %157 = or i32 %152, %156
  %158 = load i64, i64* @rate24mb, align 8
  %159 = getelementptr inbounds i64, i64* %31, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @ATH9K_POW_SM(i64 %160, i32 0)
  %162 = or i32 %157, %161
  %163 = call i32 @REG_WRITE(%struct.ath_hw* %142, i32 %143, i32 %162)
  %164 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %165 = load i32, i32* @AR_PHY_POWER_TX_RATE3, align 4
  %166 = load i64, i64* @rate2s, align 8
  %167 = getelementptr inbounds i64, i64* %31, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @ATH9K_POW_SM(i64 %168, i32 24)
  %170 = load i64, i64* @rate2l, align 8
  %171 = getelementptr inbounds i64, i64* %31, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @ATH9K_POW_SM(i64 %172, i32 16)
  %174 = or i32 %169, %173
  %175 = load i64, i64* @rateXr, align 8
  %176 = getelementptr inbounds i64, i64* %31, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @ATH9K_POW_SM(i64 %177, i32 8)
  %179 = or i32 %174, %178
  %180 = load i64, i64* @rate1l, align 8
  %181 = getelementptr inbounds i64, i64* %31, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @ATH9K_POW_SM(i64 %182, i32 0)
  %184 = or i32 %179, %183
  %185 = call i32 @REG_WRITE(%struct.ath_hw* %164, i32 %165, i32 %184)
  %186 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %187 = load i32, i32* @AR_PHY_POWER_TX_RATE4, align 4
  %188 = load i64, i64* @rate11s, align 8
  %189 = getelementptr inbounds i64, i64* %31, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @ATH9K_POW_SM(i64 %190, i32 24)
  %192 = load i64, i64* @rate11l, align 8
  %193 = getelementptr inbounds i64, i64* %31, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @ATH9K_POW_SM(i64 %194, i32 16)
  %196 = or i32 %191, %195
  %197 = load i64, i64* @rate5_5s, align 8
  %198 = getelementptr inbounds i64, i64* %31, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @ATH9K_POW_SM(i64 %199, i32 8)
  %201 = or i32 %196, %200
  %202 = load i64, i64* @rate5_5l, align 8
  %203 = getelementptr inbounds i64, i64* %31, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @ATH9K_POW_SM(i64 %204, i32 0)
  %206 = or i32 %201, %205
  %207 = call i32 @REG_WRITE(%struct.ath_hw* %186, i32 %187, i32 %206)
  %208 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %209 = load i32, i32* @AR_PHY_POWER_TX_RATE5, align 4
  %210 = load i64, i64* @rateHt20_3, align 8
  %211 = getelementptr inbounds i64, i64* %31, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @ATH9K_POW_SM(i64 %212, i32 24)
  %214 = load i64, i64* @rateHt20_2, align 8
  %215 = getelementptr inbounds i64, i64* %31, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @ATH9K_POW_SM(i64 %216, i32 16)
  %218 = or i32 %213, %217
  %219 = load i64, i64* @rateHt20_1, align 8
  %220 = getelementptr inbounds i64, i64* %31, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @ATH9K_POW_SM(i64 %221, i32 8)
  %223 = or i32 %218, %222
  %224 = load i64, i64* @rateHt20_0, align 8
  %225 = getelementptr inbounds i64, i64* %31, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @ATH9K_POW_SM(i64 %226, i32 0)
  %228 = or i32 %223, %227
  %229 = call i32 @REG_WRITE(%struct.ath_hw* %208, i32 %209, i32 %228)
  %230 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %231 = load i32, i32* @AR_PHY_POWER_TX_RATE6, align 4
  %232 = load i64, i64* @rateHt20_7, align 8
  %233 = getelementptr inbounds i64, i64* %31, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @ATH9K_POW_SM(i64 %234, i32 24)
  %236 = load i64, i64* @rateHt20_6, align 8
  %237 = getelementptr inbounds i64, i64* %31, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @ATH9K_POW_SM(i64 %238, i32 16)
  %240 = or i32 %235, %239
  %241 = load i64, i64* @rateHt20_5, align 8
  %242 = getelementptr inbounds i64, i64* %31, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @ATH9K_POW_SM(i64 %243, i32 8)
  %245 = or i32 %240, %244
  %246 = load i64, i64* @rateHt20_4, align 8
  %247 = getelementptr inbounds i64, i64* %31, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @ATH9K_POW_SM(i64 %248, i32 0)
  %250 = or i32 %245, %249
  %251 = call i32 @REG_WRITE(%struct.ath_hw* %230, i32 %231, i32 %250)
  %252 = load %struct.ath9k_channel*, %struct.ath9k_channel** %8, align 8
  %253 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %338

255:                                              ; preds = %117
  %256 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %257 = load i32, i32* @AR_PHY_POWER_TX_RATE7, align 4
  %258 = load i64, i64* @rateHt40_3, align 8
  %259 = getelementptr inbounds i64, i64* %31, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %18, align 8
  %262 = add nsw i64 %260, %261
  %263 = call i32 @ATH9K_POW_SM(i64 %262, i32 24)
  %264 = load i64, i64* @rateHt40_2, align 8
  %265 = getelementptr inbounds i64, i64* %31, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %18, align 8
  %268 = add nsw i64 %266, %267
  %269 = call i32 @ATH9K_POW_SM(i64 %268, i32 16)
  %270 = or i32 %263, %269
  %271 = load i64, i64* @rateHt40_1, align 8
  %272 = getelementptr inbounds i64, i64* %31, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* %18, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @ATH9K_POW_SM(i64 %275, i32 8)
  %277 = or i32 %270, %276
  %278 = load i64, i64* @rateHt40_0, align 8
  %279 = getelementptr inbounds i64, i64* %31, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* %18, align 8
  %282 = add nsw i64 %280, %281
  %283 = call i32 @ATH9K_POW_SM(i64 %282, i32 0)
  %284 = or i32 %277, %283
  %285 = call i32 @REG_WRITE(%struct.ath_hw* %256, i32 %257, i32 %284)
  %286 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %287 = load i32, i32* @AR_PHY_POWER_TX_RATE8, align 4
  %288 = load i64, i64* @rateHt40_7, align 8
  %289 = getelementptr inbounds i64, i64* %31, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %18, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 @ATH9K_POW_SM(i64 %292, i32 24)
  %294 = load i64, i64* @rateHt40_6, align 8
  %295 = getelementptr inbounds i64, i64* %31, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* %18, align 8
  %298 = add nsw i64 %296, %297
  %299 = call i32 @ATH9K_POW_SM(i64 %298, i32 16)
  %300 = or i32 %293, %299
  %301 = load i64, i64* @rateHt40_5, align 8
  %302 = getelementptr inbounds i64, i64* %31, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* %18, align 8
  %305 = add nsw i64 %303, %304
  %306 = call i32 @ATH9K_POW_SM(i64 %305, i32 8)
  %307 = or i32 %300, %306
  %308 = load i64, i64* @rateHt40_4, align 8
  %309 = getelementptr inbounds i64, i64* %31, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* %18, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @ATH9K_POW_SM(i64 %312, i32 0)
  %314 = or i32 %307, %313
  %315 = call i32 @REG_WRITE(%struct.ath_hw* %286, i32 %287, i32 %314)
  %316 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %317 = load i32, i32* @AR_PHY_POWER_TX_RATE9, align 4
  %318 = load i64, i64* @rateExtOfdm, align 8
  %319 = getelementptr inbounds i64, i64* %31, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @ATH9K_POW_SM(i64 %320, i32 24)
  %322 = load i64, i64* @rateExtCck, align 8
  %323 = getelementptr inbounds i64, i64* %31, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = call i32 @ATH9K_POW_SM(i64 %324, i32 16)
  %326 = or i32 %321, %325
  %327 = load i64, i64* @rateDupOfdm, align 8
  %328 = getelementptr inbounds i64, i64* %31, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @ATH9K_POW_SM(i64 %329, i32 8)
  %331 = or i32 %326, %330
  %332 = load i64, i64* @rateDupCck, align 8
  %333 = getelementptr inbounds i64, i64* %31, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = call i32 @ATH9K_POW_SM(i64 %334, i32 0)
  %336 = or i32 %331, %335
  %337 = call i32 @REG_WRITE(%struct.ath_hw* %316, i32 %317, i32 %336)
  br label %338

338:                                              ; preds = %255, %117
  %339 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %340 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %339)
  store i32 0, i32* %20, align 4
  br label %341

341:                                              ; preds = %338, %99
  %342 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %342)
  %343 = load i32, i32* %20, align 4
  switch i32 %343, label %345 [
    i32 0, label %344
    i32 1, label %344
  ]

344:                                              ; preds = %341, %341
  ret void

345:                                              ; preds = %341
  unreachable
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_4k_power_per_rate_table(%struct.ath_hw*, %struct.ath9k_channel*, i64*, i32, i64, i64) #1

declare dso_local i32 @ath9k_hw_set_4k_power_cal_table(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

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
