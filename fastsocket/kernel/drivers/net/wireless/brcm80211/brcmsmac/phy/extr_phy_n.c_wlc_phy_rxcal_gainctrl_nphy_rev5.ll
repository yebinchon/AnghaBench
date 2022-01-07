; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_gainctrl_nphy_rev5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rxcal_gainctrl_nphy_rev5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_ipa_txrxgain = type { i32, i32, i32, i32, i32, i64 }
%struct.brcms_phy = type { i64*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nphy_iq_comp = type { i32, i32, i32, i32 }
%struct.phy_iq_est = type { i32, i32 }

@PHY_CORE_MAX = common dso_local global i32 0, align 4
@nphy_ipa_rxcal_gaintbl_5GHz_rev7 = common dso_local global %struct.nphy_ipa_txrxgain* null, align 8
@nphy_ipa_rxcal_gaintbl_5GHz = common dso_local global %struct.nphy_ipa_txrxgain* null, align 8
@nphy_ipa_rxcal_gaintbl_2GHz_rev7 = common dso_local global %struct.nphy_ipa_txrxgain* null, align 8
@nphy_ipa_rxcal_gaintbl_2GHz = common dso_local global %struct.nphy_ipa_txrxgain* null, align 8
@NPHY_REV7_RfctrlOverride_cmd_rxgain = common dso_local global i32 0, align 4
@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@NPHY_RXCAL_TONEFREQ_40MHz = common dso_local global i32 0, align 4
@NPHY_RXCAL_TONEFREQ_20MHz = common dso_local global i32 0, align 4
@NPHY_RXCAL_TONEAMP = common dso_local global i32 0, align 4
@NPHY_IPA_RXCAL_MAXGAININDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32*, i32)* @wlc_phy_rxcal_gainctrl_nphy_rev5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rxcal_gainctrl_nphy_rev5(%struct.brcms_phy* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nphy_iq_comp, align 4
  %14 = alloca %struct.nphy_iq_comp, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.nphy_ipa_txrxgain*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca [2 x i32], align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %39 = load i32, i32* @PHY_CORE_MAX, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %10, align 8
  %42 = alloca %struct.phy_iq_est, i64 %40, align 16
  store i64 %40, i64* %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 10000, i32* %20, align 4
  store i32 0, i32* %24, align 4
  store i32 3, i32* %25, align 4
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 3, i64* %28, align 8
  store i32 129, i32* %29, align 4
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %44 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @NREV_GE(i32 %46, i32 7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %12, align 4
  br label %54

51:                                               ; preds = %4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 1, %52
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %51, %49
  store i32 1024, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 13, i32 13
  store i32 %58, i32* %21, align 4
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %60 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %59, i32 0, %struct.nphy_iq_comp* %13)
  %61 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %14, i32 0, i32 3
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %14, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %14, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %14, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %66 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %65, i32 1, %struct.nphy_iq_comp* %14)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %68 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @CHSPEC_IS5G(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %54
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %74 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @NREV_GE(i32 %76, i32 7)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 3, i32* %25, align 4
  br label %90

80:                                               ; preds = %72
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %82 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @NREV_GE(i32 %84, i32 4)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 4, i32* %25, align 4
  br label %89

88:                                               ; preds = %80
  store i32 6, i32* %25, align 4
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %79
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %92 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @NREV_GE(i32 %94, i32 7)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** @nphy_ipa_rxcal_gaintbl_5GHz_rev7, align 8
  store %struct.nphy_ipa_txrxgain* %98, %struct.nphy_ipa_txrxgain** %30, align 8
  br label %101

99:                                               ; preds = %90
  %100 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** @nphy_ipa_rxcal_gaintbl_5GHz, align 8
  store %struct.nphy_ipa_txrxgain* %100, %struct.nphy_ipa_txrxgain** %30, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %114

102:                                              ; preds = %54
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %104 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @NREV_GE(i32 %106, i32 7)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** @nphy_ipa_rxcal_gaintbl_2GHz_rev7, align 8
  store %struct.nphy_ipa_txrxgain* %110, %struct.nphy_ipa_txrxgain** %30, align 8
  br label %113

111:                                              ; preds = %102
  %112 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** @nphy_ipa_rxcal_gaintbl_2GHz, align 8
  store %struct.nphy_ipa_txrxgain* %112, %struct.nphy_ipa_txrxgain** %30, align 8
  br label %113

113:                                              ; preds = %111, %109
  br label %114

114:                                              ; preds = %113, %101
  br label %115

115:                                              ; preds = %325, %114
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %117 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @NREV_GE(i32 %119, i32 7)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %129

123:                                              ; preds = %115
  %124 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %125 = load i64, i64* %28, align 8
  %126 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %124, i64 %125
  %127 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  br label %129

129:                                              ; preds = %123, %122
  %130 = phi i32 [ 0, %122 ], [ %128, %123 ]
  store i32 %130, i32* %31, align 4
  %131 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %132 = load i64, i64* %28, align 8
  %133 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %131, i64 %132
  %134 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %32, align 4
  %136 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %137 = load i64, i64* %28, align 8
  %138 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %136, i64 %137
  %139 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %33, align 4
  %141 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %142 = load i64, i64* %28, align 8
  %143 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %141, i64 %142
  %144 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %34, align 4
  %146 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %147 = load i64, i64* %28, align 8
  %148 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %146, i64 %147
  %149 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %35, align 4
  %151 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %152 = load i64, i64* %28, align 8
  %153 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %151, i64 %152
  %154 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %37, align 8
  %156 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %157 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @NREV_GE(i32 %159, i32 7)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %129
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %164 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_rxgain, align 4
  %165 = load i32, i32* %32, align 4
  %166 = shl i32 %165, 12
  %167 = load i32, i32* %33, align 4
  %168 = shl i32 %167, 8
  %169 = or i32 %166, %168
  %170 = load i32, i32* %25, align 4
  %171 = shl i32 %170, 4
  %172 = or i32 %169, %171
  %173 = load i32, i32* %34, align 4
  %174 = shl i32 %173, 2
  %175 = or i32 %172, %174
  %176 = load i32, i32* %35, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %163, i32 %164, i32 %177, i32 3, i32 0)
  br label %198

179:                                              ; preds = %129
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %181 = load i32, i32* %31, align 4
  %182 = shl i32 %181, 12
  %183 = load i32, i32* %32, align 4
  %184 = shl i32 %183, 10
  %185 = or i32 %182, %184
  %186 = load i32, i32* %33, align 4
  %187 = shl i32 %186, 8
  %188 = or i32 %185, %187
  %189 = load i32, i32* %25, align 4
  %190 = shl i32 %189, 4
  %191 = or i32 %188, %190
  %192 = load i32, i32* %34, align 4
  %193 = shl i32 %192, 2
  %194 = or i32 %191, %193
  %195 = load i32, i32* %35, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %180, i32 4096, i32 %196, i32 3, i32 0)
  br label %198

198:                                              ; preds = %179, %162
  %199 = load i64, i64* %37, align 8
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %201 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  store i64 %199, i64* %205, align 8
  %206 = load i64, i64* %37, align 8
  %207 = icmp eq i64 %206, -1
  br i1 %207, label %208, label %223

208:                                              ; preds = %198
  %209 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %210 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = or i32 36848, %211
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 0
  store i32 %212, i32* %213, align 4
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %215 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = or i32 36848, %216
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 1
  store i32 %217, i32* %218, align 4
  %219 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %220 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 0
  %222 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %219, i32 %220, i32 2, i32 272, i32 16, i32* %221)
  br label %229

223:                                              ; preds = %198
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  %227 = load i64, i64* %37, align 8
  %228 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %224, i32 %226, i64 %227, i32 0)
  br label %229

229:                                              ; preds = %223, %208
  %230 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %231 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %232 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @CHSPEC_IS40(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %229
  %237 = load i32, i32* @NPHY_RXCAL_TONEFREQ_40MHz, align 4
  br label %240

238:                                              ; preds = %229
  %239 = load i32, i32* @NPHY_RXCAL_TONEFREQ_20MHz, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  %242 = load i32, i32* @NPHY_RXCAL_TONEAMP, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy* %230, i32 %241, i32 %242, i32 0, i32 %243, i32 0)
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @wlc_phy_rx_iq_est_nphy(%struct.brcms_phy* %245, %struct.phy_iq_est* %42, i32 %246, i32 32, i32 0)
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %42, i64 %249
  %251 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sdiv i32 %253, 2
  %255 = add nsw i32 %252, %254
  %256 = load i32, i32* %9, align 4
  %257 = sdiv i32 %255, %256
  store i32 %257, i32* %15, align 4
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %42, i64 %259
  %261 = getelementptr inbounds %struct.phy_iq_est, %struct.phy_iq_est* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %9, align 4
  %264 = sdiv i32 %263, 2
  %265 = add nsw i32 %262, %264
  %266 = load i32, i32* %9, align 4
  %267 = sdiv i32 %265, %266
  store i32 %267, i32* %16, align 4
  %268 = load i32, i32* %15, align 4
  %269 = load i32, i32* %16, align 4
  %270 = add nsw i32 %268, %269
  store i32 %270, i32* %17, align 4
  %271 = load i32, i32* %29, align 4
  switch i32 %271, label %309 [
    i32 129, label %272
    i32 128, label %285
    i32 130, label %297
  ]

272:                                              ; preds = %240
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* %20, align 4
  %275 = icmp sgt i32 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %272
  store i32 130, i32* %29, align 4
  %277 = load i64, i64* %28, align 8
  store i64 %277, i64* %27, align 8
  %278 = load i64, i64* %28, align 8
  %279 = add i64 %278, -1
  store i64 %279, i64* %28, align 8
  br label %284

280:                                              ; preds = %272
  store i32 128, i32* %29, align 4
  %281 = load i64, i64* %28, align 8
  store i64 %281, i64* %27, align 8
  %282 = load i64, i64* %28, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %28, align 8
  br label %284

284:                                              ; preds = %280, %276
  br label %310

285:                                              ; preds = %240
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %20, align 4
  %288 = icmp sgt i32 %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  store i32 1, i32* %24, align 4
  %290 = load i32, i32* %19, align 4
  store i32 %290, i32* %18, align 4
  %291 = load i64, i64* %27, align 8
  store i64 %291, i64* %26, align 8
  br label %296

292:                                              ; preds = %285
  %293 = load i64, i64* %28, align 8
  store i64 %293, i64* %27, align 8
  %294 = load i64, i64* %28, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %28, align 8
  br label %296

296:                                              ; preds = %292, %289
  br label %310

297:                                              ; preds = %240
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %20, align 4
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = load i64, i64* %28, align 8
  store i64 %302, i64* %27, align 8
  %303 = load i64, i64* %28, align 8
  %304 = add i64 %303, -1
  store i64 %304, i64* %28, align 8
  br label %308

305:                                              ; preds = %297
  store i32 1, i32* %24, align 4
  %306 = load i32, i32* %17, align 4
  store i32 %306, i32* %18, align 4
  %307 = load i64, i64* %28, align 8
  store i64 %307, i64* %26, align 8
  br label %308

308:                                              ; preds = %305, %301
  br label %310

309:                                              ; preds = %240
  br label %310

310:                                              ; preds = %309, %308, %296, %284
  %311 = load i64, i64* %28, align 8
  %312 = icmp ult i64 %311, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %310
  %314 = load i64, i64* %28, align 8
  %315 = load i64, i64* @NPHY_IPA_RXCAL_MAXGAININDEX, align 8
  %316 = icmp ugt i64 %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %313, %310
  store i32 1, i32* %24, align 4
  %318 = load i32, i32* %17, align 4
  store i32 %318, i32* %18, align 4
  %319 = load i64, i64* %27, align 8
  store i64 %319, i64* %26, align 8
  br label %322

320:                                              ; preds = %313
  %321 = load i32, i32* %17, align 4
  store i32 %321, i32* %19, align 4
  br label %322

322:                                              ; preds = %320, %317
  %323 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %324 = call i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy* %323)
  br label %325

325:                                              ; preds = %322
  %326 = load i32, i32* %24, align 4
  %327 = icmp ne i32 %326, 0
  %328 = xor i1 %327, true
  br i1 %328, label %115, label %329

329:                                              ; preds = %325
  %330 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %331 = load i64, i64* %26, align 8
  %332 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %330, i64 %331
  %333 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  store i32 %334, i32* %31, align 4
  %335 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %336 = load i64, i64* %26, align 8
  %337 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %335, i64 %336
  %338 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %32, align 4
  %340 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %341 = load i64, i64* %26, align 8
  %342 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %340, i64 %341
  %343 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  store i32 %344, i32* %33, align 4
  %345 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %346 = load i64, i64* %26, align 8
  %347 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %345, i64 %346
  %348 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %34, align 4
  %350 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %351 = load i64, i64* %26, align 8
  %352 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %350, i64 %351
  %353 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  store i32 %354, i32* %35, align 4
  %355 = load %struct.nphy_ipa_txrxgain*, %struct.nphy_ipa_txrxgain** %30, align 8
  %356 = load i64, i64* %26, align 8
  %357 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %355, i64 %356
  %358 = getelementptr inbounds %struct.nphy_ipa_txrxgain, %struct.nphy_ipa_txrxgain* %357, i32 0, i32 5
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %37, align 8
  %360 = load i32, i32* %18, align 4
  %361 = call i32 @wlc_phy_nbits(i32 %360)
  store i32 %361, i32* %22, align 4
  %362 = load i32, i32* %21, align 4
  %363 = load i32, i32* %22, align 4
  %364 = sub nsw i32 %362, %363
  store i32 %364, i32* %23, align 4
  %365 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %366 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = call i64 @NREV_GE(i32 %368, i32 7)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %403

371:                                              ; preds = %329
  %372 = load i32, i32* %32, align 4
  %373 = load i32, i32* %23, align 4
  %374 = add nsw i32 %372, %373
  store i32 %374, i32* %36, align 4
  %375 = load i32, i32* %36, align 4
  %376 = load i32, i32* %33, align 4
  %377 = add nsw i32 %375, %376
  %378 = icmp sgt i32 %377, 10
  br i1 %378, label %379, label %382

379:                                              ; preds = %371
  %380 = load i32, i32* %33, align 4
  %381 = sub nsw i32 10, %380
  store i32 %381, i32* %32, align 4
  br label %386

382:                                              ; preds = %371
  %383 = load i32, i32* %36, align 4
  %384 = call i64 @max(i32 %383, i32 0)
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %32, align 4
  br label %386

386:                                              ; preds = %382, %379
  %387 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %388 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_rxgain, align 4
  %389 = load i32, i32* %32, align 4
  %390 = shl i32 %389, 12
  %391 = load i32, i32* %33, align 4
  %392 = shl i32 %391, 8
  %393 = or i32 %390, %392
  %394 = load i32, i32* %25, align 4
  %395 = shl i32 %394, 4
  %396 = or i32 %393, %395
  %397 = load i32, i32* %34, align 4
  %398 = shl i32 %397, 2
  %399 = or i32 %396, %398
  %400 = load i32, i32* %35, align 4
  %401 = or i32 %399, %400
  %402 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %387, i32 %388, i32 %401, i32 3, i32 0)
  br label %428

403:                                              ; preds = %329
  %404 = load i32, i32* %31, align 4
  %405 = load i32, i32* %23, align 4
  %406 = add nsw i32 %404, %405
  %407 = call i32 @min(i32 %406, i32 10)
  %408 = call i64 @max(i32 %407, i32 0)
  %409 = trunc i64 %408 to i32
  store i32 %409, i32* %31, align 4
  %410 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %411 = load i32, i32* %31, align 4
  %412 = shl i32 %411, 12
  %413 = load i32, i32* %32, align 4
  %414 = shl i32 %413, 10
  %415 = or i32 %412, %414
  %416 = load i32, i32* %33, align 4
  %417 = shl i32 %416, 8
  %418 = or i32 %415, %417
  %419 = load i32, i32* %25, align 4
  %420 = shl i32 %419, 4
  %421 = or i32 %418, %420
  %422 = load i32, i32* %34, align 4
  %423 = shl i32 %422, 2
  %424 = or i32 %421, %423
  %425 = load i32, i32* %35, align 4
  %426 = or i32 %424, %425
  %427 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %410, i32 4096, i32 %426, i32 3, i32 0)
  br label %428

428:                                              ; preds = %403, %386
  %429 = load i32*, i32** %7, align 8
  %430 = icmp ne i32* %429, null
  br i1 %430, label %431, label %449

431:                                              ; preds = %428
  %432 = load i32, i32* %35, align 4
  %433 = load i32*, i32** %7, align 8
  %434 = getelementptr inbounds i32, i32* %433, i32 1
  store i32* %434, i32** %7, align 8
  store i32 %432, i32* %433, align 4
  %435 = load i32, i32* %34, align 4
  %436 = load i32*, i32** %7, align 8
  %437 = getelementptr inbounds i32, i32* %436, i32 1
  store i32* %437, i32** %7, align 8
  store i32 %435, i32* %436, align 4
  %438 = load i32, i32* %25, align 4
  %439 = load i32*, i32** %7, align 8
  %440 = getelementptr inbounds i32, i32* %439, i32 1
  store i32* %440, i32** %7, align 8
  store i32 %438, i32* %439, align 4
  %441 = load i32, i32* %33, align 4
  %442 = load i32*, i32** %7, align 8
  %443 = getelementptr inbounds i32, i32* %442, i32 1
  store i32* %443, i32** %7, align 8
  store i32 %441, i32* %442, align 4
  %444 = load i32, i32* %32, align 4
  %445 = load i32*, i32** %7, align 8
  %446 = getelementptr inbounds i32, i32* %445, i32 1
  store i32* %446, i32** %7, align 8
  store i32 %444, i32* %445, align 4
  %447 = load i32, i32* %31, align 4
  %448 = load i32*, i32** %7, align 8
  store i32 %447, i32* %448, align 4
  br label %449

449:                                              ; preds = %431, %428
  %450 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %451 = call i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %450, i32 1, %struct.nphy_iq_comp* %13)
  %452 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %452)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @NREV_GE(i32, i32) #2

declare dso_local i32 @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy*, i32, %struct.nphy_iq_comp*) #2

declare dso_local i64 @CHSPEC_IS5G(i32) #2

declare dso_local i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy*, i32, i64, i32) #2

declare dso_local i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @CHSPEC_IS40(i32) #2

declare dso_local i32 @wlc_phy_rx_iq_est_nphy(%struct.brcms_phy*, %struct.phy_iq_est*, i32, i32, i32) #2

declare dso_local i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_phy_nbits(i32) #2

declare dso_local i64 @max(i32, i32) #2

declare dso_local i32 @min(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
