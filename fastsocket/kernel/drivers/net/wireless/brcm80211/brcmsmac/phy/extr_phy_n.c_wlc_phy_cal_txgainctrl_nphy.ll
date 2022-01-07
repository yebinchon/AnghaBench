; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_cal_txgainctrl_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_cal_txgainctrl_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i64*, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i64* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@NPHY_RfctrlIntc_override_PA = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_CORE1 = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_CORE2 = common dso_local global i32 0, align 4
@NPHY_RfctrlIntc_override_TRSW = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i64 0, align 8
@NPHY_CAL_TSSISAMPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_cal_txgainctrl_nphy(%struct.brcms_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 250, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @NREV_GE(i32 %25, i32 7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i64 2, i64* %18, align 8
  br label %30

29:                                               ; preds = %3
  store i64 1, i64* %18, align 8
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @CHSPEC_IS40(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 5000, i32* %16, align 4
  br label %38

37:                                               ; preds = %30
  store i32 2500, i32* %16, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 8
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %39, i32 1, i64 %44, i32 1)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 8
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %46, i32 2, i64 %51, i32 1)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %59 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %58, i32 1)
  br label %60

60:                                               ; preds = %57, %38
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %19, align 4
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %67 = call i32 @read_phy_reg(%struct.brcms_phy* %66, i32 145)
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %67, i32* %68, align 16
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %70 = call i32 @read_phy_reg(%struct.brcms_phy* %69, i32 146)
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %73 = call i32 @read_phy_reg(%struct.brcms_phy* %72, i32 231)
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %73, i32* %74, align 8
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %76 = call i32 @read_phy_reg(%struct.brcms_phy* %75, i32 236)
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %76, i32* %77, align 4
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %79 = load i32, i32* @NPHY_RfctrlIntc_override_PA, align 4
  %80 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  %81 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %78, i32 %79, i32 1, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %60
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %88 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %89 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  %90 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %87, i32 %88, i32 2, i32 %89)
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %92 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %93 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  %94 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %91, i32 %92, i32 8, i32 %93)
  br label %104

95:                                               ; preds = %60
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %97 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %98 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  %99 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %96, i32 %97, i32 1, i32 %98)
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %101 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %102 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  %103 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %100, i32 %101, i32 7, i32 %102)
  br label %104

104:                                              ; preds = %95, %86
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %106 = call i32 @read_phy_reg(%struct.brcms_phy* %105, i32 1)
  store i32 %106, i32* %14, align 4
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %108 = call i32 @mod_phy_reg(%struct.brcms_phy* %107, i32 1, i32 32768, i32 0)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %110 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %109, i32 15, i32 1, i32 87, i32 16, i32* %9)
  store i64 0, i64* %8, align 8
  br label %111

111:                                              ; preds = %271, %104
  %112 = load i64, i64* %8, align 8
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %114 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ult i64 %112, %116
  br i1 %117, label %118, label %274

118:                                              ; preds = %111
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %120 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %119, i32 0, i32 8
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %231, %118
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %234

129:                                              ; preds = %126
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy* %130, i32 %131, i32 %132, i32 0, i32 0, i32 0)
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* @PHY_CORE_0, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, 65280
  store i32 %139, i32* %10, align 4
  br label %143

140:                                              ; preds = %129
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, 255
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %145 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %144, i32 15, i32 1, i32 87, i32 16, i32* %10)
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %147 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %146, i32 15, i32 1, i32 95, i32 16, i32* %10)
  %148 = call i32 @udelay(i32 50)
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %151 = load i32, i32* @NPHY_CAL_TSSISAMPS, align 4
  %152 = call i32 @wlc_phy_est_tonepwr_nphy(%struct.brcms_phy* %149, i32* %150, i32 %151)
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %154 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %156 = call i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy* %155)
  %157 = load i32, i32* %5, align 4
  %158 = mul nsw i32 %157, 4
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %158, %161
  store i32 %162, i32* %11, align 4
  %163 = load i64, i64* %18, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %163, %165
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = sub i64 %168, %166
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %143
  store i32 0, i32* %12, align 4
  br label %179

174:                                              ; preds = %143
  %175 = load i32, i32* %12, align 4
  %176 = icmp sgt i32 %175, 127
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i32 127, i32* %12, align 4
  br label %178

178:                                              ; preds = %177, %174
  br label %179

179:                                              ; preds = %178, %173
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %181 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @CHSPEC_IS5G(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %179
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %187 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @NREV_IS(i32 %189, i32 4)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %185
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %194 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 3
  br i1 %197, label %198, label %203

198:                                              ; preds = %192
  %199 = load i32, i32* %12, align 4
  %200 = icmp slt i32 %199, 30
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 30, i32* %12, align 4
  br label %202

202:                                              ; preds = %201, %198
  br label %203

203:                                              ; preds = %202, %192, %185
  br label %223

204:                                              ; preds = %179
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %206 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @NREV_GE(i32 %208, i32 5)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %204
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %213 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 3
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load i32, i32* %12, align 4
  %219 = icmp slt i32 %218, 50
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store i32 50, i32* %12, align 4
  br label %221

221:                                              ; preds = %220, %217
  br label %222

222:                                              ; preds = %221, %211, %204
  br label %223

223:                                              ; preds = %222, %203
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %225 = load i64, i64* %8, align 8
  %226 = trunc i64 %225 to i32
  %227 = shl i32 1, %226
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %224, i32 %227, i64 %229, i32 1)
  br label %231

231:                                              ; preds = %223
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %7, align 4
  br label %126

234:                                              ; preds = %126
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %238 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %237, i32 0, i32 2
  %239 = load i64*, i64** %238, align 8
  %240 = load i64, i64* %8, align 8
  %241 = getelementptr inbounds i64, i64* %239, i64 %240
  store i64 %236, i64* %241, align 8
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %270

244:                                              ; preds = %234
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %246 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %245, i32 15, i32 1, i32 87, i32 16, i32* %21)
  %247 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %17, align 4
  %250 = call i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy* %247, i32 %248, i32 %249, i32 0, i32 0, i32 0)
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %252 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %251, i32 15, i32 1, i32 87, i32 16, i32* %21)
  %253 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %254 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %253, i32 15, i32 1, i32 95, i32 16, i32* %21)
  %255 = call i32 @udelay(i32 100)
  %256 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %258 = load i32, i32* @NPHY_CAL_TSSISAMPS, align 4
  %259 = call i32 @wlc_phy_est_tonepwr_nphy(%struct.brcms_phy* %256, i32* %257, i32 %258)
  %260 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %261 = load i64, i64* %8, align 8
  %262 = add i64 272, %261
  %263 = trunc i64 %262 to i32
  %264 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %260, i32 7, i32 1, i32 %263, i32 16, i32* %20)
  %265 = call i32 @mdelay(i32 4000)
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %267 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %266, i32 0, i32 3
  store i64 0, i64* %267, align 8
  %268 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %269 = call i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy* %268)
  br label %270

270:                                              ; preds = %244, %234
  br label %271

271:                                              ; preds = %270
  %272 = load i64, i64* %8, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %8, align 8
  br label %111

274:                                              ; preds = %111
  %275 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %276 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %277 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %276, i32 0, i32 2
  %278 = load i64*, i64** %277, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 0
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %275, i32 1, i64 %280, i32 1)
  %282 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %283 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %284 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %283, i32 0, i32 2
  %285 = load i64*, i64** %284, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 1
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %282, i32 2, i64 %287, i32 1)
  %289 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %290 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %291 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %290, i32 0, i32 1
  %292 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %289, i32 15, i32 1, i32 87, i32 16, i32* %291)
  %293 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %294 = load i32, i32* %14, align 4
  %295 = call i32 @write_phy_reg(%struct.brcms_phy* %293, i32 1, i32 %294)
  %296 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %297 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %298 = load i32, i32* %297, align 16
  %299 = call i32 @write_phy_reg(%struct.brcms_phy* %296, i32 145, i32 %298)
  %300 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %301 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @write_phy_reg(%struct.brcms_phy* %300, i32 146, i32 %302)
  %304 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %305 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @write_phy_reg(%struct.brcms_phy* %304, i32 231, i32 %306)
  %308 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %309 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @write_phy_reg(%struct.brcms_phy* %308, i32 236, i32 %310)
  %312 = load i32, i32* %19, align 4
  %313 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %314 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 8
  %315 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %316 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %274
  %320 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %321 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %320, i32 0)
  br label %322

322:                                              ; preds = %319, %274
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy*, i32, i64, i32) #1

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_phy_est_tonepwr_nphy(%struct.brcms_phy*, i32*, i32) #1

declare dso_local i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
