; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_test_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_test_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@TG3_PHYFLG_EEE_CAP = common dso_local global i32 0, align 4
@TG3_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@TG3_MAC_LOOPB_TEST = common dso_local global i64 0, align 8
@TG3_PHY_LOOPB_TEST = common dso_local global i64 0, align 8
@TG3_EXT_LOOPB_TEST = common dso_local global i64 0, align 8
@ENABLE_RSS = common dso_local global i32 0, align 4
@MAC_RSS_INDIR_TBL_0 = common dso_local global i32 0, align 4
@TG3_RSS_INDIR_TBL_SIZE = common dso_local global i32 0, align 4
@ASIC_REV_5780 = common dso_local global i64 0, align 8
@CPMU_PRESENT = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@TG3_STD_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@JUMBO_RING_ENABLE = common dso_local global i32 0, align 4
@TG3_JMB_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@TG3_PHYFLG_PHY_SERDES = common dso_local global i32 0, align 4
@USE_PHYLIB = common dso_local global i32 0, align 4
@MAC_TX_STATUS = common dso_local global i32 0, align 4
@TX_STATUS_LINK_UP = common dso_local global i32 0, align 4
@TSO_CAPABLE = common dso_local global i32 0, align 4
@TG3_TSO_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@TG3_PHYFLG_ENABLE_APD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32*, i32)* @tg3_test_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_test_loopback(%struct.tg3* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  store i32 9000, i32* %9, align 4
  %14 = load %struct.tg3*, %struct.tg3** %4, align 8
  %15 = getelementptr inbounds %struct.tg3, %struct.tg3* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.tg3*, %struct.tg3** %4, align 8
  %20 = getelementptr inbounds %struct.tg3, %struct.tg3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETH_HLEN, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.tg3*, %struct.tg3** %4, align 8
  %26 = getelementptr inbounds %struct.tg3, %struct.tg3* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TG3_PHYFLG_EEE_CAP, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @TG3_PHYFLG_EEE_CAP, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.tg3*, %struct.tg3** %4, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.tg3*, %struct.tg3** %4, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netif_running(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %24
  %42 = load i32, i32* @TG3_LOOPBACK_FAILED, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @TG3_MAC_LOOPB_TEST, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @TG3_LOOPBACK_FAILED, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* @TG3_PHY_LOOPB_TEST, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load i32, i32* @TG3_LOOPBACK_FAILED, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* @TG3_EXT_LOOPB_TEST, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %41
  br label %312

58:                                               ; preds = %24
  %59 = load %struct.tg3*, %struct.tg3** %4, align 8
  %60 = call i32 @tg3_reset_hw(%struct.tg3* %59, i32 1)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load i32, i32* @TG3_LOOPBACK_FAILED, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* @TG3_MAC_LOOPB_TEST, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @TG3_LOOPBACK_FAILED, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* @TG3_PHY_LOOPB_TEST, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load i32, i32* @TG3_LOOPBACK_FAILED, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i64, i64* @TG3_EXT_LOOPB_TEST, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %63
  br label %312

80:                                               ; preds = %58
  %81 = load %struct.tg3*, %struct.tg3** %4, align 8
  %82 = load i32, i32* @ENABLE_RSS, align 4
  %83 = call i64 @tg3_flag(%struct.tg3* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load i32, i32* @MAC_RSS_INDIR_TBL_0, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %96, %85
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @MAC_RSS_INDIR_TBL_0, align 4
  %90 = load i32, i32* @TG3_RSS_INDIR_TBL_SIZE, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @tw32(i32 %94, i32 0)
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 4
  store i32 %98, i32* %10, align 4
  br label %87

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %80
  %101 = load %struct.tg3*, %struct.tg3** %4, align 8
  %102 = call i64 @tg3_asic_rev(%struct.tg3* %101)
  %103 = load i64, i64* @ASIC_REV_5780, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %146

105:                                              ; preds = %100
  %106 = load %struct.tg3*, %struct.tg3** %4, align 8
  %107 = load i32, i32* @CPMU_PRESENT, align 4
  %108 = call i64 @tg3_flag(%struct.tg3* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %146, label %110

110:                                              ; preds = %105
  %111 = load %struct.tg3*, %struct.tg3** %4, align 8
  %112 = call i32 @tg3_mac_loopback(%struct.tg3* %111, i32 1)
  %113 = load %struct.tg3*, %struct.tg3** %4, align 8
  %114 = load i32, i32* @ETH_FRAME_LEN, align 4
  %115 = call i64 @tg3_run_loopback(%struct.tg3* %113, i32 %114, i32 0)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load i32, i32* @TG3_STD_LOOPBACK_FAILED, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i64, i64* @TG3_MAC_LOOPB_TEST, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117, %110
  %125 = load %struct.tg3*, %struct.tg3** %4, align 8
  %126 = load i32, i32* @JUMBO_RING_ENABLE, align 4
  %127 = call i64 @tg3_flag(%struct.tg3* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = load %struct.tg3*, %struct.tg3** %4, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @ETH_HLEN, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i64 @tg3_run_loopback(%struct.tg3* %130, i32 %133, i32 0)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i32, i32* @TG3_JMB_LOOPBACK_FAILED, align 4
  %138 = load i32*, i32** %5, align 8
  %139 = load i64, i64* @TG3_MAC_LOOPB_TEST, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %136, %129, %124
  %144 = load %struct.tg3*, %struct.tg3** %4, align 8
  %145 = call i32 @tg3_mac_loopback(%struct.tg3* %144, i32 0)
  br label %146

146:                                              ; preds = %143, %105, %100
  %147 = load %struct.tg3*, %struct.tg3** %4, align 8
  %148 = getelementptr inbounds %struct.tg3, %struct.tg3* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %290, label %153

153:                                              ; preds = %146
  %154 = load %struct.tg3*, %struct.tg3** %4, align 8
  %155 = load i32, i32* @USE_PHYLIB, align 4
  %156 = call i64 @tg3_flag(%struct.tg3* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %290, label %158

158:                                              ; preds = %153
  %159 = load %struct.tg3*, %struct.tg3** %4, align 8
  %160 = call i32 @tg3_phy_lpbk_set(%struct.tg3* %159, i32 0, i32 0)
  store i32 0, i32* %11, align 4
  br label %161

161:                                              ; preds = %173, %158
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %162, 100
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load i32, i32* @MAC_TX_STATUS, align 4
  %166 = call i32 @tr32(i32 %165)
  %167 = load i32, i32* @TX_STATUS_LINK_UP, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %176

171:                                              ; preds = %164
  %172 = call i32 @mdelay(i32 1)
  br label %173

173:                                              ; preds = %171
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %161

176:                                              ; preds = %170, %161
  %177 = load %struct.tg3*, %struct.tg3** %4, align 8
  %178 = load i32, i32* @ETH_FRAME_LEN, align 4
  %179 = call i64 @tg3_run_loopback(%struct.tg3* %177, i32 %178, i32 0)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load i32, i32* @TG3_STD_LOOPBACK_FAILED, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = load i64, i64* @TG3_PHY_LOOPB_TEST, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %182
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %181, %176
  %189 = load %struct.tg3*, %struct.tg3** %4, align 8
  %190 = load i32, i32* @TSO_CAPABLE, align 4
  %191 = call i64 @tg3_flag(%struct.tg3* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load %struct.tg3*, %struct.tg3** %4, align 8
  %195 = load i32, i32* @ETH_FRAME_LEN, align 4
  %196 = call i64 @tg3_run_loopback(%struct.tg3* %194, i32 %195, i32 1)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load i32, i32* @TG3_TSO_LOOPBACK_FAILED, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = load i64, i64* @TG3_PHY_LOOPB_TEST, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %199
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %198, %193, %188
  %206 = load %struct.tg3*, %struct.tg3** %4, align 8
  %207 = load i32, i32* @JUMBO_RING_ENABLE, align 4
  %208 = call i64 @tg3_flag(%struct.tg3* %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = load %struct.tg3*, %struct.tg3** %4, align 8
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @ETH_HLEN, align 4
  %214 = add nsw i32 %212, %213
  %215 = call i64 @tg3_run_loopback(%struct.tg3* %211, i32 %214, i32 0)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %210
  %218 = load i32, i32* @TG3_JMB_LOOPBACK_FAILED, align 4
  %219 = load i32*, i32** %5, align 8
  %220 = load i64, i64* @TG3_PHY_LOOPB_TEST, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %218
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %217, %210, %205
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %279

227:                                              ; preds = %224
  %228 = load %struct.tg3*, %struct.tg3** %4, align 8
  %229 = call i32 @tg3_phy_lpbk_set(%struct.tg3* %228, i32 0, i32 1)
  %230 = call i32 @mdelay(i32 40)
  %231 = load %struct.tg3*, %struct.tg3** %4, align 8
  %232 = load i32, i32* @ETH_FRAME_LEN, align 4
  %233 = call i64 @tg3_run_loopback(%struct.tg3* %231, i32 %232, i32 0)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %227
  %236 = load i32, i32* @TG3_STD_LOOPBACK_FAILED, align 4
  %237 = load i32*, i32** %5, align 8
  %238 = load i64, i64* @TG3_EXT_LOOPB_TEST, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %236
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %235, %227
  %243 = load %struct.tg3*, %struct.tg3** %4, align 8
  %244 = load i32, i32* @TSO_CAPABLE, align 4
  %245 = call i64 @tg3_flag(%struct.tg3* %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %242
  %248 = load %struct.tg3*, %struct.tg3** %4, align 8
  %249 = load i32, i32* @ETH_FRAME_LEN, align 4
  %250 = call i64 @tg3_run_loopback(%struct.tg3* %248, i32 %249, i32 1)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = load i32, i32* @TG3_TSO_LOOPBACK_FAILED, align 4
  %254 = load i32*, i32** %5, align 8
  %255 = load i64, i64* @TG3_EXT_LOOPB_TEST, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %253
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %252, %247, %242
  %260 = load %struct.tg3*, %struct.tg3** %4, align 8
  %261 = load i32, i32* @JUMBO_RING_ENABLE, align 4
  %262 = call i64 @tg3_flag(%struct.tg3* %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %278

264:                                              ; preds = %259
  %265 = load %struct.tg3*, %struct.tg3** %4, align 8
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* @ETH_HLEN, align 4
  %268 = add nsw i32 %266, %267
  %269 = call i64 @tg3_run_loopback(%struct.tg3* %265, i32 %268, i32 0)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %264
  %272 = load i32, i32* @TG3_JMB_LOOPBACK_FAILED, align 4
  %273 = load i32*, i32** %5, align 8
  %274 = load i64, i64* @TG3_EXT_LOOPB_TEST, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %272
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %271, %264, %259
  br label %279

279:                                              ; preds = %278, %224
  %280 = load %struct.tg3*, %struct.tg3** %4, align 8
  %281 = getelementptr inbounds %struct.tg3, %struct.tg3* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @TG3_PHYFLG_ENABLE_APD, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %279
  %287 = load %struct.tg3*, %struct.tg3** %4, align 8
  %288 = call i32 @tg3_phy_toggle_apd(%struct.tg3* %287, i32 1)
  br label %289

289:                                              ; preds = %286, %279
  br label %290

290:                                              ; preds = %289, %153, %146
  %291 = load i32*, i32** %5, align 8
  %292 = load i64, i64* @TG3_MAC_LOOPB_TEST, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %5, align 8
  %296 = load i64, i64* @TG3_PHY_LOOPB_TEST, align 8
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %294, %298
  %300 = load i32*, i32** %5, align 8
  %301 = load i64, i64* @TG3_EXT_LOOPB_TEST, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %299, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %290
  %307 = load i32, i32* @EIO, align 4
  %308 = sub nsw i32 0, %307
  br label %310

309:                                              ; preds = %290
  br label %310

310:                                              ; preds = %309, %306
  %311 = phi i32 [ %308, %306 ], [ 0, %309 ]
  store i32 %311, i32* %7, align 4
  br label %312

312:                                              ; preds = %310, %79, %57
  %313 = load i32, i32* %8, align 4
  %314 = load %struct.tg3*, %struct.tg3** %4, align 8
  %315 = getelementptr inbounds %struct.tg3, %struct.tg3* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* %7, align 4
  ret i32 %318
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @tg3_reset_hw(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_mac_loopback(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_run_loopback(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_phy_lpbk_set(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @tg3_phy_toggle_apd(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
