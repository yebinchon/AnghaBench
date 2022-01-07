; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_a4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_a4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i64, i32*, i32, i64*, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.nphy_ipa_txcalgains = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.nphy_papd_restore_state = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@PHY_TPC_HW_OFF = common dso_local global i64 0, align 8
@NPHY_TBL_ID_SCALARTBL0 = common dso_local global i32 0, align 4
@nphy_papd_scaltbl = common dso_local global i32* null, align 8
@NPHY_TBL_ID_SCALARTBL1 = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i64 0, align 8
@NPHY_TBL_ID_EPSILONTBL0 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_EPSILONTBL1 = common dso_local global i32 0, align 4
@CAL_FULL = common dso_local global i32 0, align 4
@CAL_SOFT = common dso_local global i32 0, align 4
@nphy_papd_padgain_dlt_2g_2057rev3n4 = common dso_local global i32* null, align 8
@nphy_papd_padgain_dlt_2g_2057rev5 = common dso_local global i32* null, align 8
@nphy_papd_padgain_dlt_2g_2057rev7 = common dso_local global i32* null, align 8
@nphy_papd_pgagain_dlt_5g_2057 = common dso_local global i32* null, align 8
@nphy_papd_pgagain_dlt_5g_2057rev7 = common dso_local global i32* null, align 8
@nphy_papd_pga_gain_delta_ipa_2g = common dso_local global i32* null, align 8
@nphy_papd_pga_gain_delta_ipa_5g = common dso_local global i32* null, align 8
@NPHY_PAPD_COMP_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_phy_a4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_a4(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.nphy_ipa_txcalgains], align 16
  %6 = alloca %struct.nphy_papd_restore_state, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %746

25:                                               ; preds = %2
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @maccontrol, align 4
  %30 = call i32 @D11REGOFFS(i32 %29)
  %31 = call i32 @bcma_read32(i32 %28, i32 %30)
  %32 = load i32, i32* @MCTL_EN_MAC, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 0, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %25
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %39, i32 0, i32 7
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wlapi_suspend_mac_and_wait(i32 %43)
  br label %45

45:                                               ; preds = %38, %25
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %47 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %46, i32 1)
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  store i64 0, i64* %9, align 8
  br label %50

50:                                               ; preds = %66, %45
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %51, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @wlc_phy_txpwr_idx_cur_get_nphy(%struct.brcms_phy* %58, i64 %59)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 13
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %9, align 8
  br label %50

69:                                               ; preds = %50
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 7
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 8
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %82 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %8, align 8
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %85 = load i64, i64* @PHY_TPC_HW_OFF, align 8
  %86 = call i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %84, i64 %85)
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %88 = load i32, i32* @NPHY_TBL_ID_SCALARTBL0, align 4
  %89 = load i32*, i32** @nphy_papd_scaltbl, align 8
  %90 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %87, i32 %88, i32 64, i32 0, i32 32, i32* %89)
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %92 = load i32, i32* @NPHY_TBL_ID_SCALARTBL1, align 4
  %93 = load i32*, i32** @nphy_papd_scaltbl, align 8
  %94 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %91, i32 %92, i32 64, i32 0, i32 32, i32* %93)
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %96 = call i32 @read_phy_reg(%struct.brcms_phy* %95, i32 1)
  store i32 %96, i32* %13, align 4
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %98 = call i32 @mod_phy_reg(%struct.brcms_phy* %97, i32 1, i32 32768, i32 0)
  store i64 0, i64* %9, align 8
  br label %99

99:                                               ; preds = %127, %69
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %100, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %99
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %107

107:                                              ; preds = %123, %106
  %108 = load i32, i32* %17, align 4
  %109 = icmp slt i32 %108, 64
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @PHY_CORE_0, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @NPHY_TBL_ID_EPSILONTBL0, align 4
  br label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @NPHY_TBL_ID_EPSILONTBL1, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %111, i32 %120, i32 1, i32 %121, i32 32, i32* %18)
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %107

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %9, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %9, align 8
  br label %99

130:                                              ; preds = %99
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %132 = call i32 @wlc_phy_ipa_restore_tx_digi_filts_nphy(%struct.brcms_phy* %131)
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %134 = call i32 @wlc_phy_ipa_get_bbmult_nphy(%struct.brcms_phy* %133)
  %135 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %6, i32 0, i32 0
  store i32 %134, i32* %135, align 4
  store i64 0, i64* %9, align 8
  br label %136

136:                                              ; preds = %352, %130
  %137 = load i64, i64* %9, align 8
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %139 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ult i64 %137, %141
  br i1 %142, label %143, label %355

143:                                              ; preds = %136
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @wlc_phy_papd_cal_setup_nphy(%struct.brcms_phy* %144, %struct.nphy_papd_restore_state* %6, i64 %145)
  %147 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %148 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %147, i32 0, i32 9
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @NREV_GE(i32 %150, i32 7)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %294

153:                                              ; preds = %143
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %155 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @CHSPEC_IS2G(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %259

159:                                              ; preds = %153
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %161 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %160, i32 0, i32 9
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 3
  br i1 %164, label %177, label %165

165:                                              ; preds = %159
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %167 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %166, i32 0, i32 9
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 4
  br i1 %170, label %177, label %171

171:                                              ; preds = %165
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %173 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 6
  br i1 %176, label %177, label %183

177:                                              ; preds = %171, %165, %159
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %179 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %9, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32 23, i32* %182, align 4
  br label %245

183:                                              ; preds = %171
  %184 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %185 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %184, i32 0, i32 9
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 5
  br i1 %188, label %189, label %210

189:                                              ; preds = %183
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %191 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* %9, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32 0, i32* %194, align 4
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %197 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* %9, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i64, i64* %9, align 8
  %203 = call i8* @wlc_phy_a3_nphy(%struct.brcms_phy* %195, i32 %201, i64 %202)
  %204 = ptrtoint i8* %203 to i32
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %206 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32 %204, i32* %209, align 4
  br label %244

210:                                              ; preds = %183
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %212 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %211, i32 0, i32 9
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 7
  br i1 %215, label %222, label %216

216:                                              ; preds = %210
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %218 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %217, i32 0, i32 9
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 8
  br i1 %221, label %222, label %243

222:                                              ; preds = %216, %210
  %223 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %224 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %9, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 0, i32* %227, align 4
  %228 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %229 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %230 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* %9, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i64, i64* %9, align 8
  %236 = call i8* @wlc_phy_a3_nphy(%struct.brcms_phy* %228, i32 %234, i64 %235)
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %239 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* %9, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32 %237, i32* %242, align 4
  br label %243

243:                                              ; preds = %222, %216
  br label %244

244:                                              ; preds = %243, %189
  br label %245

245:                                              ; preds = %244, %177
  %246 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %247 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* %9, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i64, i64* %9, align 8
  %253 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %252
  %254 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* %9, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32 %251, i32* %258, align 4
  br label %293

259:                                              ; preds = %153
  %260 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %261 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %9, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32 0, i32* %264, align 4
  %265 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %267 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* %9, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i64, i64* %9, align 8
  %273 = call i8* @wlc_phy_a3_nphy(%struct.brcms_phy* %265, i32 %271, i64 %272)
  %274 = ptrtoint i8* %273 to i32
  %275 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %276 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* %9, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32 %274, i32* %279, align 4
  %280 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %281 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* %9, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i64, i64* %9, align 8
  %287 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %286
  %288 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* %9, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  store i32 %285, i32* %292, align 4
  br label %293

293:                                              ; preds = %259, %245
  br label %323

294:                                              ; preds = %143
  %295 = load i64, i64* %9, align 8
  %296 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %295
  %297 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %296, i32 0, i32 0
  store i32 1, i32* %297, align 8
  %298 = load i64, i64* %9, align 8
  %299 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %298
  %300 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %299, i32 0, i32 1
  store i32 16, i32* %300, align 4
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %302 = load i64, i64* %9, align 8
  %303 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %302
  %304 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i64, i64* %9, align 8
  %307 = call i8* @wlc_phy_a3_nphy(%struct.brcms_phy* %301, i32 %305, i64 %306)
  %308 = ptrtoint i8* %307 to i32
  %309 = load i64, i64* %9, align 8
  %310 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %309
  %311 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %310, i32 0, i32 1
  store i32 %308, i32* %311, align 4
  %312 = load i64, i64* %9, align 8
  %313 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %312
  %314 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = ashr i32 %315, 3
  %317 = sub nsw i32 15, %316
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %319 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %318, i32 0, i32 3
  %320 = load i32*, i32** %319, align 8
  %321 = load i64, i64* %9, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  store i32 %317, i32* %322, align 4
  br label %323

323:                                              ; preds = %294, %293
  %324 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %325 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  switch i32 %326, label %341 [
    i32 0, label %327
    i32 1, label %334
  ]

327:                                              ; preds = %323
  %328 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %329 = load i64, i64* %9, align 8
  %330 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %329
  %331 = load i32, i32* @CAL_FULL, align 4
  %332 = load i64, i64* %9, align 8
  %333 = call i32 @wlc_phy_a2_nphy(%struct.brcms_phy* %328, %struct.nphy_ipa_txcalgains* %330, i32 %331, i64 %332)
  br label %341

334:                                              ; preds = %323
  %335 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %336 = load i64, i64* %9, align 8
  %337 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %336
  %338 = load i32, i32* @CAL_SOFT, align 4
  %339 = load i64, i64* %9, align 8
  %340 = call i32 @wlc_phy_a2_nphy(%struct.brcms_phy* %335, %struct.nphy_ipa_txcalgains* %337, i32 %338, i64 %339)
  br label %341

341:                                              ; preds = %323, %334, %327
  %342 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %343 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %342, i32 0, i32 9
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = call i64 @NREV_GE(i32 %345, i32 7)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %341
  %349 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %350 = call i32 @wlc_phy_papd_cal_cleanup_nphy(%struct.brcms_phy* %349, %struct.nphy_papd_restore_state* %6)
  br label %351

351:                                              ; preds = %348, %341
  br label %352

352:                                              ; preds = %351
  %353 = load i64, i64* %9, align 8
  %354 = add i64 %353, 1
  store i64 %354, i64* %9, align 8
  br label %136

355:                                              ; preds = %136
  %356 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %357 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %356, i32 0, i32 9
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = call i64 @NREV_LT(i32 %359, i32 7)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %355
  %363 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %364 = call i32 @wlc_phy_papd_cal_cleanup_nphy(%struct.brcms_phy* %363, %struct.nphy_papd_restore_state* %6)
  br label %365

365:                                              ; preds = %362, %355
  store i64 0, i64* %9, align 8
  br label %366

366:                                              ; preds = %648, %365
  %367 = load i64, i64* %9, align 8
  %368 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %369 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %368, i32 0, i32 9
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp ult i64 %367, %371
  br i1 %372, label %373, label %651

373:                                              ; preds = %366
  store i32 0, i32* %19, align 4
  %374 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %375 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %374, i32 0, i32 9
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = call i64 @NREV_GE(i32 %377, i32 7)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %583

380:                                              ; preds = %373
  %381 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %382 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %381, i32 0, i32 10
  %383 = load i32, i32* %382, align 8
  %384 = call i64 @CHSPEC_IS2G(i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %403

386:                                              ; preds = %380
  %387 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %388 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %387, i32 0, i32 9
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = icmp eq i32 %390, 3
  br i1 %391, label %392, label %393

392:                                              ; preds = %386
  store i32 -2, i32* %19, align 4
  br label %402

393:                                              ; preds = %386
  %394 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %395 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %394, i32 0, i32 9
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = icmp eq i32 %397, 5
  br i1 %398, label %399, label %400

399:                                              ; preds = %393
  store i32 3, i32* %19, align 4
  br label %401

400:                                              ; preds = %393
  store i32 -1, i32* %19, align 4
  br label %401

401:                                              ; preds = %400, %399
  br label %402

402:                                              ; preds = %401, %392
  br label %404

403:                                              ; preds = %380
  store i32 2, i32* %19, align 4
  br label %404

404:                                              ; preds = %403, %402
  %405 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %406 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %405, i32 0, i32 10
  %407 = load i32, i32* %406, align 8
  %408 = call i64 @CHSPEC_IS2G(i32 %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %485

410:                                              ; preds = %404
  %411 = load i64, i64* %9, align 8
  %412 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %411
  %413 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %412, i32 0, i32 2
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 0
  %415 = load i32*, i32** %414, align 8
  %416 = load i64, i64* %9, align 8
  %417 = getelementptr inbounds i32, i32* %415, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  store i64 %419, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %420 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %421 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %420, i32 0, i32 9
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = icmp eq i32 %423, 3
  br i1 %424, label %437, label %425

425:                                              ; preds = %410
  %426 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %427 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %426, i32 0, i32 9
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 4
  br i1 %430, label %437, label %431

431:                                              ; preds = %425
  %432 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %433 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %432, i32 0, i32 9
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = icmp eq i32 %435, 6
  br i1 %436, label %437, label %446

437:                                              ; preds = %431, %425, %410
  %438 = load i32*, i32** @nphy_papd_padgain_dlt_2g_2057rev3n4, align 8
  %439 = load i64, i64* %12, align 8
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = add nsw i32 %441, 1
  %443 = sub nsw i32 0, %442
  %444 = sdiv i32 %443, 2
  %445 = sext i32 %444 to i64
  store i64 %445, i64* %16, align 8
  store i64 -1, i64* %14, align 8
  br label %484

446:                                              ; preds = %431
  %447 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %448 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %447, i32 0, i32 9
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  %451 = icmp eq i32 %450, 5
  br i1 %451, label %452, label %461

452:                                              ; preds = %446
  %453 = load i32*, i32** @nphy_papd_padgain_dlt_2g_2057rev5, align 8
  %454 = load i64, i64* %12, align 8
  %455 = getelementptr inbounds i32, i32* %453, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = add nsw i32 %456, 1
  %458 = sub nsw i32 0, %457
  %459 = sdiv i32 %458, 2
  %460 = sext i32 %459 to i64
  store i64 %460, i64* %16, align 8
  br label %483

461:                                              ; preds = %446
  %462 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %463 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %462, i32 0, i32 9
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 8
  %466 = icmp eq i32 %465, 7
  br i1 %466, label %473, label %467

467:                                              ; preds = %461
  %468 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %469 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %468, i32 0, i32 9
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = icmp eq i32 %471, 8
  br i1 %472, label %473, label %482

473:                                              ; preds = %467, %461
  %474 = load i32*, i32** @nphy_papd_padgain_dlt_2g_2057rev7, align 8
  %475 = load i64, i64* %12, align 8
  %476 = getelementptr inbounds i32, i32* %474, i64 %475
  %477 = load i32, i32* %476, align 4
  %478 = add nsw i32 %477, 1
  %479 = sub nsw i32 0, %478
  %480 = sdiv i32 %479, 2
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %16, align 8
  br label %482

482:                                              ; preds = %473, %467
  br label %483

483:                                              ; preds = %482, %452
  br label %484

484:                                              ; preds = %483, %437
  br label %544

485:                                              ; preds = %404
  %486 = load i64, i64* %9, align 8
  %487 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %486
  %488 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %487, i32 0, i32 2
  %489 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %488, i32 0, i32 1
  %490 = load i32*, i32** %489, align 8
  %491 = load i64, i64* %9, align 8
  %492 = getelementptr inbounds i32, i32* %490, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = sext i32 %493 to i64
  store i64 %494, i64* %11, align 8
  %495 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %496 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %495, i32 0, i32 9
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 8
  %499 = icmp eq i32 %498, 3
  br i1 %499, label %512, label %500

500:                                              ; preds = %485
  %501 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %502 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %501, i32 0, i32 9
  %503 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 8
  %505 = icmp eq i32 %504, 4
  br i1 %505, label %512, label %506

506:                                              ; preds = %500
  %507 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %508 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %507, i32 0, i32 9
  %509 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = icmp eq i32 %510, 6
  br i1 %511, label %512, label %521

512:                                              ; preds = %506, %500, %485
  %513 = load i32*, i32** @nphy_papd_pgagain_dlt_5g_2057, align 8
  %514 = load i64, i64* %11, align 8
  %515 = getelementptr inbounds i32, i32* %513, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = add nsw i32 %516, 1
  %518 = sub nsw i32 0, %517
  %519 = sdiv i32 %518, 2
  %520 = sext i32 %519 to i64
  store i64 %520, i64* %15, align 8
  br label %543

521:                                              ; preds = %506
  %522 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %523 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %522, i32 0, i32 9
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 8
  %526 = icmp eq i32 %525, 7
  br i1 %526, label %533, label %527

527:                                              ; preds = %521
  %528 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %529 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %528, i32 0, i32 9
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 8
  %532 = icmp eq i32 %531, 8
  br i1 %532, label %533, label %542

533:                                              ; preds = %527, %521
  %534 = load i32*, i32** @nphy_papd_pgagain_dlt_5g_2057rev7, align 8
  %535 = load i64, i64* %11, align 8
  %536 = getelementptr inbounds i32, i32* %534, i64 %535
  %537 = load i32, i32* %536, align 4
  %538 = add nsw i32 %537, 1
  %539 = sub nsw i32 0, %538
  %540 = sdiv i32 %539, 2
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %15, align 8
  br label %542

542:                                              ; preds = %533, %527
  br label %543

543:                                              ; preds = %542, %512
  store i64 -9, i64* %14, align 8
  br label %544

544:                                              ; preds = %543, %484
  %545 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %546 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %545, i32 0, i32 10
  %547 = load i32, i32* %546, align 8
  %548 = call i64 @CHSPEC_IS2G(i32 %547)
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %558

550:                                              ; preds = %544
  %551 = load i32, i32* %19, align 4
  %552 = add nsw i32 -33, %551
  %553 = sext i32 %552 to i64
  %554 = load i64, i64* %16, align 8
  %555 = add i64 %553, %554
  %556 = load i64, i64* %14, align 8
  %557 = add i64 %555, %556
  store i64 %557, i64* %10, align 8
  br label %566

558:                                              ; preds = %544
  %559 = load i32, i32* %19, align 4
  %560 = add nsw i32 -33, %559
  %561 = sext i32 %560 to i64
  %562 = load i64, i64* %15, align 8
  %563 = add i64 %561, %562
  %564 = load i64, i64* %14, align 8
  %565 = add i64 %563, %564
  store i64 %565, i64* %10, align 8
  br label %566

566:                                              ; preds = %558, %550
  %567 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %568 = load i64, i64* %9, align 8
  %569 = load i64, i64* @PHY_CORE_0, align 8
  %570 = icmp eq i64 %568, %569
  %571 = zext i1 %570 to i64
  %572 = select i1 %570, i32 664, i32 668
  %573 = load i64, i64* %10, align 8
  %574 = shl i64 %573, 7
  %575 = trunc i64 %574 to i32
  %576 = call i32 @mod_phy_reg(%struct.brcms_phy* %567, i32 %572, i32 65408, i32 %575)
  %577 = load i64, i64* %10, align 8
  %578 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %579 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %578, i32 0, i32 5
  %580 = load i64*, i64** %579, align 8
  %581 = load i64, i64* %9, align 8
  %582 = getelementptr inbounds i64, i64* %580, i64 %581
  store i64 %577, i64* %582, align 8
  br label %647

583:                                              ; preds = %373
  %584 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %585 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %584, i32 0, i32 9
  %586 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %585, i32 0, i32 2
  %587 = load i32, i32* %586, align 4
  %588 = call i64 @NREV_LT(i32 %587, i32 5)
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %591

590:                                              ; preds = %583
  store i32 4, i32* %19, align 4
  br label %592

591:                                              ; preds = %583
  store i32 2, i32* %19, align 4
  br label %592

592:                                              ; preds = %591, %590
  %593 = load i64, i64* %9, align 8
  %594 = getelementptr inbounds [2 x %struct.nphy_ipa_txcalgains], [2 x %struct.nphy_ipa_txcalgains]* %5, i64 0, i64 %593
  %595 = getelementptr inbounds %struct.nphy_ipa_txcalgains, %struct.nphy_ipa_txcalgains* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = ashr i32 %596, 3
  %598 = sub nsw i32 15, %597
  %599 = sext i32 %598 to i64
  store i64 %599, i64* %11, align 8
  %600 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %601 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %600, i32 0, i32 10
  %602 = load i32, i32* %601, align 8
  %603 = call i64 @CHSPEC_IS2G(i32 %602)
  %604 = icmp ne i64 %603, 0
  br i1 %604, label %605, label %614

605:                                              ; preds = %592
  %606 = load i32*, i32** @nphy_papd_pga_gain_delta_ipa_2g, align 8
  %607 = load i64, i64* %11, align 8
  %608 = getelementptr inbounds i32, i32* %606, i64 %607
  %609 = load i32, i32* %608, align 4
  %610 = add nsw i32 %609, 1
  %611 = sub nsw i32 0, %610
  %612 = sdiv i32 %611, 2
  %613 = sext i32 %612 to i64
  store i64 %613, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %623

614:                                              ; preds = %592
  %615 = load i32*, i32** @nphy_papd_pga_gain_delta_ipa_5g, align 8
  %616 = load i64, i64* %11, align 8
  %617 = getelementptr inbounds i32, i32* %615, i64 %616
  %618 = load i32, i32* %617, align 4
  %619 = add nsw i32 %618, 1
  %620 = sub nsw i32 0, %619
  %621 = sdiv i32 %620, 2
  %622 = sext i32 %621 to i64
  store i64 %622, i64* %15, align 8
  store i64 -9, i64* %14, align 8
  br label %623

623:                                              ; preds = %614, %605
  %624 = load i32, i32* %19, align 4
  %625 = add nsw i32 -33, %624
  %626 = sext i32 %625 to i64
  %627 = load i64, i64* %15, align 8
  %628 = add i64 %626, %627
  %629 = load i64, i64* %14, align 8
  %630 = add i64 %628, %629
  store i64 %630, i64* %10, align 8
  %631 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %632 = load i64, i64* %9, align 8
  %633 = load i64, i64* @PHY_CORE_0, align 8
  %634 = icmp eq i64 %632, %633
  %635 = zext i1 %634 to i64
  %636 = select i1 %634, i32 664, i32 668
  %637 = load i64, i64* %10, align 8
  %638 = shl i64 %637, 7
  %639 = trunc i64 %638 to i32
  %640 = call i32 @mod_phy_reg(%struct.brcms_phy* %631, i32 %636, i32 65408, i32 %639)
  %641 = load i64, i64* %10, align 8
  %642 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %643 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %642, i32 0, i32 5
  %644 = load i64*, i64** %643, align 8
  %645 = load i64, i64* %9, align 8
  %646 = getelementptr inbounds i64, i64* %644, i64 %645
  store i64 %641, i64* %646, align 8
  br label %647

647:                                              ; preds = %623, %566
  br label %648

648:                                              ; preds = %647
  %649 = load i64, i64* %9, align 8
  %650 = add i64 %649, 1
  store i64 %650, i64* %9, align 8
  br label %366

651:                                              ; preds = %366
  %652 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %653 = load i64, i64* @PHY_CORE_0, align 8
  %654 = icmp eq i64 0, %653
  %655 = zext i1 %654 to i64
  %656 = select i1 %654, i32 663, i32 667
  %657 = load i32, i32* @NPHY_PAPD_COMP_ON, align 4
  %658 = shl i32 %657, 0
  %659 = call i32 @mod_phy_reg(%struct.brcms_phy* %652, i32 %656, i32 1, i32 %658)
  %660 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %661 = load i64, i64* @PHY_CORE_0, align 8
  %662 = icmp eq i64 1, %661
  %663 = zext i1 %662 to i64
  %664 = select i1 %662, i32 663, i32 667
  %665 = load i32, i32* @NPHY_PAPD_COMP_ON, align 4
  %666 = shl i32 %665, 0
  %667 = call i32 @mod_phy_reg(%struct.brcms_phy* %660, i32 %664, i32 1, i32 %666)
  %668 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %669 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %668, i32 0, i32 9
  %670 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %669, i32 0, i32 2
  %671 = load i32, i32* %670, align 4
  %672 = call i64 @NREV_GE(i32 %671, i32 6)
  %673 = icmp ne i64 %672, 0
  br i1 %673, label %674, label %687

674:                                              ; preds = %651
  %675 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %676 = load i64, i64* @PHY_CORE_0, align 8
  %677 = icmp eq i64 0, %676
  %678 = zext i1 %677 to i64
  %679 = select i1 %677, i32 675, i32 676
  %680 = call i32 @mod_phy_reg(%struct.brcms_phy* %675, i32 %679, i32 8192, i32 0)
  %681 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %682 = load i64, i64* @PHY_CORE_0, align 8
  %683 = icmp eq i64 1, %682
  %684 = zext i1 %683 to i64
  %685 = select i1 %683, i32 675, i32 676
  %686 = call i32 @mod_phy_reg(%struct.brcms_phy* %681, i32 %685, i32 8192, i32 0)
  br label %700

687:                                              ; preds = %651
  %688 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %689 = load i64, i64* @PHY_CORE_0, align 8
  %690 = icmp eq i64 0, %689
  %691 = zext i1 %690 to i64
  %692 = select i1 %690, i32 675, i32 676
  %693 = call i32 @mod_phy_reg(%struct.brcms_phy* %688, i32 %692, i32 2048, i32 0)
  %694 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %695 = load i64, i64* @PHY_CORE_0, align 8
  %696 = icmp eq i64 1, %695
  %697 = zext i1 %696 to i64
  %698 = select i1 %696, i32 675, i32 676
  %699 = call i32 @mod_phy_reg(%struct.brcms_phy* %694, i32 %698, i32 2048, i32 0)
  br label %700

700:                                              ; preds = %687, %674
  %701 = load i32, i32* @NPHY_PAPD_COMP_ON, align 4
  %702 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %703 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %702, i32 0, i32 6
  store i32 %701, i32* %703, align 8
  %704 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %705 = load i32, i32* %13, align 4
  %706 = call i32 @write_phy_reg(%struct.brcms_phy* %704, i32 1, i32 %705)
  %707 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %708 = call i32 @wlc_phy_ipa_set_tx_digi_filts_nphy(%struct.brcms_phy* %707)
  %709 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %710 = load i64, i64* %8, align 8
  %711 = call i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %709, i64 %710)
  %712 = load i64, i64* %8, align 8
  %713 = load i64, i64* @PHY_TPC_HW_OFF, align 8
  %714 = icmp eq i64 %712, %713
  br i1 %714, label %715, label %734

715:                                              ; preds = %700
  %716 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %717 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %718 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %717, i32 0, i32 8
  %719 = load %struct.TYPE_7__*, %struct.TYPE_7__** %718, align 8
  %720 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %719, i64 0
  %721 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %720, i32 0, i32 0
  %722 = load i64, i64* %721, align 8
  %723 = trunc i64 %722 to i32
  %724 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %716, i32 1, i32 %723, i32 0)
  %725 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %726 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %727 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %726, i32 0, i32 8
  %728 = load %struct.TYPE_7__*, %struct.TYPE_7__** %727, align 8
  %729 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %728, i64 1
  %730 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %729, i32 0, i32 0
  %731 = load i64, i64* %730, align 8
  %732 = trunc i64 %731 to i32
  %733 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %725, i32 2, i32 %732, i32 0)
  br label %734

734:                                              ; preds = %715, %700
  %735 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %736 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %735, i32 0)
  %737 = load i32, i32* %7, align 4
  %738 = icmp ne i32 %737, 0
  br i1 %738, label %746, label %739

739:                                              ; preds = %734
  %740 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %741 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %740, i32 0, i32 7
  %742 = load %struct.TYPE_8__*, %struct.TYPE_8__** %741, align 8
  %743 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 4
  %745 = call i32 @wlapi_enable_mac(i32 %744)
  br label %746

746:                                              ; preds = %24, %739, %734
  ret void
}

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_txpwr_idx_cur_get_nphy(%struct.brcms_phy*, i64) #1

declare dso_local i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy*, i64) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_ipa_restore_tx_digi_filts_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_ipa_get_bbmult_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_papd_cal_setup_nphy(%struct.brcms_phy*, %struct.nphy_papd_restore_state*, i64) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i8* @wlc_phy_a3_nphy(%struct.brcms_phy*, i32, i64) #1

declare dso_local i32 @wlc_phy_a2_nphy(%struct.brcms_phy*, %struct.nphy_ipa_txcalgains*, i32, i64) #1

declare dso_local i32 @wlc_phy_papd_cal_cleanup_nphy(%struct.brcms_phy*, %struct.nphy_papd_restore_state*) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_ipa_set_tx_digi_filts_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
