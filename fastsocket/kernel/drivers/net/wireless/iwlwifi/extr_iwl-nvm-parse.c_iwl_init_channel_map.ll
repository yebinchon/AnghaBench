; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_channel_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iwl_cfg = type { i32 }
%struct.iwl_nvm_data = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i64, i64, i32, i32 }

@IWL_NUM_CHANNELS = common dso_local global i32 0, align 4
@NVM_CHANNEL_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Ch. %d Flags %x [%sGHz] - No traffic\0A\00", align 1
@iwl_nvm_channels = common dso_local global i64* null, align 8
@NUM_2GHZ_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2.4\00", align 1
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_HT40 = common dso_local global i32 0, align 4
@NVM_CHANNEL_40MHZ = common dso_local global i32 0, align 4
@LAST_2GHZ_HT_PLUS = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@FIRST_2GHZ_HT_MINUS = common dso_local global i64 0, align 8
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@LAST_5GHZ_HT = common dso_local global i64 0, align 8
@NVM_CHANNEL_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@NVM_CHANNEL_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@NVM_CHANNEL_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IBSS = common dso_local global i32 0, align 4
@NVM_CHANNEL_ACTIVE = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@NVM_CHANNEL_RADAR = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*)* @iwl_init_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_init_channel_map(%struct.device* %0, %struct.iwl_cfg* %1, %struct.iwl_nvm_data* %2, i32* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iwl_cfg*, align 8
  %7 = alloca %struct.iwl_nvm_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %6, align 8
  store %struct.iwl_nvm_data* %2, %struct.iwl_nvm_data** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %258, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @IWL_NUM_CHANNELS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %261

18:                                               ; preds = %14
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @__le16_to_cpup(i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @NVM_CHANNEL_VALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load i64*, i64** @iwl_nvm_channels, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @NUM_2GHZ_CHANNELS, align 4
  %38 = icmp sge i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 (%struct.device*, i8*, i64, ...) @IWL_DEBUG_EEPROM(%struct.device* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %35, i8* %40)
  br label %258

42:                                               ; preds = %18
  %43 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %43, i32 0, i32 0
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i64 %47
  store %struct.ieee80211_channel* %48, %struct.ieee80211_channel** %11, align 8
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i64*, i64** @iwl_nvm_channels, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @NUM_2GHZ_CHANNELS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  br label %65

63:                                               ; preds = %42
  %64 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i64 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %68 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %73 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ieee80211_channel_to_frequency(i64 %71, i64 %74)
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @IEEE80211_CHAN_NO_HT40, align 4
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %80 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @NUM_2GHZ_CHANNELS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %65
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @NVM_CHANNEL_40MHZ, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %84
  %90 = load i64*, i64** @iwl_nvm_channels, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @LAST_2GHZ_HT_PLUS, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %101 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %97, %89
  %105 = load i64*, i64** @iwl_nvm_channels, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @FIRST_2GHZ_HT_MINUS, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %116 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %112, %104
  br label %155

120:                                              ; preds = %84, %65
  %121 = load i64*, i64** @iwl_nvm_channels, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @LAST_5GHZ_HT, align 8
  %127 = icmp sle i64 %125, %126
  br i1 %127, label %128, label %154

128:                                              ; preds = %120
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @NVM_CHANNEL_40MHZ, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %128
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @NUM_2GHZ_CHANNELS, align 4
  %136 = sub nsw i32 %134, %135
  %137 = srem i32 %136, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %143 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %153

146:                                              ; preds = %133
  %147 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %150 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %146, %139
  br label %154

154:                                              ; preds = %153, %128, %120
  br label %155

155:                                              ; preds = %154, %119
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @NVM_CHANNEL_80MHZ, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %162 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %163 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %155
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* @NVM_CHANNEL_160MHZ, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %173 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %174 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %166
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @NVM_CHANNEL_IBSS, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %184 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %185 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %182, %177
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @NVM_CHANNEL_ACTIVE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %195 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %196 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %188
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @NVM_CHANNEL_RADAR, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %206 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %207 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %204, %199
  %211 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %212 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %211, i32 0, i32 1
  store i64 0, i64* %212, align 8
  %213 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %214 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %217 = icmp eq i64 %215, %216
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %13, align 4
  %219 = load %struct.device*, %struct.device** %5, align 8
  %220 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %221 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %227 = load i32, i32* @VALID, align 4
  %228 = call i32 @CHECK_AND_PRINT_I(i32 %227)
  %229 = load i32, i32* @IBSS, align 4
  %230 = call i32 @CHECK_AND_PRINT_I(i32 %229)
  %231 = load i32, i32* @ACTIVE, align 4
  %232 = call i32 @CHECK_AND_PRINT_I(i32 %231)
  %233 = load i32, i32* @RADAR, align 4
  %234 = call i32 @CHECK_AND_PRINT_I(i32 %233)
  %235 = load i32, i32* @WIDE, align 4
  %236 = call i32 @CHECK_AND_PRINT_I(i32 %235)
  %237 = load i32, i32* @DFS, align 4
  %238 = call i32 @CHECK_AND_PRINT_I(i32 %237)
  %239 = load i32, i32* %12, align 4
  %240 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %241 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* @NVM_CHANNEL_IBSS, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %210
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* @NVM_CHANNEL_RADAR, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  %252 = xor i1 %251, true
  br label %253

253:                                              ; preds = %247, %210
  %254 = phi i1 [ false, %210 ], [ %252, %247 ]
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %257 = call i32 (%struct.device*, i8*, i64, ...) @IWL_DEBUG_EEPROM(%struct.device* %219, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %222, i8* %226, i32 %228, i32 %230, i32 %232, i32 %234, i32 %236, i32 %238, i32 %239, i64 %242, i8* %256)
  br label %258

258:                                              ; preds = %253, %28
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %9, align 4
  br label %14

261:                                              ; preds = %14
  %262 = load i32, i32* %10, align 4
  ret i32 %262
}

declare dso_local i32 @__le16_to_cpup(i32*) #1

declare dso_local i32 @IWL_DEBUG_EEPROM(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i64, i64) #1

declare dso_local i32 @CHECK_AND_PRINT_I(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
