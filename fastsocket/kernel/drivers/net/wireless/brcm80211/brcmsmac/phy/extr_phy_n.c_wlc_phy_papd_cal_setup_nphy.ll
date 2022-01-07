; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_papd_cal_setup_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_papd_cal_setup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nphy_papd_restore_state = type { i8**, i8**, i8**, i8**, i8**, i8**, i8** }

@NPHY_REV7_RFCTRLOVERRIDE_ID1 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@NPHY_REV7_RfctrlOverride_cmd_tx_pu = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID2 = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i32 0, align 4
@RADIO_2057 = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@TXRXCOUPLE_2G_PWRUP = common dso_local global i32 0, align 4
@TXRXCOUPLE_2G_ATTEN = common dso_local global i32 0, align 4
@TXRXCOUPLE_5G_PWRUP = common dso_local global i32 0, align 4
@TXRXCOUPLE_5G_ATTEN = common dso_local global i32 0, align 4
@NPHY_PAPD_COMP_ON = common dso_local global i32 0, align 4
@NPHY_PAPD_COMP_OFF = common dso_local global i32 0, align 4
@RADIO_2056 = common dso_local global i32 0, align 4
@RX = common dso_local global i32 0, align 4
@VGA_MASTER = common dso_local global i32 0, align 4
@TXFBMIX_G = common dso_local global i32 0, align 4
@INTPAG_MASTER = common dso_local global i32 0, align 4
@TXFBMIX_A = common dso_local global i32 0, align 4
@INTPAA_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.nphy_papd_restore_state*, i32)* @wlc_phy_papd_cal_setup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_papd_cal_setup_nphy(%struct.brcms_phy* %0, %struct.nphy_papd_restore_state* %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca %struct.nphy_papd_restore_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store %struct.nphy_papd_restore_state* %1, %struct.nphy_papd_restore_state** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = xor i32 %10, 1
  store i32 %11, i32* %8, align 4
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @NREV_GE(i32 %15, i32 7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %527

18:                                               ; preds = %3
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @NREV_IS(i32 %22, i32 7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @NREV_GE(i32 %29, i32 8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25, %18
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %35 = call i32 @wlc_phy_read_lpf_bw_ctl_nphy(%struct.brcms_phy* %34, i32 0)
  %36 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %37 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %33, i32 128, i32 %35, i32 0, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %40 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @CHSPEC_IS2G(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %38
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 5
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 32, i32 0
  store i32 %54, i32* %9, align 4
  br label %83

55:                                               ; preds = %44
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %57 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 7
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %55
  store i32 0, i32* %9, align 4
  br label %82

68:                                               ; preds = %61
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %70 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %72, 4
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 6
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %68
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %80, %74
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82, %50
  br label %118

84:                                               ; preds = %38
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %92 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 6
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %84
  store i32 80, i32* %9, align 4
  br label %117

97:                                               ; preds = %90
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %99 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %115, label %103

103:                                              ; preds = %97
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %105 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 7
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %111 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 8
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %103, %97
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %115, %109
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117, %83
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %6, align 4
  %122 = shl i32 1, %121
  %123 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %124 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %119, i32 2048, i32 %120, i32 %122, i32 0, i32 %123)
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %126 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_tx_pu, align 4
  %127 = load i32, i32* %6, align 4
  %128 = shl i32 1, %127
  %129 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %125, i32 %126, i32 1, i32 %128, i32 0)
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %131 = load i32, i32* @NPHY_REV7_RfctrlOverride_cmd_tx_pu, align 4
  %132 = load i32, i32* %8, align 4
  %133 = shl i32 1, %132
  %134 = call i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy* %130, i32 %131, i32 0, i32 %133, i32 0)
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %136 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %137 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %135, i32 8, i32 0, i32 3, i32 0, i32 %136)
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %139 = load i32, i32* %6, align 4
  %140 = shl i32 1, %139
  %141 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %142 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %138, i32 4, i32 1, i32 %140, i32 0, i32 %141)
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = shl i32 1, %144
  %146 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %147 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %143, i32 1, i32 0, i32 %145, i32 0, i32 %146)
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %149 = load i32, i32* %6, align 4
  %150 = shl i32 1, %149
  %151 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %152 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %148, i32 2, i32 1, i32 %150, i32 0, i32 %151)
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %154 = load i32, i32* %6, align 4
  %155 = shl i32 1, %154
  %156 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %157 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %153, i32 256, i32 0, i32 %155, i32 0, i32 %156)
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = shl i32 1, %159
  %161 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %162 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %158, i32 512, i32 1, i32 %160, i32 0, i32 %161)
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %164 = load i32, i32* %6, align 4
  %165 = shl i32 1, %164
  %166 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %167 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %163, i32 1024, i32 0, i32 %165, i32 0, i32 %166)
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %169 = load i32, i32* %6, align 4
  %170 = shl i32 1, %169
  %171 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %172 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %168, i32 8, i32 1, i32 %170, i32 0, i32 %171)
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %174 = load i32, i32* %6, align 4
  %175 = shl i32 1, %174
  %176 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %177 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %173, i32 32, i32 0, i32 %175, i32 0, i32 %176)
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %179 = load i32, i32* %6, align 4
  %180 = shl i32 1, %179
  %181 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %182 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %178, i32 16, i32 0, i32 %180, i32 0, i32 %181)
  %183 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @PHY_CORE_0, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 166, i32 167
  %189 = call i8* @read_phy_reg(%struct.brcms_phy* %183, i32 %188)
  %190 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %191 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %190, i32 0, i32 4
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  store i8* %189, i8** %195, align 8
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @PHY_CORE_0, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 143, i32 165
  %202 = call i8* @read_phy_reg(%struct.brcms_phy* %196, i32 %201)
  %203 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %204 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %203, i32 0, i32 3
  %205 = load i8**, i8*** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  store i8* %202, i8** %208, align 8
  %209 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @PHY_CORE_0, align 4
  %212 = icmp eq i32 %210, %211
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 167, i32 166
  %215 = call i8* @read_phy_reg(%struct.brcms_phy* %209, i32 %214)
  %216 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %217 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %216, i32 0, i32 4
  %218 = load i8**, i8*** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  store i8* %215, i8** %221, align 8
  %222 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @PHY_CORE_0, align 4
  %225 = icmp eq i32 %223, %224
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 165, i32 143
  %228 = call i8* @read_phy_reg(%struct.brcms_phy* %222, i32 %227)
  %229 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %230 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %229, i32 0, i32 3
  %231 = load i8**, i8*** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  store i8* %228, i8** %234, align 8
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @PHY_CORE_0, align 4
  %238 = icmp eq i32 %236, %237
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 166, i32 167
  %241 = call i32 @mod_phy_reg(%struct.brcms_phy* %235, i32 %240, i32 4, i32 0)
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @PHY_CORE_0, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 143, i32 165
  %248 = call i32 @mod_phy_reg(%struct.brcms_phy* %242, i32 %247, i32 4, i32 4)
  %249 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @PHY_CORE_0, align 4
  %252 = icmp eq i32 %250, %251
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i32 167, i32 166
  %255 = call i32 @mod_phy_reg(%struct.brcms_phy* %249, i32 %254, i32 4, i32 4)
  %256 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @PHY_CORE_0, align 4
  %259 = icmp eq i32 %257, %258
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 165, i32 143
  %262 = call i32 @mod_phy_reg(%struct.brcms_phy* %256, i32 %261, i32 4, i32 4)
  %263 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %264 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @CHSPEC_IS2G(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %398

268:                                              ; preds = %118
  %269 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %270 = load i32, i32* @RADIO_2057, align 4
  %271 = load i32, i32* @TX, align 4
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* @TXRXCOUPLE_2G_PWRUP, align 4
  %274 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %269, i32 %270, i32 %271, i32 %272, i32 %273)
  %275 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %276 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %275, i32 0, i32 6
  %277 = load i8**, i8*** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  store i8* %274, i8** %280, align 8
  %281 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %282 = load i32, i32* @RADIO_2057, align 4
  %283 = load i32, i32* @TX, align 4
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* @TXRXCOUPLE_2G_ATTEN, align 4
  %286 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %281, i32 %282, i32 %283, i32 %284, i32 %285)
  %287 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %288 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %287, i32 0, i32 5
  %289 = load i8**, i8*** %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  store i8* %286, i8** %292, align 8
  %293 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %294 = load i32, i32* @RADIO_2057, align 4
  %295 = load i32, i32* @TX, align 4
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* @TXRXCOUPLE_2G_PWRUP, align 4
  %298 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %293, i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %300 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %299, i32 0, i32 6
  %301 = load i8**, i8*** %300, align 8
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8*, i8** %301, i64 %303
  store i8* %298, i8** %304, align 8
  %305 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %306 = load i32, i32* @RADIO_2057, align 4
  %307 = load i32, i32* @TX, align 4
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* @TXRXCOUPLE_2G_ATTEN, align 4
  %310 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %305, i32 %306, i32 %307, i32 %308, i32 %309)
  %311 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %312 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %311, i32 0, i32 5
  %313 = load i8**, i8*** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8*, i8** %313, i64 %315
  store i8* %310, i8** %316, align 8
  %317 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %318 = load i32, i32* @RADIO_2057, align 4
  %319 = load i32, i32* @TX, align 4
  %320 = load i32, i32* %6, align 4
  %321 = load i32, i32* @TXRXCOUPLE_2G_PWRUP, align 4
  %322 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %317, i32 %318, i32 %319, i32 %320, i32 %321, i32 12)
  %323 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %324 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %326, 3
  br i1 %327, label %340, label %328

328:                                              ; preds = %268
  %329 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %330 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %332, 4
  br i1 %333, label %340, label %334

334:                                              ; preds = %328
  %335 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %336 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 6
  br i1 %339, label %340, label %347

340:                                              ; preds = %334, %328, %268
  %341 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %342 = load i32, i32* @RADIO_2057, align 4
  %343 = load i32, i32* @TX, align 4
  %344 = load i32, i32* %6, align 4
  %345 = load i32, i32* @TXRXCOUPLE_2G_ATTEN, align 4
  %346 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %341, i32 %342, i32 %343, i32 %344, i32 %345, i32 240)
  br label %385

347:                                              ; preds = %334
  %348 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %349 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %351, 5
  br i1 %352, label %353, label %364

353:                                              ; preds = %347
  %354 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %355 = load i32, i32* @RADIO_2057, align 4
  %356 = load i32, i32* @TX, align 4
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* @TXRXCOUPLE_2G_ATTEN, align 4
  %359 = load i32, i32* %6, align 4
  %360 = icmp eq i32 %359, 0
  %361 = zext i1 %360 to i64
  %362 = select i1 %360, i32 247, i32 242
  %363 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %362)
  br label %384

364:                                              ; preds = %347
  %365 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %366 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = icmp eq i32 %368, 7
  br i1 %369, label %376, label %370

370:                                              ; preds = %364
  %371 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %372 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = icmp eq i32 %374, 8
  br i1 %375, label %376, label %383

376:                                              ; preds = %370, %364
  %377 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %378 = load i32, i32* @RADIO_2057, align 4
  %379 = load i32, i32* @TX, align 4
  %380 = load i32, i32* %6, align 4
  %381 = load i32, i32* @TXRXCOUPLE_2G_ATTEN, align 4
  %382 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %377, i32 %378, i32 %379, i32 %380, i32 %381, i32 240)
  br label %383

383:                                              ; preds = %376, %370
  br label %384

384:                                              ; preds = %383, %353
  br label %385

385:                                              ; preds = %384, %340
  %386 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %387 = load i32, i32* @RADIO_2057, align 4
  %388 = load i32, i32* @TX, align 4
  %389 = load i32, i32* %8, align 4
  %390 = load i32, i32* @TXRXCOUPLE_2G_PWRUP, align 4
  %391 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 0)
  %392 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %393 = load i32, i32* @RADIO_2057, align 4
  %394 = load i32, i32* @TX, align 4
  %395 = load i32, i32* %8, align 4
  %396 = load i32, i32* @TXRXCOUPLE_2G_ATTEN, align 4
  %397 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %392, i32 %393, i32 %394, i32 %395, i32 %396, i32 255)
  br label %491

398:                                              ; preds = %118
  %399 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %400 = load i32, i32* @RADIO_2057, align 4
  %401 = load i32, i32* @TX, align 4
  %402 = load i32, i32* %6, align 4
  %403 = load i32, i32* @TXRXCOUPLE_5G_PWRUP, align 4
  %404 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %399, i32 %400, i32 %401, i32 %402, i32 %403)
  %405 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %406 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %405, i32 0, i32 6
  %407 = load i8**, i8*** %406, align 8
  %408 = load i32, i32* %6, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8*, i8** %407, i64 %409
  store i8* %404, i8** %410, align 8
  %411 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %412 = load i32, i32* @RADIO_2057, align 4
  %413 = load i32, i32* @TX, align 4
  %414 = load i32, i32* %6, align 4
  %415 = load i32, i32* @TXRXCOUPLE_5G_ATTEN, align 4
  %416 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %411, i32 %412, i32 %413, i32 %414, i32 %415)
  %417 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %418 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %417, i32 0, i32 5
  %419 = load i8**, i8*** %418, align 8
  %420 = load i32, i32* %6, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8*, i8** %419, i64 %421
  store i8* %416, i8** %422, align 8
  %423 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %424 = load i32, i32* @RADIO_2057, align 4
  %425 = load i32, i32* @TX, align 4
  %426 = load i32, i32* %8, align 4
  %427 = load i32, i32* @TXRXCOUPLE_5G_PWRUP, align 4
  %428 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %423, i32 %424, i32 %425, i32 %426, i32 %427)
  %429 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %430 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %429, i32 0, i32 6
  %431 = load i8**, i8*** %430, align 8
  %432 = load i32, i32* %8, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8*, i8** %431, i64 %433
  store i8* %428, i8** %434, align 8
  %435 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %436 = load i32, i32* @RADIO_2057, align 4
  %437 = load i32, i32* @TX, align 4
  %438 = load i32, i32* %8, align 4
  %439 = load i32, i32* @TXRXCOUPLE_5G_ATTEN, align 4
  %440 = call i8* @READ_RADIO_REG3(%struct.brcms_phy* %435, i32 %436, i32 %437, i32 %438, i32 %439)
  %441 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %442 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %441, i32 0, i32 5
  %443 = load i8**, i8*** %442, align 8
  %444 = load i32, i32* %8, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8*, i8** %443, i64 %445
  store i8* %440, i8** %446, align 8
  %447 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %448 = load i32, i32* @RADIO_2057, align 4
  %449 = load i32, i32* @TX, align 4
  %450 = load i32, i32* %6, align 4
  %451 = load i32, i32* @TXRXCOUPLE_5G_PWRUP, align 4
  %452 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %447, i32 %448, i32 %449, i32 %450, i32 %451, i32 12)
  %453 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %454 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = icmp eq i32 %456, 7
  br i1 %457, label %464, label %458

458:                                              ; preds = %398
  %459 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %460 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = icmp eq i32 %462, 8
  br i1 %463, label %464, label %471

464:                                              ; preds = %458, %398
  %465 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %466 = load i32, i32* @RADIO_2057, align 4
  %467 = load i32, i32* @TX, align 4
  %468 = load i32, i32* %6, align 4
  %469 = load i32, i32* @TXRXCOUPLE_5G_ATTEN, align 4
  %470 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %465, i32 %466, i32 %467, i32 %468, i32 %469, i32 244)
  br label %478

471:                                              ; preds = %458
  %472 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %473 = load i32, i32* @RADIO_2057, align 4
  %474 = load i32, i32* @TX, align 4
  %475 = load i32, i32* %6, align 4
  %476 = load i32, i32* @TXRXCOUPLE_5G_ATTEN, align 4
  %477 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %472, i32 %473, i32 %474, i32 %475, i32 %476, i32 240)
  br label %478

478:                                              ; preds = %471, %464
  %479 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %480 = load i32, i32* @RADIO_2057, align 4
  %481 = load i32, i32* @TX, align 4
  %482 = load i32, i32* %8, align 4
  %483 = load i32, i32* @TXRXCOUPLE_5G_PWRUP, align 4
  %484 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %479, i32 %480, i32 %481, i32 %482, i32 %483, i32 0)
  %485 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %486 = load i32, i32* @RADIO_2057, align 4
  %487 = load i32, i32* @TX, align 4
  %488 = load i32, i32* %8, align 4
  %489 = load i32, i32* @TXRXCOUPLE_5G_ATTEN, align 4
  %490 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %485, i32 %486, i32 %487, i32 %488, i32 %489, i32 255)
  br label %491

491:                                              ; preds = %478, %385
  store i32 4000, i32* %7, align 4
  %492 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %493 = load i32, i32* %7, align 4
  %494 = call i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy* %492, i32 %493, i32 181, i32 0, i32 0, i32 0)
  %495 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %496 = load i32, i32* %6, align 4
  %497 = load i32, i32* @PHY_CORE_0, align 4
  %498 = icmp eq i32 %496, %497
  %499 = zext i1 %498 to i64
  %500 = select i1 %498, i32 663, i32 667
  %501 = load i32, i32* @NPHY_PAPD_COMP_ON, align 4
  %502 = shl i32 %501, 0
  %503 = call i32 @mod_phy_reg(%struct.brcms_phy* %495, i32 %500, i32 1, i32 %502)
  %504 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %505 = load i32, i32* %6, align 4
  %506 = load i32, i32* @PHY_CORE_0, align 4
  %507 = icmp eq i32 %505, %506
  %508 = zext i1 %507 to i64
  %509 = select i1 %507, i32 675, i32 676
  %510 = call i32 @mod_phy_reg(%struct.brcms_phy* %504, i32 %509, i32 8192, i32 8192)
  %511 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %512 = load i32, i32* %8, align 4
  %513 = load i32, i32* @PHY_CORE_0, align 4
  %514 = icmp eq i32 %512, %513
  %515 = zext i1 %514 to i64
  %516 = select i1 %514, i32 663, i32 667
  %517 = load i32, i32* @NPHY_PAPD_COMP_OFF, align 4
  %518 = shl i32 %517, 0
  %519 = call i32 @mod_phy_reg(%struct.brcms_phy* %511, i32 %516, i32 1, i32 %518)
  %520 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %521 = load i32, i32* %8, align 4
  %522 = load i32, i32* @PHY_CORE_0, align 4
  %523 = icmp eq i32 %521, %522
  %524 = zext i1 %523 to i64
  %525 = select i1 %523, i32 675, i32 676
  %526 = call i32 @mod_phy_reg(%struct.brcms_phy* %520, i32 %525, i32 8192, i32 0)
  br label %695

527:                                              ; preds = %3
  %528 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %529 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %528, i32 4096, i32 0, i32 3, i32 0)
  %530 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %531 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %530, i32 8, i32 1, i32 0, i32 0)
  %532 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %533 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %532, i32 1, i32 0, i32 3, i32 0)
  %534 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %535 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %534, i32 4, i32 1, i32 3, i32 0)
  %536 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %537 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %536, i32 2, i32 1, i32 3, i32 0)
  %538 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %539 = load i32, i32* %6, align 4
  %540 = load i32, i32* @PHY_CORE_0, align 4
  %541 = icmp eq i32 %539, %540
  %542 = zext i1 %541 to i64
  %543 = select i1 %541, i32 166, i32 167
  %544 = call i8* @read_phy_reg(%struct.brcms_phy* %538, i32 %543)
  %545 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %546 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %545, i32 0, i32 4
  %547 = load i8**, i8*** %546, align 8
  %548 = load i32, i32* %6, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i8*, i8** %547, i64 %549
  store i8* %544, i8** %550, align 8
  %551 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %552 = load i32, i32* %6, align 4
  %553 = load i32, i32* @PHY_CORE_0, align 4
  %554 = icmp eq i32 %552, %553
  %555 = zext i1 %554 to i64
  %556 = select i1 %554, i32 143, i32 165
  %557 = call i8* @read_phy_reg(%struct.brcms_phy* %551, i32 %556)
  %558 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %559 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %558, i32 0, i32 3
  %560 = load i8**, i8*** %559, align 8
  %561 = load i32, i32* %6, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i8*, i8** %560, i64 %562
  store i8* %557, i8** %563, align 8
  %564 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %565 = load i32, i32* %6, align 4
  %566 = load i32, i32* @PHY_CORE_0, align 4
  %567 = icmp eq i32 %565, %566
  %568 = zext i1 %567 to i64
  %569 = select i1 %567, i32 166, i32 167
  %570 = call i32 @mod_phy_reg(%struct.brcms_phy* %564, i32 %569, i32 7, i32 0)
  %571 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %572 = load i32, i32* %6, align 4
  %573 = load i32, i32* @PHY_CORE_0, align 4
  %574 = icmp eq i32 %572, %573
  %575 = zext i1 %574 to i64
  %576 = select i1 %574, i32 143, i32 165
  %577 = call i32 @mod_phy_reg(%struct.brcms_phy* %571, i32 %576, i32 7, i32 7)
  %578 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %579 = load i32, i32* @RADIO_2056, align 4
  %580 = load i32, i32* @RX, align 4
  %581 = load i32, i32* %6, align 4
  %582 = load i32, i32* @VGA_MASTER, align 4
  %583 = call i8* @READ_RADIO_REG2(%struct.brcms_phy* %578, i32 %579, i32 %580, i32 %581, i32 %582)
  %584 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %585 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %584, i32 0, i32 2
  %586 = load i8**, i8*** %585, align 8
  %587 = load i32, i32* %6, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i8*, i8** %586, i64 %588
  store i8* %583, i8** %589, align 8
  %590 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %591 = load i32, i32* @RADIO_2056, align 4
  %592 = load i32, i32* @RX, align 4
  %593 = load i32, i32* %6, align 4
  %594 = load i32, i32* @VGA_MASTER, align 4
  %595 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %590, i32 %591, i32 %592, i32 %593, i32 %594, i32 43)
  %596 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %597 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 4
  %599 = call i64 @CHSPEC_IS2G(i32 %598)
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %638

601:                                              ; preds = %527
  %602 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %603 = load i32, i32* @RADIO_2056, align 4
  %604 = load i32, i32* @RX, align 4
  %605 = load i32, i32* %6, align 4
  %606 = load i32, i32* @TXFBMIX_G, align 4
  %607 = call i8* @READ_RADIO_REG2(%struct.brcms_phy* %602, i32 %603, i32 %604, i32 %605, i32 %606)
  %608 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %609 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %608, i32 0, i32 1
  %610 = load i8**, i8*** %609, align 8
  %611 = load i32, i32* %6, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i8*, i8** %610, i64 %612
  store i8* %607, i8** %613, align 8
  %614 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %615 = load i32, i32* @RADIO_2056, align 4
  %616 = load i32, i32* @TX, align 4
  %617 = load i32, i32* %6, align 4
  %618 = load i32, i32* @INTPAG_MASTER, align 4
  %619 = call i8* @READ_RADIO_REG2(%struct.brcms_phy* %614, i32 %615, i32 %616, i32 %617, i32 %618)
  %620 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %621 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %620, i32 0, i32 0
  %622 = load i8**, i8*** %621, align 8
  %623 = load i32, i32* %6, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i8*, i8** %622, i64 %624
  store i8* %619, i8** %625, align 8
  %626 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %627 = load i32, i32* @RADIO_2056, align 4
  %628 = load i32, i32* @RX, align 4
  %629 = load i32, i32* %6, align 4
  %630 = load i32, i32* @TXFBMIX_G, align 4
  %631 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %626, i32 %627, i32 %628, i32 %629, i32 %630, i32 3)
  %632 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %633 = load i32, i32* @RADIO_2056, align 4
  %634 = load i32, i32* @TX, align 4
  %635 = load i32, i32* %6, align 4
  %636 = load i32, i32* @INTPAG_MASTER, align 4
  %637 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %632, i32 %633, i32 %634, i32 %635, i32 %636, i32 4)
  br label %675

638:                                              ; preds = %527
  %639 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %640 = load i32, i32* @RADIO_2056, align 4
  %641 = load i32, i32* @RX, align 4
  %642 = load i32, i32* %6, align 4
  %643 = load i32, i32* @TXFBMIX_A, align 4
  %644 = call i8* @READ_RADIO_REG2(%struct.brcms_phy* %639, i32 %640, i32 %641, i32 %642, i32 %643)
  %645 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %646 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %645, i32 0, i32 1
  %647 = load i8**, i8*** %646, align 8
  %648 = load i32, i32* %6, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i8*, i8** %647, i64 %649
  store i8* %644, i8** %650, align 8
  %651 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %652 = load i32, i32* @RADIO_2056, align 4
  %653 = load i32, i32* @TX, align 4
  %654 = load i32, i32* %6, align 4
  %655 = load i32, i32* @INTPAA_MASTER, align 4
  %656 = call i8* @READ_RADIO_REG2(%struct.brcms_phy* %651, i32 %652, i32 %653, i32 %654, i32 %655)
  %657 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %5, align 8
  %658 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %657, i32 0, i32 0
  %659 = load i8**, i8*** %658, align 8
  %660 = load i32, i32* %6, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8*, i8** %659, i64 %661
  store i8* %656, i8** %662, align 8
  %663 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %664 = load i32, i32* @RADIO_2056, align 4
  %665 = load i32, i32* @RX, align 4
  %666 = load i32, i32* %6, align 4
  %667 = load i32, i32* @TXFBMIX_A, align 4
  %668 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %663, i32 %664, i32 %665, i32 %666, i32 %667, i32 3)
  %669 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %670 = load i32, i32* @RADIO_2056, align 4
  %671 = load i32, i32* @TX, align 4
  %672 = load i32, i32* %6, align 4
  %673 = load i32, i32* @INTPAA_MASTER, align 4
  %674 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %669, i32 %670, i32 %671, i32 %672, i32 %673, i32 4)
  br label %675

675:                                              ; preds = %638, %601
  store i32 4000, i32* %7, align 4
  %676 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %677 = load i32, i32* %7, align 4
  %678 = call i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy* %676, i32 %677, i32 181, i32 0, i32 0, i32 0)
  %679 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %680 = load i32, i32* %6, align 4
  %681 = load i32, i32* @PHY_CORE_0, align 4
  %682 = icmp eq i32 %680, %681
  %683 = zext i1 %682 to i64
  %684 = select i1 %682, i32 663, i32 667
  %685 = call i32 @mod_phy_reg(%struct.brcms_phy* %679, i32 %684, i32 1, i32 1)
  %686 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %687 = load i32, i32* %8, align 4
  %688 = load i32, i32* @PHY_CORE_0, align 4
  %689 = icmp eq i32 %687, %688
  %690 = zext i1 %689 to i64
  %691 = select i1 %689, i32 663, i32 667
  %692 = call i32 @mod_phy_reg(%struct.brcms_phy* %686, i32 %691, i32 1, i32 0)
  %693 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %694 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %693, i32 8, i32 0, i32 3, i32 0)
  br label %695

695:                                              ; preds = %675, %491
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_read_lpf_bw_ctl_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_1tomany_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i8* @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i8* @READ_RADIO_REG3(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i32 @WRITE_RADIO_REG3(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_tx_tone_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i8* @READ_RADIO_REG2(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i32 @WRITE_RADIO_REG2(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
