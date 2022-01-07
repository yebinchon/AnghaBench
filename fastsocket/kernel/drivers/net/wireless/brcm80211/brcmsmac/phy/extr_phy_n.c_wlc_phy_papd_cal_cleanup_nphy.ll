; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_papd_cal_cleanup_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_papd_cal_cleanup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.nphy_papd_restore_state = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }

@RADIO_2057 = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@TXRXCOUPLE_2G_PWRUP = common dso_local global i32 0, align 4
@TXRXCOUPLE_2G_ATTEN = common dso_local global i32 0, align 4
@TXRXCOUPLE_5G_PWRUP = common dso_local global i32 0, align 4
@TXRXCOUPLE_5G_ATTEN = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID1 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID2 = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i64 0, align 8
@RADIO_2056 = common dso_local global i32 0, align 4
@RX = common dso_local global i32 0, align 4
@VGA_MASTER = common dso_local global i32 0, align 4
@TXFBMIX_G = common dso_local global i32 0, align 4
@INTPAG_MASTER = common dso_local global i32 0, align 4
@TXFBMIX_A = common dso_local global i32 0, align 4
@INTPAA_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.nphy_papd_restore_state*)* @wlc_phy_papd_cal_cleanup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_papd_cal_cleanup_nphy(%struct.brcms_phy* %0, %struct.nphy_papd_restore_state* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca %struct.nphy_papd_restore_state*, align 8
  %5 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store %struct.nphy_papd_restore_state* %1, %struct.nphy_papd_restore_state** %4, align 8
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %7 = call i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy* %6)
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @NREV_GE(i32 %11, i32 7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %206

14:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %67, %14
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %16, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %15
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @CHSPEC_IS2G(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = load i32, i32* @RADIO_2057, align 4
  %31 = load i32, i32* @TX, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @TXRXCOUPLE_2G_PWRUP, align 4
  %34 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %29, i32 %30, i32 %31, i64 %32, i32 %33, i32 0)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %36 = load i32, i32* @RADIO_2057, align 4
  %37 = load i32, i32* @TX, align 4
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @TXRXCOUPLE_2G_ATTEN, align 4
  %40 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %41 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %35, i32 %36, i32 %37, i64 %38, i32 %39, i32 %45)
  br label %66

47:                                               ; preds = %22
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %49 = load i32, i32* @RADIO_2057, align 4
  %50 = load i32, i32* @TX, align 4
  %51 = load i64, i64* %5, align 8
  %52 = load i32, i32* @TXRXCOUPLE_5G_PWRUP, align 4
  %53 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %48, i32 %49, i32 %50, i64 %51, i32 %52, i32 0)
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = load i32, i32* @RADIO_2057, align 4
  %56 = load i32, i32* @TX, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load i32, i32* @TXRXCOUPLE_5G_ATTEN, align 4
  %59 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %60 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %54, i32 %55, i32 %56, i64 %57, i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %47, %28
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %15

70:                                               ; preds = %15
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %72 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 6
  br i1 %81, label %82, label %86

82:                                               ; preds = %76, %70
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %84 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %85 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %83, i32 4, i32 1, i32 3, i32 0, i32 %84)
  br label %90

86:                                               ; preds = %76
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %88 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %89 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %87, i32 4, i32 0, i32 3, i32 1, i32 %88)
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %92 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %93 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %91, i32 2, i32 0, i32 3, i32 1, i32 %92)
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %95 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %96 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %94, i32 1, i32 0, i32 3, i32 1, i32 %95)
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %98 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %99 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %97, i32 4, i32 0, i32 3, i32 1, i32 %98)
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %101 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %102 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %100, i32 2048, i32 1, i32 3, i32 1, i32 %101)
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %104 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %105 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %103, i32 8, i32 0, i32 3, i32 1, i32 %104)
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %107 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %108 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %106, i32 2048, i32 0, i32 3, i32 1, i32 %107)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %110 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %111 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %109, i32 4096, i32 0, i32 3, i32 1, i32 %110)
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %113 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %114 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %112, i32 4, i32 1, i32 3, i32 1, i32 %113)
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %116 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %117 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %115, i32 1, i32 0, i32 3, i32 1, i32 %116)
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %119 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %120 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %118, i32 2, i32 1, i32 3, i32 1, i32 %119)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %122 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %123 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %121, i32 256, i32 0, i32 3, i32 1, i32 %122)
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %125 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %126 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %124, i32 512, i32 1, i32 3, i32 1, i32 %125)
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %128 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %129 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %127, i32 1024, i32 0, i32 3, i32 1, i32 %128)
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %131 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %132 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %130, i32 8, i32 1, i32 3, i32 1, i32 %131)
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %134 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %135 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %133, i32 32, i32 0, i32 3, i32 1, i32 %134)
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %137 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %138 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %136, i32 16, i32 0, i32 3, i32 1, i32 %137)
  store i64 0, i64* %5, align 8
  br label %139

139:                                              ; preds = %173, %90
  %140 = load i64, i64* %5, align 8
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %142 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ult i64 %140, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %139
  %147 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %148 = load i64, i64* %5, align 8
  %149 = load i64, i64* @PHY_CORE_0, align 8
  %150 = icmp eq i64 %148, %149
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 166, i32 167
  %153 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %154 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %5, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @write_phy_reg(%struct.brcms_phy* %147, i32 %152, i32 %158)
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* @PHY_CORE_0, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 143, i32 165
  %166 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %167 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* %5, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @write_phy_reg(%struct.brcms_phy* %160, i32 %165, i32 %171)
  br label %173

173:                                              ; preds = %146
  %174 = load i64, i64* %5, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %5, align 8
  br label %139

176:                                              ; preds = %139
  %177 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %178 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %179 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = ashr i32 %180, 8
  %182 = and i32 %181, 255
  %183 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %184 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, 255
  %187 = call i32 @wlc_phy_ipa_set_bbmult_nphy(%struct.brcms_phy* %177, i32 %182, i32 %186)
  %188 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %189 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @NREV_IS(i32 %191, i32 7)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %176
  %195 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %196 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @NREV_GE(i32 %198, i32 8)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %194, %176
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %203 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %204 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %202, i32 128, i32 0, i32 0, i32 1, i32 %203)
  br label %205

205:                                              ; preds = %201, %194
  br label %336

206:                                              ; preds = %2
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %208 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %207, i32 4096, i32 0, i32 3, i32 1)
  %209 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %210 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %209, i32 8192, i32 0, i32 3, i32 1)
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %212 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %211, i32 1, i32 0, i32 3, i32 1)
  %213 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %214 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %213, i32 4, i32 0, i32 3, i32 1)
  %215 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %216 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %215, i32 2, i32 0, i32 3, i32 1)
  store i64 0, i64* %5, align 8
  br label %217

217:                                              ; preds = %319, %206
  %218 = load i64, i64* %5, align 8
  %219 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %220 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ult i64 %218, %222
  br i1 %223, label %224, label %322

224:                                              ; preds = %217
  %225 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %226 = load i32, i32* @RADIO_2056, align 4
  %227 = load i32, i32* @RX, align 4
  %228 = load i64, i64* %5, align 8
  %229 = load i32, i32* @VGA_MASTER, align 4
  %230 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %231 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %230, i32 0, i32 5
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* %5, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %225, i32 %226, i32 %227, i64 %228, i32 %229, i32 %235)
  %237 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %238 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i64 @CHSPEC_IS2G(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %267

242:                                              ; preds = %224
  %243 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %244 = load i32, i32* @RADIO_2056, align 4
  %245 = load i32, i32* @RX, align 4
  %246 = load i64, i64* %5, align 8
  %247 = load i32, i32* @TXFBMIX_G, align 4
  %248 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %249 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* %5, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %243, i32 %244, i32 %245, i64 %246, i32 %247, i32 %253)
  %255 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %256 = load i32, i32* @RADIO_2056, align 4
  %257 = load i32, i32* @TX, align 4
  %258 = load i64, i64* %5, align 8
  %259 = load i32, i32* @INTPAG_MASTER, align 4
  %260 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %261 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %260, i32 0, i32 3
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %5, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %255, i32 %256, i32 %257, i64 %258, i32 %259, i32 %265)
  br label %292

267:                                              ; preds = %224
  %268 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %269 = load i32, i32* @RADIO_2056, align 4
  %270 = load i32, i32* @RX, align 4
  %271 = load i64, i64* %5, align 8
  %272 = load i32, i32* @TXFBMIX_A, align 4
  %273 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %274 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %273, i32 0, i32 4
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* %5, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %268, i32 %269, i32 %270, i64 %271, i32 %272, i32 %278)
  %280 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %281 = load i32, i32* @RADIO_2056, align 4
  %282 = load i32, i32* @TX, align 4
  %283 = load i64, i64* %5, align 8
  %284 = load i32, i32* @INTPAA_MASTER, align 4
  %285 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %286 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %285, i32 0, i32 3
  %287 = load i32*, i32** %286, align 8
  %288 = load i64, i64* %5, align 8
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %280, i32 %281, i32 %282, i64 %283, i32 %284, i32 %290)
  br label %292

292:                                              ; preds = %267, %242
  %293 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %294 = load i64, i64* %5, align 8
  %295 = load i64, i64* @PHY_CORE_0, align 8
  %296 = icmp eq i64 %294, %295
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i32 166, i32 167
  %299 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %300 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = load i64, i64* %5, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @write_phy_reg(%struct.brcms_phy* %293, i32 %298, i32 %304)
  %306 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %307 = load i64, i64* %5, align 8
  %308 = load i64, i64* @PHY_CORE_0, align 8
  %309 = icmp eq i64 %307, %308
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i32 143, i32 165
  %312 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %313 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = load i64, i64* %5, align 8
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @write_phy_reg(%struct.brcms_phy* %306, i32 %311, i32 %317)
  br label %319

319:                                              ; preds = %292
  %320 = load i64, i64* %5, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %5, align 8
  br label %217

322:                                              ; preds = %217
  %323 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %324 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %325 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = ashr i32 %326, 8
  %328 = and i32 %327, 255
  %329 = load %struct.nphy_papd_restore_state*, %struct.nphy_papd_restore_state** %4, align 8
  %330 = getelementptr inbounds %struct.nphy_papd_restore_state, %struct.nphy_papd_restore_state* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = and i32 %331, 255
  %333 = call i32 @wlc_phy_ipa_set_bbmult_nphy(%struct.brcms_phy* %323, i32 %328, i32 %332)
  %334 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %335 = call i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy* %334, i32 8, i32 0, i32 3, i32 1)
  br label %336

336:                                              ; preds = %322, %205
  ret void
}

declare dso_local i32 @wlc_phy_stopplayback_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @WRITE_RADIO_REG3(%struct.brcms_phy*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_ipa_set_bbmult_nphy(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy(%struct.brcms_phy*, i32, i32, i32, i32) #1

declare dso_local i32 @WRITE_RADIO_REG2(%struct.brcms_phy*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
