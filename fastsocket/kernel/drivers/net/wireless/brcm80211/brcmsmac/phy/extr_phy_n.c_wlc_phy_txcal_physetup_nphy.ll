; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txcal_physetup_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txcal_physetup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32*, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@NPHY_TBL_ID_AFECTRL = common dso_local global i32 0, align 4
@NPHY_RfctrlIntc_override_PA = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_CORE1 = common dso_local global i32 0, align 4
@RADIO_MIMO_CORESEL_CORE2 = common dso_local global i32 0, align 4
@NPHY_RfctrlIntc_override_TRSW = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID1 = common dso_local global i32 0, align 4
@RADIO_2057_OVR_REG0 = common dso_local global i32 0, align 4
@RADIO_2057_PAD2G_TUNE_PUS_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_PAD2G_TUNE_PUS_CORE1 = common dso_local global i32 0, align 4
@RADIO_2057_IPA5G_CASCOFFV_PU_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_IPA5G_CASCOFFV_PU_CORE1 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txcal_physetup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txcal_physetup_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @NREV_GE(i32 %8, i32 3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %234

11:                                               ; preds = %1
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = call i8* @read_phy_reg(%struct.brcms_phy* %12, i32 166)
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = call i8* @read_phy_reg(%struct.brcms_phy* %19, i32 167)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  store i32 3840, i32* %4, align 4
  store i32 512, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, 2048
  store i32 %27, i32* %3, align 4
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @mod_phy_reg(%struct.brcms_phy* %28, i32 166, i32 %29, i32 %30)
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @mod_phy_reg(%struct.brcms_phy* %32, i32 167, i32 %33, i32 %34)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = call i8* @read_phy_reg(%struct.brcms_phy* %36, i32 143)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, 1536
  store i32 %45, i32* %3, align 4
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @write_phy_reg(%struct.brcms_phy* %46, i32 143, i32 %47)
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %50 = call i8* @read_phy_reg(%struct.brcms_phy* %49, i32 165)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, 1536
  store i32 %58, i32* %3, align 4
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @write_phy_reg(%struct.brcms_phy* %59, i32 165, i32 %60)
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = call i8* @read_phy_reg(%struct.brcms_phy* %62, i32 1)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32 %64, i32* %68, align 4
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = call i32 @mod_phy_reg(%struct.brcms_phy* %69, i32 1, i32 32768, i32 0)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %72 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %73 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %71, i32 %72, i32 1, i32 3, i32 16, i32* %3)
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  store i32 %74, i32* %78, align 4
  store i32 0, i32* %3, align 4
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %81 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %79, i32 %80, i32 1, i32 3, i32 16, i32* %3)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %83 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %84 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %82, i32 %83, i32 1, i32 19, i32 16, i32* %3)
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 6
  store i32 %85, i32* %89, align 4
  store i32 0, i32* %3, align 4
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %91 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %92 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %90, i32 %91, i32 1, i32 19, i32 16, i32* %3)
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %94 = call i8* @read_phy_reg(%struct.brcms_phy* %93, i32 145)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %97 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  store i32 %95, i32* %99, align 4
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %101 = call i8* @read_phy_reg(%struct.brcms_phy* %100, i32 146)
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %104 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  store i32 %102, i32* %106, align 4
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %108 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %11
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %113 = load i32, i32* @NPHY_RfctrlIntc_override_PA, align 4
  %114 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  %115 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %112, i32 %113, i32 1, i32 %116)
  br label %125

118:                                              ; preds = %11
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %120 = load i32, i32* @NPHY_RfctrlIntc_override_PA, align 4
  %121 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  %122 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %119, i32 %120, i32 0, i32 %123)
  br label %125

125:                                              ; preds = %118, %111
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %127 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %128 = load i32, i32* @RADIO_MIMO_CORESEL_CORE1, align 4
  %129 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %126, i32 %127, i32 2, i32 %128)
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %131 = load i32, i32* @NPHY_RfctrlIntc_override_TRSW, align 4
  %132 = load i32, i32* @RADIO_MIMO_CORESEL_CORE2, align 4
  %133 = call i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy* %130, i32 %131, i32 8, i32 %132)
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %135 = call i8* @read_phy_reg(%struct.brcms_phy* %134, i32 663)
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %138 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 9
  store i32 %136, i32* %140, align 4
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = call i8* @read_phy_reg(%struct.brcms_phy* %141, i32 667)
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %145 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 10
  store i32 %143, i32* %147, align 4
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %149 = load i32, i32* @PHY_CORE_0, align 4
  %150 = icmp eq i32 0, %149
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 663, i32 667
  %153 = call i32 @mod_phy_reg(%struct.brcms_phy* %148, i32 %152, i32 1, i32 0)
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %155 = load i32, i32* @PHY_CORE_0, align 4
  %156 = icmp eq i32 1, %155
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 663, i32 667
  %159 = call i32 @mod_phy_reg(%struct.brcms_phy* %154, i32 %158, i32 1, i32 0)
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %161 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @NREV_IS(i32 %163, i32 7)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %125
  %167 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %168 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @NREV_GE(i32 %170, i32 8)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166, %125
  %174 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %176 = call i32 @wlc_phy_read_lpf_bw_ctl_nphy(%struct.brcms_phy* %175, i32 0)
  %177 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %178 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %174, i32 128, i32 %176, i32 0, i32 0, i32 %177)
  br label %179

179:                                              ; preds = %173, %166
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %181 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %233

184:                                              ; preds = %179
  %185 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %186 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %233, label %189

189:                                              ; preds = %184
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %191 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @NREV_IS(i32 %193, i32 7)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %220

196:                                              ; preds = %189
  %197 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %198 = load i32, i32* @RADIO_2057_OVR_REG0, align 4
  %199 = call i32 @mod_radio_reg(%struct.brcms_phy* %197, i32 %198, i32 16, i32 16)
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %201 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @CHSPEC_IS2G(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %196
  %206 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %207 = load i32, i32* @RADIO_2057_PAD2G_TUNE_PUS_CORE0, align 4
  %208 = call i32 @mod_radio_reg(%struct.brcms_phy* %206, i32 %207, i32 1, i32 0)
  %209 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %210 = load i32, i32* @RADIO_2057_PAD2G_TUNE_PUS_CORE1, align 4
  %211 = call i32 @mod_radio_reg(%struct.brcms_phy* %209, i32 %210, i32 1, i32 0)
  br label %219

212:                                              ; preds = %196
  %213 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %214 = load i32, i32* @RADIO_2057_IPA5G_CASCOFFV_PU_CORE0, align 4
  %215 = call i32 @mod_radio_reg(%struct.brcms_phy* %213, i32 %214, i32 1, i32 0)
  %216 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %217 = load i32, i32* @RADIO_2057_IPA5G_CASCOFFV_PU_CORE1, align 4
  %218 = call i32 @mod_radio_reg(%struct.brcms_phy* %216, i32 %217, i32 1, i32 0)
  br label %219

219:                                              ; preds = %212, %205
  br label %232

220:                                              ; preds = %189
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %222 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @NREV_GE(i32 %224, i32 8)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %220
  %228 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %229 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %230 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %228, i32 8, i32 0, i32 3, i32 0, i32 %229)
  br label %231

231:                                              ; preds = %227, %220
  br label %232

232:                                              ; preds = %231, %219
  br label %233

233:                                              ; preds = %232, %184, %179
  br label %325

234:                                              ; preds = %1
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = call i8* @read_phy_reg(%struct.brcms_phy* %235, i32 166)
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %239 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  store i32 %237, i32* %241, align 4
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %243 = call i8* @read_phy_reg(%struct.brcms_phy* %242, i32 167)
  %244 = ptrtoint i8* %243 to i32
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %246 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 %244, i32* %248, align 4
  store i32 61440, i32* %4, align 4
  store i32 8192, i32* %3, align 4
  %249 = load i32, i32* %3, align 4
  %250 = or i32 %249, 32768
  store i32 %250, i32* %3, align 4
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* %3, align 4
  %254 = call i32 @mod_phy_reg(%struct.brcms_phy* %251, i32 166, i32 %252, i32 %253)
  %255 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* %3, align 4
  %258 = call i32 @mod_phy_reg(%struct.brcms_phy* %255, i32 167, i32 %256, i32 %257)
  %259 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %260 = call i8* @read_phy_reg(%struct.brcms_phy* %259, i32 165)
  %261 = ptrtoint i8* %260 to i32
  store i32 %261, i32* %3, align 4
  %262 = load i32, i32* %3, align 4
  %263 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %264 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 2
  store i32 %262, i32* %266, align 4
  %267 = load i32, i32* %3, align 4
  %268 = or i32 %267, 12288
  store i32 %268, i32* %3, align 4
  %269 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %270 = load i32, i32* %3, align 4
  %271 = call i32 @write_phy_reg(%struct.brcms_phy* %269, i32 165, i32 %270)
  %272 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %273 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %274 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %272, i32 %273, i32 1, i32 2, i32 16, i32* %3)
  %275 = load i32, i32* %3, align 4
  %276 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %277 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 3
  store i32 %275, i32* %279, align 4
  %280 = load i32, i32* %3, align 4
  %281 = or i32 %280, 8192
  store i32 %281, i32* %3, align 4
  %282 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %283 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %284 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %282, i32 %283, i32 1, i32 2, i32 16, i32* %3)
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %286 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %287 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %285, i32 %286, i32 1, i32 18, i32 16, i32* %3)
  %288 = load i32, i32* %3, align 4
  %289 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %290 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 4
  store i32 %288, i32* %292, align 4
  %293 = load i32, i32* %3, align 4
  %294 = or i32 %293, 8192
  store i32 %294, i32* %3, align 4
  %295 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %296 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %297 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %295, i32 %296, i32 1, i32 18, i32 16, i32* %3)
  %298 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %299 = call i8* @read_phy_reg(%struct.brcms_phy* %298, i32 145)
  %300 = ptrtoint i8* %299 to i32
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %302 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 5
  store i32 %300, i32* %304, align 4
  %305 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %306 = call i8* @read_phy_reg(%struct.brcms_phy* %305, i32 146)
  %307 = ptrtoint i8* %306 to i32
  %308 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %309 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 6
  store i32 %307, i32* %311, align 4
  %312 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %313 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = call i64 @CHSPEC_IS5G(i32 %314)
  %316 = icmp ne i64 %315, 0
  %317 = zext i1 %316 to i64
  %318 = select i1 %316, i32 384, i32 288
  store i32 %318, i32* %3, align 4
  %319 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %320 = load i32, i32* %3, align 4
  %321 = call i32 @write_phy_reg(%struct.brcms_phy* %319, i32 145, i32 %320)
  %322 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %323 = load i32, i32* %3, align 4
  %324 = call i32 @write_phy_reg(%struct.brcms_phy* %322, i32 146, i32 %323)
  br label %325

325:                                              ; preds = %234, %233
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i8* @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_rfctrlintc_override_nphy(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_read_lpf_bw_ctl_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
