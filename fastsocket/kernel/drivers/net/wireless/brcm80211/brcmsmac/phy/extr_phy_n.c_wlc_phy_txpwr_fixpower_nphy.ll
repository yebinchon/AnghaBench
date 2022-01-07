; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_fixpower_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwr_fixpower_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@PHY_CORE_0 = common dso_local global i64 0, align 8
@PHY_CORE_1 = common dso_local global i64 0, align 8
@nphy_tpc_5GHz_txgain_rev3 = common dso_local global i32* null, align 8
@nphy_tpc_5GHz_txgain_HiPwrEPA = common dso_local global i32* null, align 8
@nphy_tpc_5GHz_txgain_rev4 = common dso_local global i32* null, align 8
@nphy_tpc_5GHz_txgain_rev5 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_HiPwrEPA = common dso_local global i32* null, align 8
@nphy_tpc_txgain_rev3 = common dso_local global i32* null, align 8
@nphy_tpc_txgain = common dso_local global i32* null, align 8
@NPHY_TBL_ID_CORE1TXPWRCTL = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE2TXPWRCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpwr_fixpower_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %19, i32 1)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 72, i32* %29, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 72, i32* %30, align 4
  br label %42

31:                                               ; preds = %21
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = call i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy* %32, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %38 [
    i32 131, label %35
    i32 129, label %35
    i32 128, label %35
    i32 130, label %35
  ]

35:                                               ; preds = %31, %31, %31, %31
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %37, align 4
  br label %41

38:                                               ; preds = %31
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 91, i32* %39, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 91, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @NREV_GE(i64 %46, i32 7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 30, i32* %50, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 30, i32* %51, align 4
  br label %63

52:                                               ; preds = %42
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @NREV_GE(i64 %56, i32 3)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 40, i32* %60, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 40, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %52
  br label %63

63:                                               ; preds = %62, %49
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @NREV_LT(i64 %67, i32 7)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %63
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %72, 40
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 100
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 40
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 100
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %78, %74, %70
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 91, i32* %87, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 91, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89, %63
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %94 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %93, i32 0, i32 5
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i64, i64* @PHY_CORE_0, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %92, i32* %98, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 5
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i64, i64* @PHY_CORE_1, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %100, i32* %106, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 5
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i64, i64* @PHY_CORE_0, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i32 %108, i32* %114, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %117, i32 0, i32 5
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i64, i64* @PHY_CORE_1, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %116, i32* %122, align 4
  store i64 0, i64* %3, align 8
  br label %123

123:                                              ; preds = %361, %90
  %124 = load i64, i64* %3, align 8
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %124, %128
  br i1 %129, label %130, label %364

130:                                              ; preds = %123
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %132 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %12, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i64 @NREV_GE(i64 %135, i32 3)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %237

138:                                              ; preds = %130
  %139 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %140 = call i64 @PHY_IPA(%struct.brcms_phy* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %144 = call i32* @wlc_phy_get_ipa_gaintbl_nphy(%struct.brcms_phy* %143)
  store i32* %144, i32** %13, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = load i64, i64* %3, align 8
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %4, align 4
  br label %236

152:                                              ; preds = %138
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %154 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @CHSPEC_IS5G(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %208

158:                                              ; preds = %152
  %159 = load i64, i64* %12, align 8
  %160 = call i64 @NREV_IS(i64 %159, i32 3)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32*, i32** @nphy_tpc_5GHz_txgain_rev3, align 8
  %164 = load i64, i64* %3, align 8
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %163, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %4, align 4
  br label %207

170:                                              ; preds = %158
  %171 = load i64, i64* %12, align 8
  %172 = call i64 @NREV_IS(i64 %171, i32 4)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %198

174:                                              ; preds = %170
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %176 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load i32*, i32** @nphy_tpc_5GHz_txgain_HiPwrEPA, align 8
  %182 = load i64, i64* %3, align 8
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  %187 = load i32, i32* %186, align 4
  br label %196

188:                                              ; preds = %174
  %189 = load i32*, i32** @nphy_tpc_5GHz_txgain_rev4, align 8
  %190 = load i64, i64* %3, align 8
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  %195 = load i32, i32* %194, align 4
  br label %196

196:                                              ; preds = %188, %180
  %197 = phi i32 [ %187, %180 ], [ %195, %188 ]
  store i32 %197, i32* %4, align 4
  br label %206

198:                                              ; preds = %170
  %199 = load i32*, i32** @nphy_tpc_5GHz_txgain_rev5, align 8
  %200 = load i64, i64* %3, align 8
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %198, %196
  br label %207

207:                                              ; preds = %206, %162
  br label %235

208:                                              ; preds = %152
  %209 = load i64, i64* %12, align 8
  %210 = call i64 @NREV_GE(i64 %209, i32 5)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %208
  %213 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %214 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 3
  br i1 %217, label %218, label %226

218:                                              ; preds = %212
  %219 = load i32*, i32** @nphy_tpc_txgain_HiPwrEPA, align 8
  %220 = load i64, i64* %3, align 8
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %219, i64 %223
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %4, align 4
  br label %234

226:                                              ; preds = %212, %208
  %227 = load i32*, i32** @nphy_tpc_txgain_rev3, align 8
  %228 = load i64, i64* %3, align 8
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %226, %218
  br label %235

235:                                              ; preds = %234, %207
  br label %236

236:                                              ; preds = %235, %142
  br label %245

237:                                              ; preds = %130
  %238 = load i32*, i32** @nphy_tpc_txgain, align 8
  %239 = load i64, i64* %3, align 8
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %238, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %237, %236
  %246 = load i64, i64* %12, align 8
  %247 = call i64 @NREV_GE(i64 %246, i32 3)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32, i32* %4, align 4
  %251 = ashr i32 %250, 16
  %252 = and i32 %251, 131071
  store i32 %252, i32* %5, align 4
  br label %257

253:                                              ; preds = %245
  %254 = load i32, i32* %4, align 4
  %255 = ashr i32 %254, 16
  %256 = and i32 %255, 8191
  store i32 %256, i32* %5, align 4
  br label %257

257:                                              ; preds = %253, %249
  %258 = load i64, i64* %12, align 8
  %259 = call i64 @NREV_GE(i64 %258, i32 7)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %257
  %262 = load i32, i32* %4, align 4
  %263 = ashr i32 %262, 8
  %264 = and i32 %263, 7
  store i32 %264, i32* %6, align 4
  br label %269

265:                                              ; preds = %257
  %266 = load i32, i32* %4, align 4
  %267 = ashr i32 %266, 8
  %268 = and i32 %267, 63
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %265, %261
  %270 = load i32, i32* %4, align 4
  %271 = ashr i32 %270, 0
  %272 = and i32 %271, 255
  store i32 %272, i32* %7, align 4
  %273 = load i64, i64* %12, align 8
  %274 = call i64 @NREV_GE(i64 %273, i32 3)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %269
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %278 = load i64, i64* %3, align 8
  %279 = load i64, i64* @PHY_CORE_0, align 8
  %280 = icmp eq i64 %278, %279
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 143, i32 165
  %283 = call i32 @mod_phy_reg(%struct.brcms_phy* %277, i32 %282, i32 256, i32 256)
  br label %287

284:                                              ; preds = %269
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %286 = call i32 @mod_phy_reg(%struct.brcms_phy* %285, i32 165, i32 16384, i32 16384)
  br label %287

287:                                              ; preds = %284, %276
  %288 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %289 = load i64, i64* %3, align 8
  %290 = load i64, i64* @PHY_CORE_0, align 8
  %291 = icmp eq i64 %289, %290
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i32 170, i32 171
  %294 = load i32, i32* %6, align 4
  %295 = call i32 @write_phy_reg(%struct.brcms_phy* %288, i32 %293, i32 %294)
  %296 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %297 = load i64, i64* %3, align 8
  %298 = add i64 272, %297
  %299 = trunc i64 %298 to i32
  %300 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %296, i32 7, i32 1, i32 %299, i32 16, i32* %5)
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %302 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %301, i32 15, i32 1, i32 87, i32 16, i32* %8)
  %303 = load i64, i64* %3, align 8
  %304 = load i64, i64* @PHY_CORE_0, align 8
  %305 = icmp eq i64 %303, %304
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i32 255, i32 65280
  %308 = load i32, i32* %8, align 4
  %309 = and i32 %308, %307
  store i32 %309, i32* %8, align 4
  %310 = load i64, i64* %3, align 8
  %311 = load i64, i64* @PHY_CORE_0, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %287
  %314 = load i32, i32* %7, align 4
  %315 = shl i32 %314, 8
  br label %319

316:                                              ; preds = %287
  %317 = load i32, i32* %7, align 4
  %318 = shl i32 %317, 0
  br label %319

319:                                              ; preds = %316, %313
  %320 = phi i32 [ %315, %313 ], [ %318, %316 ]
  %321 = load i32, i32* %8, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %8, align 4
  %323 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %324 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %323, i32 15, i32 1, i32 87, i32 16, i32* %8)
  %325 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %326 = call i64 @PHY_IPA(%struct.brcms_phy* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %360

328:                                              ; preds = %319
  %329 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %330 = load i64, i64* %3, align 8
  %331 = load i64, i64* @PHY_CORE_0, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  br label %337

335:                                              ; preds = %328
  %336 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi i32 [ %334, %333 ], [ %336, %335 ]
  %339 = load i64, i64* %3, align 8
  %340 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 576, %341
  %343 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %329, i32 %338, i32 1, i32 %342, i32 32, i32* %11)
  %344 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %345 = load i64, i64* %3, align 8
  %346 = load i64, i64* @PHY_CORE_0, align 8
  %347 = icmp eq i64 %345, %346
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i32 663, i32 667
  %350 = load i32, i32* %11, align 4
  %351 = shl i32 %350, 4
  %352 = call i32 @mod_phy_reg(%struct.brcms_phy* %344, i32 %349, i32 8176, i32 %351)
  %353 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %354 = load i64, i64* %3, align 8
  %355 = load i64, i64* @PHY_CORE_0, align 8
  %356 = icmp eq i64 %354, %355
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i32 663, i32 667
  %359 = call i32 @mod_phy_reg(%struct.brcms_phy* %353, i32 %358, i32 4, i32 4)
  br label %360

360:                                              ; preds = %337, %319
  br label %361

361:                                              ; preds = %360
  %362 = load i64, i64* %3, align 8
  %363 = add i64 %362, 1
  store i64 %363, i64* %3, align 8
  br label %123

364:                                              ; preds = %123
  %365 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %366 = call i32 @and_phy_reg(%struct.brcms_phy* %365, i32 191, i32 -32)
  %367 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %368 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %364
  %372 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %373 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %372, i32 0)
  br label %374

374:                                              ; preds = %371, %364
  ret void
}

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i64 @NREV_GE(i64, i32) #1

declare dso_local i64 @NREV_LT(i64, i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i32* @wlc_phy_get_ipa_gaintbl_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i64 @NREV_IS(i64, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
