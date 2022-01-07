; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_radio_2056_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_radio_2056_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32 }
%struct.b43_nphy_channeltab_entry_rev3 = type { i32 }

@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@B43_BFL2_GPLL_WAR = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B2056_SYN_PLL_LOOPFILTER1 = common dso_local global i32 0, align 4
@B2056_SYN_PLL_LOOPFILTER2 = common dso_local global i32 0, align 4
@B2056_SYN_PLL_LOOPFILTER4 = common dso_local global i32 0, align 4
@B2056_SYN_PLL_CP2 = common dso_local global i32 0, align 4
@B43_BFL2_APLL_WAR = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX_PADG_IDAC = common dso_local global i32 0, align 4
@B2056_TX_INTPAG_IMAIN_STAT = common dso_local global i32 0, align 4
@B2056_TX_INTPAG_IAUX_STAT = common dso_local global i32 0, align 4
@B2056_TX_INTPAG_CASCBIAS = common dso_local global i32 0, align 4
@B2056_TX_INTPAG_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PGAG_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PADG_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_MIXG_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PA_SPARE1 = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PADA_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PGAA_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_MIXA_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_TXSPARE1 = common dso_local global i32 0, align 4
@B2056_TX_PA_SPARE2 = common dso_local global i32 0, align 4
@B2056_TX_PADA_CASCBIAS = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_IAUX_STAT = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_IMAIN_STAT = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_CASCBIAS = common dso_local global i32 0, align 4
@B2056_SYN_PLL_VCOCAL12 = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_PA_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev3*)* @b43_radio_2056_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_2056_setup(%struct.b43_wldev* %0, %struct.b43_nphy_channeltab_entry_rev3* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_nphy_channeltab_entry_rev3*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %1, %struct.b43_nphy_channeltab_entry_rev3** %4, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.ssb_sprom*, %struct.ssb_sprom** %23, align 8
  store %struct.ssb_sprom* %24, %struct.ssb_sprom** %5, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @b43_current_band(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 3
  %34 = zext i1 %33 to i32
  %35 = call i32 @B43_WARN_ON(i32 %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %4, align 8
  %38 = call i32 @b43_chantab_radio_2056_upload(%struct.b43_wldev* %36, %struct.b43_nphy_channeltab_entry_rev3* %37)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @b2056_upload_syn_pll_cp2(%struct.b43_wldev* %39, i32 %43)
  %45 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %46 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @B43_BFL2_GPLL_WAR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %2
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @b43_current_band(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %51
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER1, align 4
  %62 = call i32 @b43_radio_write(%struct.b43_wldev* %60, i32 %61, i32 31)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %64 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER2, align 4
  %65 = call i32 @b43_radio_write(%struct.b43_wldev* %63, i32 %64, i32 31)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 18198
  br i1 %71, label %72, label %79

72:                                               ; preds = %59
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %74 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER4, align 4
  %75 = call i32 @b43_radio_write(%struct.b43_wldev* %73, i32 %74, i32 20)
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %77 = load i32, i32* @B2056_SYN_PLL_CP2, align 4
  %78 = call i32 @b43_radio_write(%struct.b43_wldev* %76, i32 %77, i32 0)
  br label %86

79:                                               ; preds = %59
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %81 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER4, align 4
  %82 = call i32 @b43_radio_write(%struct.b43_wldev* %80, i32 %81, i32 11)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %84 = load i32, i32* @B2056_SYN_PLL_CP2, align 4
  %85 = call i32 @b43_radio_write(%struct.b43_wldev* %83, i32 %84, i32 20)
  br label %86

86:                                               ; preds = %79, %72
  br label %87

87:                                               ; preds = %86, %51, %2
  %88 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %89 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @B43_BFL2_APLL_WAR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %87
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %96 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @b43_current_band(i32 %97)
  %99 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %103 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER1, align 4
  %104 = call i32 @b43_radio_write(%struct.b43_wldev* %102, i32 %103, i32 31)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %106 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER2, align 4
  %107 = call i32 @b43_radio_write(%struct.b43_wldev* %105, i32 %106, i32 31)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER4, align 4
  %110 = call i32 @b43_radio_write(%struct.b43_wldev* %108, i32 %109, i32 5)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %112 = load i32, i32* @B2056_SYN_PLL_CP2, align 4
  %113 = call i32 @b43_radio_write(%struct.b43_wldev* %111, i32 %112, i32 12)
  br label %114

114:                                              ; preds = %101, %94, %87
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %116 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %237

122:                                              ; preds = %114
  %123 = load i32, i32* %6, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %237

127:                                              ; preds = %122
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %233, %127
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %131, label %236

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @B2056_TX1, align 4
  br label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @B2056_TX0, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %7, align 4
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %141 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp sge i32 %143, 5
  br i1 %144, label %145, label %202

145:                                              ; preds = %138
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @B2056_TX_PADG_IDAC, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @b43_radio_write(%struct.b43_wldev* %146, i32 %149, i32 204)
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %152 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 18198
  br i1 %156, label %157, label %158

157:                                              ; preds = %145
  store i32 64, i32* %9, align 4
  store i32 69, i32* %10, align 4
  store i32 5, i32* %11, align 4
  store i32 51, i32* %13, align 4
  store i32 85, i32* %14, align 4
  br label %159

158:                                              ; preds = %145
  store i32 37, i32* %9, align 4
  store i32 32, i32* %10, align 4
  store i32 4, i32* %11, align 4
  store i32 3, i32* %13, align 4
  store i32 101, i32* %14, align 4
  br label %159

159:                                              ; preds = %158, %157
  store i32 119, i32* %12, align 4
  %160 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @B2056_TX_INTPAG_IMAIN_STAT, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @b43_radio_write(%struct.b43_wldev* %160, i32 %163, i32 %164)
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @B2056_TX_INTPAG_IAUX_STAT, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @b43_radio_write(%struct.b43_wldev* %166, i32 %169, i32 %170)
  %172 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @B2056_TX_INTPAG_CASCBIAS, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @b43_radio_write(%struct.b43_wldev* %172, i32 %175, i32 %176)
  %178 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* @B2056_TX_INTPAG_BOOST_TUNE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @b43_radio_write(%struct.b43_wldev* %178, i32 %181, i32 %182)
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @B2056_TX_PGAG_BOOST_TUNE, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @b43_radio_write(%struct.b43_wldev* %184, i32 %187, i32 %188)
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @B2056_TX_PADG_BOOST_TUNE, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @b43_radio_write(%struct.b43_wldev* %190, i32 %193, i32 %194)
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @B2056_TX_MIXG_BOOST_TUNE, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @b43_radio_write(%struct.b43_wldev* %196, i32 %199, i32 %200)
  br label %227

202:                                              ; preds = %138
  %203 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %204 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 64, i32 32
  store i32 %209, i32* %9, align 4
  %210 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @B2056_TX_INTPAG_IMAIN_STAT, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @b43_radio_write(%struct.b43_wldev* %210, i32 %213, i32 %214)
  %216 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @B2056_TX_INTPAG_IAUX_STAT, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @b43_radio_write(%struct.b43_wldev* %216, i32 %219, i32 %220)
  %222 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @B2056_TX_INTPAG_CASCBIAS, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @b43_radio_write(%struct.b43_wldev* %222, i32 %225, i32 48)
  br label %227

227:                                              ; preds = %202, %159
  %228 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* @B2056_TX_PA_SPARE1, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @b43_radio_write(%struct.b43_wldev* %228, i32 %231, i32 238)
  br label %233

233:                                              ; preds = %227
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %128

236:                                              ; preds = %128
  br label %350

237:                                              ; preds = %122, %114
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %239 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %349

245:                                              ; preds = %237
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %349

249:                                              ; preds = %245
  %250 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %251 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %19, align 4
  %254 = load i32, i32* %19, align 4
  %255 = icmp slt i32 %254, 5100
  br i1 %255, label %256, label %257

256:                                              ; preds = %249
  store i32 10, i32* %15, align 4
  store i32 119, i32* %16, align 4
  store i32 15, i32* %17, align 4
  store i32 15, i32* %18, align 4
  br label %278

257:                                              ; preds = %249
  %258 = load i32, i32* %19, align 4
  %259 = icmp slt i32 %258, 5340
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  store i32 8, i32* %15, align 4
  store i32 119, i32* %16, align 4
  store i32 251, i32* %17, align 4
  store i32 15, i32* %18, align 4
  br label %277

261:                                              ; preds = %257
  %262 = load i32, i32* %19, align 4
  %263 = icmp slt i32 %262, 5650
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 0, i32* %15, align 4
  store i32 119, i32* %16, align 4
  store i32 11, i32* %17, align 4
  store i32 15, i32* %18, align 4
  br label %276

265:                                              ; preds = %261
  store i32 0, i32* %15, align 4
  store i32 119, i32* %16, align 4
  %266 = load i32, i32* %19, align 4
  %267 = icmp ne i32 %266, 5825
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load i32, i32* %19, align 4
  %270 = sub nsw i32 %269, 18
  %271 = sub nsw i32 0, %270
  %272 = sdiv i32 %271, 36
  %273 = add nsw i32 %272, 168
  store i32 %273, i32* %17, align 4
  br label %275

274:                                              ; preds = %265
  store i32 6, i32* %17, align 4
  br label %275

275:                                              ; preds = %274, %268
  store i32 15, i32* %18, align 4
  br label %276

276:                                              ; preds = %275, %264
  br label %277

277:                                              ; preds = %276, %260
  br label %278

278:                                              ; preds = %277, %256
  store i32 0, i32* %8, align 4
  br label %279

279:                                              ; preds = %345, %278
  %280 = load i32, i32* %8, align 4
  %281 = icmp slt i32 %280, 2
  br i1 %281, label %282, label %348

282:                                              ; preds = %279
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %282
  %286 = load i32, i32* @B2056_TX1, align 4
  br label %289

287:                                              ; preds = %282
  %288 = load i32, i32* @B2056_TX0, align 4
  br label %289

289:                                              ; preds = %287, %285
  %290 = phi i32 [ %286, %285 ], [ %288, %287 ]
  store i32 %290, i32* %7, align 4
  %291 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* @B2056_TX_INTPAA_BOOST_TUNE, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* %15, align 4
  %296 = call i32 @b43_radio_write(%struct.b43_wldev* %291, i32 %294, i32 %295)
  %297 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %298 = load i32, i32* %7, align 4
  %299 = load i32, i32* @B2056_TX_PADA_BOOST_TUNE, align 4
  %300 = or i32 %298, %299
  %301 = load i32, i32* %16, align 4
  %302 = call i32 @b43_radio_write(%struct.b43_wldev* %297, i32 %300, i32 %301)
  %303 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* @B2056_TX_PGAA_BOOST_TUNE, align 4
  %306 = or i32 %304, %305
  %307 = load i32, i32* %17, align 4
  %308 = call i32 @b43_radio_write(%struct.b43_wldev* %303, i32 %306, i32 %307)
  %309 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* @B2056_TX_MIXA_BOOST_TUNE, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* %18, align 4
  %314 = call i32 @b43_radio_write(%struct.b43_wldev* %309, i32 %312, i32 %313)
  %315 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* @B2056_TX_TXSPARE1, align 4
  %318 = or i32 %316, %317
  %319 = call i32 @b43_radio_write(%struct.b43_wldev* %315, i32 %318, i32 48)
  %320 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* @B2056_TX_PA_SPARE2, align 4
  %323 = or i32 %321, %322
  %324 = call i32 @b43_radio_write(%struct.b43_wldev* %320, i32 %323, i32 238)
  %325 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %326 = load i32, i32* %7, align 4
  %327 = load i32, i32* @B2056_TX_PADA_CASCBIAS, align 4
  %328 = or i32 %326, %327
  %329 = call i32 @b43_radio_write(%struct.b43_wldev* %325, i32 %328, i32 3)
  %330 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %331 = load i32, i32* %7, align 4
  %332 = load i32, i32* @B2056_TX_INTPAA_IAUX_STAT, align 4
  %333 = or i32 %331, %332
  %334 = call i32 @b43_radio_write(%struct.b43_wldev* %330, i32 %333, i32 80)
  %335 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %336 = load i32, i32* %7, align 4
  %337 = load i32, i32* @B2056_TX_INTPAA_IMAIN_STAT, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @b43_radio_write(%struct.b43_wldev* %335, i32 %338, i32 80)
  %340 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* @B2056_TX_INTPAA_CASCBIAS, align 4
  %343 = or i32 %341, %342
  %344 = call i32 @b43_radio_write(%struct.b43_wldev* %340, i32 %343, i32 48)
  br label %345

345:                                              ; preds = %289
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %8, align 4
  br label %279

348:                                              ; preds = %279
  br label %349

349:                                              ; preds = %348, %245, %237
  br label %350

350:                                              ; preds = %349, %236
  %351 = call i32 @udelay(i32 50)
  %352 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %353 = load i32, i32* @B2056_SYN_PLL_VCOCAL12, align 4
  %354 = call i32 @b43_radio_write(%struct.b43_wldev* %352, i32 %353, i32 0)
  %355 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %356 = load i32, i32* @B2056_TX_INTPAA_PA_MISC, align 4
  %357 = call i32 @b43_radio_write(%struct.b43_wldev* %355, i32 %356, i32 56)
  %358 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %359 = load i32, i32* @B2056_TX_INTPAA_PA_MISC, align 4
  %360 = call i32 @b43_radio_write(%struct.b43_wldev* %358, i32 %359, i32 24)
  %361 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %362 = load i32, i32* @B2056_TX_INTPAA_PA_MISC, align 4
  %363 = call i32 @b43_radio_write(%struct.b43_wldev* %361, i32 %362, i32 56)
  %364 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %365 = load i32, i32* @B2056_TX_INTPAA_PA_MISC, align 4
  %366 = call i32 @b43_radio_write(%struct.b43_wldev* %364, i32 %365, i32 57)
  %367 = call i32 @udelay(i32 300)
  ret void
}

declare dso_local i32 @b43_current_band(i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_chantab_radio_2056_upload(%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev3*) #1

declare dso_local i32 @b2056_upload_syn_pll_cp2(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
