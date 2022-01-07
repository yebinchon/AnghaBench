; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_rev0_1_rc_calib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_rev0_1_rc_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32, i32 }
%struct.lpphy_iq_est = type { i32, i32 }
%struct.lpphy_tx_gains = type { i32 }

@lpphy_rev0_1_rc_calib.ideal_pwr_table = internal constant [21 x i32] [i32 65536, i32 66903, i32 69165, i32 70624, i32 69410, i32 65380, i32 60834, i32 58836, i32 61393, i32 64488, i32 47032, i32 19253, i32 6750, i32 2571, i32 1092, i32 509, i32 255, i32 136, i32 76, i32 44, i32 26], align 16
@.str = private unnamed_addr constant [53 x i8] c"RC calib: Failed to switch to channel 7, error = %d\0A\00", align 1
@B43_LPPHY_AFE_CTL_OVR = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@B43_LPPHY_AFE_CTL_OVRVAL = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@B43_LPPHY_RF_OVERRIDE_2_VAL = common dso_local global i32 0, align 4
@B43_LPPHY_LP_PHY_CTL = common dso_local global i32 0, align 4
@B43_LPPHY_TXPCTL_OFF = common dso_local global i32 0, align 4
@B2062_N_RXBB_CALIB2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lpphy_rev0_1_rc_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpphy_rev0_1_rc_calib(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_lp*, align 8
  %4 = alloca %struct.lpphy_iq_est, align 4
  %5 = alloca %struct.lpphy_tx_gains, align 4
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.lpphy_tx_gains, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %29, align 8
  store %struct.b43_phy_lp* %30, %struct.b43_phy_lp** %3, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %31 = call i32 @memset(%struct.lpphy_iq_est* %4, i32 0, i32 8)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = call i32 @b43_lpphy_op_switch_channel(%struct.b43_wldev* %32, i32 7)
  store i32 %33, i32* %25, align 4
  %34 = load i32, i32* %25, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %25, align 4
  %41 = call i32 @b43dbg(i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %1
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %45 = call i32 @b43_phy_read(%struct.b43_wldev* %43, i32 %44)
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = call i32 @lpphy_get_bb_mult(%struct.b43_wldev* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %42
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = call i32 @lpphy_get_tx_gains(%struct.b43_wldev* %56)
  %58 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %26, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = bitcast %struct.lpphy_tx_gains* %5 to i8*
  %60 = bitcast %struct.lpphy_tx_gains* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  br label %61

61:                                               ; preds = %55, %42
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %64 = call i32 @b43_phy_read(%struct.b43_wldev* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %67 = call i32 @b43_phy_read(%struct.b43_wldev* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %69 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %70 = call i32 @b43_phy_read(%struct.b43_wldev* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = load i32, i32* @B43_LPPHY_AFE_CTL_OVRVAL, align 4
  %73 = call i32 @b43_phy_read(%struct.b43_wldev* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %76 = call i32 @b43_phy_read(%struct.b43_wldev* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %79 = call i32 @b43_phy_read(%struct.b43_wldev* %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %82 = call i32 @b43_phy_read(%struct.b43_wldev* %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = call i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev* %83)
  %85 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %86 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %15, align 4
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %89 = load i32, i32* @B43_LPPHY_TXPCTL_OFF, align 4
  %90 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %88, i32 %89)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = call i32 @lpphy_disable_crs(%struct.b43_wldev* %91, i32 1)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = call i32 @lpphy_loopback(%struct.b43_wldev* %93)
  store i32 %94, i32* %21, align 4
  %95 = load i32, i32* %21, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %61
  br label %187

98:                                               ; preds = %61
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = load i32, i32* %21, align 4
  %101 = call i32 @lpphy_set_rx_gain_by_index(%struct.b43_wldev* %99, i32 %100)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %104 = call i32 @b43_phy_maskset(%struct.b43_wldev* %102, i32 %103, i32 65471, i32 64)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %107 = call i32 @b43_phy_maskset(%struct.b43_wldev* %105, i32 %106, i32 65528, i32 1)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %110 = call i32 @b43_phy_maskset(%struct.b43_wldev* %108, i32 %109, i32 65479, i32 8)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %112 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %113 = call i32 @b43_phy_maskset(%struct.b43_wldev* %111, i32 %112, i32 65343, i32 192)
  store i32 128, i32* %22, align 4
  br label %114

114:                                              ; preds = %181, %98
  %115 = load i32, i32* %22, align 4
  %116 = icmp sle i32 %115, 159
  br i1 %116, label %117, label %184

117:                                              ; preds = %114
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %119 = load i32, i32* @B2062_N_RXBB_CALIB2, align 4
  %120 = load i32, i32* %22, align 4
  %121 = call i32 @b43_radio_write(%struct.b43_wldev* %118, i32 %119, i32 %120)
  store i32 0, i32* %24, align 4
  store i32 5, i32* %23, align 4
  br label %122

122:                                              ; preds = %177, %117
  %123 = load i32, i32* %23, align 4
  %124 = icmp sle i32 %123, 25
  br i1 %124, label %125, label %180

125:                                              ; preds = %122
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = call i32 @lpphy_run_ddfs(%struct.b43_wldev* %126, i32 1, i32 1, i32 %127, i32 %128, i32 0)
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = call i32 @lpphy_rx_iq_est(%struct.b43_wldev* %130, i32 1000, i32 32, %struct.lpphy_iq_est* %4)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  br label %187

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.lpphy_iq_est, %struct.lpphy_iq_est* %4, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.lpphy_iq_est, %struct.lpphy_iq_est* %4, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %136, %138
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %23, align 4
  %141 = icmp eq i32 %140, 5
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* %18, align 4
  store i32 %143, i32* %19, align 4
  br label %144

144:                                              ; preds = %142, %134
  %145 = load i32, i32* %23, align 4
  %146 = sub nsw i32 %145, 5
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [21 x i32], [21 x i32]* @lpphy_rev0_1_rc_calib.ideal_pwr_table, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 3
  %151 = add nsw i32 %150, 1
  %152 = ashr i32 %151, 1
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @lpphy_qdiv_roundup(i32 %153, i32 %154, i32 12)
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %16, align 4
  %158 = sub nsw i32 %156, %157
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %18, align 4
  %161 = mul nsw i32 %160, %159
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %24, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %24, align 4
  %165 = load i32, i32* %22, align 4
  %166 = icmp eq i32 %165, 128
  br i1 %166, label %171, label %167

167:                                              ; preds = %144
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %20, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %167, %144
  %172 = load i32, i32* %22, align 4
  %173 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %174 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %24, align 4
  store i32 %175, i32* %20, align 4
  br label %176

176:                                              ; preds = %171, %167
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %23, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %23, align 4
  br label %122

180:                                              ; preds = %122
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %22, align 4
  br label %114

184:                                              ; preds = %114
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = call i32 @lpphy_stop_ddfs(%struct.b43_wldev* %185)
  br label %187

187:                                              ; preds = %184, %133, %97
  %188 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %189 = call i32 @lpphy_restore_crs(%struct.b43_wldev* %188, i32 1)
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %191 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_VAL_0, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @b43_phy_write(%struct.b43_wldev* %190, i32 %191, i32 %192)
  %194 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %195 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_0, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @b43_phy_write(%struct.b43_wldev* %194, i32 %195, i32 %196)
  %198 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %199 = load i32, i32* @B43_LPPHY_AFE_CTL_OVRVAL, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @b43_phy_write(%struct.b43_wldev* %198, i32 %199, i32 %200)
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = load i32, i32* @B43_LPPHY_AFE_CTL_OVR, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @b43_phy_write(%struct.b43_wldev* %202, i32 %203, i32 %204)
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %207 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2_VAL, align 4
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @b43_phy_write(%struct.b43_wldev* %206, i32 %207, i32 %208)
  %210 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %211 = load i32, i32* @B43_LPPHY_RF_OVERRIDE_2, align 4
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @b43_phy_write(%struct.b43_wldev* %210, i32 %211, i32 %212)
  %214 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %215 = load i32, i32* @B43_LPPHY_LP_PHY_CTL, align 4
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @b43_phy_write(%struct.b43_wldev* %214, i32 %215, i32 %216)
  %218 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @lpphy_set_bb_mult(%struct.b43_wldev* %218, i32 %219)
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %187
  %224 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %225 = getelementptr inbounds %struct.lpphy_tx_gains, %struct.lpphy_tx_gains* %5, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @lpphy_set_tx_gains(%struct.b43_wldev* %224, i32 %226)
  br label %228

228:                                              ; preds = %223, %187
  %229 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %230 = load i32, i32* %15, align 4
  %231 = call i32 @lpphy_set_tx_power_control(%struct.b43_wldev* %229, i32 %230)
  %232 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %3, align 8
  %233 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %228
  %237 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %238 = call i32 @lpphy_set_rc_cap(%struct.b43_wldev* %237)
  br label %239

239:                                              ; preds = %236, %228
  ret void
}

declare dso_local i32 @memset(%struct.lpphy_iq_est*, i32, i32) #1

declare dso_local i32 @b43_lpphy_op_switch_channel(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_get_bb_mult(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_get_tx_gains(%struct.b43_wldev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lpphy_read_tx_pctl_mode_from_hardware(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_set_tx_power_control(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_disable_crs(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_loopback(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_set_rx_gain_by_index(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_run_ddfs(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lpphy_rx_iq_est(%struct.b43_wldev*, i32, i32, %struct.lpphy_iq_est*) #1

declare dso_local i32 @lpphy_qdiv_roundup(i32, i32, i32) #1

declare dso_local i32 @lpphy_stop_ddfs(%struct.b43_wldev*) #1

declare dso_local i32 @lpphy_restore_crs(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_set_bb_mult(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_tx_gains(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_set_rc_cap(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
