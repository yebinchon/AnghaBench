; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txcal_radio_cleanup_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txcal_radio_cleanup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RADIO_2057 = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@TX_SSI_MASTER = common dso_local global i32 0, align 4
@IQCAL_VCM_HG = common dso_local global i32 0, align 4
@IQCAL_IDAC = common dso_local global i32 0, align 4
@TSSI_VCM = common dso_local global i32 0, align 4
@TX_SSI_MUX = common dso_local global i32 0, align 4
@TSSIA = common dso_local global i32 0, align 4
@TSSIG = common dso_local global i32 0, align 4
@TSSI_MISC1 = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@RADIO_2056_TX_TX_SSI_MASTER = common dso_local global i32 0, align 4
@RADIO_2056_TX_IQCAL_VCM_HG = common dso_local global i32 0, align 4
@RADIO_2056_TX_IQCAL_IDAC = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSI_VCM = common dso_local global i32 0, align 4
@RADIO_2056_TX_TX_AMP_DET = common dso_local global i32 0, align 4
@RADIO_2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSIA = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSIG = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSI_MISC1 = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSI_MISC2 = common dso_local global i32 0, align 4
@RADIO_2056_TX_TSSI_MISC3 = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TXRF_IQCAL1 = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TXRF_IQCAL2 = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TXRF_IQCAL1 = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TXRF_IQCAL2 = common dso_local global i32 0, align 4
@RADIO_2055_PWRDET_RXTX_CORE1 = common dso_local global i32 0, align 4
@RADIO_2055_PWRDET_RXTX_CORE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txcal_radio_cleanup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txcal_radio_cleanup_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @NREV_GE(i32 %8, i32 7)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %147

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %143, %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %146

15:                                               ; preds = %12
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = load i32, i32* @RADIO_2057, align 4
  %18 = load i32, i32* @TX, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TX_SSI_MASTER, align 4
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 11
  %26 = add nsw i32 %25, 0
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %29)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = load i32, i32* @RADIO_2057, align 4
  %33 = load i32, i32* @TX, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IQCAL_VCM_HG, align 4
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %39, 11
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %44)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = load i32, i32* @RADIO_2057, align 4
  %48 = load i32, i32* @TX, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IQCAL_IDAC, align 4
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %54, 11
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %59)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %62 = load i32, i32* @RADIO_2057, align 4
  %63 = load i32, i32* @TX, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @TSSI_VCM, align 4
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = mul nsw i32 %69, 11
  %71 = add nsw i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %74)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = load i32, i32* @RADIO_2057, align 4
  %78 = load i32, i32* @TX, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @TX_SSI_MUX, align 4
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %82 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = mul nsw i32 %84, 11
  %86 = add nsw i32 %85, 5
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %89)
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %92 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 5
  br i1 %95, label %96, label %112

96:                                               ; preds = %15
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %98 = load i32, i32* @RADIO_2057, align 4
  %99 = load i32, i32* @TX, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @TSSIA, align 4
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %103 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = mul nsw i32 %105, 11
  %107 = add nsw i32 %106, 6
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %110)
  br label %112

112:                                              ; preds = %96, %15
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %114 = load i32, i32* @RADIO_2057, align 4
  %115 = load i32, i32* @TX, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @TSSIG, align 4
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %119 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = mul nsw i32 %121, 11
  %123 = add nsw i32 %122, 7
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %126)
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %129 = load i32, i32* @RADIO_2057, align 4
  %130 = load i32, i32* @TX, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @TSSI_MISC1, align 4
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %134 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = mul nsw i32 %136, 11
  %138 = add nsw i32 %137, 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %141)
  br label %143

143:                                              ; preds = %112
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %12

146:                                              ; preds = %12
  br label %376

147:                                              ; preds = %1
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %149 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @NREV_GE(i32 %151, i32 3)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %326

154:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %322, %154
  %156 = load i32, i32* %4, align 4
  %157 = icmp sle i32 %156, 1
  br i1 %157, label %158, label %325

158:                                              ; preds = %155
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @PHY_CORE_0, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* @RADIO_2056_TX0, align 4
  br label %166

164:                                              ; preds = %158
  %165 = load i32, i32* @RADIO_2056_TX1, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  store i32 %167, i32* %3, align 4
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %169 = load i32, i32* @RADIO_2056_TX_TX_SSI_MASTER, align 4
  %170 = load i32, i32* %3, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %173 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = mul nsw i32 %175, 11
  %177 = add nsw i32 %176, 0
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @write_radio_reg(%struct.brcms_phy* %168, i32 %171, i32 %180)
  %182 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %183 = load i32, i32* @RADIO_2056_TX_IQCAL_VCM_HG, align 4
  %184 = load i32, i32* %3, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %187 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = mul nsw i32 %189, 11
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @write_radio_reg(%struct.brcms_phy* %182, i32 %185, i32 %194)
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %197 = load i32, i32* @RADIO_2056_TX_IQCAL_IDAC, align 4
  %198 = load i32, i32* %3, align 4
  %199 = or i32 %197, %198
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %201 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %4, align 4
  %204 = mul nsw i32 %203, 11
  %205 = add nsw i32 %204, 2
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @write_radio_reg(%struct.brcms_phy* %196, i32 %199, i32 %208)
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %211 = load i32, i32* @RADIO_2056_TX_TSSI_VCM, align 4
  %212 = load i32, i32* %3, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %215 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %4, align 4
  %218 = mul nsw i32 %217, 11
  %219 = add nsw i32 %218, 3
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @write_radio_reg(%struct.brcms_phy* %210, i32 %213, i32 %222)
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %225 = load i32, i32* @RADIO_2056_TX_TX_AMP_DET, align 4
  %226 = load i32, i32* %3, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %229 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %4, align 4
  %232 = mul nsw i32 %231, 11
  %233 = add nsw i32 %232, 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %230, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @write_radio_reg(%struct.brcms_phy* %224, i32 %227, i32 %236)
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %239 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %240 = load i32, i32* %3, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %243 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %4, align 4
  %246 = mul nsw i32 %245, 11
  %247 = add nsw i32 %246, 5
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @write_radio_reg(%struct.brcms_phy* %238, i32 %241, i32 %250)
  %252 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %253 = load i32, i32* @RADIO_2056_TX_TSSIA, align 4
  %254 = load i32, i32* %3, align 4
  %255 = or i32 %253, %254
  %256 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %257 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %4, align 4
  %260 = mul nsw i32 %259, 11
  %261 = add nsw i32 %260, 6
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %258, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @write_radio_reg(%struct.brcms_phy* %252, i32 %255, i32 %264)
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %267 = load i32, i32* @RADIO_2056_TX_TSSIG, align 4
  %268 = load i32, i32* %3, align 4
  %269 = or i32 %267, %268
  %270 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %271 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %4, align 4
  %274 = mul nsw i32 %273, 11
  %275 = add nsw i32 %274, 7
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @write_radio_reg(%struct.brcms_phy* %266, i32 %269, i32 %278)
  %280 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %281 = load i32, i32* @RADIO_2056_TX_TSSI_MISC1, align 4
  %282 = load i32, i32* %3, align 4
  %283 = or i32 %281, %282
  %284 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %285 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %4, align 4
  %288 = mul nsw i32 %287, 11
  %289 = add nsw i32 %288, 8
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %286, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @write_radio_reg(%struct.brcms_phy* %280, i32 %283, i32 %292)
  %294 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %295 = load i32, i32* @RADIO_2056_TX_TSSI_MISC2, align 4
  %296 = load i32, i32* %3, align 4
  %297 = or i32 %295, %296
  %298 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %299 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %4, align 4
  %302 = mul nsw i32 %301, 11
  %303 = add nsw i32 %302, 9
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %300, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @write_radio_reg(%struct.brcms_phy* %294, i32 %297, i32 %306)
  %308 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %309 = load i32, i32* @RADIO_2056_TX_TSSI_MISC3, align 4
  %310 = load i32, i32* %3, align 4
  %311 = or i32 %309, %310
  %312 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %313 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %4, align 4
  %316 = mul nsw i32 %315, 11
  %317 = add nsw i32 %316, 10
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %314, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @write_radio_reg(%struct.brcms_phy* %308, i32 %311, i32 %320)
  br label %322

322:                                              ; preds = %166
  %323 = load i32, i32* %4, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %4, align 4
  br label %155

325:                                              ; preds = %155
  br label %375

326:                                              ; preds = %147
  %327 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %328 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL1, align 4
  %329 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %330 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @write_radio_reg(%struct.brcms_phy* %327, i32 %328, i32 %333)
  %335 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %336 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL2, align 4
  %337 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %338 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @write_radio_reg(%struct.brcms_phy* %335, i32 %336, i32 %341)
  %343 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %344 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL1, align 4
  %345 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %346 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 2
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @write_radio_reg(%struct.brcms_phy* %343, i32 %344, i32 %349)
  %351 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %352 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL2, align 4
  %353 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %354 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 3
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @write_radio_reg(%struct.brcms_phy* %351, i32 %352, i32 %357)
  %359 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %360 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE1, align 4
  %361 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %362 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %361, i32 0, i32 0
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 4
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @write_radio_reg(%struct.brcms_phy* %359, i32 %360, i32 %365)
  %367 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %368 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE2, align 4
  %369 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %370 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 5
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @write_radio_reg(%struct.brcms_phy* %367, i32 %368, i32 %373)
  br label %375

375:                                              ; preds = %326, %325
  br label %376

376:                                              ; preds = %375, %146
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @WRITE_RADIO_REG3(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
