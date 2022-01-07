; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_power_ctl_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_power_ctl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_11__, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32*, i32, i32*, i32, i32* }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_NPHY_TSSIMODE = common dso_local global i32 0, align 4
@B43_NPHY_TSSIMODE_EN = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_PCTLEN = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_TXPCTL_ITSSI = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_INIT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_INIT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_INIT_PIDXI1 = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_N = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_N_TSSID_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_N_NPTIL2_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_ITSSI_0_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_ITSSI_1_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_ITSSI_BINF = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_TPWR = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_TPWR_0_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_TPWR_1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_power_ctl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_power_ctl_setup(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca %struct.ssb_sprom*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load %struct.b43_phy_n*, %struct.b43_phy_n** %21, align 8
  store %struct.b43_phy_n* %22, %struct.b43_phy_n** %3, align 8
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.ssb_sprom*, %struct.ssb_sprom** %26, align 8
  store %struct.ssb_sprom* %27, %struct.ssb_sprom** %4, align 8
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 11
  br i1 %37, label %45, label %38

38:                                               ; preds = %1
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 12
  br i1 %44, label %45, label %53

45:                                               ; preds = %38, %1
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %48 = call i32 @b43_maskset32(%struct.b43_wldev* %46, i32 %47, i32 -1, i32 2097152)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %51 = call i32 @b43_read32(%struct.b43_wldev* %49, i32 %50)
  %52 = call i32 @udelay(i32 1)
  br label %53

53:                                               ; preds = %45, %38
  %54 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %55 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %59, i32 1)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load i32, i32* @B43_NPHY_TSSIMODE, align 4
  %64 = load i32, i32* @B43_NPHY_TSSIMODE_EN, align 4
  %65 = call i32 @b43_phy_set(%struct.b43_wldev* %62, i32 %63, i32 %64)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %69, 3
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %74 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %75, 65535
  %77 = call i32 @b43_phy_mask(%struct.b43_wldev* %72, i32 %73, i32 %76)
  br label %83

78:                                               ; preds = %61
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %81 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %82 = call i32 @b43_phy_set(%struct.b43_wldev* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %71
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 11
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 12
  br i1 %96, label %97, label %101

97:                                               ; preds = %90, %83
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %100 = call i32 @b43_maskset32(%struct.b43_wldev* %98, i32 %99, i32 -2097153, i32 0)
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %103 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %129

106:                                              ; preds = %101
  %107 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %108 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %112, i32* %113, align 4
  %114 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %115 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %119, i32* %120, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 52, i32* %121, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 52, i32* %122, align 4
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 -424, i32* %123, align 4
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -424, i32* %124, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 5612, i32* %125, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 5612, i32* %126, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 -1393, i32* %127, align 4
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 -1393, i32* %128, align 4
  br label %458

129:                                              ; preds = %101
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @b43_current_band(i32 %132)
  %134 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %206

136:                                              ; preds = %129
  store i32 0, i32* %18, align 4
  br label %137

137:                                              ; preds = %202, %136
  %138 = load i32, i32* %18, align 4
  %139 = icmp slt i32 %138, 2
  br i1 %139, label %140, label %205

140:                                              ; preds = %137
  %141 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %142 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = load i32, i32* %18, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %150
  store i32 %148, i32* %151, align 4
  %152 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %153 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %161
  store i32 %159, i32* %162, align 4
  %163 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %164 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %163, i32 0, i32 2
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %174
  store i32 %172, i32* %175, align 4
  %176 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %177 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %176, i32 0, i32 2
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %187
  store i32 %185, i32* %188, align 4
  %189 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %190 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %189, i32 0, i32 2
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %200
  store i32 %198, i32* %201, align 4
  br label %202

202:                                              ; preds = %140
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  br label %137

205:                                              ; preds = %137
  br label %457

206:                                              ; preds = %129
  %207 = load i32, i32* %14, align 4
  %208 = icmp sge i32 %207, 4900
  br i1 %208, label %209, label %282

209:                                              ; preds = %206
  %210 = load i32, i32* %14, align 4
  %211 = icmp slt i32 %210, 5100
  br i1 %211, label %212, label %282

212:                                              ; preds = %209
  store i32 0, i32* %18, align 4
  br label %213

213:                                              ; preds = %278, %212
  %214 = load i32, i32* %18, align 4
  %215 = icmp slt i32 %214, 2
  br i1 %215, label %216, label %281

216:                                              ; preds = %213
  %217 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %218 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %217, i32 0, i32 1
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = load i32, i32* %18, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %18, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %226
  store i32 %224, i32* %227, align 4
  %228 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %229 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %228, i32 0, i32 2
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %237
  store i32 %235, i32* %238, align 4
  %239 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %240 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %239, i32 0, i32 2
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %18, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %250
  store i32 %248, i32* %251, align 4
  %252 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %253 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %252, i32 0, i32 2
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = load i32, i32* %18, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %18, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %263
  store i32 %261, i32* %264, align 4
  %265 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %266 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %265, i32 0, i32 2
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %266, align 8
  %268 = load i32, i32* %18, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 2
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %18, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %276
  store i32 %274, i32* %277, align 4
  br label %278

278:                                              ; preds = %216
  %279 = load i32, i32* %18, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %18, align 4
  br label %213

281:                                              ; preds = %213
  br label %456

282:                                              ; preds = %209, %206
  %283 = load i32, i32* %14, align 4
  %284 = icmp sge i32 %283, 5100
  br i1 %284, label %285, label %358

285:                                              ; preds = %282
  %286 = load i32, i32* %14, align 4
  %287 = icmp slt i32 %286, 5500
  br i1 %287, label %288, label %358

288:                                              ; preds = %285
  store i32 0, i32* %18, align 4
  br label %289

289:                                              ; preds = %354, %288
  %290 = load i32, i32* %18, align 4
  %291 = icmp slt i32 %290, 2
  br i1 %291, label %292, label %357

292:                                              ; preds = %289
  %293 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %294 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %293, i32 0, i32 1
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %294, align 8
  %296 = load i32, i32* %18, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %18, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %302
  store i32 %300, i32* %303, align 4
  %304 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %305 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %304, i32 0, i32 2
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %305, align 8
  %307 = load i32, i32* %18, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %18, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %313
  store i32 %311, i32* %314, align 4
  %315 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %316 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %315, i32 0, i32 2
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = load i32, i32* %18, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 5
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %18, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %326
  store i32 %324, i32* %327, align 4
  %328 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %329 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %328, i32 0, i32 2
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %329, align 8
  %331 = load i32, i32* %18, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 5
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %18, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %339
  store i32 %337, i32* %340, align 4
  %341 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %342 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %341, i32 0, i32 2
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %342, align 8
  %344 = load i32, i32* %18, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 5
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %18, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %352
  store i32 %350, i32* %353, align 4
  br label %354

354:                                              ; preds = %292
  %355 = load i32, i32* %18, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %18, align 4
  br label %289

357:                                              ; preds = %289
  br label %455

358:                                              ; preds = %285, %282
  %359 = load i32, i32* %14, align 4
  %360 = icmp sge i32 %359, 5500
  br i1 %360, label %361, label %431

361:                                              ; preds = %358
  store i32 0, i32* %18, align 4
  br label %362

362:                                              ; preds = %427, %361
  %363 = load i32, i32* %18, align 4
  %364 = icmp slt i32 %363, 2
  br i1 %364, label %365, label %430

365:                                              ; preds = %362
  %366 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %367 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %366, i32 0, i32 1
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %367, align 8
  %369 = load i32, i32* %18, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* %18, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %375
  store i32 %373, i32* %376, align 4
  %377 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %378 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %377, i32 0, i32 2
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %378, align 8
  %380 = load i32, i32* %18, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 6
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* %18, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %386
  store i32 %384, i32* %387, align 4
  %388 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %389 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %388, i32 0, i32 2
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %389, align 8
  %391 = load i32, i32* %18, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 7
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %18, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %399
  store i32 %397, i32* %400, align 4
  %401 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %402 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %401, i32 0, i32 2
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %402, align 8
  %404 = load i32, i32* %18, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 7
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %18, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %412
  store i32 %410, i32* %413, align 4
  %414 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %415 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %414, i32 0, i32 2
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %415, align 8
  %417 = load i32, i32* %18, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 7
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 2
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %18, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %425
  store i32 %423, i32* %426, align 4
  br label %427

427:                                              ; preds = %365
  %428 = load i32, i32* %18, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %18, align 4
  br label %362

430:                                              ; preds = %362
  br label %454

431:                                              ; preds = %358
  %432 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %433 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %432, i32 0, i32 1
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i64 0
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %437, i32* %438, align 4
  %439 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %440 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %439, i32 0, i32 1
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i64 1
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %444, i32* %445, align 4
  %446 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 52, i32* %446, align 4
  %447 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 52, i32* %447, align 4
  %448 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 -424, i32* %448, align 4
  %449 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -424, i32* %449, align 4
  %450 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 5612, i32* %450, align 4
  %451 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 5612, i32* %451, align 4
  %452 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 -1393, i32* %452, align 4
  %453 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 -1393, i32* %453, align 4
  br label %454

454:                                              ; preds = %431, %430
  br label %455

455:                                              ; preds = %454, %357
  br label %456

456:                                              ; preds = %455, %281
  br label %457

457:                                              ; preds = %456, %205
  br label %458

458:                                              ; preds = %457, %106
  %459 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %460 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = icmp sge i32 %462, 3
  br i1 %463, label %464, label %549

464:                                              ; preds = %458
  %465 = load %struct.ssb_sprom*, %struct.ssb_sprom** %4, align 8
  %466 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %475

471:                                              ; preds = %464
  %472 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %473 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI, align 4
  %474 = call i32 @b43_phy_set(%struct.b43_wldev* %472, i32 %473, i32 16384)
  br label %475

475:                                              ; preds = %471, %464
  %476 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %477 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = icmp sge i32 %479, 7
  br i1 %480, label %481, label %511

481:                                              ; preds = %475
  store i32 0, i32* %18, align 4
  br label %482

482:                                              ; preds = %507, %481
  %483 = load i32, i32* %18, align 4
  %484 = icmp slt i32 %483, 2
  br i1 %484, label %485, label %510

485:                                              ; preds = %482
  %486 = load i32, i32* %18, align 4
  %487 = icmp ne i32 %486, 0
  %488 = zext i1 %487 to i64
  %489 = select i1 %487, i32 400, i32 368
  store i32 %489, i32* %16, align 4
  %490 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %491 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %490)
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %506

493:                                              ; preds = %485
  %494 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %495 = load i32, i32* %16, align 4
  %496 = add nsw i32 %495, 9
  %497 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %498 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = call i64 @b43_current_band(i32 %499)
  %501 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %502 = icmp eq i64 %500, %501
  %503 = zext i1 %502 to i64
  %504 = select i1 %502, i32 14, i32 12
  %505 = call i32 @b43_radio_write(%struct.b43_wldev* %494, i32 %496, i32 %504)
  br label %506

506:                                              ; preds = %493, %485
  br label %507

507:                                              ; preds = %506
  %508 = load i32, i32* %18, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %18, align 4
  br label %482

510:                                              ; preds = %482
  br label %548

511:                                              ; preds = %475
  %512 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %513 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %536

515:                                              ; preds = %511
  %516 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %517 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 8
  %519 = call i64 @b43_current_band(i32 %518)
  %520 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %521 = icmp eq i64 %519, %520
  %522 = zext i1 %521 to i64
  %523 = select i1 %521, i32 12, i32 14
  store i32 %523, i32* %15, align 4
  %524 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %525 = load i32, i32* @B2056_TX0, align 4
  %526 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %527 = or i32 %525, %526
  %528 = load i32, i32* %15, align 4
  %529 = call i32 @b43_radio_write(%struct.b43_wldev* %524, i32 %527, i32 %528)
  %530 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %531 = load i32, i32* @B2056_TX1, align 4
  %532 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %533 = or i32 %531, %532
  %534 = load i32, i32* %15, align 4
  %535 = call i32 @b43_radio_write(%struct.b43_wldev* %530, i32 %533, i32 %534)
  br label %547

536:                                              ; preds = %511
  %537 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %538 = load i32, i32* @B2056_TX0, align 4
  %539 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %540 = or i32 %538, %539
  %541 = call i32 @b43_radio_write(%struct.b43_wldev* %537, i32 %540, i32 17)
  %542 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %543 = load i32, i32* @B2056_TX1, align 4
  %544 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %545 = or i32 %543, %544
  %546 = call i32 @b43_radio_write(%struct.b43_wldev* %542, i32 %545, i32 17)
  br label %547

547:                                              ; preds = %536, %515
  br label %548

548:                                              ; preds = %547, %510
  br label %549

549:                                              ; preds = %548, %458
  %550 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %551 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %550, i32 0, i32 1
  %552 = load %struct.TYPE_12__*, %struct.TYPE_12__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = icmp eq i32 %554, 11
  br i1 %555, label %563, label %556

556:                                              ; preds = %549
  %557 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %558 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %557, i32 0, i32 1
  %559 = load %struct.TYPE_12__*, %struct.TYPE_12__** %558, align 8
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = icmp eq i32 %561, 12
  br i1 %562, label %563, label %571

563:                                              ; preds = %556, %549
  %564 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %565 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %566 = call i32 @b43_maskset32(%struct.b43_wldev* %564, i32 %565, i32 -1, i32 2097152)
  %567 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %568 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %569 = call i32 @b43_read32(%struct.b43_wldev* %567, i32 %568)
  %570 = call i32 @udelay(i32 1)
  br label %571

571:                                              ; preds = %563, %556
  %572 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %573 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = icmp sge i32 %575, 7
  br i1 %576, label %577, label %588

577:                                              ; preds = %571
  %578 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %579 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %580 = load i32, i32* @B43_NPHY_TXPCTL_CMD_INIT, align 4
  %581 = xor i32 %580, -1
  %582 = call i32 @b43_phy_maskset(%struct.b43_wldev* %578, i32 %579, i32 %581, i32 25)
  %583 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %584 = load i32, i32* @B43_NPHY_TXPCTL_INIT, align 4
  %585 = load i32, i32* @B43_NPHY_TXPCTL_INIT_PIDXI1, align 4
  %586 = xor i32 %585, -1
  %587 = call i32 @b43_phy_maskset(%struct.b43_wldev* %583, i32 %584, i32 %586, i32 25)
  br label %606

588:                                              ; preds = %571
  %589 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %590 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %591 = load i32, i32* @B43_NPHY_TXPCTL_CMD_INIT, align 4
  %592 = xor i32 %591, -1
  %593 = call i32 @b43_phy_maskset(%struct.b43_wldev* %589, i32 %590, i32 %592, i32 64)
  %594 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %595 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %595, i32 0, i32 1
  %597 = load i32, i32* %596, align 4
  %598 = icmp sgt i32 %597, 1
  br i1 %598, label %599, label %605

599:                                              ; preds = %588
  %600 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %601 = load i32, i32* @B43_NPHY_TXPCTL_INIT, align 4
  %602 = load i32, i32* @B43_NPHY_TXPCTL_INIT_PIDXI1, align 4
  %603 = xor i32 %602, -1
  %604 = call i32 @b43_phy_maskset(%struct.b43_wldev* %600, i32 %601, i32 %603, i32 64)
  br label %605

605:                                              ; preds = %599, %588
  br label %606

606:                                              ; preds = %605, %577
  %607 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %608 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %607, i32 0, i32 1
  %609 = load %struct.TYPE_12__*, %struct.TYPE_12__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = icmp eq i32 %611, 11
  br i1 %612, label %620, label %613

613:                                              ; preds = %606
  %614 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %615 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %614, i32 0, i32 1
  %616 = load %struct.TYPE_12__*, %struct.TYPE_12__** %615, align 8
  %617 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = icmp eq i32 %618, 12
  br i1 %619, label %620, label %624

620:                                              ; preds = %613, %606
  %621 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %622 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %623 = call i32 @b43_maskset32(%struct.b43_wldev* %621, i32 %622, i32 -2097153, i32 0)
  br label %624

624:                                              ; preds = %620, %613
  %625 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %626 = load i32, i32* @B43_NPHY_TXPCTL_N, align 4
  %627 = load i32, i32* @B43_NPHY_TXPCTL_N_TSSID_SHIFT, align 4
  %628 = shl i32 240, %627
  %629 = load i32, i32* @B43_NPHY_TXPCTL_N_NPTIL2_SHIFT, align 4
  %630 = shl i32 3, %629
  %631 = or i32 %628, %630
  %632 = call i32 @b43_phy_write(%struct.b43_wldev* %625, i32 %626, i32 %631)
  %633 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %634 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI, align 4
  %635 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %636 = load i32, i32* %635, align 4
  %637 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI_0_SHIFT, align 4
  %638 = shl i32 %636, %637
  %639 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %640 = load i32, i32* %639, align 4
  %641 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI_1_SHIFT, align 4
  %642 = shl i32 %640, %641
  %643 = or i32 %638, %642
  %644 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI_BINF, align 4
  %645 = or i32 %643, %644
  %646 = call i32 @b43_phy_write(%struct.b43_wldev* %633, i32 %634, i32 %645)
  %647 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %648 = load i32, i32* @B43_NPHY_TXPCTL_TPWR, align 4
  %649 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %650 = load i32, i32* %649, align 4
  %651 = load i32, i32* @B43_NPHY_TXPCTL_TPWR_0_SHIFT, align 4
  %652 = shl i32 %650, %651
  %653 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* @B43_NPHY_TXPCTL_TPWR_1_SHIFT, align 4
  %656 = shl i32 %654, %655
  %657 = or i32 %652, %656
  %658 = call i32 @b43_phy_write(%struct.b43_wldev* %647, i32 %648, i32 %657)
  store i32 0, i32* %18, align 4
  br label %659

659:                                              ; preds = %732, %624
  %660 = load i32, i32* %18, align 4
  %661 = icmp slt i32 %660, 2
  br i1 %661, label %662, label %735

662:                                              ; preds = %659
  store i32 0, i32* %17, align 4
  br label %663

663:                                              ; preds = %722, %662
  %664 = load i32, i32* %17, align 4
  %665 = icmp slt i32 %664, 64
  br i1 %665, label %666, label %725

666:                                              ; preds = %663
  %667 = load i32, i32* %18, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = mul nsw i32 16, %670
  %672 = load i32, i32* %18, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %673
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* %17, align 4
  %677 = mul nsw i32 %675, %676
  %678 = add nsw i32 %671, %677
  %679 = mul nsw i32 8, %678
  store i32 %679, i32* %10, align 4
  %680 = load i32, i32* %18, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %681
  %683 = load i32, i32* %682, align 4
  %684 = load i32, i32* %17, align 4
  %685 = mul nsw i32 %683, %684
  %686 = add nsw i32 32768, %685
  store i32 %686, i32* %11, align 4
  %687 = load i32, i32* %10, align 4
  %688 = mul nsw i32 4, %687
  %689 = load i32, i32* %11, align 4
  %690 = sdiv i32 %689, 2
  %691 = add nsw i32 %688, %690
  %692 = load i32, i32* %11, align 4
  %693 = sdiv i32 %691, %692
  %694 = call i32 @max(i32 %693, i32 -8)
  store i32 %694, i32* %12, align 4
  %695 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %696 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %696, i32 0, i32 1
  %698 = load i32, i32* %697, align 4
  %699 = icmp slt i32 %698, 3
  br i1 %699, label %700, label %717

700:                                              ; preds = %666
  %701 = load i32, i32* %17, align 4
  %702 = load i32, i32* %18, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %703
  %705 = load i32, i32* %704, align 4
  %706 = sub nsw i32 31, %705
  %707 = add nsw i32 %706, 1
  %708 = icmp sle i32 %701, %707
  br i1 %708, label %709, label %717

709:                                              ; preds = %700
  %710 = load i32, i32* %12, align 4
  %711 = load i32, i32* %18, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %712
  %714 = load i32, i32* %713, align 4
  %715 = add nsw i32 %714, 1
  %716 = call i32 @max(i32 %710, i32 %715)
  store i32 %716, i32* %12, align 4
  br label %717

717:                                              ; preds = %709, %700, %666
  %718 = load i32, i32* %12, align 4
  %719 = load i32, i32* %17, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 %720
  store i32 %718, i32* %721, align 4
  br label %722

722:                                              ; preds = %717
  %723 = load i32, i32* %17, align 4
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* %17, align 4
  br label %663

725:                                              ; preds = %663
  %726 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %727 = load i32, i32* %18, align 4
  %728 = add nsw i32 26, %727
  %729 = call i32 @B43_NTAB32(i32 %728, i32 0)
  %730 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %731 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %726, i32 %729, i32 64, i32* %730)
  br label %732

732:                                              ; preds = %725
  %733 = load i32, i32* %18, align 4
  %734 = add nsw i32 %733, 1
  store i32 %734, i32* %18, align 4
  br label %659

735:                                              ; preds = %659
  %736 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %737 = call i32 @b43_nphy_tx_prepare_adjusted_power_table(%struct.b43_wldev* %736)
  %738 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %739 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %738, i32 0, i32 0
  %740 = load i64, i64* %739, align 8
  %741 = icmp ne i64 %740, 0
  br i1 %741, label %742, label %745

742:                                              ; preds = %735
  %743 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %744 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %743, i32 0)
  br label %745

745:                                              ; preds = %742, %735
  ret void
}

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_NTAB32(i32, i32) #1

declare dso_local i32 @b43_nphy_tx_prepare_adjusted_power_table(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
