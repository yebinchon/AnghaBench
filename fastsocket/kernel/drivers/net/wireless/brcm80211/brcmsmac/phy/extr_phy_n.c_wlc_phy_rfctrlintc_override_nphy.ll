; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rfctrlintc_override_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rfctrlintc_override_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@RADIO_MIMO_CORESEL_CORE1 = common dso_local global i64 0, align 8
@PHY_CORE_1 = common dso_local global i64 0, align 8
@RADIO_MIMO_CORESEL_CORE2 = common dso_local global i64 0, align 8
@PHY_CORE_0 = common dso_local global i64 0, align 8
@NPHY_RfctrlIntc_override_OFF = common dso_local global i64 0, align 8
@NPHY_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@NPHY_RfctrlIntc_override_TRSW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"HW error: override failed\00", align 1
@NPHY_RfctrlIntc_override_PA = common dso_local global i64 0, align 8
@NPHY_RfctrlIntc_override_EXT_LNA_PU = common dso_local global i64 0, align 8
@NPHY_RfctrlIntc_override_EXT_LNA_GAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64, i32, i64)* @wlc_phy_rfctrlintc_override_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @NREV_GE(i32 %15, i32 3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %426

18:                                               ; preds = %4
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %422, %18
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %425

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @RADIO_MIMO_CORESEL_CORE1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @PHY_CORE_1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %422

35:                                               ; preds = %30, %26
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @RADIO_MIMO_CORESEL_CORE2, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @PHY_CORE_0, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %422

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @NREV_LT(i32 %49, i32 7)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  store i32 1024, i32* %9, align 4
  store i32 1024, i32* %10, align 4
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @PHY_CORE_0, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 145, i32 146
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @mod_phy_reg(%struct.brcms_phy* %53, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %52, %45
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @NPHY_RfctrlIntc_override_OFF, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @PHY_CORE_0, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 145, i32 146
  %73 = call i32 @write_phy_reg(%struct.brcms_phy* %67, i32 %72, i32 0)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %75 = load i32, i32* @NPHY_RFSEQ_RESET2RX, align 4
  %76 = call i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy* %74, i32 %75)
  br label %421

77:                                               ; preds = %62
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @NPHY_RfctrlIntc_override_TRSW, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %174

81:                                               ; preds = %77
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @NREV_GE(i32 %85, i32 7)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %81
  store i32 192, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, 6
  store i32 %90, i32* %10, align 4
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @PHY_CORE_0, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 145, i32 146
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @mod_phy_reg(%struct.brcms_phy* %91, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* @PHY_CORE_0, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 145, i32 146
  %106 = call i32 @or_phy_reg(%struct.brcms_phy* %100, i32 %105, i32 1024)
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %108 = call i32 @and_phy_reg(%struct.brcms_phy* %107, i32 767, i32 -49153)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %110 = call i32 @or_phy_reg(%struct.brcms_phy* %109, i32 767, i32 8192)
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %112 = call i32 @or_phy_reg(%struct.brcms_phy* %111, i32 767, i32 1)
  br label %173

113:                                              ; preds = %81
  store i32 960, i32* %9, align 4
  %114 = load i32, i32* %7, align 4
  %115 = shl i32 %114, 6
  store i32 %115, i32* %10, align 4
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @PHY_CORE_0, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 145, i32 146
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @mod_phy_reg(%struct.brcms_phy* %116, i32 %121, i32 %122, i32 %123)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @PHY_CORE_0, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 231, i32 236
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @mod_phy_reg(%struct.brcms_phy* %125, i32 %130, i32 %131, i32 %132)
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* @PHY_CORE_0, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 1, i32 2
  store i32 %138, i32* %9, align 4
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* @PHY_CORE_0, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 0, i32 1
  %144 = shl i32 1, %143
  store i32 %144, i32* %10, align 4
  %145 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @mod_phy_reg(%struct.brcms_phy* %145, i32 120, i32 %146, i32 %147)
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %150 = call i32 @read_phy_reg(%struct.brcms_phy* %149, i32 120)
  %151 = load i32, i32* %10, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @SPINWAIT(i32 %154, i32 10000)
  %156 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %157 = call i32 @read_phy_reg(%struct.brcms_phy* %156, i32 120)
  %158 = load i32, i32* %10, align 4
  %159 = and i32 %157, %158
  %160 = call i64 @WARN(i32 %159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %113
  br label %426

163:                                              ; preds = %113
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %164 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* @PHY_CORE_0, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 231, i32 236
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @mod_phy_reg(%struct.brcms_phy* %164, i32 %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %163, %88
  br label %420

174:                                              ; preds = %77
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* @NPHY_RfctrlIntc_override_PA, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %237

178:                                              ; preds = %174
  %179 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %180 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @NREV_GE(i32 %182, i32 7)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %214

185:                                              ; preds = %178
  store i32 48, i32* %9, align 4
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %187 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @CHSPEC_IS5G(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* %7, align 4
  %193 = shl i32 %192, 5
  store i32 %193, i32* %10, align 4
  br label %197

194:                                              ; preds = %185
  %195 = load i32, i32* %7, align 4
  %196 = shl i32 %195, 4
  store i32 %196, i32* %10, align 4
  br label %197

197:                                              ; preds = %194, %191
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %199 = load i64, i64* %11, align 8
  %200 = load i64, i64* @PHY_CORE_0, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 145, i32 146
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @mod_phy_reg(%struct.brcms_phy* %198, i32 %203, i32 %204, i32 %205)
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* @PHY_CORE_0, align 8
  %210 = icmp eq i64 %208, %209
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 145, i32 146
  %213 = call i32 @or_phy_reg(%struct.brcms_phy* %207, i32 %212, i32 4096)
  br label %236

214:                                              ; preds = %178
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %216 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @CHSPEC_IS5G(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %214
  store i32 32, i32* %9, align 4
  %221 = load i32, i32* %7, align 4
  %222 = shl i32 %221, 5
  store i32 %222, i32* %10, align 4
  br label %226

223:                                              ; preds = %214
  store i32 16, i32* %9, align 4
  %224 = load i32, i32* %7, align 4
  %225 = shl i32 %224, 4
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %223, %220
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %228 = load i64, i64* %11, align 8
  %229 = load i64, i64* @PHY_CORE_0, align 8
  %230 = icmp eq i64 %228, %229
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32 145, i32 146
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @mod_phy_reg(%struct.brcms_phy* %227, i32 %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %226, %197
  br label %419

237:                                              ; preds = %174
  %238 = load i64, i64* %6, align 8
  %239 = load i64, i64* @NPHY_RfctrlIntc_override_EXT_LNA_PU, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %327

241:                                              ; preds = %237
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %243 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i64 @NREV_GE(i32 %245, i32 7)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %304

248:                                              ; preds = %241
  %249 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %250 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @CHSPEC_IS5G(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %274

254:                                              ; preds = %248
  store i32 1, i32* %9, align 4
  %255 = load i32, i32* %7, align 4
  %256 = shl i32 %255, 0
  store i32 %256, i32* %10, align 4
  %257 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %258 = load i64, i64* %11, align 8
  %259 = load i64, i64* @PHY_CORE_0, align 8
  %260 = icmp eq i64 %258, %259
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i32 145, i32 146
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %10, align 4
  %265 = call i32 @mod_phy_reg(%struct.brcms_phy* %257, i32 %262, i32 %263, i32 %264)
  store i32 4, i32* %9, align 4
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %267 = load i64, i64* %11, align 8
  %268 = load i64, i64* @PHY_CORE_0, align 8
  %269 = icmp eq i64 %267, %268
  %270 = zext i1 %269 to i64
  %271 = select i1 %269, i32 145, i32 146
  %272 = load i32, i32* %9, align 4
  %273 = call i32 @mod_phy_reg(%struct.brcms_phy* %266, i32 %271, i32 %272, i32 0)
  br label %294

274:                                              ; preds = %248
  store i32 4, i32* %9, align 4
  %275 = load i32, i32* %7, align 4
  %276 = shl i32 %275, 2
  store i32 %276, i32* %10, align 4
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %278 = load i64, i64* %11, align 8
  %279 = load i64, i64* @PHY_CORE_0, align 8
  %280 = icmp eq i64 %278, %279
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 145, i32 146
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* %10, align 4
  %285 = call i32 @mod_phy_reg(%struct.brcms_phy* %277, i32 %282, i32 %283, i32 %284)
  store i32 1, i32* %9, align 4
  %286 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %287 = load i64, i64* %11, align 8
  %288 = load i64, i64* @PHY_CORE_0, align 8
  %289 = icmp eq i64 %287, %288
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 145, i32 146
  %292 = load i32, i32* %9, align 4
  %293 = call i32 @mod_phy_reg(%struct.brcms_phy* %286, i32 %291, i32 %292, i32 0)
  br label %294

294:                                              ; preds = %274, %254
  store i32 2048, i32* %9, align 4
  store i32 2048, i32* %10, align 4
  %295 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %296 = load i64, i64* %11, align 8
  %297 = load i64, i64* @PHY_CORE_0, align 8
  %298 = icmp eq i64 %296, %297
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i32 145, i32 146
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @mod_phy_reg(%struct.brcms_phy* %295, i32 %300, i32 %301, i32 %302)
  br label %326

304:                                              ; preds = %241
  %305 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %306 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i64 @CHSPEC_IS5G(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %304
  store i32 1, i32* %9, align 4
  %311 = load i32, i32* %7, align 4
  %312 = shl i32 %311, 0
  store i32 %312, i32* %10, align 4
  br label %316

313:                                              ; preds = %304
  store i32 4, i32* %9, align 4
  %314 = load i32, i32* %7, align 4
  %315 = shl i32 %314, 2
  store i32 %315, i32* %10, align 4
  br label %316

316:                                              ; preds = %313, %310
  %317 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %318 = load i64, i64* %11, align 8
  %319 = load i64, i64* @PHY_CORE_0, align 8
  %320 = icmp eq i64 %318, %319
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i32 145, i32 146
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* %10, align 4
  %325 = call i32 @mod_phy_reg(%struct.brcms_phy* %317, i32 %322, i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %316, %294
  br label %418

327:                                              ; preds = %237
  %328 = load i64, i64* %6, align 8
  %329 = load i64, i64* @NPHY_RfctrlIntc_override_EXT_LNA_GAIN, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %417

331:                                              ; preds = %327
  %332 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %333 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = call i64 @NREV_GE(i32 %335, i32 7)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %394

338:                                              ; preds = %331
  %339 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %340 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i64 @CHSPEC_IS5G(i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %364

344:                                              ; preds = %338
  store i32 2, i32* %9, align 4
  %345 = load i32, i32* %7, align 4
  %346 = shl i32 %345, 1
  store i32 %346, i32* %10, align 4
  %347 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %348 = load i64, i64* %11, align 8
  %349 = load i64, i64* @PHY_CORE_0, align 8
  %350 = icmp eq i64 %348, %349
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i32 145, i32 146
  %353 = load i32, i32* %9, align 4
  %354 = load i32, i32* %10, align 4
  %355 = call i32 @mod_phy_reg(%struct.brcms_phy* %347, i32 %352, i32 %353, i32 %354)
  store i32 8, i32* %9, align 4
  %356 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %357 = load i64, i64* %11, align 8
  %358 = load i64, i64* @PHY_CORE_0, align 8
  %359 = icmp eq i64 %357, %358
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i32 145, i32 146
  %362 = load i32, i32* %9, align 4
  %363 = call i32 @mod_phy_reg(%struct.brcms_phy* %356, i32 %361, i32 %362, i32 0)
  br label %384

364:                                              ; preds = %338
  store i32 8, i32* %9, align 4
  %365 = load i32, i32* %7, align 4
  %366 = shl i32 %365, 3
  store i32 %366, i32* %10, align 4
  %367 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %368 = load i64, i64* %11, align 8
  %369 = load i64, i64* @PHY_CORE_0, align 8
  %370 = icmp eq i64 %368, %369
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i32 145, i32 146
  %373 = load i32, i32* %9, align 4
  %374 = load i32, i32* %10, align 4
  %375 = call i32 @mod_phy_reg(%struct.brcms_phy* %367, i32 %372, i32 %373, i32 %374)
  store i32 2, i32* %9, align 4
  %376 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %377 = load i64, i64* %11, align 8
  %378 = load i64, i64* @PHY_CORE_0, align 8
  %379 = icmp eq i64 %377, %378
  %380 = zext i1 %379 to i64
  %381 = select i1 %379, i32 145, i32 146
  %382 = load i32, i32* %9, align 4
  %383 = call i32 @mod_phy_reg(%struct.brcms_phy* %376, i32 %381, i32 %382, i32 0)
  br label %384

384:                                              ; preds = %364, %344
  store i32 2048, i32* %9, align 4
  store i32 2048, i32* %10, align 4
  %385 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %386 = load i64, i64* %11, align 8
  %387 = load i64, i64* @PHY_CORE_0, align 8
  %388 = icmp eq i64 %386, %387
  %389 = zext i1 %388 to i64
  %390 = select i1 %388, i32 145, i32 146
  %391 = load i32, i32* %9, align 4
  %392 = load i32, i32* %10, align 4
  %393 = call i32 @mod_phy_reg(%struct.brcms_phy* %385, i32 %390, i32 %391, i32 %392)
  br label %416

394:                                              ; preds = %331
  %395 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %396 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = call i64 @CHSPEC_IS5G(i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %394
  store i32 2, i32* %9, align 4
  %401 = load i32, i32* %7, align 4
  %402 = shl i32 %401, 1
  store i32 %402, i32* %10, align 4
  br label %406

403:                                              ; preds = %394
  store i32 8, i32* %9, align 4
  %404 = load i32, i32* %7, align 4
  %405 = shl i32 %404, 3
  store i32 %405, i32* %10, align 4
  br label %406

406:                                              ; preds = %403, %400
  %407 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %408 = load i64, i64* %11, align 8
  %409 = load i64, i64* @PHY_CORE_0, align 8
  %410 = icmp eq i64 %408, %409
  %411 = zext i1 %410 to i64
  %412 = select i1 %410, i32 145, i32 146
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* %10, align 4
  %415 = call i32 @mod_phy_reg(%struct.brcms_phy* %407, i32 %412, i32 %413, i32 %414)
  br label %416

416:                                              ; preds = %406, %384
  br label %417

417:                                              ; preds = %416, %327
  br label %418

418:                                              ; preds = %417, %326
  br label %419

419:                                              ; preds = %418, %236
  br label %420

420:                                              ; preds = %419, %173
  br label %421

421:                                              ; preds = %420, %66
  br label %422

422:                                              ; preds = %421, %43, %34
  %423 = load i64, i64* %11, align 8
  %424 = add nsw i64 %423, 1
  store i64 %424, i64* %11, align 8
  br label %19

425:                                              ; preds = %19
  br label %426

426:                                              ; preds = %162, %425, %4
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
