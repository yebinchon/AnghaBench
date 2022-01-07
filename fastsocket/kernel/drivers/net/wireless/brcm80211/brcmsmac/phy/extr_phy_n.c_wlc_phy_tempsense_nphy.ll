; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_tempsense_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_tempsense_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@RADIO_2057_TEMPSENSE_CONFIG = common dso_local global i32 0, align 4
@NPHY_TBL_ID_AFECTRL = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID2 = common dso_local global i32 0, align 4
@NPHY_RSSI_SEL_IQ = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM5357 = common dso_local global i64 0, align 8
@RADIO_2056_SYN_TEMPPROCSENSE = common dso_local global i32 0, align 4
@RADIO_2055_PWRDET_RXTX_CORE1 = common dso_local global i32 0, align 4
@RADIO_2055_PWRDET_RXTX_CORE2 = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TXRF_IQCAL1 = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_TXRF_IQCAL2 = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TXRF_IQCAL1 = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_TXRF_IQCAL2 = common dso_local global i32 0, align 4
@RADIO_2055_PD_PLL_TS = common dso_local global i32 0, align 4
@RADIO_2055_CAL_TS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wlc_phy_tempsense_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i64 0, i64* %18, align 8
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @NREV_GE(i32 %37, i32 7)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %280

40:                                               ; preds = %1
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = load i32, i32* @RADIO_2057_TEMPSENSE_CONFIG, align 4
  %43 = call i32 @read_radio_reg(%struct.brcms_phy* %41, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %45 = call i32 @read_phy_reg(%struct.brcms_phy* %44, i32 166)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = call i32 @read_phy_reg(%struct.brcms_phy* %46, i32 167)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = call i32 @read_phy_reg(%struct.brcms_phy* %48, i32 143)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = call i32 @read_phy_reg(%struct.brcms_phy* %50, i32 165)
  store i32 %51, i32* %12, align 4
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = call i32 @read_phy_reg(%struct.brcms_phy* %52, i32 430)
  store i32 %53, i32* %32, align 4
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = call i32 @read_phy_reg(%struct.brcms_phy* %54, i32 838)
  store i32 %55, i32* %28, align 4
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %57 = call i32 @read_phy_reg(%struct.brcms_phy* %56, i32 839)
  store i32 %57, i32* %29, align 4
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = call i32 @read_phy_reg(%struct.brcms_phy* %58, i32 836)
  store i32 %59, i32* %30, align 4
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = call i32 @read_phy_reg(%struct.brcms_phy* %60, i32 837)
  store i32 %61, i32* %31, align 4
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %64 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %62, i32 %63, i32 1, i32 10, i32 16, i32* %21)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %66 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %67 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %65, i32 %66, i32 1, i32 14, i32 16, i32* %22)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %70 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %68, i32 %69, i32 1, i32 2, i32 16, i32* %23)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %72 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %73 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %71, i32 %72, i32 1, i32 3, i32 16, i32* %24)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = call i32 @write_phy_reg(%struct.brcms_phy* %74, i32 430, i32 0)
  store i32 0, i32* %25, align 4
  store i32 32, i32* %26, align 4
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %78 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %76, i32 %77, i32 1, i32 2, i32 16, i32* %25)
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %81 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %79, i32 %80, i32 1, i32 3, i32 16, i32* %26)
  %82 = load i32, i32* %17, align 4
  %83 = and i32 %82, 28
  store i32 %83, i32* %33, align 4
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = load i32, i32* @RADIO_2057_TEMPSENSE_CONFIG, align 4
  %86 = load i32, i32* %33, align 4
  %87 = or i32 %86, 1
  %88 = call i32 @write_radio_reg(%struct.brcms_phy* %84, i32 %85, i32 %87)
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %90 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %91 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %89, i32 2, i32 1, i32 0, i32 0, i32 %90)
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = call i32 @mod_phy_reg(%struct.brcms_phy* %92, i32 166, i32 128, i32 0)
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = call i32 @mod_phy_reg(%struct.brcms_phy* %94, i32 167, i32 128, i32 0)
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %97 = call i32 @mod_phy_reg(%struct.brcms_phy* %96, i32 143, i32 128, i32 128)
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %99 = call i32 @mod_phy_reg(%struct.brcms_phy* %98, i32 165, i32 128, i32 128)
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %101 = call i32 @mod_phy_reg(%struct.brcms_phy* %100, i32 166, i32 4, i32 4)
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %103 = call i32 @mod_phy_reg(%struct.brcms_phy* %102, i32 167, i32 4, i32 4)
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = call i32 @mod_phy_reg(%struct.brcms_phy* %104, i32 143, i32 4, i32 4)
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %107 = call i32 @mod_phy_reg(%struct.brcms_phy* %106, i32 165, i32 4, i32 4)
  %108 = call i32 @udelay(i32 5)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %110 = call i32 @mod_phy_reg(%struct.brcms_phy* %109, i32 166, i32 4, i32 0)
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %112 = call i32 @mod_phy_reg(%struct.brcms_phy* %111, i32 167, i32 4, i32 0)
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %114 = call i32 @mod_phy_reg(%struct.brcms_phy* %113, i32 166, i32 8, i32 0)
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %116 = call i32 @mod_phy_reg(%struct.brcms_phy* %115, i32 167, i32 8, i32 0)
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = call i32 @mod_phy_reg(%struct.brcms_phy* %117, i32 143, i32 8, i32 8)
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %120 = call i32 @mod_phy_reg(%struct.brcms_phy* %119, i32 165, i32 8, i32 8)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %122 = call i32 @mod_phy_reg(%struct.brcms_phy* %121, i32 166, i32 64, i32 0)
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %124 = call i32 @mod_phy_reg(%struct.brcms_phy* %123, i32 167, i32 64, i32 0)
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = call i32 @mod_phy_reg(%struct.brcms_phy* %125, i32 143, i32 64, i32 64)
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %128 = call i32 @mod_phy_reg(%struct.brcms_phy* %127, i32 165, i32 64, i32 64)
  store i32 163, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %130 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %131 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %129, i32 %130, i32 1, i32 10, i32 16, i32* %19)
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %133 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %134 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %132, i32 %133, i32 1, i32 14, i32 16, i32* %20)
  %135 = call i32 @udelay(i32 3)
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %137 = load i32, i32* @NPHY_RSSI_SEL_IQ, align 4
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %139 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %136, i32 %137, i32* %138, i32 1)
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %141 = load i32, i32* @RADIO_2057_TEMPSENSE_CONFIG, align 4
  %142 = load i32, i32* %33, align 4
  %143 = or i32 %142, 3
  %144 = call i32 @write_radio_reg(%struct.brcms_phy* %140, i32 %141, i32 %143)
  %145 = call i32 @udelay(i32 5)
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %147 = load i32, i32* @NPHY_RSSI_SEL_IQ, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %149 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %146, i32 %147, i32* %148, i32 1)
  store i32 7, i32* %20, align 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %151, %153
  %155 = icmp slt i32 %154, -30
  br i1 %155, label %156, label %157

156:                                              ; preds = %40
  store i32 69, i32* %19, align 4
  store i32 263, i32* %27, align 4
  br label %176

157:                                              ; preds = %40
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %159, %161
  %163 = icmp slt i32 %162, -9
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  store i32 512, i32* %19, align 4
  store i32 467, i32* %27, align 4
  br label %175

165:                                              ; preds = %157
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %167, %169
  %171 = icmp slt i32 %170, 11
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i32 614, i32* %19, align 4
  store i32 634, i32* %27, align 4
  br label %174

173:                                              ; preds = %165
  store i32 725, i32* %19, align 4
  store i32 816, i32* %27, align 4
  br label %174

174:                                              ; preds = %173, %172
  br label %175

175:                                              ; preds = %174, %164
  br label %176

176:                                              ; preds = %175, %156
  %177 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %178 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %179 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %177, i32 %178, i32 1, i32 10, i32 16, i32* %19)
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %181 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %182 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %180, i32 %181, i32 1, i32 14, i32 16, i32* %20)
  %183 = call i32 @udelay(i32 3)
  %184 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %185 = load i32, i32* @NPHY_RSSI_SEL_IQ, align 4
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %187 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %184, i32 %185, i32* %186, i32 1)
  %188 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %189 = load i32, i32* @RADIO_2057_TEMPSENSE_CONFIG, align 4
  %190 = load i32, i32* %33, align 4
  %191 = or i32 %190, 1
  %192 = call i32 @write_radio_reg(%struct.brcms_phy* %188, i32 %189, i32 %191)
  %193 = call i32 @udelay(i32 5)
  %194 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %195 = load i32, i32* @NPHY_RSSI_SEL_IQ, align 4
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %197 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %194, i32 %195, i32* %196, i32 1)
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %199 = load i32, i32* @RADIO_2057_TEMPSENSE_CONFIG, align 4
  %200 = load i32, i32* %17, align 4
  %201 = call i32 @write_radio_reg(%struct.brcms_phy* %198, i32 %199, i32 %200)
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @write_phy_reg(%struct.brcms_phy* %202, i32 166, i32 %203)
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @write_phy_reg(%struct.brcms_phy* %205, i32 167, i32 %206)
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @write_phy_reg(%struct.brcms_phy* %208, i32 143, i32 %209)
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @write_phy_reg(%struct.brcms_phy* %211, i32 165, i32 %212)
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %215 = load i32, i32* %32, align 4
  %216 = call i32 @write_phy_reg(%struct.brcms_phy* %214, i32 430, i32 %215)
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %218 = load i32, i32* %28, align 4
  %219 = call i32 @write_phy_reg(%struct.brcms_phy* %217, i32 838, i32 %218)
  %220 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %221 = load i32, i32* %29, align 4
  %222 = call i32 @write_phy_reg(%struct.brcms_phy* %220, i32 839, i32 %221)
  %223 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %224 = load i32, i32* %30, align 4
  %225 = call i32 @write_phy_reg(%struct.brcms_phy* %223, i32 836, i32 %224)
  %226 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %227 = load i32, i32* %30, align 4
  %228 = call i32 @write_phy_reg(%struct.brcms_phy* %226, i32 837, i32 %227)
  %229 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %230 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %231 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %229, i32 %230, i32 1, i32 10, i32 16, i32* %21)
  %232 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %233 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %234 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %232, i32 %233, i32 1, i32 14, i32 16, i32* %22)
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %237 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %235, i32 %236, i32 1, i32 2, i32 16, i32* %23)
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %239 = load i32, i32* @NPHY_TBL_ID_AFECTRL, align 4
  %240 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %238, i32 %239, i32 1, i32 3, i32 16, i32* %24)
  %241 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %242 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %241, i32 0, i32 2
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @BCMA_CHIP_ID_BCM5357, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %262

248:                                              ; preds = %176
  %249 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %250, %252
  %254 = mul nsw i32 193, %253
  %255 = load i32, i32* %27, align 4
  %256 = mul nsw i32 88, %255
  %257 = add nsw i32 %254, %256
  %258 = sub nsw i32 %257, 27111
  %259 = add nsw i32 %258, 128
  %260 = sdiv i32 %259, 256
  %261 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %260, i32* %261, align 16
  br label %276

262:                                              ; preds = %176
  %263 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %264, %266
  %268 = mul nsw i32 179, %267
  %269 = load i32, i32* %27, align 4
  %270 = mul nsw i32 82, %269
  %271 = add nsw i32 %268, %270
  %272 = sub nsw i32 %271, 28861
  %273 = add nsw i32 %272, 128
  %274 = sdiv i32 %273, 256
  %275 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %274, i32* %275, align 16
  br label %276

276:                                              ; preds = %262, %248
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %278 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %18, align 8
  br label %530

280:                                              ; preds = %1
  %281 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %282 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i64 @NREV_GE(i32 %284, i32 3)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %369

287:                                              ; preds = %280
  %288 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %289 = load i32, i32* @RADIO_2056_SYN_TEMPPROCSENSE, align 4
  %290 = call i32 @read_radio_reg(%struct.brcms_phy* %288, i32 %289)
  store i32 %290, i32* %17, align 4
  %291 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %292 = call i32 @read_phy_reg(%struct.brcms_phy* %291, i32 166)
  store i32 %292, i32* %9, align 4
  %293 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %294 = call i32 @read_phy_reg(%struct.brcms_phy* %293, i32 167)
  store i32 %294, i32* %10, align 4
  %295 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %296 = call i32 @read_phy_reg(%struct.brcms_phy* %295, i32 143)
  store i32 %296, i32* %11, align 4
  %297 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %298 = call i32 @read_phy_reg(%struct.brcms_phy* %297, i32 165)
  store i32 %298, i32* %12, align 4
  %299 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %300 = call i32 @read_phy_reg(%struct.brcms_phy* %299, i32 202)
  store i32 %300, i32* %14, align 4
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %302 = load i32, i32* @RADIO_2056_SYN_TEMPPROCSENSE, align 4
  %303 = call i32 @write_radio_reg(%struct.brcms_phy* %301, i32 %302, i32 1)
  %304 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %305 = load i32, i32* @NPHY_RSSI_SEL_IQ, align 4
  %306 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %307 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %304, i32 %305, i32* %306, i32 1)
  %308 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %309 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i64 @NREV_LT(i32 %311, i32 7)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %287
  %315 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %316 = load i32, i32* @RADIO_2056_SYN_TEMPPROCSENSE, align 4
  %317 = call i32 @write_radio_reg(%struct.brcms_phy* %315, i32 %316, i32 5)
  br label %318

318:                                              ; preds = %314, %287
  %319 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %320 = load i32, i32* @NPHY_RSSI_SEL_IQ, align 4
  %321 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %322 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %319, i32 %320, i32* %321, i32 1)
  %323 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %324 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i64 @NREV_GE(i32 %326, i32 7)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %318
  %330 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %331 = load i32, i32* @RADIO_2057_TEMPSENSE_CONFIG, align 4
  %332 = call i32 @write_radio_reg(%struct.brcms_phy* %330, i32 %331, i32 1)
  br label %337

333:                                              ; preds = %318
  %334 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %335 = load i32, i32* @RADIO_2056_SYN_TEMPPROCSENSE, align 4
  %336 = call i32 @write_radio_reg(%struct.brcms_phy* %334, i32 %335, i32 1)
  br label %337

337:                                              ; preds = %333, %329
  %338 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %339, %341
  %343 = mul nsw i32 126, %342
  %344 = add nsw i32 %343, 3987
  %345 = sdiv i32 %344, 64
  %346 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %345, i32* %346, align 16
  %347 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %348 = load i32, i32* @RADIO_2056_SYN_TEMPPROCSENSE, align 4
  %349 = load i32, i32* %17, align 4
  %350 = call i32 @write_radio_reg(%struct.brcms_phy* %347, i32 %348, i32 %349)
  %351 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %352 = load i32, i32* %14, align 4
  %353 = call i32 @write_phy_reg(%struct.brcms_phy* %351, i32 202, i32 %352)
  %354 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %355 = load i32, i32* %9, align 4
  %356 = call i32 @write_phy_reg(%struct.brcms_phy* %354, i32 166, i32 %355)
  %357 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %358 = load i32, i32* %10, align 4
  %359 = call i32 @write_phy_reg(%struct.brcms_phy* %357, i32 167, i32 %358)
  %360 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %361 = load i32, i32* %11, align 4
  %362 = call i32 @write_phy_reg(%struct.brcms_phy* %360, i32 143, i32 %361)
  %363 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %364 = load i32, i32* %12, align 4
  %365 = call i32 @write_phy_reg(%struct.brcms_phy* %363, i32 165, i32 %364)
  %366 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %367 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %18, align 8
  br label %529

369:                                              ; preds = %280
  %370 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %371 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE1, align 4
  %372 = call i32 @read_radio_reg(%struct.brcms_phy* %370, i32 %371)
  store i32 %372, i32* %7, align 4
  %373 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %374 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE2, align 4
  %375 = call i32 @read_radio_reg(%struct.brcms_phy* %373, i32 %374)
  store i32 %375, i32* %8, align 4
  %376 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %377 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL1, align 4
  %378 = call i32 @read_radio_reg(%struct.brcms_phy* %376, i32 %377)
  store i32 %378, i32* %3, align 4
  %379 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %380 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL2, align 4
  %381 = call i32 @read_radio_reg(%struct.brcms_phy* %379, i32 %380)
  store i32 %381, i32* %4, align 4
  %382 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %383 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL1, align 4
  %384 = call i32 @read_radio_reg(%struct.brcms_phy* %382, i32 %383)
  store i32 %384, i32* %5, align 4
  %385 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %386 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL2, align 4
  %387 = call i32 @read_radio_reg(%struct.brcms_phy* %385, i32 %386)
  store i32 %387, i32* %6, align 4
  %388 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %389 = load i32, i32* @RADIO_2055_PD_PLL_TS, align 4
  %390 = call i32 @read_radio_reg(%struct.brcms_phy* %388, i32 %389)
  store i32 %390, i32* %13, align 4
  %391 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %392 = call i32 @read_phy_reg(%struct.brcms_phy* %391, i32 166)
  store i32 %392, i32* %9, align 4
  %393 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %394 = call i32 @read_phy_reg(%struct.brcms_phy* %393, i32 167)
  store i32 %394, i32* %10, align 4
  %395 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %396 = call i32 @read_phy_reg(%struct.brcms_phy* %395, i32 165)
  store i32 %396, i32* %11, align 4
  %397 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %398 = call i32 @read_phy_reg(%struct.brcms_phy* %397, i32 202)
  store i32 %398, i32* %14, align 4
  %399 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %400 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL1, align 4
  %401 = call i32 @write_radio_reg(%struct.brcms_phy* %399, i32 %400, i32 1)
  %402 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %403 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL1, align 4
  %404 = call i32 @write_radio_reg(%struct.brcms_phy* %402, i32 %403, i32 1)
  %405 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %406 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL2, align 4
  %407 = call i32 @write_radio_reg(%struct.brcms_phy* %405, i32 %406, i32 8)
  %408 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %409 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL2, align 4
  %410 = call i32 @write_radio_reg(%struct.brcms_phy* %408, i32 %409, i32 8)
  %411 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %412 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE1, align 4
  %413 = call i32 @write_radio_reg(%struct.brcms_phy* %411, i32 %412, i32 4)
  %414 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %415 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE2, align 4
  %416 = call i32 @write_radio_reg(%struct.brcms_phy* %414, i32 %415, i32 4)
  %417 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %418 = load i32, i32* @RADIO_2055_PD_PLL_TS, align 4
  %419 = call i32 @write_radio_reg(%struct.brcms_phy* %417, i32 %418, i32 0)
  %420 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %421 = load i32, i32* @NPHY_RSSI_SEL_IQ, align 4
  %422 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %423 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %420, i32 %421, i32* %422, i32 1)
  %424 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %425 = load i32, i32* @RADIO_2055_CAL_TS, align 4
  %426 = call i32 @xor_radio_reg(%struct.brcms_phy* %424, i32 %425, i32 128)
  %427 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %428 = load i32, i32* @NPHY_RSSI_SEL_IQ, align 4
  %429 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %430 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %427, i32 %428, i32* %429, i32 1)
  %431 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %432 = load i32, i32* @RADIO_2055_CAL_TS, align 4
  %433 = call i32 @xor_radio_reg(%struct.brcms_phy* %431, i32 %432, i32 128)
  %434 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %435 = load i32, i32* @NPHY_RSSI_SEL_IQ, align 4
  %436 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %437 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %434, i32 %435, i32* %436, i32 1)
  %438 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %439 = load i32, i32* @RADIO_2055_CAL_TS, align 4
  %440 = call i32 @xor_radio_reg(%struct.brcms_phy* %438, i32 %439, i32 128)
  %441 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %442 = load i32, i32* %441, align 16
  %443 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %444 = load i32, i32* %443, align 16
  %445 = add nsw i32 %442, %444
  %446 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %445, i32* %446, align 16
  %447 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %448 = load i32, i32* %447, align 4
  %449 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %450 = load i32, i32* %449, align 4
  %451 = add nsw i32 %448, %450
  %452 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %451, i32* %452, align 4
  %453 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %454 = load i32, i32* %453, align 8
  %455 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %456 = load i32, i32* %455, align 8
  %457 = add nsw i32 %454, %456
  %458 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %457, i32* %458, align 8
  %459 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %460 = load i32, i32* %459, align 4
  %461 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %462 = load i32, i32* %461, align 4
  %463 = add nsw i32 %460, %462
  %464 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %463, i32* %464, align 4
  %465 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %466 = load i32, i32* %465, align 16
  %467 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %468 = load i32, i32* %467, align 4
  %469 = add nsw i32 %466, %468
  %470 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %471 = load i32, i32* %470, align 8
  %472 = add nsw i32 %469, %471
  %473 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %474 = load i32, i32* %473, align 4
  %475 = add nsw i32 %472, %474
  %476 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %475, i32* %476, align 16
  %477 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %478 = load i32, i32* %477, align 16
  %479 = add nsw i32 %478, 256
  %480 = mul nsw i32 %479, 600
  %481 = sdiv i32 %480, 63
  %482 = add nsw i32 %481, 2800
  %483 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %482, i32* %483, align 16
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %485 = load i32, i32* %484, align 16
  %486 = sub nsw i32 %485, 3360
  %487 = sdiv i32 %486, 38
  %488 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %487, i32* %488, align 16
  %489 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %490 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE1, align 4
  %491 = load i32, i32* %7, align 4
  %492 = call i32 @write_radio_reg(%struct.brcms_phy* %489, i32 %490, i32 %491)
  %493 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %494 = load i32, i32* @RADIO_2055_PWRDET_RXTX_CORE2, align 4
  %495 = load i32, i32* %8, align 4
  %496 = call i32 @write_radio_reg(%struct.brcms_phy* %493, i32 %494, i32 %495)
  %497 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %498 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL1, align 4
  %499 = load i32, i32* %3, align 4
  %500 = call i32 @write_radio_reg(%struct.brcms_phy* %497, i32 %498, i32 %499)
  %501 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %502 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL1, align 4
  %503 = load i32, i32* %5, align 4
  %504 = call i32 @write_radio_reg(%struct.brcms_phy* %501, i32 %502, i32 %503)
  %505 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %506 = load i32, i32* @RADIO_2055_CORE1_TXRF_IQCAL2, align 4
  %507 = load i32, i32* %4, align 4
  %508 = call i32 @write_radio_reg(%struct.brcms_phy* %505, i32 %506, i32 %507)
  %509 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %510 = load i32, i32* @RADIO_2055_CORE2_TXRF_IQCAL2, align 4
  %511 = load i32, i32* %6, align 4
  %512 = call i32 @write_radio_reg(%struct.brcms_phy* %509, i32 %510, i32 %511)
  %513 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %514 = load i32, i32* @RADIO_2055_PD_PLL_TS, align 4
  %515 = load i32, i32* %13, align 4
  %516 = call i32 @write_radio_reg(%struct.brcms_phy* %513, i32 %514, i32 %515)
  %517 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %518 = load i32, i32* %14, align 4
  %519 = call i32 @write_phy_reg(%struct.brcms_phy* %517, i32 202, i32 %518)
  %520 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %521 = load i32, i32* %9, align 4
  %522 = call i32 @write_phy_reg(%struct.brcms_phy* %520, i32 166, i32 %521)
  %523 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %524 = load i32, i32* %10, align 4
  %525 = call i32 @write_phy_reg(%struct.brcms_phy* %523, i32 167, i32 %524)
  %526 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %527 = load i32, i32* %11, align 4
  %528 = call i32 @write_phy_reg(%struct.brcms_phy* %526, i32 165, i32 %527)
  br label %529

529:                                              ; preds = %369, %337
  br label %530

530:                                              ; preds = %529, %276
  %531 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %532 = load i32, i32* %531, align 16
  %533 = sext i32 %532 to i64
  %534 = load i64, i64* %18, align 8
  %535 = add nsw i64 %533, %534
  ret i64 %535
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy*, i32, i32*, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @xor_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
