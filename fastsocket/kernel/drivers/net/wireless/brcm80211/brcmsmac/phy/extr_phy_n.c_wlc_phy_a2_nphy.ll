; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_a2_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_a2_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.nphy_ipa_txcalgains = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.nphy_txgains = type { i32*, i32*, i32*, i32*, i32* }

@PHY_CORE_0 = common dso_local global i64 0, align 8
@CAL_GCTRL = common dso_local global i32 0, align 4
@CAL_SOFT = common dso_local global i32 0, align 4
@NPHY_REV7_RfctrlOverride_cmd_txgain = common dso_local global i32 0, align 4
@WL_CHANSPEC_BW_40 = common dso_local global i64 0, align 8
@CAL_FULL = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_EPSILONTBL0 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_EPSILONTBL1 = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM47162 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.nphy_ipa_txcalgains*, i32, i64)* @wlc_phy_a2_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_a2_nphy(%struct.brcms_phy* %0, %struct.nphy_ipa_txcalgains* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca %struct.nphy_ipa_txcalgains*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca [2 x i64], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.nphy_txgains, align 8
  %19 = alloca %struct.nphy_txgains, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store %struct.nphy_ipa_txcalgains* %1, %struct.nphy_ipa_txcalgains** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @NREV_LT(i32 %23, i32 3)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %706

27:                                               ; preds = %4
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @PHY_CORE_0, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %15, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @CAL_GCTRL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @CAL_SOFT, align 4
  %40 = icmp eq i32 %38, %39
  br label %41

41:                                               ; preds = %37, %27
  %42 = phi i1 [ true, %27 ], [ %40, %37 ]
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %14, align 4
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @NREV_GE(i32 %48, i32 7)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %420

51:                                               ; preds = %41
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  call void @wlc_phy_get_tx_gain_nphy(%struct.nphy_txgains* sret %19, %struct.brcms_phy* %52)
  %53 = bitcast %struct.nphy_txgains* %18 to i8*
  %54 = bitcast %struct.nphy_txgains* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 40, i1 false)
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @CHSPEC_IS2G(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %18, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 15
  %67 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %18, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 12
  %73 = or i32 %66, %72
  %74 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %18, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %73, %79
  %81 = load %struct.nphy_ipa_txcalgains*, %struct.nphy_ipa_txcalgains** %6, align 8
  %82 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 3
  %89 = or i32 %80, %88
  %90 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %18, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %89, %94
  store i32 %95, i32* %13, align 4
  br label %132

96:                                               ; preds = %51
  %97 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %18, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 15
  %103 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %18, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 12
  %109 = or i32 %102, %108
  %110 = load %struct.nphy_ipa_txcalgains*, %struct.nphy_ipa_txcalgains** %6, align 8
  %111 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 8
  %118 = or i32 %109, %117
  %119 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %18, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 3
  %125 = or i32 %118, %124
  %126 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %18, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %125, %130
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %96, %60
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %134 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_txgain, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i64, i64* %8, align 8
  %137 = trunc i64 %136 to i32
  %138 = shl i32 1, %137
  %139 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %133, i32 %134, i32 %135, i32 %138, i32 0)
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %141 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @CHSPEC_IS2G(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %180

145:                                              ; preds = %132
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %147 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp sle i32 %149, 4
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %153 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 6
  br i1 %156, label %157, label %168

157:                                              ; preds = %151, %145
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %159 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 60, i32 79
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 %166
  store i64 %165, i64* %167, align 8
  br label %179

168:                                              ; preds = %151
  %169 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %170 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 45, i32 64
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %8, align 8
  %178 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 %177
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %168, %157
  br label %191

180:                                              ; preds = %132
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %182 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 75, i32 107
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %8, align 8
  %190 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 %189
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %180, %179
  %192 = load i64, i64* %15, align 8
  %193 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 %192
  store i64 0, i64* %193, align 8
  %194 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %195 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %196 = load i64, i64* %195, align 16
  %197 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 1
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @wlc_phy_ipa_set_bbmult_nphy(%struct.brcms_phy* %194, i64 %196, i64 %198)
  store i32 63, i32* %10, align 4
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %201 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @CHSPEC_IS2G(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %191
  %206 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %207 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 4
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %213 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp eq i32 %215, 6
  br i1 %216, label %217, label %218

217:                                              ; preds = %211, %205
  store i32 30, i32* %9, align 4
  store i32 30, i32* %11, align 4
  br label %219

218:                                              ; preds = %211
  store i32 25, i32* %9, align 4
  store i32 25, i32* %11, align 4
  br label %219

219:                                              ; preds = %218, %217
  br label %241

220:                                              ; preds = %191
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %222 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp eq i32 %224, 5
  br i1 %225, label %238, label %226

226:                                              ; preds = %220
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %228 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 7
  br i1 %231, label %238, label %232

232:                                              ; preds = %226
  %233 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %234 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %236, 8
  br i1 %237, label %238, label %239

238:                                              ; preds = %232, %226, %220
  store i32 25, i32* %9, align 4
  store i32 25, i32* %11, align 4
  br label %240

239:                                              ; preds = %232
  store i32 35, i32* %9, align 4
  store i32 35, i32* %11, align 4
  br label %240

240:                                              ; preds = %239, %238
  br label %241

241:                                              ; preds = %240, %219
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* @CAL_GCTRL, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %286

245:                                              ; preds = %241
  %246 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %247 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, 5
  br i1 %250, label %251, label %258

251:                                              ; preds = %245
  %252 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %253 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i64 @CHSPEC_IS2G(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  store i32 55, i32* %9, align 4
  br label %285

258:                                              ; preds = %251, %245
  %259 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %260 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %262, 7
  br i1 %263, label %264, label %270

264:                                              ; preds = %258
  %265 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %266 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @CHSPEC_IS2G(i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %282, label %270

270:                                              ; preds = %264, %258
  %271 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %272 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %274, 8
  br i1 %275, label %276, label %283

276:                                              ; preds = %270
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %278 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i64 @CHSPEC_IS2G(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %276, %264
  store i32 60, i32* %9, align 4
  br label %284

283:                                              ; preds = %276, %270
  store i32 63, i32* %9, align 4
  br label %284

284:                                              ; preds = %283, %282
  br label %285

285:                                              ; preds = %284, %257
  br label %296

286:                                              ; preds = %241
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @CAL_FULL, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %286
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @CAL_SOFT, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  store i32 35, i32* %9, align 4
  store i32 35, i32* %11, align 4
  br label %295

295:                                              ; preds = %294, %290, %286
  br label %296

296:                                              ; preds = %295, %285
  %297 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %298 = load i64, i64* %8, align 8
  %299 = load i64, i64* @PHY_CORE_0, align 8
  %300 = icmp eq i64 %298, %299
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i32 663, i32 667
  %303 = call i32 @mod_phy_reg(%struct.brcms_phy* %297, i32 %302, i32 1, i32 1)
  %304 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %305 = load i64, i64* %15, align 8
  %306 = load i64, i64* @PHY_CORE_0, align 8
  %307 = icmp eq i64 %305, %306
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i32 663, i32 667
  %310 = call i32 @mod_phy_reg(%struct.brcms_phy* %304, i32 %309, i32 1, i32 0)
  %311 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %312 = load i64, i64* %8, align 8
  %313 = load i64, i64* @PHY_CORE_0, align 8
  %314 = icmp eq i64 %312, %313
  %315 = zext i1 %314 to i64
  %316 = select i1 %314, i32 675, i32 676
  %317 = call i32 @mod_phy_reg(%struct.brcms_phy* %311, i32 %316, i32 8192, i32 8192)
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %319 = load i64, i64* %15, align 8
  %320 = load i64, i64* @PHY_CORE_0, align 8
  %321 = icmp eq i64 %319, %320
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i32 675, i32 676
  %324 = call i32 @mod_phy_reg(%struct.brcms_phy* %318, i32 %323, i32 8192, i32 0)
  %325 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %326 = call i32 @write_phy_reg(%struct.brcms_phy* %325, i32 673, i32 128)
  %327 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %328 = call i32 @write_phy_reg(%struct.brcms_phy* %327, i32 674, i32 256)
  %329 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %330 = load i64, i64* %8, align 8
  %331 = load i64, i64* @PHY_CORE_0, align 8
  %332 = icmp eq i64 %330, %331
  %333 = zext i1 %332 to i64
  %334 = select i1 %332, i32 675, i32 676
  %335 = call i32 @mod_phy_reg(%struct.brcms_phy* %329, i32 %334, i32 112, i32 176)
  %336 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %337 = load i64, i64* %8, align 8
  %338 = load i64, i64* @PHY_CORE_0, align 8
  %339 = icmp eq i64 %337, %338
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i32 675, i32 676
  %342 = call i32 @mod_phy_reg(%struct.brcms_phy* %336, i32 %341, i32 1792, i32 2816)
  %343 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %344 = load i64, i64* %8, align 8
  %345 = load i64, i64* @PHY_CORE_0, align 8
  %346 = icmp eq i64 %344, %345
  %347 = zext i1 %346 to i64
  %348 = select i1 %346, i32 675, i32 676
  %349 = call i32 @mod_phy_reg(%struct.brcms_phy* %343, i32 %348, i32 7, i32 3)
  %350 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %351 = call i32 @write_phy_reg(%struct.brcms_phy* %350, i32 741, i32 32)
  %352 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %353 = load i32, i32* %11, align 4
  %354 = shl i32 %353, 0
  %355 = call i32 @mod_phy_reg(%struct.brcms_phy* %352, i32 672, i32 63, i32 %354)
  %356 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %357 = load i32, i32* %9, align 4
  %358 = shl i32 %357, 0
  %359 = call i32 @mod_phy_reg(%struct.brcms_phy* %356, i32 671, i32 63, i32 %358)
  %360 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %361 = load i32, i32* %10, align 4
  %362 = shl i32 %361, 8
  %363 = call i32 @mod_phy_reg(%struct.brcms_phy* %360, i32 671, i32 16128, i32 %362)
  %364 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %365 = load i64, i64* %8, align 8
  %366 = icmp eq i64 %365, 0
  %367 = zext i1 %366 to i64
  %368 = select i1 %366, i32 1, i32 2
  %369 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %370 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %364, i32 8, i32 1, i32 %368, i32 0, i32 %369)
  %371 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %372 = load i64, i64* %8, align 8
  %373 = icmp eq i64 %372, 0
  %374 = zext i1 %373 to i64
  %375 = select i1 %373, i32 2, i32 1
  %376 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %377 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %371, i32 8, i32 0, i32 %375, i32 0, i32 %376)
  %378 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %379 = call i32 @write_phy_reg(%struct.brcms_phy* %378, i32 702, i32 1)
  %380 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %381 = call i32 @read_phy_reg(%struct.brcms_phy* %380, i32 702)
  %382 = call i32 @SPINWAIT(i32 %381, i32 10000000)
  %383 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %384 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %385 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %383, i32 8, i32 0, i32 3, i32 0, i32 %384)
  %386 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %387 = load i64, i64* %8, align 8
  %388 = load i64, i64* @PHY_CORE_0, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %296
  %391 = load i32, i32* @NPHY_TBL_ID_EPSILONTBL0, align 4
  br label %394

392:                                              ; preds = %296
  %393 = load i32, i32* @NPHY_TBL_ID_EPSILONTBL1, align 4
  br label %394

394:                                              ; preds = %392, %390
  %395 = phi i32 [ %391, %390 ], [ %393, %392 ]
  %396 = load i32, i32* %11, align 4
  %397 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %386, i32 %395, i32 1, i32 %396, i32 32, i32* %17)
  %398 = load i32, i32* %7, align 4
  %399 = load i32, i32* @CAL_GCTRL, align 4
  %400 = icmp ne i32 %398, %399
  br i1 %400, label %401, label %412

401:                                              ; preds = %394
  %402 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %403 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = call i64 @CHSPEC_IS5G(i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %401
  %408 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %409 = load i64, i64* %8, align 8
  %410 = call i32 @wlc_phy_a1_nphy(%struct.brcms_phy* %408, i64 %409, i32 5, i32 0, i32 35)
  br label %411

411:                                              ; preds = %407, %401
  br label %412

412:                                              ; preds = %411, %394
  %413 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %414 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_txgain, align 4
  %415 = load i32, i32* %13, align 4
  %416 = load i64, i64* %8, align 8
  %417 = trunc i64 %416 to i32
  %418 = shl i32 1, %417
  %419 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %413, i32 %414, i32 %415, i32 %418, i32 1)
  br label %706

420:                                              ; preds = %41
  %421 = load %struct.nphy_ipa_txcalgains*, %struct.nphy_ipa_txcalgains** %6, align 8
  %422 = icmp ne %struct.nphy_ipa_txcalgains* %421, null
  br i1 %422, label %423, label %505

423:                                              ; preds = %420
  %424 = load %struct.nphy_ipa_txcalgains*, %struct.nphy_ipa_txcalgains** %6, align 8
  %425 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %424, i32 0, i32 1
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %498

428:                                              ; preds = %423
  %429 = load %struct.nphy_ipa_txcalgains*, %struct.nphy_ipa_txcalgains** %6, align 8
  %430 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = ashr i32 %431, 3
  %433 = sub nsw i32 15, %432
  store i32 %433, i32* %12, align 4
  %434 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %435 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = call i64 @CHSPEC_IS2G(i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %487

439:                                              ; preds = %428
  %440 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %441 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i64 @NREV_GE(i32 %443, i32 6)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %458

446:                                              ; preds = %439
  %447 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %448 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %447, i32 0, i32 3
  %449 = load %struct.TYPE_5__*, %struct.TYPE_5__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @BCMA_CHIP_ID_BCM47162, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %458

454:                                              ; preds = %446
  %455 = load i32, i32* %12, align 4
  %456 = shl i32 %455, 8
  %457 = or i32 4343, %456
  store i32 %457, i32* %13, align 4
  br label %486

458:                                              ; preds = %446, %439
  %459 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %460 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = call i64 @NREV_GE(i32 %462, i32 6)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %469

465:                                              ; preds = %458
  %466 = load i32, i32* %12, align 4
  %467 = shl i32 %466, 8
  %468 = or i32 247, %467
  store i32 %468, i32* %13, align 4
  br label %485

469:                                              ; preds = %458
  %470 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %471 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = call i64 @NREV_IS(i32 %473, i32 5)
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %480

476:                                              ; preds = %469
  %477 = load i32, i32* %12, align 4
  %478 = shl i32 %477, 8
  %479 = or i32 4343, %478
  store i32 %479, i32* %13, align 4
  br label %484

480:                                              ; preds = %469
  %481 = load i32, i32* %12, align 4
  %482 = shl i32 %481, 8
  %483 = or i32 20727, %482
  store i32 %483, i32* %13, align 4
  br label %484

484:                                              ; preds = %480, %476
  br label %485

485:                                              ; preds = %484, %465
  br label %486

486:                                              ; preds = %485, %454
  br label %491

487:                                              ; preds = %428
  %488 = load i32, i32* %12, align 4
  %489 = shl i32 %488, 8
  %490 = or i32 28919, %489
  store i32 %490, i32* %13, align 4
  br label %491

491:                                              ; preds = %487, %486
  %492 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %493 = load i32, i32* %13, align 4
  %494 = load i64, i64* %8, align 8
  %495 = trunc i64 %494 to i32
  %496 = shl i32 1, %495
  %497 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %492, i32 8192, i32 %493, i32 %496, i32 0)
  br label %504

498:                                              ; preds = %423
  %499 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %500 = load i64, i64* %8, align 8
  %501 = trunc i64 %500 to i32
  %502 = shl i32 1, %501
  %503 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %499, i32 8192, i32 23543, i32 %502, i32 0)
  br label %504

504:                                              ; preds = %498, %491
  br label %505

505:                                              ; preds = %504, %420
  %506 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %507 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = call i64 @CHSPEC_IS2G(i32 %508)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %522

511:                                              ; preds = %505
  %512 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %513 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %516 = icmp eq i64 %514, %515
  %517 = zext i1 %516 to i64
  %518 = select i1 %516, i32 45, i32 64
  %519 = sext i32 %518 to i64
  %520 = load i64, i64* %8, align 8
  %521 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 %520
  store i64 %519, i64* %521, align 8
  br label %533

522:                                              ; preds = %505
  %523 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %524 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %527 = icmp eq i64 %525, %526
  %528 = zext i1 %527 to i64
  %529 = select i1 %527, i32 75, i32 107
  %530 = sext i32 %529 to i64
  %531 = load i64, i64* %8, align 8
  %532 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 %531
  store i64 %530, i64* %532, align 8
  br label %533

533:                                              ; preds = %522, %511
  %534 = load i64, i64* %15, align 8
  %535 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 %534
  store i64 0, i64* %535, align 8
  %536 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %537 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %538 = load i64, i64* %537, align 16
  %539 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 1
  %540 = load i64, i64* %539, align 8
  %541 = call i32 @wlc_phy_ipa_set_bbmult_nphy(%struct.brcms_phy* %536, i64 %538, i64 %540)
  store i32 63, i32* %10, align 4
  %542 = load i32, i32* %7, align 4
  %543 = load i32, i32* @CAL_FULL, align 4
  %544 = icmp eq i32 %542, %543
  br i1 %544, label %545, label %546

545:                                              ; preds = %533
  store i32 25, i32* %9, align 4
  store i32 25, i32* %11, align 4
  br label %559

546:                                              ; preds = %533
  %547 = load i32, i32* %7, align 4
  %548 = load i32, i32* @CAL_SOFT, align 4
  %549 = icmp eq i32 %547, %548
  br i1 %549, label %550, label %551

550:                                              ; preds = %546
  store i32 25, i32* %9, align 4
  store i32 25, i32* %11, align 4
  br label %558

551:                                              ; preds = %546
  %552 = load i32, i32* %7, align 4
  %553 = load i32, i32* @CAL_GCTRL, align 4
  %554 = icmp eq i32 %552, %553
  br i1 %554, label %555, label %556

555:                                              ; preds = %551
  store i32 63, i32* %9, align 4
  store i32 25, i32* %11, align 4
  br label %557

556:                                              ; preds = %551
  store i32 25, i32* %9, align 4
  store i32 25, i32* %11, align 4
  br label %557

557:                                              ; preds = %556, %555
  br label %558

558:                                              ; preds = %557, %550
  br label %559

559:                                              ; preds = %558, %545
  %560 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %561 = load i64, i64* %8, align 8
  %562 = load i64, i64* @PHY_CORE_0, align 8
  %563 = icmp eq i64 %561, %562
  %564 = zext i1 %563 to i64
  %565 = select i1 %563, i32 663, i32 667
  %566 = call i32 @mod_phy_reg(%struct.brcms_phy* %560, i32 %565, i32 1, i32 1)
  %567 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %568 = load i64, i64* %15, align 8
  %569 = load i64, i64* @PHY_CORE_0, align 8
  %570 = icmp eq i64 %568, %569
  %571 = zext i1 %570 to i64
  %572 = select i1 %570, i32 663, i32 667
  %573 = call i32 @mod_phy_reg(%struct.brcms_phy* %567, i32 %572, i32 1, i32 0)
  %574 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %575 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %575, i32 0, i32 1
  %577 = load i32, i32* %576, align 4
  %578 = call i64 @NREV_GE(i32 %577, i32 6)
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %622

580:                                              ; preds = %559
  %581 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %582 = load i64, i64* %8, align 8
  %583 = load i64, i64* @PHY_CORE_0, align 8
  %584 = icmp eq i64 %582, %583
  %585 = zext i1 %584 to i64
  %586 = select i1 %584, i32 675, i32 676
  %587 = call i32 @mod_phy_reg(%struct.brcms_phy* %581, i32 %586, i32 8192, i32 8192)
  %588 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %589 = load i64, i64* %15, align 8
  %590 = load i64, i64* @PHY_CORE_0, align 8
  %591 = icmp eq i64 %589, %590
  %592 = zext i1 %591 to i64
  %593 = select i1 %591, i32 675, i32 676
  %594 = call i32 @mod_phy_reg(%struct.brcms_phy* %588, i32 %593, i32 8192, i32 0)
  %595 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %596 = call i32 @write_phy_reg(%struct.brcms_phy* %595, i32 673, i32 32)
  %597 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %598 = call i32 @write_phy_reg(%struct.brcms_phy* %597, i32 674, i32 96)
  %599 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %600 = load i64, i64* %8, align 8
  %601 = load i64, i64* @PHY_CORE_0, align 8
  %602 = icmp eq i64 %600, %601
  %603 = zext i1 %602 to i64
  %604 = select i1 %602, i32 675, i32 676
  %605 = call i32 @mod_phy_reg(%struct.brcms_phy* %599, i32 %604, i32 240, i32 144)
  %606 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %607 = load i64, i64* %8, align 8
  %608 = load i64, i64* @PHY_CORE_0, align 8
  %609 = icmp eq i64 %607, %608
  %610 = zext i1 %609 to i64
  %611 = select i1 %609, i32 675, i32 676
  %612 = call i32 @mod_phy_reg(%struct.brcms_phy* %606, i32 %611, i32 3840, i32 2304)
  %613 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %614 = load i64, i64* %8, align 8
  %615 = load i64, i64* @PHY_CORE_0, align 8
  %616 = icmp eq i64 %614, %615
  %617 = zext i1 %616 to i64
  %618 = select i1 %616, i32 675, i32 676
  %619 = call i32 @mod_phy_reg(%struct.brcms_phy* %613, i32 %618, i32 15, i32 2)
  %620 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %621 = call i32 @write_phy_reg(%struct.brcms_phy* %620, i32 741, i32 32)
  br label %664

622:                                              ; preds = %559
  %623 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %624 = load i64, i64* %8, align 8
  %625 = load i64, i64* @PHY_CORE_0, align 8
  %626 = icmp eq i64 %624, %625
  %627 = zext i1 %626 to i64
  %628 = select i1 %626, i32 675, i32 676
  %629 = call i32 @mod_phy_reg(%struct.brcms_phy* %623, i32 %628, i32 2048, i32 2048)
  %630 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %631 = load i64, i64* %15, align 8
  %632 = load i64, i64* @PHY_CORE_0, align 8
  %633 = icmp eq i64 %631, %632
  %634 = zext i1 %633 to i64
  %635 = select i1 %633, i32 675, i32 676
  %636 = call i32 @mod_phy_reg(%struct.brcms_phy* %630, i32 %635, i32 2048, i32 0)
  %637 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %638 = call i32 @write_phy_reg(%struct.brcms_phy* %637, i32 673, i32 128)
  %639 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %640 = call i32 @write_phy_reg(%struct.brcms_phy* %639, i32 674, i32 1536)
  %641 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %642 = load i64, i64* %8, align 8
  %643 = load i64, i64* @PHY_CORE_0, align 8
  %644 = icmp eq i64 %642, %643
  %645 = zext i1 %644 to i64
  %646 = select i1 %644, i32 675, i32 676
  %647 = call i32 @mod_phy_reg(%struct.brcms_phy* %641, i32 %646, i32 112, i32 0)
  %648 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %649 = load i64, i64* %8, align 8
  %650 = load i64, i64* @PHY_CORE_0, align 8
  %651 = icmp eq i64 %649, %650
  %652 = zext i1 %651 to i64
  %653 = select i1 %651, i32 675, i32 676
  %654 = call i32 @mod_phy_reg(%struct.brcms_phy* %648, i32 %653, i32 1792, i32 0)
  %655 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %656 = load i64, i64* %8, align 8
  %657 = load i64, i64* @PHY_CORE_0, align 8
  %658 = icmp eq i64 %656, %657
  %659 = zext i1 %658 to i64
  %660 = select i1 %658, i32 675, i32 676
  %661 = call i32 @mod_phy_reg(%struct.brcms_phy* %655, i32 %660, i32 7, i32 3)
  %662 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %663 = call i32 @mod_phy_reg(%struct.brcms_phy* %662, i32 672, i32 16128, i32 8192)
  br label %664

664:                                              ; preds = %622, %580
  %665 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %666 = load i32, i32* %11, align 4
  %667 = shl i32 %666, 0
  %668 = call i32 @mod_phy_reg(%struct.brcms_phy* %665, i32 672, i32 63, i32 %667)
  %669 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %670 = load i32, i32* %9, align 4
  %671 = shl i32 %670, 0
  %672 = call i32 @mod_phy_reg(%struct.brcms_phy* %669, i32 671, i32 63, i32 %671)
  %673 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %674 = load i32, i32* %10, align 4
  %675 = shl i32 %674, 8
  %676 = call i32 @mod_phy_reg(%struct.brcms_phy* %673, i32 671, i32 16128, i32 %675)
  %677 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %678 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %677, i32 8, i32 1, i32 3, i32 0)
  %679 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %680 = call i32 @write_phy_reg(%struct.brcms_phy* %679, i32 702, i32 1)
  %681 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %682 = call i32 @read_phy_reg(%struct.brcms_phy* %681, i32 702)
  %683 = call i32 @SPINWAIT(i32 %682, i32 10000000)
  %684 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %685 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %684, i32 8, i32 0, i32 3, i32 0)
  %686 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %687 = load i64, i64* %8, align 8
  %688 = load i64, i64* @PHY_CORE_0, align 8
  %689 = icmp eq i64 %687, %688
  br i1 %689, label %690, label %692

690:                                              ; preds = %664
  %691 = load i32, i32* @NPHY_TBL_ID_EPSILONTBL0, align 4
  br label %694

692:                                              ; preds = %664
  %693 = load i32, i32* @NPHY_TBL_ID_EPSILONTBL1, align 4
  br label %694

694:                                              ; preds = %692, %690
  %695 = phi i32 [ %691, %690 ], [ %693, %692 ]
  %696 = load i32, i32* %11, align 4
  %697 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %686, i32 %695, i32 1, i32 %696, i32 32, i32* %17)
  %698 = load i32, i32* %7, align 4
  %699 = load i32, i32* @CAL_GCTRL, align 4
  %700 = icmp ne i32 %698, %699
  br i1 %700, label %701, label %705

701:                                              ; preds = %694
  %702 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %703 = load i64, i64* %8, align 8
  %704 = call i32 @wlc_phy_a1_nphy(%struct.brcms_phy* %702, i64 %703, i32 5, i32 0, i32 40)
  br label %705

705:                                              ; preds = %701, %694
  br label %706

706:                                              ; preds = %26, %705, %412
  ret void
}

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local void @wlc_phy_get_tx_gain_nphy(%struct.nphy_txgains* sret, %struct.brcms_phy*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_ipa_set_bbmult_nphy(%struct.brcms_phy*, i64, i64) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @wlc_phy_a1_nphy(%struct.brcms_phy*, i64, i32, i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
