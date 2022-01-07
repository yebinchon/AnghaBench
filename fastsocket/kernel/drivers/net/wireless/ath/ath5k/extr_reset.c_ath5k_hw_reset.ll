; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i64, i64, i32* }
%struct.ieee80211_channel = type { i32, i32 }

@AR5K_RF2413 = common dso_local global i64 0, align 8
@AR5K_RF5413 = common dso_local global i64 0, align 8
@AR5K_AR5212 = common dso_local global i64 0, align 8
@ATH5K_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"DMA didn't stop, falling back to normal reset\0A\00", align 1
@AR5K_AR5211 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"G mode not available on 5210/5211\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"B mode not available on 5210\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid channel: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"fast chan change failed, falling back to normal reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"fast chan change successful\0A\00", align 1
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_SREV_AR5211 = common dso_local global i64 0, align 8
@AR5K_TSF_U32 = common dso_local global i32 0, align 4
@AR5K_TSF_L32 = common dso_local global i32 0, align 4
@AR5K_PCICFG = common dso_local global i32 0, align 4
@AR5K_PCICFG_LEDSTATE = common dso_local global i32 0, align 4
@AR5K_GPIOCR = common dso_local global i32 0, align 4
@AR5K_GPIODO = common dso_local global i32 0, align 4
@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_PHY_SHIFT_5GHZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to initialize PHY (%i) !\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@AR5K_BEACON = common dso_local global i32 0, align 4
@AR5K_BEACON_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_reset(%struct.ath5k_hw* %0, i32 %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %5
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AR5K_RF2413, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AR5K_RF5413, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %27, %21, %5
  %35 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %36 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AR5K_AR5212, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %42 = call i32 @ath5k_hw_set_sleep_clock(%struct.ath5k_hw* %41, i32 0)
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %45 = call i32 @ath5k_hw_stop_rx_pcu(%struct.ath5k_hw* %44)
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %47 = call i32 @ath5k_hw_dma_stop(%struct.ath5k_hw* %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %55 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %56 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %54, i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  store i32 0, i32* %18, align 4
  br label %57

57:                                               ; preds = %53, %50, %43
  %58 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  switch i32 %61, label %87 [
    i32 130, label %62
    i32 128, label %63
    i32 129, label %75
  ]

62:                                               ; preds = %57
  br label %95

63:                                               ; preds = %57
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %65 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AR5K_AR5211, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %71 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_ERR(%struct.ath5k_hw* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %356

74:                                               ; preds = %63
  br label %95

75:                                               ; preds = %57
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %77 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AR5K_AR5211, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %83 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_ERR(%struct.ath5k_hw* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %356

86:                                               ; preds = %75
  br label %95

87:                                               ; preds = %57
  %88 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_ERR(%struct.ath5k_hw* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %356

95:                                               ; preds = %86, %74, %62
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %100 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @ath5k_hw_phy_init(%struct.ath5k_hw* %99, %struct.ieee80211_channel* %100, i32 %101, i32 1)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %107 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %108 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %106, i32 %107, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %113

109:                                              ; preds = %98
  %110 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %111 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %112 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %110, i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %356

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %95
  %115 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %116 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @AR5K_AR5210, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %161

120:                                              ; preds = %114
  %121 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %122 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %120
  store i32 0, i32* %17, align 4
  br label %127

127:                                              ; preds = %138, %126
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 10
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @AR5K_QUEUE_DCU_SEQNUM(i32 %132)
  %134 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %131, i32 %133)
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %136
  store i32 %134, i32* %137, align 4
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %17, align 4
  br label %127

141:                                              ; preds = %127
  br label %147

142:                                              ; preds = %120
  %143 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %144 = call i32 @AR5K_QUEUE_DCU_SEQNUM(i32 0)
  %145 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %143, i32 %144)
  %146 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  store i32 %145, i32* %146, align 16
  br label %147

147:                                              ; preds = %142, %141
  %148 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %149 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AR5K_AR5211, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %155 = load i32, i32* @AR5K_TSF_U32, align 4
  %156 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %154, i32 %155)
  store i32 %156, i32* %14, align 4
  %157 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %158 = load i32, i32* @AR5K_TSF_L32, align 4
  %159 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %157, i32 %158)
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %153, %147
  br label %161

161:                                              ; preds = %160, %114
  %162 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %163 = load i32, i32* @AR5K_PCICFG, align 4
  %164 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %162, i32 %163)
  %165 = load i32, i32* @AR5K_PCICFG_LEDSTATE, align 4
  %166 = and i32 %164, %165
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %166, i32* %167, align 4
  %168 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %169 = load i32, i32* @AR5K_GPIOCR, align 4
  %170 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %168, i32 %169)
  %171 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %170, i32* %171, align 4
  %172 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %173 = load i32, i32* @AR5K_GPIODO, align 4
  %174 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %172, i32 %173)
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %174, i32* %175, align 4
  %176 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %177 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @AR5K_AR5212, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %199

181:                                              ; preds = %161
  %182 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %183 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @AR5K_RF5112, align 8
  %186 = icmp sle i64 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %181
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %187
  %191 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %192 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %191, i32 0, i32 4
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %197 = call i32 @ath5k_hw_gainf_calibrate(%struct.ath5k_hw* %196)
  br label %198

198:                                              ; preds = %195, %190, %187
  br label %199

199:                                              ; preds = %198, %181, %161
  %200 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %201 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %202 = call i32 @ath5k_hw_nic_wakeup(%struct.ath5k_hw* %200, %struct.ieee80211_channel* %201)
  store i32 %202, i32* %18, align 4
  %203 = load i32, i32* %18, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32, i32* %18, align 4
  store i32 %206, i32* %6, align 4
  br label %356

207:                                              ; preds = %199
  %208 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %209 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %215 = load i32, i32* @AR5K_PHY_SHIFT_5GHZ, align 4
  %216 = call i32 @AR5K_PHY(i32 0)
  %217 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %214, i32 %215, i32 %216)
  br label %224

218:                                              ; preds = %207
  %219 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %220 = load i32, i32* @AR5K_PHY_SHIFT_5GHZ, align 4
  %221 = or i32 %220, 64
  %222 = call i32 @AR5K_PHY(i32 0)
  %223 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %219, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %218, %213
  %225 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @ath5k_hw_write_initvals(%struct.ath5k_hw* %225, i32 %226, i32 %227)
  store i32 %228, i32* %18, align 4
  %229 = load i32, i32* %18, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %224
  %232 = load i32, i32* %18, align 4
  store i32 %232, i32* %6, align 4
  br label %356

233:                                              ; preds = %224
  %234 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %235 = call i32 @ath5k_hw_init_core_clock(%struct.ath5k_hw* %234)
  %236 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %237 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %238 = call i32 @ath5k_hw_tweak_initval_settings(%struct.ath5k_hw* %236, %struct.ieee80211_channel* %237)
  %239 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %240 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %241 = call i32 @ath5k_hw_commit_eeprom_settings(%struct.ath5k_hw* %239, %struct.ieee80211_channel* %240)
  %242 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %243 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @AR5K_AR5210, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %292

247:                                              ; preds = %233
  %248 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %249 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %252 = icmp slt i64 %250, %251
  br i1 %252, label %253, label %270

253:                                              ; preds = %247
  store i32 0, i32* %17, align 4
  br label %254

254:                                              ; preds = %266, %253
  %255 = load i32, i32* %17, align 4
  %256 = icmp slt i32 %255, 10
  br i1 %256, label %257, label %269

257:                                              ; preds = %254
  %258 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %17, align 4
  %264 = call i32 @AR5K_QUEUE_DCU_SEQNUM(i32 %263)
  %265 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %258, i32 %262, i32 %264)
  br label %266

266:                                              ; preds = %257
  %267 = load i32, i32* %17, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %17, align 4
  br label %254

269:                                              ; preds = %254
  br label %276

270:                                              ; preds = %247
  %271 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %272 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %273 = load i32, i32* %272, align 16
  %274 = call i32 @AR5K_QUEUE_DCU_SEQNUM(i32 0)
  %275 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %271, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %270, %269
  %277 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %278 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @AR5K_AR5211, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %291

282:                                              ; preds = %276
  %283 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %284 = load i32, i32* %14, align 4
  %285 = load i32, i32* @AR5K_TSF_U32, align 4
  %286 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %283, i32 %284, i32 %285)
  %287 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* @AR5K_TSF_L32, align 4
  %290 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %287, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %282, %276
  br label %292

292:                                              ; preds = %291, %233
  %293 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %294 = load i32, i32* @AR5K_PCICFG, align 4
  %295 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %293, i32 %294, i32 %296)
  %298 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %299 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @AR5K_GPIOCR, align 4
  %302 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %298, i32 %300, i32 %301)
  %303 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %304 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @AR5K_GPIODO, align 4
  %307 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %303, i32 %305, i32 %306)
  %308 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %309 = load i32, i32* %8, align 4
  %310 = call i32 @ath5k_hw_pcu_init(%struct.ath5k_hw* %308, i32 %309)
  %311 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %312 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %313 = load i32, i32* %16, align 4
  %314 = call i32 @ath5k_hw_phy_init(%struct.ath5k_hw* %311, %struct.ieee80211_channel* %312, i32 %313, i32 0)
  store i32 %314, i32* %18, align 4
  %315 = load i32, i32* %18, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %292
  %318 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %319 = load i32, i32* %18, align 4
  %320 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_ERR(%struct.ath5k_hw* %318, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %319)
  %321 = load i32, i32* %18, align 4
  store i32 %321, i32* %6, align 4
  br label %356

322:                                              ; preds = %292
  %323 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %324 = call i32 @ath5k_hw_init_queues(%struct.ath5k_hw* %323)
  store i32 %324, i32* %18, align 4
  %325 = load i32, i32* %18, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %322
  %328 = load i32, i32* %18, align 4
  store i32 %328, i32* %6, align 4
  br label %356

329:                                              ; preds = %322
  %330 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %331 = call i32 @ath5k_hw_dma_init(%struct.ath5k_hw* %330)
  %332 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %333 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %329
  %337 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %338 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @AR5K_AR5212, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %336
  %343 = load i32, i32* %8, align 4
  %344 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %345 = icmp ne i32 %343, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %342
  %347 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %348 = call i32 @ath5k_hw_set_sleep_clock(%struct.ath5k_hw* %347, i32 1)
  br label %349

349:                                              ; preds = %346, %342, %336, %329
  %350 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %351 = load i32, i32* @AR5K_BEACON, align 4
  %352 = load i32, i32* @AR5K_BEACON_ENABLE, align 4
  %353 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %350, i32 %351, i32 %352)
  %354 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %355 = call i32 @ath5k_hw_reset_tsf(%struct.ath5k_hw* %354)
  store i32 0, i32* %6, align 4
  br label %356

356:                                              ; preds = %349, %327, %317, %231, %205, %109, %87, %81, %69
  %357 = load i32, i32* %6, align 4
  ret i32 %357
}

declare dso_local i32 @ath5k_hw_set_sleep_clock(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_stop_rx_pcu(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_dma_stop(%struct.ath5k_hw*) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, ...) #1

declare dso_local i32 @ath5k_hw_phy_init(%struct.ath5k_hw*, %struct.ieee80211_channel*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_QUEUE_DCU_SEQNUM(i32) #1

declare dso_local i32 @ath5k_hw_gainf_calibrate(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_nic_wakeup(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_PHY(i32) #1

declare dso_local i32 @ath5k_hw_write_initvals(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_init_core_clock(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_tweak_initval_settings(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_commit_eeprom_settings(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_pcu_init(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_init_queues(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_dma_init(%struct.ath5k_hw*) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reset_tsf(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
