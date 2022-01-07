; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_rev3_rssi_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_rev3_rssi_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32* }

@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S0 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B32S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_LUT_TRSW_UP2 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_RSSIO1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_RSSIO2 = common dso_local global i32 0, align 4
@__const.b43_nphy_rev3_rssi_cal.clip_off = private unnamed_addr constant [2 x i32] [i32 65535, i32 65535], align 4
@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_OFF = common dso_local global i32 0, align 4
@N_INTC_OVERRIDE_TRSW = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B2056_RX1 = common dso_local global i32 0, align 4
@B2056_RX0 = common dso_local global i32 0, align 4
@N_RAIL_I = common dso_local global i32 0, align 4
@N_RSSI_NB = common dso_local global i32 0, align 4
@N_RAIL_Q = common dso_local global i32 0, align 4
@B2056_RX_RSSI_MISC = common dso_local global i32 0, align 4
@B43_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_START = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_RXTX = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_RSSIMC_0I_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_Z = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_X = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0I_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_0Q_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1I_RSSI_Y = common dso_local global i32 0, align 4
@B43_NPHY_RSSIMC_1Q_RSSI_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_rev3_rssi_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rev3_rssi_cal(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca [13 x i32], align 16
  %6 = alloca [13 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [8 x [4 x i32]], align 16
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.b43_phy_n*, %struct.b43_phy_n** %29, align 8
  store %struct.b43_phy_n* %30, %struct.b43_phy_n** %3, align 8
  %31 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 0
  %32 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds i32, i32* %33, i64 1
  %36 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds i32, i32* %35, i64 1
  %38 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds i32, i32* %37, i64 1
  %40 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %39, i64 1
  %42 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  %44 = load i32, i32* @B43_NPHY_TXF_40CO_B1S0, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  %46 = load i32, i32* @B43_NPHY_TXF_40CO_B32S1, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds i32, i32* %45, i64 1
  %48 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds i32, i32* %47, i64 1
  %50 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP1, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds i32, i32* %49, i64 1
  %52 = load i32, i32* @B43_NPHY_RFCTL_LUT_TRSW_UP2, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds i32, i32* %51, i64 1
  %54 = load i32, i32* @B43_NPHY_RFCTL_RSSIO1, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds i32, i32* %53, i64 1
  %56 = load i32, i32* @B43_NPHY_RFCTL_RSSIO2, align 4
  store i32 %56, i32* %55, align 4
  %57 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_rev3_rssi_cal.clip_off to i8*), i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %58 = bitcast [8 x [4 x i32]]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %58, i8 0, i64 128, i1 false)
  %59 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 16, i1 false)
  %60 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 16, i1 false)
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %61, i32 0, i32 0)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %63, i32 7, i32 4)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %67 = call i32 @b43_nphy_read_clip_detection(%struct.b43_wldev* %65, i32* %66)
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %70 = call i32 @b43_nphy_write_clip_detection(%struct.b43_wldev* %68, i32* %69)
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %73 = call i32 @b43_phy_read(%struct.b43_wldev* %71, i32 %72)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %73, i32* %74, align 4
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %77 = call i32 @b43_phy_read(%struct.b43_wldev* %75, i32 %76)
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %20, align 4
  br label %79

79:                                               ; preds = %94, %1
  %80 = load i32, i32* %20, align 4
  %81 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 0
  %82 = call i32 @ARRAY_SIZE(i32* %81)
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %79
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @b43_phy_read(%struct.b43_wldev* %85, i32 %89)
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %92
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %20, align 4
  br label %79

97:                                               ; preds = %79
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = load i32, i32* @N_INTC_OVERRIDE_OFF, align 4
  %100 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %98, i32 %99, i32 0, i32 7)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = load i32, i32* @N_INTC_OVERRIDE_TRSW, align 4
  %103 = call i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %101, i32 %102, i32 1, i32 7)
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %104, i32 1, i32 0, i32 0, i32 0)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %106, i32 2, i32 1, i32 0, i32 0)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %108, i32 128, i32 1, i32 0, i32 0)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %111 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %110, i32 64, i32 1, i32 0, i32 0)
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @b43_current_band(i32 %114)
  %116 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %97
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %120 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %119, i32 32, i32 0, i32 0, i32 0)
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %121, i32 16, i32 1, i32 0, i32 0)
  br label %128

123:                                              ; preds = %97
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %125 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %124, i32 16, i32 0, i32 0, i32 0)
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = call i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev* %126, i32 32, i32 1, i32 0, i32 0)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = call i32 @b43_nphy_get_rx_core_state(%struct.b43_wldev* %129)
  store i32 %130, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %359, %128
  %132 = load i32, i32* %19, align 4
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %134, label %362

134:                                              ; preds = %131
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %19, align 4
  %137 = shl i32 1, %136
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %134
  br label %359

141:                                              ; preds = %134
  %142 = load i32, i32* %19, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* @B2056_RX1, align 4
  br label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @B2056_RX0, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %17, align 4
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %151 = load i32, i32* %19, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32, i32* @N_RAIL_I, align 4
  %154 = load i32, i32* @N_RSSI_NB, align 4
  %155 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %150, i32 0, i32 0, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* @N_RAIL_Q, align 4
  %160 = load i32, i32* @N_RSSI_NB, align 4
  %161 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %156, i32 0, i32 0, i32 %158, i32 %159, i32 %160)
  store i32 0, i32* %22, align 4
  br label %162

162:                                              ; preds = %180, %148
  %163 = load i32, i32* %22, align 4
  %164 = icmp slt i32 %163, 8
  br i1 %164, label %165, label %183

165:                                              ; preds = %162
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %22, align 4
  %171 = shl i32 %170, 2
  %172 = call i32 @b43_radio_maskset(%struct.b43_wldev* %166, i32 %169, i32 227, i32 %171)
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %174 = load i32, i32* @N_RSSI_NB, align 4
  %175 = load i32, i32* %22, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %12, i64 0, i64 %176
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %177, i64 0, i64 0
  %179 = call i32 @b43_nphy_poll_rssi(%struct.b43_wldev* %173, i32 %174, i32* %178, i32 8)
  br label %180

180:                                              ; preds = %165
  %181 = load i32, i32* %22, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %22, align 4
  br label %162

183:                                              ; preds = %162
  store i32 0, i32* %20, align 4
  br label %184

184:                                              ; preds = %264, %183
  %185 = load i32, i32* %20, align 4
  %186 = icmp slt i32 %185, 4
  br i1 %186, label %187, label %267

187:                                              ; preds = %184
  store i32 1048576, i32* %24, align 4
  store i32 249, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %188 = load i32, i32* %19, align 4
  %189 = mul nsw i32 2, %188
  %190 = load i32, i32* %20, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %264

193:                                              ; preds = %187
  store i32 0, i32* %22, align 4
  br label %194

194:                                              ; preds = %255, %193
  %195 = load i32, i32* %22, align 4
  %196 = icmp slt i32 %195, 8
  br i1 %196, label %197, label %258

197:                                              ; preds = %194
  %198 = load i32, i32* %22, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %12, i64 0, i64 %199
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %200, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %22, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %12, i64 0, i64 %206
  %208 = load i32, i32* %20, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %207, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %204, %211
  %213 = load i32, i32* %22, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %12, i64 0, i64 %214
  %216 = load i32, i32* %20, align 4
  %217 = add nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [4 x i32], [4 x i32]* %215, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %22, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %12, i64 0, i64 %222
  %224 = load i32, i32* %20, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %223, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %220, %227
  %229 = add nsw i32 %212, %228
  store i32 %229, i32* %23, align 4
  %230 = load i32, i32* %23, align 4
  %231 = load i32, i32* %24, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %197
  %234 = load i32, i32* %23, align 4
  store i32 %234, i32* %24, align 4
  %235 = load i32, i32* %22, align 4
  store i32 %235, i32* %26, align 4
  br label %236

236:                                              ; preds = %233, %197
  %237 = load i32, i32* %22, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %12, i64 0, i64 %238
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %239, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %25, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %254

246:                                              ; preds = %236
  %247 = load i32, i32* %22, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %12, i64 0, i64 %248
  %250 = load i32, i32* %20, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %249, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %25, align 4
  br label %254

254:                                              ; preds = %246, %236
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %22, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %22, align 4
  br label %194

258:                                              ; preds = %194
  %259 = load i32, i32* %26, align 4
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %25, align 4
  %261 = load i32, i32* %20, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %262
  store i32 %260, i32* %263, align 4
  br label %264

264:                                              ; preds = %258, %192
  %265 = load i32, i32* %20, align 4
  %266 = add nsw i32 %265, 2
  store i32 %266, i32* %20, align 4
  br label %184

267:                                              ; preds = %184
  %268 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* %10, align 4
  %273 = shl i32 %272, 2
  %274 = call i32 @b43_radio_maskset(%struct.b43_wldev* %268, i32 %271, i32 227, i32 %273)
  store i32 0, i32* %20, align 4
  br label %275

275:                                              ; preds = %355, %267
  %276 = load i32, i32* %20, align 4
  %277 = icmp slt i32 %276, 4
  br i1 %277, label %278, label %358

278:                                              ; preds = %275
  %279 = load i32, i32* %19, align 4
  %280 = load i32, i32* %20, align 4
  %281 = sdiv i32 %280, 2
  %282 = icmp ne i32 %279, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %355

284:                                              ; preds = %278
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [8 x [4 x i32]], [8 x [4 x i32]]* %12, i64 0, i64 %286
  %288 = load i32, i32* %20, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [4 x i32], [4 x i32]* %287, i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 0, %291
  %293 = load i32, i32* %20, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %294
  store i32 %292, i32* %295, align 4
  %296 = load i32, i32* %20, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %313

301:                                              ; preds = %284
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @abs(i32 %305) #4
  %307 = add nsw i32 %306, 4
  %308 = sdiv i32 %307, 8
  %309 = sub nsw i32 0, %308
  %310 = load i32, i32* %20, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %311
  store i32 %309, i32* %312, align 4
  br label %323

313:                                              ; preds = %284
  %314 = load i32, i32* %20, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 4
  %319 = sdiv i32 %318, 8
  %320 = load i32, i32* %20, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %321
  store i32 %319, i32* %322, align 4
  br label %323

323:                                              ; preds = %313, %301
  %324 = load i32, i32* %20, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 248
  br i1 %328, label %329, label %333

329:                                              ; preds = %323
  %330 = load i32, i32* %20, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %331
  store i32 -32, i32* %332, align 4
  br label %333

333:                                              ; preds = %329, %323
  %334 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %335 = load i32, i32* %20, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %20, align 4
  %340 = sdiv i32 %339, 2
  %341 = icmp eq i32 %340, 0
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i32 1, i32 2
  %344 = load i32, i32* %20, align 4
  %345 = srem i32 %344, 2
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %333
  %348 = load i32, i32* @N_RAIL_I, align 4
  br label %351

349:                                              ; preds = %333
  %350 = load i32, i32* @N_RAIL_Q, align 4
  br label %351

351:                                              ; preds = %349, %347
  %352 = phi i32 [ %348, %347 ], [ %350, %349 ]
  %353 = load i32, i32* @N_RSSI_NB, align 4
  %354 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %334, i32 0, i32 %338, i32 %343, i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %351, %283
  %356 = load i32, i32* %20, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %20, align 4
  br label %275

358:                                              ; preds = %275
  br label %359

359:                                              ; preds = %358, %140
  %360 = load i32, i32* %19, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %19, align 4
  br label %131

362:                                              ; preds = %131
  store i32 0, i32* %19, align 4
  br label %363

363:                                              ; preds = %460, %362
  %364 = load i32, i32* %19, align 4
  %365 = icmp slt i32 %364, 2
  br i1 %365, label %366, label %463

366:                                              ; preds = %363
  %367 = load i32, i32* %18, align 4
  %368 = load i32, i32* %19, align 4
  %369 = shl i32 1, %368
  %370 = and i32 %367, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %366
  br label %460

373:                                              ; preds = %366
  store i32 0, i32* %20, align 4
  br label %374

374:                                              ; preds = %456, %373
  %375 = load i32, i32* %20, align 4
  %376 = icmp slt i32 %375, 2
  br i1 %376, label %377, label %459

377:                                              ; preds = %374
  %378 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %379 = load i32, i32* %19, align 4
  %380 = add nsw i32 %379, 1
  %381 = load i32, i32* @N_RAIL_I, align 4
  %382 = load i32, i32* %20, align 4
  %383 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %378, i32 0, i32 0, i32 %380, i32 %381, i32 %382)
  %384 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %385 = load i32, i32* %19, align 4
  %386 = add nsw i32 %385, 1
  %387 = load i32, i32* @N_RAIL_Q, align 4
  %388 = load i32, i32* %20, align 4
  %389 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %384, i32 0, i32 0, i32 %386, i32 %387, i32 %388)
  %390 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %391 = load i32, i32* %20, align 4
  %392 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %393 = call i32 @b43_nphy_poll_rssi(%struct.b43_wldev* %390, i32 %391, i32* %392, i32 8)
  store i32 0, i32* %21, align 4
  br label %394

394:                                              ; preds = %452, %377
  %395 = load i32, i32* %21, align 4
  %396 = icmp slt i32 %395, 4
  br i1 %396, label %397, label %455

397:                                              ; preds = %394
  %398 = load i32, i32* %21, align 4
  %399 = sdiv i32 %398, 2
  %400 = load i32, i32* %19, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %451

402:                                              ; preds = %397
  %403 = load i32, i32* %21, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = sub nsw i32 232, %406
  %408 = load i32, i32* %21, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %409
  store i32 %407, i32* %410, align 4
  %411 = load i32, i32* %21, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %428

416:                                              ; preds = %402
  %417 = load i32, i32* %21, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = add nsw i32 %420, 4
  %422 = call i32 @abs(i32 %421) #4
  %423 = sdiv i32 %422, 8
  %424 = sub nsw i32 0, %423
  %425 = load i32, i32* %21, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %426
  store i32 %424, i32* %427, align 4
  br label %438

428:                                              ; preds = %402
  %429 = load i32, i32* %21, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = add nsw i32 %432, 4
  %434 = sdiv i32 %433, 8
  %435 = load i32, i32* %21, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %436
  store i32 %434, i32* %437, align 4
  br label %438

438:                                              ; preds = %428, %416
  %439 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %440 = load i32, i32* %19, align 4
  %441 = mul nsw i32 2, %440
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* %19, align 4
  %446 = add nsw i32 %445, 1
  %447 = load i32, i32* %21, align 4
  %448 = srem i32 %447, 2
  %449 = load i32, i32* %20, align 4
  %450 = call i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev* %439, i32 0, i32 %444, i32 %446, i32 %448, i32 %449)
  br label %451

451:                                              ; preds = %438, %397
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %21, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %21, align 4
  br label %394

455:                                              ; preds = %394
  br label %456

456:                                              ; preds = %455
  %457 = load i32, i32* %20, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %20, align 4
  br label %374

459:                                              ; preds = %374
  br label %460

460:                                              ; preds = %459, %372
  %461 = load i32, i32* %19, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %19, align 4
  br label %363

463:                                              ; preds = %363
  %464 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %465 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %466 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @b43_phy_write(%struct.b43_wldev* %464, i32 %465, i32 %467)
  %469 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %470 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %471 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %472 = load i32, i32* %471, align 4
  %473 = call i32 @b43_phy_write(%struct.b43_wldev* %469, i32 %470, i32 %472)
  %474 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %475 = load i32, i32* @B43_RFSEQ_RESET2RX, align 4
  %476 = call i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev* %474, i32 %475)
  %477 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %478 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %479 = call i32 @b43_phy_set(%struct.b43_wldev* %477, i32 %478, i32 1)
  %480 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %481 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %482 = load i32, i32* @B43_NPHY_RFCTL_CMD_START, align 4
  %483 = call i32 @b43_phy_set(%struct.b43_wldev* %480, i32 %481, i32 %482)
  %484 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %485 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %486 = call i32 @b43_phy_mask(%struct.b43_wldev* %484, i32 %485, i32 -2)
  %487 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %488 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %489 = call i32 @b43_phy_set(%struct.b43_wldev* %487, i32 %488, i32 1)
  %490 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %491 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %492 = load i32, i32* @B43_NPHY_RFCTL_CMD_RXTX, align 4
  %493 = call i32 @b43_phy_set(%struct.b43_wldev* %490, i32 %491, i32 %492)
  %494 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %495 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %496 = call i32 @b43_phy_mask(%struct.b43_wldev* %494, i32 %495, i32 -2)
  store i32 0, i32* %20, align 4
  br label %497

497:                                              ; preds = %513, %463
  %498 = load i32, i32* %20, align 4
  %499 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 0
  %500 = call i32 @ARRAY_SIZE(i32* %499)
  %501 = icmp slt i32 %498, %500
  br i1 %501, label %502, label %516

502:                                              ; preds = %497
  %503 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %504 = load i32, i32* %20, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [13 x i32], [13 x i32]* %6, i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* %20, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @b43_phy_write(%struct.b43_wldev* %503, i32 %507, i32 %511)
  br label %513

513:                                              ; preds = %502
  %514 = load i32, i32* %20, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %20, align 4
  br label %497

516:                                              ; preds = %497
  %517 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %518 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 8
  %520 = call i64 @b43_current_band(i32 %519)
  %521 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %523, label %532

523:                                              ; preds = %516
  %524 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %525 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 0
  %527 = load i32*, i32** %526, align 8
  store i32* %527, i32** %15, align 8
  %528 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %529 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %528, i32 0, i32 2
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i32 0, i32 1
  %531 = load i32*, i32** %530, align 8
  store i32* %531, i32** %16, align 8
  br label %541

532:                                              ; preds = %516
  %533 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %534 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %533, i32 0, i32 2
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %534, i32 0, i32 2
  %536 = load i32*, i32** %535, align 8
  store i32* %536, i32** %15, align 8
  %537 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %538 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %538, i32 0, i32 3
  %540 = load i32*, i32** %539, align 8
  store i32* %540, i32** %16, align 8
  br label %541

541:                                              ; preds = %532, %523
  %542 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %543 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = icmp sge i32 %545, 7
  br i1 %546, label %547, label %548

547:                                              ; preds = %541
  br label %563

548:                                              ; preds = %541
  %549 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %550 = load i32, i32* @B2056_RX0, align 4
  %551 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %552 = or i32 %550, %551
  %553 = call i32 @b43_radio_read(%struct.b43_wldev* %549, i32 %552)
  %554 = load i32*, i32** %15, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 0
  store i32 %553, i32* %555, align 4
  %556 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %557 = load i32, i32* @B2056_RX1, align 4
  %558 = load i32, i32* @B2056_RX_RSSI_MISC, align 4
  %559 = or i32 %557, %558
  %560 = call i32 @b43_radio_read(%struct.b43_wldev* %556, i32 %559)
  %561 = load i32*, i32** %15, align 8
  %562 = getelementptr inbounds i32, i32* %561, i64 1
  store i32 %560, i32* %562, align 4
  br label %563

563:                                              ; preds = %548, %547
  %564 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %565 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_Z, align 4
  %566 = call i32 @b43_phy_read(%struct.b43_wldev* %564, i32 %565)
  %567 = load i32*, i32** %16, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 0
  store i32 %566, i32* %568, align 4
  %569 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %570 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_Z, align 4
  %571 = call i32 @b43_phy_read(%struct.b43_wldev* %569, i32 %570)
  %572 = load i32*, i32** %16, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 1
  store i32 %571, i32* %573, align 4
  %574 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %575 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_Z, align 4
  %576 = call i32 @b43_phy_read(%struct.b43_wldev* %574, i32 %575)
  %577 = load i32*, i32** %16, align 8
  %578 = getelementptr inbounds i32, i32* %577, i64 2
  store i32 %576, i32* %578, align 4
  %579 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %580 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_Z, align 4
  %581 = call i32 @b43_phy_read(%struct.b43_wldev* %579, i32 %580)
  %582 = load i32*, i32** %16, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 3
  store i32 %581, i32* %583, align 4
  %584 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %585 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_X, align 4
  %586 = call i32 @b43_phy_read(%struct.b43_wldev* %584, i32 %585)
  %587 = load i32*, i32** %16, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 4
  store i32 %586, i32* %588, align 4
  %589 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %590 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_X, align 4
  %591 = call i32 @b43_phy_read(%struct.b43_wldev* %589, i32 %590)
  %592 = load i32*, i32** %16, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 5
  store i32 %591, i32* %593, align 4
  %594 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %595 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_X, align 4
  %596 = call i32 @b43_phy_read(%struct.b43_wldev* %594, i32 %595)
  %597 = load i32*, i32** %16, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 6
  store i32 %596, i32* %598, align 4
  %599 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %600 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_X, align 4
  %601 = call i32 @b43_phy_read(%struct.b43_wldev* %599, i32 %600)
  %602 = load i32*, i32** %16, align 8
  %603 = getelementptr inbounds i32, i32* %602, i64 7
  store i32 %601, i32* %603, align 4
  %604 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %605 = load i32, i32* @B43_NPHY_RSSIMC_0I_RSSI_Y, align 4
  %606 = call i32 @b43_phy_read(%struct.b43_wldev* %604, i32 %605)
  %607 = load i32*, i32** %16, align 8
  %608 = getelementptr inbounds i32, i32* %607, i64 8
  store i32 %606, i32* %608, align 4
  %609 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %610 = load i32, i32* @B43_NPHY_RSSIMC_0Q_RSSI_Y, align 4
  %611 = call i32 @b43_phy_read(%struct.b43_wldev* %609, i32 %610)
  %612 = load i32*, i32** %16, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 9
  store i32 %611, i32* %613, align 4
  %614 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %615 = load i32, i32* @B43_NPHY_RSSIMC_1I_RSSI_Y, align 4
  %616 = call i32 @b43_phy_read(%struct.b43_wldev* %614, i32 %615)
  %617 = load i32*, i32** %16, align 8
  %618 = getelementptr inbounds i32, i32* %617, i64 10
  store i32 %616, i32* %618, align 4
  %619 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %620 = load i32, i32* @B43_NPHY_RSSIMC_1Q_RSSI_Y, align 4
  %621 = call i32 @b43_phy_read(%struct.b43_wldev* %619, i32 %620)
  %622 = load i32*, i32** %16, align 8
  %623 = getelementptr inbounds i32, i32* %622, i64 11
  store i32 %621, i32* %623, align 4
  %624 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %625 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 8
  %627 = call i64 @b43_current_band(i32 %626)
  %628 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %629 = icmp eq i64 %627, %628
  br i1 %629, label %630, label %638

630:                                              ; preds = %563
  %631 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %632 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %636 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %635, i32 0, i32 1
  %637 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %636, i32 0, i32 0
  store i32 %634, i32* %637, align 4
  br label %646

638:                                              ; preds = %563
  %639 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %640 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %639, i32 0, i32 0
  %641 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %640, i32 0, i32 1
  %642 = load i32, i32* %641, align 4
  %643 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %644 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %644, i32 0, i32 0
  store i32 %642, i32* %645, align 8
  br label %646

646:                                              ; preds = %638, %630
  %647 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %648 = load i32, i32* %7, align 4
  %649 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %647, i32 7, i32 %648)
  %650 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %651 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %652 = call i32 @b43_nphy_write_clip_detection(%struct.b43_wldev* %650, i32* %651)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43_nphy_classifier(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_read_clip_detection(%struct.b43_wldev*, i32*) #2

declare dso_local i32 @b43_nphy_write_clip_detection(%struct.b43_wldev*, i32*) #2

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_override(%struct.b43_wldev*, i32, i32, i32, i32) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @b43_nphy_get_rx_core_state(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_scale_offset_rssi(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_poll_rssi(%struct.b43_wldev*, i32, i32*, i32) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
