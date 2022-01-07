; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_cal_radio_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_cal_radio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32*, i64, i64 }

@B2055_CAL_RVARCTL = common dso_local global i32 0, align 4
@B2055_CAL_LPOCTL = common dso_local global i32 0, align 4
@B2055_CAL_TS = common dso_local global i32 0, align 4
@B2055_CAL_RCCALRTS = common dso_local global i32 0, align 4
@B2055_CAL_RCALRTS = common dso_local global i32 0, align 4
@B2055_PADDRV = common dso_local global i32 0, align 4
@B2055_XOCTL1 = common dso_local global i32 0, align 4
@B2055_XOCTL2 = common dso_local global i32 0, align 4
@B2055_XOREGUL = common dso_local global i32 0, align 4
@B2055_XOMISC = common dso_local global i32 0, align 4
@B2055_PLL_LFC1 = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B2055_C1_TX_RF_IQCAL1 = common dso_local global i32 0, align 4
@B2055_C1_TX_RF_IQCAL2 = common dso_local global i32 0, align 4
@B2055_C2_TX_RF_IQCAL1 = common dso_local global i32 0, align 4
@B2055_C2_TX_RF_IQCAL2 = common dso_local global i32 0, align 4
@B2055_C1_PWRDET_RXTX = common dso_local global i32 0, align 4
@B2055_C2_PWRDET_RXTX = common dso_local global i32 0, align 4
@B43_NPHY_BANDCTL = common dso_local global i32 0, align 4
@B43_NPHY_BANDCTL_5GHZ = common dso_local global i32 0, align 4
@B2055_C1_TX_BB_MXGM = common dso_local global i32 0, align 4
@B2055_C2_TX_BB_MXGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_cal_radio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_cal_radio_setup(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.b43_phy_n*, %struct.b43_phy_n** %10, align 8
  store %struct.b43_phy_n* %11, %struct.b43_phy_n** %3, align 8
  %12 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %13 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 3
  br i1 %19, label %20, label %268

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %264, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %267

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 8192, i32 12288
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 11
  store i32 %30, i32* %6, align 4
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = load i32, i32* @B2055_CAL_RVARCTL, align 4
  %33 = call i32 @b43_radio_read(%struct.b43_wldev* %31, i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %41 = call i32 @b43_radio_read(%struct.b43_wldev* %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %48 = load i32, i32* @B2055_CAL_TS, align 4
  %49 = call i32 @b43_radio_read(%struct.b43_wldev* %47, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B2055_CAL_RCCALRTS, align 4
  %57 = call i32 @b43_radio_read(%struct.b43_wldev* %55, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = load i32, i32* @B2055_CAL_RCALRTS, align 4
  %65 = call i32 @b43_radio_read(%struct.b43_wldev* %63, i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = load i32, i32* @B2055_PADDRV, align 4
  %73 = call i32 @b43_radio_read(%struct.b43_wldev* %71, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = load i32, i32* @B2055_XOCTL1, align 4
  %81 = call i32 @b43_radio_read(%struct.b43_wldev* %79, i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 6
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %81, i32* %86, align 4
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B2055_XOCTL2, align 4
  %89 = call i32 @b43_radio_read(%struct.b43_wldev* %87, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 7
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = load i32, i32* @B2055_XOREGUL, align 4
  %97 = call i32 @b43_radio_read(%struct.b43_wldev* %95, i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = load i32, i32* @B2055_XOMISC, align 4
  %105 = call i32 @b43_radio_read(%struct.b43_wldev* %103, i32 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 9
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %112 = load i32, i32* @B2055_PLL_LFC1, align 4
  %113 = call i32 @b43_radio_read(%struct.b43_wldev* %111, i32 %112)
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 10
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %113, i32* %118, align 4
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %120 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @b43_current_band(i32 %121)
  %123 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %183

125:                                              ; preds = %24
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @B2055_CAL_RVARCTL, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @b43_radio_write(%struct.b43_wldev* %126, i32 %129, i32 10)
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @b43_radio_write(%struct.b43_wldev* %131, i32 %134, i32 64)
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @B2055_CAL_TS, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @b43_radio_write(%struct.b43_wldev* %136, i32 %139, i32 85)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @B2055_CAL_RCCALRTS, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @b43_radio_write(%struct.b43_wldev* %141, i32 %144, i32 0)
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @B2055_CAL_RCALRTS, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @b43_radio_write(%struct.b43_wldev* %146, i32 %149, i32 0)
  %151 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %152 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %125
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @B2055_PADDRV, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @b43_radio_write(%struct.b43_wldev* %156, i32 %159, i32 4)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @B2055_XOCTL1, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @b43_radio_write(%struct.b43_wldev* %161, i32 %164, i32 1)
  br label %177

166:                                              ; preds = %125
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @B2055_PADDRV, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @b43_radio_write(%struct.b43_wldev* %167, i32 %170, i32 0)
  %172 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @B2055_XOCTL1, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @b43_radio_write(%struct.b43_wldev* %172, i32 %175, i32 47)
  br label %177

177:                                              ; preds = %166, %155
  %178 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @B2055_XOCTL2, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @b43_radio_write(%struct.b43_wldev* %178, i32 %181, i32 0)
  br label %248

183:                                              ; preds = %24
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @B2055_CAL_RVARCTL, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @b43_radio_write(%struct.b43_wldev* %184, i32 %187, i32 6)
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @b43_radio_write(%struct.b43_wldev* %189, i32 %192, i32 64)
  %194 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @B2055_CAL_TS, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @b43_radio_write(%struct.b43_wldev* %194, i32 %197, i32 85)
  %199 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %200 = load i32, i32* %5, align 4
  %201 = load i32, i32* @B2055_CAL_RCCALRTS, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @b43_radio_write(%struct.b43_wldev* %199, i32 %202, i32 0)
  %204 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @B2055_CAL_RCALRTS, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @b43_radio_write(%struct.b43_wldev* %204, i32 %207, i32 0)
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* @B2055_XOCTL1, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @b43_radio_write(%struct.b43_wldev* %209, i32 %212, i32 0)
  %214 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %215 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %236

218:                                              ; preds = %183
  %219 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @B2055_PADDRV, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @b43_radio_write(%struct.b43_wldev* %219, i32 %222, i32 6)
  %224 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* @B2055_XOCTL2, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %229 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %231, 5
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 17, i32 1
  %235 = call i32 @b43_radio_write(%struct.b43_wldev* %224, i32 %227, i32 %234)
  br label %247

236:                                              ; preds = %183
  %237 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* @B2055_PADDRV, align 4
  %240 = or i32 %238, %239
  %241 = call i32 @b43_radio_write(%struct.b43_wldev* %237, i32 %240, i32 0)
  %242 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* @B2055_XOCTL2, align 4
  %245 = or i32 %243, %244
  %246 = call i32 @b43_radio_write(%struct.b43_wldev* %242, i32 %245, i32 0)
  br label %247

247:                                              ; preds = %236, %218
  br label %248

248:                                              ; preds = %247, %177
  %249 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* @B2055_XOREGUL, align 4
  %252 = or i32 %250, %251
  %253 = call i32 @b43_radio_write(%struct.b43_wldev* %249, i32 %252, i32 0)
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* @B2055_XOMISC, align 4
  %257 = or i32 %255, %256
  %258 = call i32 @b43_radio_write(%struct.b43_wldev* %254, i32 %257, i32 0)
  %259 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* @B2055_PLL_LFC1, align 4
  %262 = or i32 %260, %261
  %263 = call i32 @b43_radio_write(%struct.b43_wldev* %259, i32 %262, i32 0)
  br label %264

264:                                              ; preds = %248
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %21

267:                                              ; preds = %21
  br label %352

268:                                              ; preds = %1
  %269 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %270 = load i32, i32* @B2055_C1_TX_RF_IQCAL1, align 4
  %271 = call i32 @b43_radio_read(%struct.b43_wldev* %269, i32 %270)
  %272 = load i32*, i32** %4, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  store i32 %271, i32* %273, align 4
  %274 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %275 = load i32, i32* @B2055_C1_TX_RF_IQCAL1, align 4
  %276 = call i32 @b43_radio_write(%struct.b43_wldev* %274, i32 %275, i32 41)
  %277 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %278 = load i32, i32* @B2055_C1_TX_RF_IQCAL2, align 4
  %279 = call i32 @b43_radio_read(%struct.b43_wldev* %277, i32 %278)
  %280 = load i32*, i32** %4, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  store i32 %279, i32* %281, align 4
  %282 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %283 = load i32, i32* @B2055_C1_TX_RF_IQCAL2, align 4
  %284 = call i32 @b43_radio_write(%struct.b43_wldev* %282, i32 %283, i32 84)
  %285 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %286 = load i32, i32* @B2055_C2_TX_RF_IQCAL1, align 4
  %287 = call i32 @b43_radio_read(%struct.b43_wldev* %285, i32 %286)
  %288 = load i32*, i32** %4, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  store i32 %287, i32* %289, align 4
  %290 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %291 = load i32, i32* @B2055_C2_TX_RF_IQCAL1, align 4
  %292 = call i32 @b43_radio_write(%struct.b43_wldev* %290, i32 %291, i32 41)
  %293 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %294 = load i32, i32* @B2055_C2_TX_RF_IQCAL2, align 4
  %295 = call i32 @b43_radio_read(%struct.b43_wldev* %293, i32 %294)
  %296 = load i32*, i32** %4, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  store i32 %295, i32* %297, align 4
  %298 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %299 = load i32, i32* @B2055_C2_TX_RF_IQCAL2, align 4
  %300 = call i32 @b43_radio_write(%struct.b43_wldev* %298, i32 %299, i32 84)
  %301 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %302 = load i32, i32* @B2055_C1_PWRDET_RXTX, align 4
  %303 = call i32 @b43_radio_read(%struct.b43_wldev* %301, i32 %302)
  %304 = load i32*, i32** %4, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 3
  store i32 %303, i32* %305, align 4
  %306 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %307 = load i32, i32* @B2055_C2_PWRDET_RXTX, align 4
  %308 = call i32 @b43_radio_read(%struct.b43_wldev* %306, i32 %307)
  %309 = load i32*, i32** %4, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 4
  store i32 %308, i32* %310, align 4
  %311 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %312 = load i32, i32* @B43_NPHY_BANDCTL, align 4
  %313 = call i32 @b43_phy_read(%struct.b43_wldev* %311, i32 %312)
  %314 = load i32, i32* @B43_NPHY_BANDCTL_5GHZ, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %324, label %317

317:                                              ; preds = %268
  %318 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %319 = load i32, i32* @B2055_C1_PWRDET_RXTX, align 4
  %320 = call i32 @b43_radio_write(%struct.b43_wldev* %318, i32 %319, i32 4)
  %321 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %322 = load i32, i32* @B2055_C2_PWRDET_RXTX, align 4
  %323 = call i32 @b43_radio_write(%struct.b43_wldev* %321, i32 %322, i32 4)
  br label %331

324:                                              ; preds = %268
  %325 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %326 = load i32, i32* @B2055_C1_PWRDET_RXTX, align 4
  %327 = call i32 @b43_radio_write(%struct.b43_wldev* %325, i32 %326, i32 32)
  %328 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %329 = load i32, i32* @B2055_C2_PWRDET_RXTX, align 4
  %330 = call i32 @b43_radio_write(%struct.b43_wldev* %328, i32 %329, i32 32)
  br label %331

331:                                              ; preds = %324, %317
  %332 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %333 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp slt i32 %335, 2
  br i1 %336, label %337, label %344

337:                                              ; preds = %331
  %338 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %339 = load i32, i32* @B2055_C1_TX_BB_MXGM, align 4
  %340 = call i32 @b43_radio_set(%struct.b43_wldev* %338, i32 %339, i32 32)
  %341 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %342 = load i32, i32* @B2055_C2_TX_BB_MXGM, align 4
  %343 = call i32 @b43_radio_set(%struct.b43_wldev* %341, i32 %342, i32 32)
  br label %351

344:                                              ; preds = %331
  %345 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %346 = load i32, i32* @B2055_C1_TX_BB_MXGM, align 4
  %347 = call i32 @b43_radio_mask(%struct.b43_wldev* %345, i32 %346, i32 -33)
  %348 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %349 = load i32, i32* @B2055_C2_TX_BB_MXGM, align 4
  %350 = call i32 @b43_radio_mask(%struct.b43_wldev* %348, i32 %349, i32 -33)
  br label %351

351:                                              ; preds = %344, %337
  br label %352

352:                                              ; preds = %351, %267
  ret void
}

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
