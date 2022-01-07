; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_fill_cap_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_fill_cap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, i32, i32, i32, i32, %struct.TYPE_4__*, i8*, i8*, %struct.TYPE_3__, i32, %struct.ath9k_hw_capabilities }
%struct.TYPE_4__ = type { i32 (%struct.ath_hw*, i32)* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ath9k_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_regulatory = type { i32 }
%struct.ath_common = type { i32 }

@EEP_REG_0 = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@AR_SUBVENDOR_ID_NEW_A = common dso_local global i64 0, align 8
@REGULATORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"regdomain mapped to 0x%x\0A\00", align 1
@EEP_OP_MODE = common dso_local global i32 0, align 4
@AR5416_OPFLAGS_11G = common dso_local global i32 0, align 4
@AR5416_OPFLAGS_11A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"no band has been marked as supported in EEPROM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_5GHZ = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_2GHZ = common dso_local global i32 0, align 4
@EEP_TX_MASK = common dso_local global i32 0, align 4
@AR5416_DEVID_PCI = common dso_local global i64 0, align 8
@EEP_RX_MASK = common dso_local global i32 0, align 4
@AR_PCU_MIC_NEW_LOC_ENA = common dso_local global i32 0, align 4
@AR_PCU_ALWAYS_PERFORM_KEYSEARCH = common dso_local global i32 0, align 4
@ATH_CRYPT_CAP_CIPHER_AESCCM = common dso_local global i32 0, align 4
@AR2427_DEVID_PCIE = common dso_local global i64 0, align 8
@ATH9K_HW_CAP_HT = common dso_local global i32 0, align 4
@AR9271_NUM_GPIO = common dso_local global i32 0, align 4
@AR7010_NUM_GPIO = common dso_local global i32 0, align 4
@AR9300_NUM_GPIO = common dso_local global i32 0, align 4
@AR9287_NUM_GPIO = common dso_local global i32 0, align 4
@AR9285_NUM_GPIO = common dso_local global i32 0, align 4
@AR928X_NUM_GPIO = common dso_local global i32 0, align 4
@AR_NUM_GPIO = common dso_local global i32 0, align 4
@ATH_AMPDU_LIMIT_MAX = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_AUTOSLEEP = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_4KB_SPLITTRANS = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_EDMA = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_FASTCLOCK = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_LDPC = common dso_local global i32 0, align 4
@ATH9K_HW_RX_HP_QDEPTH = common dso_local global i32 0, align 4
@ATH9K_HW_RX_LP_QDEPTH = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RAC_SUPPORTED = common dso_local global i32 0, align 4
@AR_ENT_OTP = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_SGI_20 = common dso_local global i32 0, align 4
@EEP_MODAL_VER = common dso_local global i32 0, align 4
@EEP_ANT_DIV_CTL1 = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_ANT_DIV_COMB = common dso_local global i32 0, align 4
@EEP_CHAIN_MASK_REDUCE = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_APM = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_DFS = common dso_local global i32 0, align 4
@AR_ENT_OTP_49GHZ_DISABLE = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_MCI = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RTT = common dso_local global i32 0, align 4
@ATH9K_HW_WOW_DEVICE_CAPABLE = common dso_local global i32 0, align 4
@ATH9K_HW_WOW_PATTERN_MATCH_EXACT = common dso_local global i32 0, align 4
@ATH9K_HW_WOW_PATTERN_MATCH_DWORD = common dso_local global i32 0, align 4
@EEP_PAPRD = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_PAPRD = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_RFSILENT = common dso_local global i32 0, align 4
@EEP_RFSILENT_ENABLED = common dso_local global i32 0, align 4
@EEP_RFSILENT_GPIO_SEL = common dso_local global i32 0, align 4
@EEP_RFSILENT_POLARITY = common dso_local global i32 0, align 4
@EEP_RF_SILENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_fill_cap_info(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_hw_capabilities*, align 8
  %5 = alloca %struct.ath_regulatory*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 10
  store %struct.ath9k_hw_capabilities* %13, %struct.ath9k_hw_capabilities** %4, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw* %14)
  store %struct.ath_regulatory* %15, %struct.ath_regulatory** %5, align 8
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %16)
  store %struct.ath_common* %17, %struct.ath_common** %6, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %21, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = load i32, i32* @EEP_REG_0, align 4
  %25 = call i32 %22(%struct.ath_hw* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %28 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %1
  %35 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AR_SUBVENDOR_ID_NEW_A, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %34
  %42 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %43 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 100
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %48 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 101
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %41
  %52 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %53 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 5
  store i32 %55, i32* %53, align 4
  br label %65

56:                                               ; preds = %46
  %57 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %58 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 65
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %63 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %62, i32 0, i32 0
  store i32 67, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %51
  %66 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %67 = load i32, i32* @REGULATORY, align 4
  %68 = load %struct.ath_regulatory*, %struct.ath_regulatory** %5, align 8
  %69 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ath_dbg(%struct.ath_common* %66, i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %65, %34, %1
  %73 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %76, align 8
  %78 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %79 = load i32, i32* @EEP_OP_MODE, align 4
  %80 = call i32 %77(%struct.ath_hw* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @AR5416_OPFLAGS_11G, align 4
  %83 = load i32, i32* @AR5416_OPFLAGS_11A, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %89 = call i32 @ath_err(%struct.ath_common* %88, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %692

92:                                               ; preds = %72
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @AR5416_OPFLAGS_11A, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* @ATH9K_HW_CAP_5GHZ, align 4
  %99 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %100 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @AR5416_OPFLAGS_11G, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32, i32* @ATH9K_HW_CAP_2GHZ, align 4
  %110 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %111 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %116 = call i64 @AR_SREV_9485(%struct.ath_hw* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %114
  %119 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %120 = call i64 @AR_SREV_9285(%struct.ath_hw* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %124 = call i64 @AR_SREV_9330(%struct.ath_hw* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %128 = call i64 @AR_SREV_9565(%struct.ath_hw* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126, %122, %118, %114
  store i32 1, i32* %7, align 4
  br label %154

131:                                              ; preds = %126
  %132 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %133 = call i64 @AR_SREV_9462(%struct.ath_hw* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 3, i32* %7, align 4
  br label %153

136:                                              ; preds = %131
  %137 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %138 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  store i32 7, i32* %7, align 4
  br label %152

141:                                              ; preds = %136
  %142 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %143 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %147 = call i64 @AR_SREV_9340(%struct.ath_hw* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %141
  store i32 3, i32* %7, align 4
  br label %151

150:                                              ; preds = %145
  store i32 7, i32* %7, align 4
  br label %151

151:                                              ; preds = %150, %149
  br label %152

152:                                              ; preds = %151, %140
  br label %153

153:                                              ; preds = %152, %135
  br label %154

154:                                              ; preds = %153, %130
  %155 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %156 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %155, i32 0, i32 5
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %158, align 8
  %160 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %161 = load i32, i32* @EEP_TX_MASK, align 4
  %162 = call i32 %159(%struct.ath_hw* %160, i32 %161)
  %163 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %164 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %166 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @AR5416_DEVID_PCI, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %154
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @AR5416_OPFLAGS_11A, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %171
  %177 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %178 = call i64 @AR_SREV_9271(%struct.ath_hw* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %176
  %181 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %182 = call i64 @ath9k_hw_gpio_get(%struct.ath_hw* %181, i32 0)
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 5, i32 7
  %186 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %187 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  br label %207

188:                                              ; preds = %176, %171, %154
  %189 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %190 = call i64 @AR_SREV_9100(%struct.ath_hw* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %194 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %193, i32 0, i32 2
  store i32 7, i32* %194, align 4
  br label %206

195:                                              ; preds = %188
  %196 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %197 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %196, i32 0, i32 5
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %199, align 8
  %201 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %202 = load i32, i32* @EEP_RX_MASK, align 4
  %203 = call i32 %200(%struct.ath_hw* %201, i32 %202)
  %204 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %205 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %195, %192
  br label %207

207:                                              ; preds = %206, %180
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %210 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i8* @fixup_chainmask(i32 %208, i32 %211)
  %213 = ptrtoint i8* %212 to i32
  %214 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %215 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %218 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @fixup_chainmask(i32 %216, i32 %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %223 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  %224 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %225 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %228 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 8
  %229 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %230 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %233 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @AR_PCU_MIC_NEW_LOC_ENA, align 4
  %235 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %236 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  %239 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %240 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %207
  %243 = load i32, i32* @AR_PCU_ALWAYS_PERFORM_KEYSEARCH, align 4
  %244 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %245 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %242, %207
  %249 = load i32, i32* @ATH_CRYPT_CAP_CIPHER_AESCCM, align 4
  %250 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %251 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 4
  %254 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %255 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %254, i32 0, i32 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @AR2427_DEVID_PCIE, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %248
  %261 = load i32, i32* @ATH9K_HW_CAP_HT, align 4
  %262 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %263 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %273

266:                                              ; preds = %248
  %267 = load i32, i32* @ATH9K_HW_CAP_HT, align 4
  %268 = xor i32 %267, -1
  %269 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %270 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, %268
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %266, %260
  %274 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %275 = call i64 @AR_SREV_9271(%struct.ath_hw* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = load i32, i32* @AR9271_NUM_GPIO, align 4
  %279 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %280 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %279, i32 0, i32 11
  store i32 %278, i32* %280, align 4
  br label %330

281:                                              ; preds = %273
  %282 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %283 = call i64 @AR_DEVID_7010(%struct.ath_hw* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = load i32, i32* @AR7010_NUM_GPIO, align 4
  %287 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %288 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %287, i32 0, i32 11
  store i32 %286, i32* %288, align 4
  br label %329

289:                                              ; preds = %281
  %290 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %291 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %289
  %294 = load i32, i32* @AR9300_NUM_GPIO, align 4
  %295 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %296 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %295, i32 0, i32 11
  store i32 %294, i32* %296, align 4
  br label %328

297:                                              ; preds = %289
  %298 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %299 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = load i32, i32* @AR9287_NUM_GPIO, align 4
  %303 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %304 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %303, i32 0, i32 11
  store i32 %302, i32* %304, align 4
  br label %327

305:                                              ; preds = %297
  %306 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %307 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load i32, i32* @AR9285_NUM_GPIO, align 4
  %311 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %312 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %311, i32 0, i32 11
  store i32 %310, i32* %312, align 4
  br label %326

313:                                              ; preds = %305
  %314 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %315 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %313
  %318 = load i32, i32* @AR928X_NUM_GPIO, align 4
  %319 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %320 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %319, i32 0, i32 11
  store i32 %318, i32* %320, align 4
  br label %325

321:                                              ; preds = %313
  %322 = load i32, i32* @AR_NUM_GPIO, align 4
  %323 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %324 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %323, i32 0, i32 11
  store i32 %322, i32* %324, align 4
  br label %325

325:                                              ; preds = %321, %317
  br label %326

326:                                              ; preds = %325, %309
  br label %327

327:                                              ; preds = %326, %301
  br label %328

328:                                              ; preds = %327, %293
  br label %329

329:                                              ; preds = %328, %285
  br label %330

330:                                              ; preds = %329, %277
  %331 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %332 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %330
  %335 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %336 = call i64 @AR_SREV_9100(%struct.ath_hw* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %334, %330
  %339 = load i32, i32* @ATH_AMPDU_LIMIT_MAX, align 4
  %340 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %341 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %340, i32 0, i32 3
  store i32 %339, i32* %341, align 4
  br label %345

342:                                              ; preds = %334
  %343 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %344 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %343, i32 0, i32 3
  store i32 8192, i32* %344, align 4
  br label %345

345:                                              ; preds = %342, %338
  %346 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %347 = call i64 @AR_SREV_9271(%struct.ath_hw* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %345
  %350 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %351 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %349, %345
  %354 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %355 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %356 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 4
  br label %366

359:                                              ; preds = %349
  %360 = load i32, i32* @ATH9K_HW_CAP_AUTOSLEEP, align 4
  %361 = xor i32 %360, -1
  %362 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %363 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, %361
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %359, %353
  %367 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %368 = call i64 @AR_SREV_9280(%struct.ath_hw* %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %372 = call i64 @AR_SREV_9285(%struct.ath_hw* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %370, %366
  %375 = load i32, i32* @ATH9K_HW_CAP_4KB_SPLITTRANS, align 4
  %376 = xor i32 %375, -1
  %377 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %378 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, %376
  store i32 %380, i32* %378, align 4
  br label %387

381:                                              ; preds = %370
  %382 = load i32, i32* @ATH9K_HW_CAP_4KB_SPLITTRANS, align 4
  %383 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %384 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 4
  br label %387

387:                                              ; preds = %381, %374
  %388 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %389 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %429

391:                                              ; preds = %387
  %392 = load i32, i32* @ATH9K_HW_CAP_EDMA, align 4
  %393 = load i32, i32* @ATH9K_HW_CAP_FASTCLOCK, align 4
  %394 = or i32 %392, %393
  %395 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %396 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = or i32 %397, %394
  store i32 %398, i32* %396, align 4
  %399 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %400 = call i64 @AR_SREV_9330(%struct.ath_hw* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %416, label %402

402:                                              ; preds = %391
  %403 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %404 = call i64 @AR_SREV_9485(%struct.ath_hw* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %416, label %406

406:                                              ; preds = %402
  %407 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %408 = call i64 @AR_SREV_9565(%struct.ath_hw* %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %416, label %410

410:                                              ; preds = %406
  %411 = load i32, i32* @ATH9K_HW_CAP_LDPC, align 4
  %412 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %413 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 4
  br label %416

416:                                              ; preds = %410, %406, %402, %391
  %417 = load i32, i32* @ATH9K_HW_RX_HP_QDEPTH, align 4
  %418 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %419 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %418, i32 0, i32 10
  store i32 %417, i32* %419, align 4
  %420 = load i32, i32* @ATH9K_HW_RX_LP_QDEPTH, align 4
  %421 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %422 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %421, i32 0, i32 9
  store i32 %420, i32* %422, align 4
  %423 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %424 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %423, i32 0, i32 4
  store i32 4, i32* %424, align 4
  %425 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %426 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %425, i32 0, i32 5
  store i32 4, i32* %426, align 4
  %427 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %428 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %427, i32 0, i32 6
  store i32 4, i32* %428, align 4
  br label %442

429:                                              ; preds = %387
  %430 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %431 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %430, i32 0, i32 5
  store i32 4, i32* %431, align 4
  %432 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %433 = call i64 @AR_SREV_9280_20(%struct.ath_hw* %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %441

435:                                              ; preds = %429
  %436 = load i32, i32* @ATH9K_HW_CAP_FASTCLOCK, align 4
  %437 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %438 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = or i32 %439, %436
  store i32 %440, i32* %438, align 4
  br label %441

441:                                              ; preds = %435, %429
  br label %442

442:                                              ; preds = %441, %416
  %443 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %444 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %452

446:                                              ; preds = %442
  %447 = load i32, i32* @ATH9K_HW_CAP_RAC_SUPPORTED, align 4
  %448 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %449 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = or i32 %450, %447
  store i32 %451, i32* %449, align 4
  br label %452

452:                                              ; preds = %446, %442
  %453 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %454 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %462

456:                                              ; preds = %452
  %457 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %458 = load i32, i32* @AR_ENT_OTP, align 4
  %459 = call i32 @REG_READ(%struct.ath_hw* %457, i32 %458)
  %460 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %461 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %460, i32 0, i32 4
  store i32 %459, i32* %461, align 4
  br label %462

462:                                              ; preds = %456, %452
  %463 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %464 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %470, label %466

466:                                              ; preds = %462
  %467 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %468 = call i64 @AR_SREV_9271(%struct.ath_hw* %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %466, %462
  %471 = load i32, i32* @ATH9K_HW_CAP_SGI_20, align 4
  %472 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %473 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = or i32 %474, %471
  store i32 %475, i32* %473, align 4
  br label %476

476:                                              ; preds = %470, %466
  %477 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %478 = call i64 @AR_SREV_9285(%struct.ath_hw* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %515

480:                                              ; preds = %476
  %481 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %482 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %481, i32 0, i32 5
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 0
  %485 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %484, align 8
  %486 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %487 = load i32, i32* @EEP_MODAL_VER, align 4
  %488 = call i32 %485(%struct.ath_hw* %486, i32 %487)
  %489 = icmp sge i32 %488, 3
  br i1 %489, label %490, label %514

490:                                              ; preds = %480
  %491 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %492 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %491, i32 0, i32 5
  %493 = load %struct.TYPE_4__*, %struct.TYPE_4__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i32 0, i32 0
  %495 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %494, align 8
  %496 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %497 = load i32, i32* @EEP_ANT_DIV_CTL1, align 4
  %498 = call i32 %495(%struct.ath_hw* %496, i32 %497)
  store i32 %498, i32* %9, align 4
  %499 = load i32, i32* %9, align 4
  %500 = and i32 %499, 1
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %513

502:                                              ; preds = %490
  %503 = load i32, i32* %9, align 4
  %504 = ashr i32 %503, 3
  %505 = and i32 %504, 1
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %513

507:                                              ; preds = %502
  %508 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %509 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %510 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = or i32 %511, %508
  store i32 %512, i32* %510, align 4
  br label %513

513:                                              ; preds = %507, %502, %490
  br label %514

514:                                              ; preds = %513, %480
  br label %515

515:                                              ; preds = %514, %476
  %516 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %517 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %536

519:                                              ; preds = %515
  %520 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %521 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %520, i32 0, i32 5
  %522 = load %struct.TYPE_4__*, %struct.TYPE_4__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i32 0, i32 0
  %524 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %523, align 8
  %525 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %526 = load i32, i32* @EEP_CHAIN_MASK_REDUCE, align 4
  %527 = call i32 %524(%struct.ath_hw* %525, i32 %526)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %535

529:                                              ; preds = %519
  %530 = load i32, i32* @ATH9K_HW_CAP_APM, align 4
  %531 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %532 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = or i32 %533, %530
  store i32 %534, i32* %532, align 4
  br label %535

535:                                              ; preds = %529, %519
  br label %536

536:                                              ; preds = %535, %515
  %537 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %538 = call i64 @AR_SREV_9330(%struct.ath_hw* %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %548, label %540

540:                                              ; preds = %536
  %541 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %542 = call i64 @AR_SREV_9485(%struct.ath_hw* %541)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %548, label %544

544:                                              ; preds = %540
  %545 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %546 = call i64 @AR_SREV_9565(%struct.ath_hw* %545)
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %567

548:                                              ; preds = %544, %540, %536
  %549 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %550 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %549, i32 0, i32 5
  %551 = load %struct.TYPE_4__*, %struct.TYPE_4__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %551, i32 0, i32 0
  %553 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %552, align 8
  %554 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %555 = load i32, i32* @EEP_ANT_DIV_CTL1, align 4
  %556 = call i32 %553(%struct.ath_hw* %554, i32 %555)
  store i32 %556, i32* %9, align 4
  %557 = load i32, i32* %9, align 4
  %558 = ashr i32 %557, 6
  %559 = icmp eq i32 %558, 3
  br i1 %559, label %560, label %566

560:                                              ; preds = %548
  %561 = load i32, i32* @ATH9K_HW_CAP_ANT_DIV_COMB, align 4
  %562 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %563 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 4
  %565 = or i32 %564, %561
  store i32 %565, i32* %563, align 4
  br label %566

566:                                              ; preds = %560, %548
  br label %567

567:                                              ; preds = %566, %544
  %568 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %569 = call i64 @ath9k_hw_dfs_tested(%struct.ath_hw* %568)
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %577

571:                                              ; preds = %567
  %572 = load i32, i32* @ATH9K_HW_CAP_DFS, align 4
  %573 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %574 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 4
  %576 = or i32 %575, %572
  store i32 %576, i32* %574, align 4
  br label %577

577:                                              ; preds = %571, %567
  %578 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %579 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %578, i32 0, i32 1
  %580 = load i32, i32* %579, align 4
  store i32 %580, i32* %10, align 4
  %581 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %582 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 4
  store i32 %583, i32* %11, align 4
  br label %584

584:                                              ; preds = %612, %577
  %585 = load i32, i32* %10, align 4
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %590, label %587

587:                                              ; preds = %584
  %588 = load i32, i32* %11, align 4
  %589 = icmp ne i32 %588, 0
  br label %590

590:                                              ; preds = %587, %584
  %591 = phi i1 [ true, %584 ], [ %589, %587 ]
  br i1 %591, label %592, label %617

592:                                              ; preds = %590
  %593 = load i32, i32* %10, align 4
  %594 = call i32 @BIT(i32 0)
  %595 = and i32 %593, %594
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %602

597:                                              ; preds = %592
  %598 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %599 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %598, i32 0, i32 8
  %600 = load i32, i32* %599, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %599, align 4
  br label %602

602:                                              ; preds = %597, %592
  %603 = load i32, i32* %11, align 4
  %604 = call i32 @BIT(i32 0)
  %605 = and i32 %603, %604
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %612

607:                                              ; preds = %602
  %608 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %609 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %608, i32 0, i32 7
  %610 = load i32, i32* %609, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %609, align 4
  br label %612

612:                                              ; preds = %607, %602
  %613 = load i32, i32* %10, align 4
  %614 = ashr i32 %613, 1
  store i32 %614, i32* %10, align 4
  %615 = load i32, i32* %11, align 4
  %616 = ashr i32 %615, 1
  store i32 %616, i32* %11, align 4
  br label %584

617:                                              ; preds = %590
  %618 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %619 = call i64 @AR_SREV_9462(%struct.ath_hw* %618)
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %625, label %621

621:                                              ; preds = %617
  %622 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %623 = call i64 @AR_SREV_9565(%struct.ath_hw* %622)
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %625, label %649

625:                                              ; preds = %621, %617
  %626 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %627 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %626, i32 0, i32 4
  %628 = load i32, i32* %627, align 4
  %629 = load i32, i32* @AR_ENT_OTP_49GHZ_DISABLE, align 4
  %630 = and i32 %628, %629
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %638, label %632

632:                                              ; preds = %625
  %633 = load i32, i32* @ATH9K_HW_CAP_MCI, align 4
  %634 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %635 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 4
  %637 = or i32 %636, %633
  store i32 %637, i32* %635, align 4
  br label %638

638:                                              ; preds = %632, %625
  %639 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %640 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %639)
  %641 = icmp ne i64 %640, 0
  br i1 %641, label %642, label %648

642:                                              ; preds = %638
  %643 = load i32, i32* @ATH9K_HW_CAP_RTT, align 4
  %644 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %645 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 4
  %647 = or i32 %646, %643
  store i32 %647, i32* %645, align 4
  br label %648

648:                                              ; preds = %642, %638
  br label %649

649:                                              ; preds = %648, %621
  %650 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %651 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %650)
  %652 = icmp ne i64 %651, 0
  br i1 %652, label %653, label %671

653:                                              ; preds = %649
  %654 = load i32, i32* @ATH9K_HW_WOW_DEVICE_CAPABLE, align 4
  %655 = load i32, i32* @ATH9K_HW_WOW_PATTERN_MATCH_EXACT, align 4
  %656 = or i32 %654, %655
  %657 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %658 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 4
  %660 = or i32 %659, %656
  store i32 %660, i32* %658, align 4
  %661 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %662 = call i64 @AR_SREV_9280(%struct.ath_hw* %661)
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %664, label %670

664:                                              ; preds = %653
  %665 = load i32, i32* @ATH9K_HW_WOW_PATTERN_MATCH_DWORD, align 4
  %666 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %667 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 4
  %669 = or i32 %668, %665
  store i32 %669, i32* %667, align 4
  br label %670

670:                                              ; preds = %664, %653
  br label %671

671:                                              ; preds = %670, %649
  %672 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %673 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %672)
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %675, label %691

675:                                              ; preds = %671
  %676 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %677 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %676, i32 0, i32 5
  %678 = load %struct.TYPE_4__*, %struct.TYPE_4__** %677, align 8
  %679 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %678, i32 0, i32 0
  %680 = load i32 (%struct.ath_hw*, i32)*, i32 (%struct.ath_hw*, i32)** %679, align 8
  %681 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %682 = load i32, i32* @EEP_PAPRD, align 4
  %683 = call i32 %680(%struct.ath_hw* %681, i32 %682)
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %691

685:                                              ; preds = %675
  %686 = load i32, i32* @ATH9K_HW_CAP_PAPRD, align 4
  %687 = load %struct.ath9k_hw_capabilities*, %struct.ath9k_hw_capabilities** %4, align 8
  %688 = getelementptr inbounds %struct.ath9k_hw_capabilities, %struct.ath9k_hw_capabilities* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 4
  %690 = or i32 %689, %686
  store i32 %690, i32* %688, align 4
  br label %691

691:                                              ; preds = %685, %675, %671
  store i32 0, i32* %2, align 4
  br label %692

692:                                              ; preds = %691, %87
  %693 = load i32, i32* %2, align 4
  ret i32 %693
}

declare dso_local %struct.ath_regulatory* @ath9k_hw_regulatory(%struct.ath_hw*) #1

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_gpio_get(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i8* @fixup_chainmask(i32, i32) #1

declare dso_local i64 @AR_DEVID_7010(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @ath9k_hw_dfs_tested(%struct.ath_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
