; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_tx_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32*, i64, i32 }

@B43_NPHY_TXPCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_COEFF = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_HWPCTLEN = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_PCTLEN = common dso_local global i32 0, align 4
@B43_NPHY_C1_TXPCTL_STAT = common dso_local global i32 0, align 4
@B43_NPHY_C2_TXPCTL_STAT = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_NPHY_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3 = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3_SCALE = common dso_local global i32 0, align 4
@B43_HF_TSSIRPSMW = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_INIT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_INIT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_INIT_PIDXI1 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_nphy_tx_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_power_ctrl(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy_n*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.b43_phy_n*, %struct.b43_phy_n** %13, align 8
  store %struct.b43_phy_n* %14, %struct.b43_phy_n** %5, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @b43_current_band(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %20 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %29 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %174, label %32

32:                                               ; preds = %26
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %41 = call i32 @b43_phy_read(%struct.b43_wldev* %39, i32 %40)
  %42 = load i32, i32* @B43_NPHY_TXPCTL_CMD_COEFF, align 4
  %43 = load i32, i32* @B43_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %38
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = load i32, i32* @B43_NPHY_C1_TXPCTL_STAT, align 4
  %52 = call i32 @b43_phy_read(%struct.b43_wldev* %50, i32 %51)
  %53 = and i32 %52, 127
  %54 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %55 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %59 = load i32, i32* @B43_NPHY_C2_TXPCTL_STAT, align 4
  %60 = call i32 @b43_phy_read(%struct.b43_wldev* %58, i32 %59)
  %61 = and i32 %60, 127
  %62 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %63 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %49, %38, %32
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %68 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %69 = call i32 @b43_phy_write(%struct.b43_wldev* %67, i32 %68, i32 26688)
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %77, %66
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 84
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %76 = call i32 @b43_phy_write(%struct.b43_wldev* %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %70

80:                                               ; preds = %70
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %82 = load i32, i32* @B43_NPHY_TABLE_ADDR, align 4
  %83 = call i32 @b43_phy_write(%struct.b43_wldev* %81, i32 %82, i32 27712)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %91, %80
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 84
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %89 = load i32, i32* @B43_NPHY_TABLE_DATALO, align 4
  %90 = call i32 @b43_phy_write(%struct.b43_wldev* %88, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %84

94:                                               ; preds = %84
  %95 = load i32, i32* @B43_NPHY_TXPCTL_CMD_COEFF, align 4
  %96 = load i32, i32* @B43_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %9, align 4
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sge i32 %101, 3
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %103, %94
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %110 = load i32, i32* %9, align 4
  %111 = xor i32 %110, -1
  %112 = call i32 @b43_phy_mask(%struct.b43_wldev* %108, i32 %109, i32 %111)
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %114 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %116, 3
  br i1 %117, label %118, label %125

118:                                              ; preds = %107
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %120 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %121 = call i32 @b43_phy_set(%struct.b43_wldev* %119, i32 %120, i32 256)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %123 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %124 = call i32 @b43_phy_set(%struct.b43_wldev* %122, i32 %123, i32 256)
  br label %129

125:                                              ; preds = %107
  %126 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %127 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %128 = call i32 @b43_phy_set(%struct.b43_wldev* %126, i32 %127, i32 16384)
  br label %129

129:                                              ; preds = %125, %118
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %131 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %137 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %138 = load i32, i32* @B43_NPHY_BPHY_CTL3_SCALE, align 4
  %139 = xor i32 %138, -1
  %140 = call i32 @b43_phy_maskset(%struct.b43_wldev* %136, i32 %137, i32 %139, i32 83)
  br label %154

141:                                              ; preds = %129
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %143 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %149 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %150 = load i32, i32* @B43_NPHY_BPHY_CTL3_SCALE, align 4
  %151 = xor i32 %150, -1
  %152 = call i32 @b43_phy_maskset(%struct.b43_wldev* %148, i32 %149, i32 %151, i32 90)
  br label %153

153:                                              ; preds = %147, %141
  br label %154

154:                                              ; preds = %153, %135
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %156 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %158, 2
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %162 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %169 = call i32 @b43_hf_read(%struct.b43_wldev* %168)
  %170 = load i32, i32* @B43_HF_TSSIRPSMW, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @b43_hf_write(%struct.b43_wldev* %167, i32 %171)
  br label %173

173:                                              ; preds = %166, %160, %154
  br label %354

174:                                              ; preds = %26
  %175 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %176 = call i32 @B43_NTAB16(i32 26, i32 64)
  %177 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %178 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %175, i32 %176, i32 84, i32 %179)
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %182 = call i32 @B43_NTAB16(i32 27, i32 64)
  %183 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %184 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %181, i32 %182, i32 84, i32 %185)
  %187 = load i32, i32* @B43_NPHY_TXPCTL_CMD_COEFF, align 4
  %188 = load i32, i32* @B43_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %189 = or i32 %187, %188
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* @B43_NPHY_TXPCTL_CMD_COEFF, align 4
  %191 = load i32, i32* @B43_NPHY_TXPCTL_CMD_HWPCTLEN, align 4
  %192 = or i32 %190, %191
  store i32 %192, i32* %8, align 4
  %193 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %194 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %196, 3
  br i1 %197, label %198, label %209

198:                                              ; preds = %174
  %199 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %200 = load i32, i32* %7, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %206 = load i32, i32* %8, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %204, %198
  br label %209

209:                                              ; preds = %208, %174
  %210 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %211 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %212 = load i32, i32* %7, align 4
  %213 = xor i32 %212, -1
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @b43_phy_maskset(%struct.b43_wldev* %210, i32 %211, i32 %213, i32 %214)
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %209
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %221 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %222 = load i32, i32* @B43_NPHY_TXPCTL_CMD_INIT, align 4
  %223 = xor i32 %222, -1
  %224 = call i32 @b43_phy_maskset(%struct.b43_wldev* %220, i32 %221, i32 %223, i32 100)
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %226 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp sgt i32 %228, 1
  br i1 %229, label %230, label %236

230:                                              ; preds = %219
  %231 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %232 = load i32, i32* @B43_NPHY_TXPCTL_INIT, align 4
  %233 = load i32, i32* @B43_NPHY_TXPCTL_INIT_PIDXI1, align 4
  %234 = xor i32 %233, -1
  %235 = call i32 @b43_phy_maskset(%struct.b43_wldev* %231, i32 %232, i32 %234, i32 100)
  br label %236

236:                                              ; preds = %230, %219
  br label %237

237:                                              ; preds = %236, %209
  %238 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %239 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp sge i32 %241, 3
  br i1 %242, label %243, label %284

243:                                              ; preds = %237
  %244 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %245 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 128
  br i1 %249, label %250, label %283

250:                                              ; preds = %243
  %251 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %252 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 128
  br i1 %256, label %257, label %283

257:                                              ; preds = %250
  %258 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %259 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %260 = load i32, i32* @B43_NPHY_TXPCTL_CMD_INIT, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %263 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @b43_phy_maskset(%struct.b43_wldev* %258, i32 %259, i32 %261, i32 %266)
  %268 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %269 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp sgt i32 %271, 1
  br i1 %272, label %273, label %282

273:                                              ; preds = %257
  %274 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %275 = load i32, i32* @B43_NPHY_TXPCTL_INIT, align 4
  %276 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %277 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @b43_phy_maskset(%struct.b43_wldev* %274, i32 %275, i32 -256, i32 %280)
  br label %282

282:                                              ; preds = %273, %257
  br label %283

283:                                              ; preds = %282, %250, %243
  br label %284

284:                                              ; preds = %283, %237
  %285 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %286 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp sge i32 %288, 3
  br i1 %289, label %290, label %297

290:                                              ; preds = %284
  %291 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %292 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %293 = call i32 @b43_phy_mask(%struct.b43_wldev* %291, i32 %292, i32 -257)
  %294 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %295 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %296 = call i32 @b43_phy_mask(%struct.b43_wldev* %294, i32 %295, i32 -257)
  br label %301

297:                                              ; preds = %284
  %298 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %299 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %300 = call i32 @b43_phy_mask(%struct.b43_wldev* %298, i32 %299, i32 -16385)
  br label %301

301:                                              ; preds = %297, %290
  %302 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %303 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp eq i32 %305, 2
  br i1 %306, label %307, label %311

307:                                              ; preds = %301
  %308 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %309 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %310 = call i32 @b43_phy_maskset(%struct.b43_wldev* %308, i32 %309, i32 -256, i32 59)
  br label %322

311:                                              ; preds = %301
  %312 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %313 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp slt i32 %315, 2
  br i1 %316, label %317, label %321

317:                                              ; preds = %311
  %318 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %319 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %320 = call i32 @b43_phy_maskset(%struct.b43_wldev* %318, i32 %319, i32 -256, i32 64)
  br label %321

321:                                              ; preds = %317, %311
  br label %322

322:                                              ; preds = %321, %307
  %323 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %324 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = icmp slt i32 %326, 2
  br i1 %327, label %328, label %342

328:                                              ; preds = %322
  %329 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %330 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %342

334:                                              ; preds = %328
  %335 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %336 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %337 = call i32 @b43_hf_read(%struct.b43_wldev* %336)
  %338 = load i32, i32* @B43_HF_TSSIRPSMW, align 4
  %339 = xor i32 %338, -1
  %340 = and i32 %337, %339
  %341 = call i32 @b43_hf_write(%struct.b43_wldev* %335, i32 %340)
  br label %342

342:                                              ; preds = %334, %328, %322
  %343 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %344 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %353

346:                                              ; preds = %342
  %347 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %348 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  %349 = call i32 @b43_phy_mask(%struct.b43_wldev* %347, i32 %348, i32 -5)
  %350 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %351 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  %352 = call i32 @b43_phy_mask(%struct.b43_wldev* %350, i32 %351, i32 -5)
  br label %353

353:                                              ; preds = %346, %342
  br label %354

354:                                              ; preds = %353, %173
  %355 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %356 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %354
  %360 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %361 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %360, i32 0)
  br label %362

362:                                              ; preds = %359, %354
  ret void
}

declare dso_local i32 @b43_current_band(i32) #1

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_hf_write(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_hf_read(%struct.b43_wldev*) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
