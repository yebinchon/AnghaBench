; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_reg_limit_calc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_reg_limit_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i8** }
%struct.txpwr_limits = type { i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8**, i8* }

@BRCMS_NUM_RATES_OFDM = common dso_local global i32 0, align 4
@WL_TX_POWER_CCK_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_CCK_NUM = common dso_local global i32 0, align 4
@WL_TX_POWER_OFDM_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_OFDM_NUM = common dso_local global i32 0, align 4
@WL_TX_POWER_OFDM20_CDD_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_OFDM40_SISO_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_OFDM40_CDD_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_MCS20_SISO_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_MCS20_CDD_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_MCS40_SISO_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_MCS40_CDD_FIRST = common dso_local global i64 0, align 8
@BRCMS_NUM_RATES_MCS_1_STREAM = common dso_local global i32 0, align 4
@WL_TX_POWER_MCS20_STBC_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_MCS40_STBC_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_MCS20_SDM_FIRST = common dso_local global i32 0, align 4
@WL_TX_POWER_MCS40_SDM_FIRST = common dso_local global i32 0, align 4
@BRCMS_NUM_RATES_MCS_2_STREAM = common dso_local global i32 0, align 4
@WL_TX_POWER_MCS_32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.txpwr_limits*, i32)* @wlc_phy_txpower_reg_limit_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txpower_reg_limit_calc(%struct.brcms_phy* %0, %struct.txpwr_limits* %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca %struct.txpwr_limits*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store %struct.txpwr_limits* %1, %struct.txpwr_limits** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %16 = mul nsw i32 2, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8*, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i8** null, i8*** %9, align 8
  store i8** null, i8*** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* @WL_TX_POWER_CCK_FIRST, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %39, %3
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @WL_TX_POWER_CCK_NUM, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %27 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %34 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %32, i8** %38, align 8
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %21

44:                                               ; preds = %21
  %45 = load i32, i32* @WL_TX_POWER_OFDM_FIRST, align 4
  store i32 %45, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %64, %44
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @WL_TX_POWER_OFDM_NUM, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %52 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %57, i8** %63, align 8
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %46

69:                                               ; preds = %46
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %71 = call i64 @ISNPHY(%struct.brcms_phy* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %390

73:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %166, %73
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %169

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  switch i32 %78, label %111 [
    i32 0, label %79
    i32 1, label %87
    i32 2, label %95
    i32 3, label %103
  ]

79:                                               ; preds = %77
  %80 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %81 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  store i8** %82, i8*** %9, align 8
  %83 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %84 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  store i8** %85, i8*** %10, align 8
  %86 = load i32, i32* @WL_TX_POWER_OFDM_FIRST, align 4
  store i32 %86, i32* %11, align 4
  br label %111

87:                                               ; preds = %77
  %88 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %89 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %88, i32 0, i32 3
  %90 = load i8**, i8*** %89, align 8
  store i8** %90, i8*** %9, align 8
  %91 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %92 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %91, i32 0, i32 4
  %93 = load i8**, i8*** %92, align 8
  store i8** %93, i8*** %10, align 8
  %94 = load i32, i32* @WL_TX_POWER_OFDM20_CDD_FIRST, align 4
  store i32 %94, i32* %11, align 4
  br label %111

95:                                               ; preds = %77
  %96 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %97 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %96, i32 0, i32 5
  %98 = load i8**, i8*** %97, align 8
  store i8** %98, i8*** %9, align 8
  %99 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %100 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %99, i32 0, i32 6
  %101 = load i8**, i8*** %100, align 8
  store i8** %101, i8*** %10, align 8
  %102 = load i32, i32* @WL_TX_POWER_OFDM40_SISO_FIRST, align 4
  store i32 %102, i32* %11, align 4
  br label %111

103:                                              ; preds = %77
  %104 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %105 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %104, i32 0, i32 7
  %106 = load i8**, i8*** %105, align 8
  store i8** %106, i8*** %9, align 8
  %107 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %108 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %107, i32 0, i32 8
  %109 = load i8**, i8*** %108, align 8
  store i8** %109, i8*** %10, align 8
  %110 = load i32, i32* @WL_TX_POWER_OFDM40_CDD_FIRST, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %77, %103, %95, %87, %79
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %130, %111
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %19, i64 %118
  store i8* null, i8** %119, align 8
  %120 = load i8**, i8*** %9, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %19, i64 %128
  store i8* %124, i8** %129, align 8
  br label %130

130:                                              ; preds = %116
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %112

133:                                              ; preds = %112
  %134 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %135 = sub nsw i32 %134, 1
  %136 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %137 = call i32 @wlc_phy_mcs_to_ofdm_powers_nphy(i8** %19, i32 0, i32 %135, i32 %136)
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %160, %133
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %139
  %144 = load i8**, i8*** %10, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %19, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @min(i8* %148, i8* %152)
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %155 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %154, i32 0, i32 0
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* %153, i8** %159, align 8
  br label %160

160:                                              ; preds = %143
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %139

165:                                              ; preds = %139
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %74

169:                                              ; preds = %74
  store i32 0, i32* %14, align 4
  br label %170

170:                                              ; preds = %263, %169
  %171 = load i32, i32* %14, align 4
  %172 = icmp slt i32 %171, 4
  br i1 %172, label %173, label %266

173:                                              ; preds = %170
  %174 = load i32, i32* %14, align 4
  switch i32 %174, label %208 [
    i32 0, label %175
    i32 1, label %183
    i32 2, label %191
    i32 3, label %199
  ]

175:                                              ; preds = %173
  %176 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %177 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %176, i32 0, i32 1
  %178 = load i8**, i8*** %177, align 8
  store i8** %178, i8*** %9, align 8
  %179 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %180 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %179, i32 0, i32 2
  %181 = load i8**, i8*** %180, align 8
  store i8** %181, i8*** %10, align 8
  %182 = load i32, i32* @WL_TX_POWER_MCS20_SISO_FIRST, align 4
  store i32 %182, i32* %11, align 4
  br label %208

183:                                              ; preds = %173
  %184 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %185 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %184, i32 0, i32 4
  %186 = load i8**, i8*** %185, align 8
  store i8** %186, i8*** %9, align 8
  %187 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %188 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %187, i32 0, i32 3
  %189 = load i8**, i8*** %188, align 8
  store i8** %189, i8*** %10, align 8
  %190 = load i32, i32* @WL_TX_POWER_MCS20_CDD_FIRST, align 4
  store i32 %190, i32* %11, align 4
  br label %208

191:                                              ; preds = %173
  %192 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %193 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %192, i32 0, i32 6
  %194 = load i8**, i8*** %193, align 8
  store i8** %194, i8*** %9, align 8
  %195 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %196 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %195, i32 0, i32 5
  %197 = load i8**, i8*** %196, align 8
  store i8** %197, i8*** %10, align 8
  %198 = load i32, i32* @WL_TX_POWER_MCS40_SISO_FIRST, align 4
  store i32 %198, i32* %11, align 4
  br label %208

199:                                              ; preds = %173
  %200 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %201 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %200, i32 0, i32 8
  %202 = load i8**, i8*** %201, align 8
  store i8** %202, i8*** %9, align 8
  %203 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %204 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %203, i32 0, i32 7
  %205 = load i8**, i8*** %204, align 8
  store i8** %205, i8*** %10, align 8
  %206 = load i64, i64* @WL_TX_POWER_MCS40_CDD_FIRST, align 8
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %173, %199, %191, %183, %175
  store i32 0, i32* %13, align 4
  br label %209

209:                                              ; preds = %227, %208
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %230

213:                                              ; preds = %209
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %19, i64 %215
  store i8* null, i8** %216, align 8
  %217 = load i8**, i8*** %9, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %19, i64 %225
  store i8* %221, i8** %226, align 8
  br label %227

227:                                              ; preds = %213
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  br label %209

230:                                              ; preds = %209
  %231 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %232 = sub nsw i32 %231, 1
  %233 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %234 = call i32 @wlc_phy_ofdm_to_mcs_powers_nphy(i8** %19, i32 0, i32 %232, i32 %233)
  %235 = load i32, i32* %11, align 4
  store i32 %235, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %236

236:                                              ; preds = %257, %230
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %262

240:                                              ; preds = %236
  %241 = load i8**, i8*** %10, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %19, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call i8* @min(i8* %245, i8* %249)
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %252 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %251, i32 0, i32 0
  %253 = load i8**, i8*** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %253, i64 %255
  store i8* %250, i8** %256, align 8
  br label %257

257:                                              ; preds = %240
  %258 = load i32, i32* %12, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %12, align 4
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %13, align 4
  br label %236

262:                                              ; preds = %236
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %14, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %14, align 4
  br label %170

266:                                              ; preds = %170
  store i32 0, i32* %14, align 4
  br label %267

267:                                              ; preds = %306, %266
  %268 = load i32, i32* %14, align 4
  %269 = icmp slt i32 %268, 2
  br i1 %269, label %270, label %309

270:                                              ; preds = %267
  %271 = load i32, i32* %14, align 4
  switch i32 %271, label %282 [
    i32 0, label %272
    i32 1, label %277
  ]

272:                                              ; preds = %270
  %273 = load i32, i32* @WL_TX_POWER_MCS20_STBC_FIRST, align 4
  store i32 %273, i32* %11, align 4
  %274 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %275 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %274, i32 0, i32 9
  %276 = load i8**, i8*** %275, align 8
  store i8** %276, i8*** %9, align 8
  br label %282

277:                                              ; preds = %270
  %278 = load i32, i32* @WL_TX_POWER_MCS40_STBC_FIRST, align 4
  store i32 %278, i32* %11, align 4
  %279 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %280 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %279, i32 0, i32 10
  %281 = load i8**, i8*** %280, align 8
  store i8** %281, i8*** %9, align 8
  br label %282

282:                                              ; preds = %270, %277, %272
  %283 = load i32, i32* %11, align 4
  store i32 %283, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %284

284:                                              ; preds = %300, %282
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %305

288:                                              ; preds = %284
  %289 = load i8**, i8*** %9, align 8
  %290 = load i32, i32* %13, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %295 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %294, i32 0, i32 0
  %296 = load i8**, i8*** %295, align 8
  %297 = load i32, i32* %12, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8*, i8** %296, i64 %298
  store i8* %293, i8** %299, align 8
  br label %300

300:                                              ; preds = %288
  %301 = load i32, i32* %12, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %12, align 4
  %303 = load i32, i32* %13, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %13, align 4
  br label %284

305:                                              ; preds = %284
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %14, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %14, align 4
  br label %267

309:                                              ; preds = %267
  store i32 0, i32* %14, align 4
  br label %310

310:                                              ; preds = %349, %309
  %311 = load i32, i32* %14, align 4
  %312 = icmp slt i32 %311, 2
  br i1 %312, label %313, label %352

313:                                              ; preds = %310
  %314 = load i32, i32* %14, align 4
  switch i32 %314, label %325 [
    i32 0, label %315
    i32 1, label %320
  ]

315:                                              ; preds = %313
  %316 = load i32, i32* @WL_TX_POWER_MCS20_SDM_FIRST, align 4
  store i32 %316, i32* %11, align 4
  %317 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %318 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %317, i32 0, i32 11
  %319 = load i8**, i8*** %318, align 8
  store i8** %319, i8*** %9, align 8
  br label %325

320:                                              ; preds = %313
  %321 = load i32, i32* @WL_TX_POWER_MCS40_SDM_FIRST, align 4
  store i32 %321, i32* %11, align 4
  %322 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %323 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %322, i32 0, i32 12
  %324 = load i8**, i8*** %323, align 8
  store i8** %324, i8*** %9, align 8
  br label %325

325:                                              ; preds = %313, %320, %315
  %326 = load i32, i32* %11, align 4
  store i32 %326, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %327

327:                                              ; preds = %343, %325
  %328 = load i32, i32* %13, align 4
  %329 = load i32, i32* @BRCMS_NUM_RATES_MCS_2_STREAM, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %348

331:                                              ; preds = %327
  %332 = load i8**, i8*** %9, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8*, i8** %332, i64 %334
  %336 = load i8*, i8** %335, align 8
  %337 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %338 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %337, i32 0, i32 0
  %339 = load i8**, i8*** %338, align 8
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  store i8* %336, i8** %342, align 8
  br label %343

343:                                              ; preds = %331
  %344 = load i32, i32* %12, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %12, align 4
  %346 = load i32, i32* %13, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %13, align 4
  br label %327

348:                                              ; preds = %327
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %14, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %14, align 4
  br label %310

352:                                              ; preds = %310
  %353 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %354 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %353, i32 0, i32 13
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %357 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %356, i32 0, i32 0
  %358 = load i8**, i8*** %357, align 8
  %359 = load i64, i64* @WL_TX_POWER_MCS_32, align 8
  %360 = getelementptr inbounds i8*, i8** %358, i64 %359
  store i8* %355, i8** %360, align 8
  %361 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %362 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %361, i32 0, i32 0
  %363 = load i8**, i8*** %362, align 8
  %364 = load i64, i64* @WL_TX_POWER_MCS40_CDD_FIRST, align 8
  %365 = getelementptr inbounds i8*, i8** %363, i64 %364
  %366 = load i8*, i8** %365, align 8
  %367 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %368 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %367, i32 0, i32 0
  %369 = load i8**, i8*** %368, align 8
  %370 = load i64, i64* @WL_TX_POWER_MCS_32, align 8
  %371 = getelementptr inbounds i8*, i8** %369, i64 %370
  %372 = load i8*, i8** %371, align 8
  %373 = call i8* @min(i8* %366, i8* %372)
  %374 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %375 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %374, i32 0, i32 0
  %376 = load i8**, i8*** %375, align 8
  %377 = load i64, i64* @WL_TX_POWER_MCS40_CDD_FIRST, align 8
  %378 = getelementptr inbounds i8*, i8** %376, i64 %377
  store i8* %373, i8** %378, align 8
  %379 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %380 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %379, i32 0, i32 0
  %381 = load i8**, i8*** %380, align 8
  %382 = load i64, i64* @WL_TX_POWER_MCS40_CDD_FIRST, align 8
  %383 = getelementptr inbounds i8*, i8** %381, i64 %382
  %384 = load i8*, i8** %383, align 8
  %385 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %386 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %385, i32 0, i32 0
  %387 = load i8**, i8*** %386, align 8
  %388 = load i64, i64* @WL_TX_POWER_MCS_32, align 8
  %389 = getelementptr inbounds i8*, i8** %387, i64 %388
  store i8* %384, i8** %389, align 8
  br label %390

390:                                              ; preds = %352, %69
  %391 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %391)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_phy_mcs_to_ofdm_powers_nphy(i8**, i32, i32, i32) #2

declare dso_local i8* @min(i8*, i8*) #2

declare dso_local i32 @wlc_phy_ofdm_to_mcs_powers_nphy(i8**, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
