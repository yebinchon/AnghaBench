; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_channel_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_channel_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, %struct.TYPE_2__* }
%struct.b43_phy = type { i32, i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.b43_phy_n_sfo_cfg = type { i32 }
%struct.ieee80211_channel = type { i32, i64 }

@B43_NPHY_BANDCTL = common dso_local global i32 0, align 4
@B43_NPHY_BANDCTL_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_MMIO_PSM_PHY_HDR = common dso_local global i32 0, align 4
@B43_PHY_B_BBCFG = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_PHY_B_TEST = common dso_local global i32 0, align 4
@B43_SPUR_AVOID_DISABLE = common dso_local global i64 0, align 8
@B43_SPUR_AVOID_FORCE = common dso_local global i64 0, align 8
@B43_MMIO_TSF_CLK_FRAC_LOW = common dso_local global i32 0, align 4
@B43_MMIO_TSF_CLK_FRAC_HIGH = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG_RSTRX = common dso_local global i32 0, align 4
@B43_NPHY_NDATAT_DUP40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_phy_n_sfo_cfg*, %struct.ieee80211_channel*)* @b43_nphy_channel_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_channel_setup(%struct.b43_wldev* %0, %struct.b43_phy_n_sfo_cfg* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca %struct.b43_phy_n_sfo_cfg*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.b43_phy*, align 8
  %8 = alloca %struct.b43_phy_n*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store %struct.b43_phy_n_sfo_cfg* %1, %struct.b43_phy_n_sfo_cfg** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 0
  store %struct.b43_phy* %14, %struct.b43_phy** %7, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %16, i32 0, i32 2
  %18 = load %struct.b43_phy_n*, %struct.b43_phy_n** %17, align 8
  store %struct.b43_phy_n* %18, %struct.b43_phy_n** %8, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %23 = load i32, i32* @B43_NPHY_BANDCTL, align 4
  %24 = call i32 @b43_phy_read(%struct.b43_wldev* %22, i32 %23)
  %25 = load i32, i32* @B43_NPHY_BANDCTL_5GHZ, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %32
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %37 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %38 = call i32 @b43_read32(%struct.b43_wldev* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %40 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, 4
  %43 = call i32 @b43_write32(%struct.b43_wldev* %39, i32 %40, i32 %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %45 = load i32, i32* @B43_PHY_B_BBCFG, align 4
  %46 = call i32 @b43_phy_set(%struct.b43_wldev* %44, i32 %45, i32 49152)
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %48 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @b43_write32(%struct.b43_wldev* %47, i32 %48, i32 %49)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %52 = load i32, i32* @B43_NPHY_BANDCTL, align 4
  %53 = load i32, i32* @B43_NPHY_BANDCTL_5GHZ, align 4
  %54 = call i32 @b43_phy_set(%struct.b43_wldev* %51, i32 %52, i32 %53)
  br label %86

55:                                               ; preds = %32, %3
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %66 = load i32, i32* @B43_NPHY_BANDCTL, align 4
  %67 = load i32, i32* @B43_NPHY_BANDCTL_5GHZ, align 4
  %68 = xor i32 %67, -1
  %69 = call i32 @b43_phy_mask(%struct.b43_wldev* %65, i32 %66, i32 %68)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %71 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %72 = call i32 @b43_read32(%struct.b43_wldev* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %74 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, 4
  %77 = call i32 @b43_write32(%struct.b43_wldev* %73, i32 %74, i32 %76)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %79 = load i32, i32* @B43_PHY_B_BBCFG, align 4
  %80 = call i32 @b43_phy_mask(%struct.b43_wldev* %78, i32 %79, i32 16383)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %82 = load i32, i32* @B43_MMIO_PSM_PHY_HDR, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @b43_write32(%struct.b43_wldev* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %64, %61, %55
  br label %86

86:                                               ; preds = %85, %35
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %88 = load %struct.b43_phy_n_sfo_cfg*, %struct.b43_phy_n_sfo_cfg** %5, align 8
  %89 = call i32 @b43_chantab_phy_upload(%struct.b43_wldev* %87, %struct.b43_phy_n_sfo_cfg* %88)
  %90 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 14
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %96 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %95, i32 2, i32 0)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %98 = load i32, i32* @B43_PHY_B_TEST, align 4
  %99 = call i32 @b43_phy_set(%struct.b43_wldev* %97, i32 %98, i32 2048)
  br label %113

100:                                              ; preds = %86
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %102 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %101, i32 2, i32 2)
  %103 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %110 = load i32, i32* @B43_PHY_B_TEST, align 4
  %111 = call i32 @b43_phy_mask(%struct.b43_wldev* %109, i32 %110, i32 -2113)
  br label %112

112:                                              ; preds = %108, %100
  br label %113

113:                                              ; preds = %112, %94
  %114 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  %115 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %120 = call i32 @b43_nphy_tx_power_fix(%struct.b43_wldev* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %123 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %125, 3
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %129 = call i32 @b43_nphy_adjust_lna_gain_table(%struct.b43_wldev* %128)
  br label %130

130:                                              ; preds = %127, %121
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %132 = call i32 @b43_nphy_tx_lp_fbw(%struct.b43_wldev* %131)
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %134 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp sge i32 %136, 3
  br i1 %137, label %138, label %267

138:                                              ; preds = %130
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %140 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %140, i32 0, i32 2
  %142 = load %struct.b43_phy_n*, %struct.b43_phy_n** %141, align 8
  %143 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @B43_SPUR_AVOID_DISABLE, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %267

147:                                              ; preds = %138
  store i32 0, i32* %12, align 4
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %149 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %149, i32 0, i32 2
  %151 = load %struct.b43_phy_n*, %struct.b43_phy_n** %150, align 8
  %152 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @B43_SPUR_AVOID_FORCE, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 1, i32* %12, align 4
  br label %201

157:                                              ; preds = %147
  %158 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %159 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @b43_channel_type_is_40mhz(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %177, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* %9, align 4
  %165 = icmp sge i32 %164, 5
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* %9, align 4
  %168 = icmp sle i32 %167, 8
  br i1 %168, label %175, label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %9, align 4
  %171 = icmp eq i32 %170, 13
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %173, 14
  br i1 %174, label %175, label %176

175:                                              ; preds = %172, %169, %166
  store i32 1, i32* %12, align 4
  br label %176

176:                                              ; preds = %175, %172
  br label %200

177:                                              ; preds = %157
  %178 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  %179 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %199

182:                                              ; preds = %177
  %183 = load i32, i32* %9, align 4
  %184 = icmp eq i32 %183, 38
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %9, align 4
  %187 = icmp eq i32 %186, 102
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %9, align 4
  %190 = icmp eq i32 %189, 118
  br i1 %190, label %191, label %199

191:                                              ; preds = %188, %185, %182
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %193 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %192, i32 0, i32 1
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 18198
  %198 = zext i1 %197 to i32
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %191, %188, %177
  br label %200

200:                                              ; preds = %199, %176
  br label %201

201:                                              ; preds = %200, %156
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @b43_nphy_pmu_spur_avoid(%struct.b43_wldev* %202, i32 %203)
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %206 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %205, i32 0, i32 1
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 43222
  br i1 %210, label %225, label %211

211:                                              ; preds = %201
  %212 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %213 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %212, i32 0, i32 1
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 43224
  br i1 %217, label %225, label %218

218:                                              ; preds = %211
  %219 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %220 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %219, i32 0, i32 1
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 43225
  br i1 %224, label %225, label %236

225:                                              ; preds = %218, %211, %201
  %226 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %227 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %228 = load i32, i32* %12, align 4
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 21313, i32 34953
  %232 = call i32 @b43_write16(%struct.b43_wldev* %226, i32 %227, i32 %231)
  %233 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %234 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %235 = call i32 @b43_write16(%struct.b43_wldev* %233, i32 %234, i32 8)
  br label %236

236:                                              ; preds = %225, %218
  %237 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %238 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 3
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %244 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %246, 4
  br i1 %247, label %248, label %249

248:                                              ; preds = %242, %236
  br label %249

249:                                              ; preds = %248, %242
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %254 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %255 = load i32, i32* @B43_NPHY_BBCFG_RSTRX, align 4
  %256 = call i32 @b43_phy_set(%struct.b43_wldev* %253, i32 %254, i32 %255)
  br label %264

257:                                              ; preds = %249
  %258 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %259 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %260 = load i32, i32* @B43_NPHY_BBCFG_RSTRX, align 4
  %261 = xor i32 %260, -1
  %262 = and i32 %261, 65535
  %263 = call i32 @b43_phy_mask(%struct.b43_wldev* %258, i32 %259, i32 %262)
  br label %264

264:                                              ; preds = %257, %252
  %265 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %266 = call i32 @b43_nphy_reset_cca(%struct.b43_wldev* %265)
  br label %267

267:                                              ; preds = %264, %138, %130
  %268 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %269 = load i32, i32* @B43_NPHY_NDATAT_DUP40, align 4
  %270 = call i32 @b43_phy_write(%struct.b43_wldev* %268, i32 %269, i32 14384)
  %271 = load %struct.b43_phy*, %struct.b43_phy** %7, align 8
  %272 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = icmp sge i32 %273, 3
  br i1 %274, label %275, label %278

275:                                              ; preds = %267
  %276 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %277 = call i32 @b43_nphy_spur_workaround(%struct.b43_wldev* %276)
  br label %278

278:                                              ; preds = %275, %267
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_chantab_phy_upload(%struct.b43_wldev*, %struct.b43_phy_n_sfo_cfg*) #1

declare dso_local i32 @b43_nphy_classifier(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_tx_power_fix(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_adjust_lna_gain_table(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_lp_fbw(%struct.b43_wldev*) #1

declare dso_local i32 @b43_channel_type_is_40mhz(i32) #1

declare dso_local i32 @b43_nphy_pmu_spur_avoid(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_reset_cca(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_spur_workaround(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
