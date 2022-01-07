; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_cal_tx_iq_lo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_cal_tx_iq_lo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32, i64*, i32, i64*, i64, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nphy_txgains = type { i32 }
%struct.nphy_iqcal_params = type { i64, i32* }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@tbl_tx_iqlo_cal_loft_ladder_40 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_iqimb_ladder_40 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_loft_ladder_20 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_iqimb_ladder_20 = common dso_local global i64* null, align 8
@B43_NPHY_IQLOCAL_CMDGCTL = common dso_local global i32 0, align 4
@tbl_tx_iqlo_cal_startcoefs_nphyrev3 = common dso_local global i64* null, align 8
@B43_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3 = common dso_local global i32 0, align 4
@tbl_tx_iqlo_cal_startcoefs = common dso_local global i64* null, align 8
@B43_NTAB_TX_IQLO_CAL_STARTCOEFS = common dso_local global i32 0, align 4
@B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3 = common dso_local global i64 0, align 8
@B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL = common dso_local global i64 0, align 8
@B43_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3 = common dso_local global i64 0, align 8
@B43_NTAB_TX_IQLO_CAL_CMDS_RECAL = common dso_local global i64 0, align 8
@tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_cmds_fullcal = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_cmds_recal_nphyrev3 = common dso_local global i64* null, align 8
@tbl_tx_iqlo_cal_cmds_recal = common dso_local global i64* null, align 8
@B43_NPHY_IQLOCAL_CMDNNUM = common dso_local global i32 0, align 4
@B43_NPHY_IQLOCAL_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32, i32, i32)* @b43_nphy_cal_tx_iq_lo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_cal_tx_iq_lo(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nphy_txgains, align 4
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_phy_n*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca [11 x i64], align 16
  %26 = alloca i64, align 8
  %27 = alloca [2 x i64], align 16
  %28 = alloca [2 x i64], align 16
  %29 = alloca [2 x %struct.nphy_iqcal_params], align 16
  %30 = alloca [2 x i32], align 4
  %31 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %5, i32 0, i32 0
  store i32 %1, i32* %31, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %33 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load %struct.b43_phy_n*, %struct.b43_phy_n** %34, align 8
  store %struct.b43_phy_n* %35, %struct.b43_phy_n** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %21, align 8
  store i64 0, i64* %26, align 8
  %36 = bitcast [2 x i32]* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 8, i1 false)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %38 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %37, i32 1)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %40 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 4
  br i1 %43, label %44, label %50

44:                                               ; preds = %4
  %45 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %46 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %13, align 4
  %48 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %49 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %44, %4
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %52 = call i32 @B43_NTAB16(i32 7, i32 272)
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %27, i64 0, i64 0
  %54 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %51, i32 %52, i32 2, i64* %53)
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %75, %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x %struct.nphy_iqcal_params], [2 x %struct.nphy_iqcal_params]* %29, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @b43_nphy_iq_cal_gain_params(%struct.b43_wldev* %59, i32 %60, i32 %65, %struct.nphy_iqcal_params* %63)
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x %struct.nphy_iqcal_params], [2 x %struct.nphy_iqcal_params]* %29, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 16
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 %73
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %55

78:                                               ; preds = %55
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %80 = call i32 @B43_NTAB16(i32 7, i32 272)
  %81 = getelementptr inbounds [2 x i64], [2 x i64]* %28, i64 0, i64 0
  %82 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %79, i32 %80, i32 2, i64* %81)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %84 = call i32 @b43_nphy_tx_cal_radio_setup(%struct.b43_wldev* %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %86 = call i32 @b43_nphy_tx_cal_phy_setup(%struct.b43_wldev* %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %88 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %90, 6
  br i1 %91, label %112, label %92

92:                                               ; preds = %78
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %94 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 5
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %100 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %105 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @b43_current_band(i32 %106)
  %108 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %109 = icmp eq i64 %107, %108
  br label %110

110:                                              ; preds = %103, %98, %92
  %111 = phi i1 [ false, %98 ], [ false, %92 ], [ %109, %103 ]
  br label %112

112:                                              ; preds = %110, %78
  %113 = phi i1 [ true, %78 ], [ %111, %110 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %24, align 4
  %115 = load i32, i32* %24, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %142

117:                                              ; preds = %112
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %119 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %125 = call i32 @B43_NTAB16(i32 15, i32 0)
  %126 = load i64*, i64** @tbl_tx_iqlo_cal_loft_ladder_40, align 8
  %127 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %124, i32 %125, i32 18, i64* %126)
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %129 = call i32 @B43_NTAB16(i32 15, i32 32)
  %130 = load i64*, i64** @tbl_tx_iqlo_cal_iqimb_ladder_40, align 8
  %131 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %128, i32 %129, i32 18, i64* %130)
  br label %141

132:                                              ; preds = %117
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %134 = call i32 @B43_NTAB16(i32 15, i32 0)
  %135 = load i64*, i64** @tbl_tx_iqlo_cal_loft_ladder_20, align 8
  %136 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %133, i32 %134, i32 18, i64* %135)
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %138 = call i32 @B43_NTAB16(i32 15, i32 32)
  %139 = load i64*, i64** @tbl_tx_iqlo_cal_iqimb_ladder_20, align 8
  %140 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %137, i32 %138, i32 18, i64* %139)
  br label %141

141:                                              ; preds = %132, %123
  br label %142

142:                                              ; preds = %141, %112
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %144 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %145 = call i32 @b43_phy_write(%struct.b43_wldev* %143, i32 %144, i64 35497)
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %147 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %142
  store i32 2500, i32* %12, align 4
  br label %153

152:                                              ; preds = %142
  store i32 5000, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %151
  %154 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %155 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 2
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %160 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %161 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 40, i32 20
  %167 = mul nsw i32 %166, 8
  %168 = call i32 @b43_nphy_run_samples(%struct.b43_wldev* %159, i32 %167, i32 65535, i32 0, i32 1, i32 0)
  br label %173

169:                                              ; preds = %153
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @b43_nphy_tx_tone(%struct.b43_wldev* %170, i32 %171, i32 250, i32 1, i32 0)
  store i32 %172, i32* %11, align 4
  br label %173

173:                                              ; preds = %169, %158
  %174 = load i32, i32* %11, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %547

176:                                              ; preds = %173
  %177 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %178 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %179, 2
  br i1 %180, label %181, label %194

181:                                              ; preds = %176
  %182 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %183 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %182, i32 0, i32 2
  %184 = load i64*, i64** %183, align 8
  store i64* %184, i64** %23, align 8
  store i32 11, i32* %14, align 4
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %186 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %188, 3
  br i1 %189, label %190, label %193

190:                                              ; preds = %181
  %191 = load i32, i32* %14, align 4
  %192 = sub nsw i32 %191, 2
  store i32 %192, i32* %14, align 4
  br label %193

193:                                              ; preds = %190, %181
  br label %229

194:                                              ; preds = %176
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %215, label %197

197:                                              ; preds = %194
  %198 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %199 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %204 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %203, i32 0, i32 4
  %205 = load i64*, i64** %204, align 8
  store i64* %205, i64** %23, align 8
  store i32 11, i32* %14, align 4
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %207 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %209, 3
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = load i32, i32* %14, align 4
  %213 = sub nsw i32 %212, 2
  store i32 %213, i32* %14, align 4
  br label %214

214:                                              ; preds = %211, %202
  br label %228

215:                                              ; preds = %197, %194
  store i32 1, i32* %7, align 4
  %216 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %217 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp sge i32 %219, 3
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load i64*, i64** @tbl_tx_iqlo_cal_startcoefs_nphyrev3, align 8
  store i64* %222, i64** %23, align 8
  %223 = load i32, i32* @B43_NTAB_TX_IQLO_CAL_STARTCOEFS_REV3, align 4
  store i32 %223, i32* %14, align 4
  br label %227

224:                                              ; preds = %215
  %225 = load i64*, i64** @tbl_tx_iqlo_cal_startcoefs, align 8
  store i64* %225, i64** %23, align 8
  %226 = load i32, i32* @B43_NTAB_TX_IQLO_CAL_STARTCOEFS, align 4
  store i32 %226, i32* %14, align 4
  br label %227

227:                                              ; preds = %224, %221
  br label %228

228:                                              ; preds = %227, %214
  br label %229

229:                                              ; preds = %228, %193
  %230 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %231 = call i32 @B43_NTAB16(i32 15, i32 64)
  %232 = load i32, i32* %14, align 4
  %233 = load i64*, i64** %23, align 8
  %234 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %230, i32 %231, i32 %232, i64* %233)
  %235 = load i32, i32* %7, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %229
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %239 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp sge i32 %241, 3
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i64, i64* @B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL_REV3, align 8
  store i64 %244, i64* %19, align 8
  br label %247

245:                                              ; preds = %237
  %246 = load i64, i64* @B43_NTAB_TX_IQLO_CAL_CMDS_FULLCAL, align 8
  store i64 %246, i64* %19, align 8
  br label %247

247:                                              ; preds = %245, %243
  br label %259

248:                                              ; preds = %229
  %249 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %250 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp sge i32 %252, 3
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = load i64, i64* @B43_NTAB_TX_IQLO_CAL_CMDS_RECAL_REV3, align 8
  store i64 %255, i64* %19, align 8
  br label %258

256:                                              ; preds = %248
  %257 = load i64, i64* @B43_NTAB_TX_IQLO_CAL_CMDS_RECAL, align 8
  store i64 %257, i64* %19, align 8
  br label %258

258:                                              ; preds = %256, %254
  br label %259

259:                                              ; preds = %258, %247
  %260 = load i32, i32* %8, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %273

262:                                              ; preds = %259
  %263 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %264 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %18, align 8
  %266 = load i64, i64* %19, align 8
  %267 = load i64, i64* %18, align 8
  %268 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %269 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %268, i32 0, i32 7
  %270 = load i64, i64* %269, align 8
  %271 = add i64 %267, %270
  %272 = call i64 @min(i64 %266, i64 %271)
  store i64 %272, i64* %20, align 8
  br label %275

273:                                              ; preds = %259
  store i64 0, i64* %18, align 8
  %274 = load i64, i64* %19, align 8
  store i64 %274, i64* %20, align 8
  br label %275

275:                                              ; preds = %273, %262
  br label %276

276:                                              ; preds = %421, %275
  %277 = load i64, i64* %18, align 8
  %278 = load i64, i64* %20, align 8
  %279 = icmp ult i64 %277, %278
  br i1 %279, label %280, label %424

280:                                              ; preds = %276
  %281 = load i32, i32* %7, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %300

283:                                              ; preds = %280
  %284 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %285 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp sge i32 %287, 3
  br i1 %288, label %289, label %294

289:                                              ; preds = %283
  %290 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_fullcal_nphyrev3, align 8
  %291 = load i64, i64* %18, align 8
  %292 = getelementptr inbounds i64, i64* %290, i64 %291
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %22, align 8
  br label %299

294:                                              ; preds = %283
  %295 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_fullcal, align 8
  %296 = load i64, i64* %18, align 8
  %297 = getelementptr inbounds i64, i64* %295, i64 %296
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %22, align 8
  br label %299

299:                                              ; preds = %294, %289
  br label %317

300:                                              ; preds = %280
  %301 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %302 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp sge i32 %304, 3
  br i1 %305, label %306, label %311

306:                                              ; preds = %300
  %307 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_recal_nphyrev3, align 8
  %308 = load i64, i64* %18, align 8
  %309 = getelementptr inbounds i64, i64* %307, i64 %308
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %22, align 8
  br label %316

311:                                              ; preds = %300
  %312 = load i64*, i64** @tbl_tx_iqlo_cal_cmds_recal, align 8
  %313 = load i64, i64* %18, align 8
  %314 = getelementptr inbounds i64, i64* %312, i64 %313
  %315 = load i64, i64* %314, align 8
  store i64 %315, i64* %22, align 8
  br label %316

316:                                              ; preds = %311, %306
  br label %317

317:                                              ; preds = %316, %299
  %318 = load i64, i64* %22, align 8
  %319 = and i64 %318, 12288
  %320 = lshr i64 %319, 12
  store i64 %320, i64* %16, align 8
  %321 = load i64, i64* %22, align 8
  %322 = and i64 %321, 3840
  %323 = lshr i64 %322, 8
  store i64 %323, i64* %17, align 8
  %324 = load i32, i32* %24, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %337

326:                                              ; preds = %317
  %327 = load i64, i64* %16, align 8
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %326
  %332 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %333 = load i64, i64* %16, align 8
  %334 = call i32 @b43_nphy_update_tx_cal_ladder(%struct.b43_wldev* %332, i64 %333)
  %335 = load i64, i64* %16, align 8
  %336 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 %335
  store i32 1, i32* %336, align 4
  br label %337

337:                                              ; preds = %331, %326, %317
  %338 = load i64, i64* %16, align 8
  %339 = getelementptr inbounds [2 x %struct.nphy_iqcal_params], [2 x %struct.nphy_iqcal_params]* %29, i64 0, i64 %338
  %340 = getelementptr inbounds %struct.nphy_iqcal_params, %struct.nphy_iqcal_params* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load i64, i64* %17, align 8
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = shl i32 %344, 8
  %346 = or i32 %345, 102
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %15, align 8
  %348 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %349 = load i32, i32* @B43_NPHY_IQLOCAL_CMDNNUM, align 4
  %350 = load i64, i64* %15, align 8
  %351 = call i32 @b43_phy_write(%struct.b43_wldev* %348, i32 %349, i64 %350)
  %352 = load i64, i64* %17, align 8
  %353 = icmp eq i64 %352, 1
  br i1 %353, label %360, label %354

354:                                              ; preds = %337
  %355 = load i64, i64* %17, align 8
  %356 = icmp eq i64 %355, 3
  br i1 %356, label %360, label %357

357:                                              ; preds = %354
  %358 = load i64, i64* %17, align 8
  %359 = icmp eq i64 %358, 4
  br i1 %359, label %360, label %377

360:                                              ; preds = %357, %354, %337
  %361 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %362 = load i64, i64* %16, align 8
  %363 = add i64 69, %362
  %364 = trunc i64 %363 to i32
  %365 = call i32 @B43_NTAB16(i32 15, i32 %364)
  %366 = call i64 @b43_ntab_read(%struct.b43_wldev* %361, i32 %365)
  %367 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  store i64 %366, i64* %367, align 16
  %368 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  %369 = load i64, i64* %368, align 16
  store i64 %369, i64* %26, align 8
  %370 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  store i64 0, i64* %370, align 16
  %371 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %372 = load i64, i64* %16, align 8
  %373 = add i64 69, %372
  %374 = trunc i64 %373 to i32
  %375 = call i32 @B43_NTAB16(i32 15, i32 %374)
  %376 = call i32 @b43_ntab_write(%struct.b43_wldev* %371, i32 %375, i32 0)
  br label %377

377:                                              ; preds = %360, %357
  %378 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %379 = load i32, i32* @B43_NPHY_IQLOCAL_CMD, align 4
  %380 = load i64, i64* %22, align 8
  %381 = call i32 @b43_phy_write(%struct.b43_wldev* %378, i32 %379, i64 %380)
  store i32 0, i32* %10, align 4
  br label %382

382:                                              ; preds = %395, %377
  %383 = load i32, i32* %10, align 4
  %384 = icmp slt i32 %383, 2000
  br i1 %384, label %385, label %398

385:                                              ; preds = %382
  %386 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %387 = load i32, i32* @B43_NPHY_IQLOCAL_CMD, align 4
  %388 = call i64 @b43_phy_read(%struct.b43_wldev* %386, i32 %387)
  store i64 %388, i64* %15, align 8
  %389 = load i64, i64* %15, align 8
  %390 = and i64 %389, 49152
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %385
  br label %398

393:                                              ; preds = %385
  %394 = call i32 @udelay(i32 10)
  br label %395

395:                                              ; preds = %393
  %396 = load i32, i32* %10, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %10, align 4
  br label %382

398:                                              ; preds = %392, %382
  %399 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %400 = call i32 @B43_NTAB16(i32 15, i32 96)
  %401 = load i32, i32* %14, align 4
  %402 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  %403 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %399, i32 %400, i32 %401, i64* %402)
  %404 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %405 = call i32 @B43_NTAB16(i32 15, i32 64)
  %406 = load i32, i32* %14, align 4
  %407 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  %408 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %404, i32 %405, i32 %406, i64* %407)
  %409 = load i64, i64* %17, align 8
  %410 = icmp eq i64 %409, 1
  br i1 %410, label %417, label %411

411:                                              ; preds = %398
  %412 = load i64, i64* %17, align 8
  %413 = icmp eq i64 %412, 3
  br i1 %413, label %417, label %414

414:                                              ; preds = %411
  %415 = load i64, i64* %17, align 8
  %416 = icmp eq i64 %415, 4
  br i1 %416, label %417, label %420

417:                                              ; preds = %414, %411, %398
  %418 = load i64, i64* %26, align 8
  %419 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  store i64 %418, i64* %419, align 16
  br label %420

420:                                              ; preds = %417, %414
  br label %421

421:                                              ; preds = %420
  %422 = load i64, i64* %18, align 8
  %423 = add i64 %422, 1
  store i64 %423, i64* %18, align 8
  br label %276

424:                                              ; preds = %276
  %425 = load i32, i32* %8, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %438

427:                                              ; preds = %424
  %428 = load i64, i64* %20, align 8
  %429 = load i64, i64* %19, align 8
  %430 = icmp uge i64 %428, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %427
  br label %434

432:                                              ; preds = %427
  %433 = load i64, i64* %20, align 8
  br label %434

434:                                              ; preds = %432, %431
  %435 = phi i64 [ 0, %431 ], [ %433, %432 ]
  %436 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %437 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %436, i32 0, i32 5
  store i64 %435, i64* %437, align 8
  br label %438

438:                                              ; preds = %434, %424
  %439 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %440 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = icmp slt i32 %442, 3
  %444 = zext i1 %443 to i64
  %445 = select i1 %443, i32 6, i32 7
  %446 = sext i32 %445 to i64
  store i64 %446, i64* %21, align 8
  %447 = load i32, i32* %8, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %456

449:                                              ; preds = %438
  %450 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %451 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = sext i32 %452 to i64
  %454 = load i64, i64* %21, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %456, label %524

456:                                              ; preds = %449, %438
  %457 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %458 = call i32 @B43_NTAB16(i32 15, i32 96)
  %459 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  %460 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %457, i32 %458, i32 4, i64* %459)
  %461 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %462 = call i32 @B43_NTAB16(i32 15, i32 80)
  %463 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  %464 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %461, i32 %462, i32 4, i64* %463)
  %465 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %466 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = icmp slt i32 %468, 3
  br i1 %469, label %470, label %475

470:                                              ; preds = %456
  %471 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  store i64 0, i64* %471, align 16
  %472 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 1
  store i64 0, i64* %472, align 8
  %473 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 2
  store i64 0, i64* %473, align 16
  %474 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 3
  store i64 0, i64* %474, align 8
  br label %475

475:                                              ; preds = %470, %456
  %476 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %477 = call i32 @B43_NTAB16(i32 15, i32 88)
  %478 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  %479 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %476, i32 %477, i32 4, i64* %478)
  %480 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %481 = call i32 @B43_NTAB16(i32 15, i32 101)
  %482 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  %483 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %480, i32 %481, i32 2, i64* %482)
  %484 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %485 = call i32 @B43_NTAB16(i32 15, i32 85)
  %486 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  %487 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %484, i32 %485, i32 2, i64* %486)
  %488 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %489 = call i32 @B43_NTAB16(i32 15, i32 93)
  %490 = getelementptr inbounds [11 x i64], [11 x i64]* %25, i64 0, i64 0
  %491 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %488, i32 %489, i32 2, i64* %490)
  store i32 11, i32* %14, align 4
  %492 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %493 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = icmp slt i32 %495, 3
  br i1 %496, label %497, label %500

497:                                              ; preds = %475
  %498 = load i32, i32* %14, align 4
  %499 = sub nsw i32 %498, 2
  store i32 %499, i32* %14, align 4
  br label %500

500:                                              ; preds = %497, %475
  %501 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %502 = call i32 @B43_NTAB16(i32 15, i32 96)
  %503 = load i32, i32* %14, align 4
  %504 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %505 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %504, i32 0, i32 4
  %506 = load i64*, i64** %505, align 8
  %507 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %501, i32 %502, i32 %503, i64* %506)
  %508 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %509 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %508, i32 0, i32 3
  store i32 1, i32* %509, align 8
  %510 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %511 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %515 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %514, i32 0, i32 6
  %516 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %515, i32 0, i32 1
  store i32 %513, i32* %516, align 4
  %517 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %518 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %522 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %521, i32 0, i32 6
  %523 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %522, i32 0, i32 0
  store i32 %520, i32* %523, align 8
  br label %541

524:                                              ; preds = %449
  store i32 11, i32* %14, align 4
  %525 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %526 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = icmp slt i32 %528, 3
  br i1 %529, label %530, label %533

530:                                              ; preds = %524
  %531 = load i32, i32* %14, align 4
  %532 = sub nsw i32 %531, 2
  store i32 %532, i32* %14, align 4
  br label %533

533:                                              ; preds = %530, %524
  %534 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %535 = call i32 @B43_NTAB16(i32 15, i32 96)
  %536 = load i32, i32* %14, align 4
  %537 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %538 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %537, i32 0, i32 2
  %539 = load i64*, i64** %538, align 8
  %540 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %534, i32 %535, i32 %536, i64* %539)
  br label %541

541:                                              ; preds = %533, %500
  %542 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %543 = call i32 @b43_nphy_stop_playback(%struct.b43_wldev* %542)
  %544 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %545 = load i32, i32* @B43_NPHY_IQLOCAL_CMDGCTL, align 4
  %546 = call i32 @b43_phy_write(%struct.b43_wldev* %544, i32 %545, i64 0)
  br label %547

547:                                              ; preds = %541, %173
  %548 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %549 = call i32 @b43_nphy_tx_cal_phy_cleanup(%struct.b43_wldev* %548)
  %550 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %551 = call i32 @B43_NTAB16(i32 7, i32 272)
  %552 = getelementptr inbounds [2 x i64], [2 x i64]* %27, i64 0, i64 0
  %553 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %550, i32 %551, i32 2, i64* %552)
  %554 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %555 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = icmp slt i32 %557, 2
  br i1 %558, label %559, label %572

559:                                              ; preds = %547
  %560 = load i32, i32* %8, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %569

562:                                              ; preds = %559
  %563 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %564 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = sext i32 %565 to i64
  %567 = load i64, i64* %21, align 8
  %568 = icmp eq i64 %566, %567
  br i1 %568, label %569, label %572

569:                                              ; preds = %562, %559
  %570 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %571 = call i32 @b43_nphy_tx_iq_workaround(%struct.b43_wldev* %570)
  br label %572

572:                                              ; preds = %569, %562, %547
  %573 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %574 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = icmp sge i32 %576, 4
  br i1 %577, label %578, label %582

578:                                              ; preds = %572
  %579 = load i32, i32* %13, align 4
  %580 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  %581 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %580, i32 0, i32 0
  store i32 %579, i32* %581, align 8
  br label %582

582:                                              ; preds = %578, %572
  %583 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %584 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %583, i32 0)
  %585 = load i32, i32* %11, align 4
  ret i32 %585
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_ntab_read_bulk(%struct.b43_wldev*, i32, i32, i64*) #2

declare dso_local i32 @B43_NTAB16(i32, i32) #2

declare dso_local i32 @b43_nphy_iq_cal_gain_params(%struct.b43_wldev*, i32, i32, %struct.nphy_iqcal_params*) #2

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i64*) #2

declare dso_local i32 @b43_nphy_tx_cal_radio_setup(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_tx_cal_phy_setup(%struct.b43_wldev*) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i64) #2

declare dso_local i32 @b43_nphy_run_samples(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @b43_nphy_tx_tone(%struct.b43_wldev*, i32, i32, i32, i32) #2

declare dso_local i64 @min(i64, i64) #2

declare dso_local i32 @b43_nphy_update_tx_cal_ladder(%struct.b43_wldev*, i64) #2

declare dso_local i64 @b43_ntab_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i64 @b43_phy_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43_nphy_stop_playback(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_tx_cal_phy_cleanup(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_tx_iq_workaround(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
