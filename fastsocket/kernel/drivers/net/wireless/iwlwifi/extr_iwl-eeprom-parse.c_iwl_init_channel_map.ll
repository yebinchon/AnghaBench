; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_channel_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iwl_cfg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i64 }
%struct.iwl_nvm_data = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64, i32, i8*, i32 }
%struct.iwl_eeprom_channel = type { i32, i32 }

@EEPROM_CHANNEL_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Ch. %d Flags %x [%sGHz] - No traffic\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2.4\00", align 1
@IEEE80211_BAND_2GHZ = common dso_local global i8* null, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i8* null, align 8
@IEEE80211_CHAN_NO_HT40 = common dso_local global i32 0, align 4
@EEPROM_CHANNEL_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IBSS = common dso_local global i32 0, align 4
@EEPROM_CHANNEL_ACTIVE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@EEPROM_CHANNEL_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Ch. %d [%sGHz] %s%s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\0A\00", align 1
@VALID = common dso_local global i32 0, align 4
@IBSS = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i32 0, align 4
@RADAR = common dso_local global i32 0, align 4
@WIDE = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@s8 = common dso_local global i32 0, align 4
@EEPROM_REGULATORY_BAND_NO_HT40 = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i64*, i64)* @iwl_init_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_init_channel_map(%struct.device* %0, %struct.iwl_cfg* %1, %struct.iwl_nvm_data* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.iwl_cfg*, align 8
  %9 = alloca %struct.iwl_nvm_data*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iwl_eeprom_channel*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_channel*, align 8
  %19 = alloca %struct.iwl_eeprom_channel*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %8, align 8
  store %struct.iwl_nvm_data* %2, %struct.iwl_nvm_data** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %12, align 4
  br label %22

22:                                               ; preds = %210, %5
  %23 = load i32, i32* %12, align 4
  %24 = icmp sle i32 %23, 5
  br i1 %24, label %25, label %213

25:                                               ; preds = %22
  %26 = load %struct.iwl_cfg*, %struct.iwl_cfg** %8, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @iwl_init_band_reference(%struct.iwl_cfg* %26, i64* %27, i64 %28, i32 %29, i32* %16, %struct.iwl_eeprom_channel** %14, i64** %15)
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %206, %25
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %209

35:                                               ; preds = %31
  %36 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %14, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %36, i64 %38
  store %struct.iwl_eeprom_channel* %39, %struct.iwl_eeprom_channel** %19, align 8
  %40 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %19, align 8
  %41 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EEPROM_CHANNEL_VALID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %35
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load i64*, i64** %15, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %14, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %53, i64 %55
  %57 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 1
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 (%struct.device*, i8*, i64, ...) @IWL_DEBUG_EEPROM(%struct.device* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %58, i8* %62)
  br label %206

64:                                               ; preds = %35
  %65 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %66 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %65, i32 0, i32 1
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %67, i64 %69
  store %struct.ieee80211_channel* %70, %struct.ieee80211_channel** %18, align 8
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  %73 = load i64*, i64** %15, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %79 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %64
  %83 = load i8*, i8** @IEEE80211_BAND_2GHZ, align 8
  br label %86

84:                                               ; preds = %64
  %85 = load i8*, i8** @IEEE80211_BAND_5GHZ, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i8* [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %89 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %91 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %94 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @ieee80211_channel_to_frequency(i64 %92, i8* %95)
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %98 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %101 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %19, align 8
  %103 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @EEPROM_CHANNEL_IBSS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %86
  %109 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %110 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %111 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %86
  %115 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %19, align 8
  %116 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @EEPROM_CHANNEL_ACTIVE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %123 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %124 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %114
  %128 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %19, align 8
  %129 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @EEPROM_CHANNEL_RADAR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %136 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %137 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %127
  %141 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %14, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %141, i64 %143
  %145 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %148 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.device*, %struct.device** %7, align 8
  %150 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  %151 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 1
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %157 = load i32, i32* @VALID, align 4
  %158 = call i32 @CHECK_AND_PRINT_I(i32 %157)
  %159 = load i32, i32* @IBSS, align 4
  %160 = call i32 @CHECK_AND_PRINT_I(i32 %159)
  %161 = load i32, i32* @ACTIVE, align 4
  %162 = call i32 @CHECK_AND_PRINT_I(i32 %161)
  %163 = load i32, i32* @RADAR, align 4
  %164 = call i32 @CHECK_AND_PRINT_I(i32 %163)
  %165 = load i32, i32* @WIDE, align 4
  %166 = call i32 @CHECK_AND_PRINT_I(i32 %165)
  %167 = load i32, i32* @DFS, align 4
  %168 = call i32 @CHECK_AND_PRINT_I(i32 %167)
  %169 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %14, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %169, i64 %171
  %173 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %14, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %175, i64 %177
  %179 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %14, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %181, i64 %183
  %185 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @EEPROM_CHANNEL_IBSS, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %140
  %191 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %14, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %191, i64 %193
  %195 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @EEPROM_CHANNEL_RADAR, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %190, %140
  %202 = phi i1 [ false, %140 ], [ %200, %190 ]
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %205 = call i32 (%struct.device*, i8*, i64, ...) @IWL_DEBUG_EEPROM(%struct.device* %149, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %152, i8* %156, i32 %158, i32 %160, i32 %162, i32 %164, i32 %166, i32 %168, i32 %174, i32 %180, i8* %204)
  br label %206

206:                                              ; preds = %201, %46
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  br label %31

209:                                              ; preds = %31
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %12, align 4
  br label %22

213:                                              ; preds = %22
  %214 = load %struct.iwl_cfg*, %struct.iwl_cfg** %8, align 8
  %215 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %214, i32 0, i32 0
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %213
  %221 = load %struct.device*, %struct.device** %7, align 8
  %222 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %223 = load i64*, i64** %10, align 8
  %224 = load i64, i64* %11, align 8
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @iwl_eeprom_enhanced_txpower(%struct.device* %221, %struct.iwl_nvm_data* %222, i64* %223, i64 %224, i32 %225)
  br label %255

227:                                              ; preds = %213
  %228 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %229 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %228, i32 0, i32 0
  store i32 -128, i32* %229, align 8
  store i32 0, i32* %20, align 4
  br label %230

230:                                              ; preds = %251, %227
  %231 = load i32, i32* %20, align 4
  %232 = load i32, i32* %17, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %254

234:                                              ; preds = %230
  %235 = load i32, i32* @s8, align 4
  %236 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %237 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %240 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %239, i32 0, i32 1
  %241 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %240, align 8
  %242 = load i32, i32* %20, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %241, i64 %243
  %245 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = mul nsw i32 %246, 2
  %248 = call i32 @max_t(i32 %235, i32 %238, i32 %247)
  %249 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %250 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %234
  %252 = load i32, i32* %20, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %20, align 4
  br label %230

254:                                              ; preds = %230
  br label %255

255:                                              ; preds = %254, %220
  %256 = load %struct.iwl_cfg*, %struct.iwl_cfg** %8, align 8
  %257 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %256, i32 0, i32 0
  %258 = load %struct.TYPE_2__*, %struct.TYPE_2__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i64*, i64** %259, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 5
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @EEPROM_REGULATORY_BAND_NO_HT40, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %255
  %266 = load %struct.iwl_cfg*, %struct.iwl_cfg** %8, align 8
  %267 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %266, i32 0, i32 0
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 6
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @EEPROM_REGULATORY_BAND_NO_HT40, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %265
  %276 = load i32, i32* %17, align 4
  store i32 %276, i32* %6, align 4
  br label %341

277:                                              ; preds = %265, %255
  store i32 6, i32* %12, align 4
  br label %278

278:                                              ; preds = %336, %277
  %279 = load i32, i32* %12, align 4
  %280 = icmp sle i32 %279, 7
  br i1 %280, label %281, label %339

281:                                              ; preds = %278
  %282 = load %struct.iwl_cfg*, %struct.iwl_cfg** %8, align 8
  %283 = load i64*, i64** %10, align 8
  %284 = load i64, i64* %11, align 8
  %285 = load i32, i32* %12, align 4
  %286 = call i32 @iwl_init_band_reference(%struct.iwl_cfg* %282, i64* %283, i64 %284, i32 %285, i32* %16, %struct.iwl_eeprom_channel** %14, i64** %15)
  %287 = load i32, i32* %12, align 4
  %288 = icmp eq i32 %287, 6
  br i1 %288, label %289, label %291

289:                                              ; preds = %281
  %290 = load i8*, i8** @IEEE80211_BAND_2GHZ, align 8
  br label %293

291:                                              ; preds = %281
  %292 = load i8*, i8** @IEEE80211_BAND_5GHZ, align 8
  br label %293

293:                                              ; preds = %291, %289
  %294 = phi i8* [ %290, %289 ], [ %292, %291 ]
  %295 = ptrtoint i8* %294 to i32
  store i32 %295, i32* %21, align 4
  store i32 0, i32* %13, align 4
  br label %296

296:                                              ; preds = %332, %293
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %16, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %335

300:                                              ; preds = %296
  %301 = load %struct.device*, %struct.device** %7, align 8
  %302 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* %21, align 4
  %305 = load i64*, i64** %15, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %305, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %14, align 8
  %311 = load i32, i32* %13, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %310, i64 %312
  %314 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %315 = call i32 @iwl_mod_ht40_chan_info(%struct.device* %301, %struct.iwl_nvm_data* %302, i32 %303, i32 %304, i64 %309, %struct.iwl_eeprom_channel* %313, i32 %314)
  %316 = load %struct.device*, %struct.device** %7, align 8
  %317 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %21, align 4
  %320 = load i64*, i64** %15, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = add nsw i64 %324, 4
  %326 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %14, align 8
  %327 = load i32, i32* %13, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %326, i64 %328
  %330 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %331 = call i32 @iwl_mod_ht40_chan_info(%struct.device* %316, %struct.iwl_nvm_data* %317, i32 %318, i32 %319, i64 %325, %struct.iwl_eeprom_channel* %329, i32 %330)
  br label %332

332:                                              ; preds = %300
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %13, align 4
  br label %296

335:                                              ; preds = %296
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %12, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %12, align 4
  br label %278

339:                                              ; preds = %278
  %340 = load i32, i32* %17, align 4
  store i32 %340, i32* %6, align 4
  br label %341

341:                                              ; preds = %339, %275
  %342 = load i32, i32* %6, align 4
  ret i32 %342
}

declare dso_local i32 @iwl_init_band_reference(%struct.iwl_cfg*, i64*, i64, i32, i32*, %struct.iwl_eeprom_channel**, i64**) #1

declare dso_local i32 @IWL_DEBUG_EEPROM(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i64, i8*) #1

declare dso_local i32 @CHECK_AND_PRINT_I(i32) #1

declare dso_local i32 @iwl_eeprom_enhanced_txpower(%struct.device*, %struct.iwl_nvm_data*, i64*, i64, i32) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @iwl_mod_ht40_chan_info(%struct.device*, %struct.iwl_nvm_data*, i32, i32, i64, %struct.iwl_eeprom_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
