; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_iq_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32 }
%struct.lcnphy_rx_iqcomp = type { i64, i64, i64 }
%struct.lcnphy_txgains = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_OFF = common dso_local global i32 0, align 4
@rxiq_cal_rf_reg = common dso_local global i32* null, align 8
@RADIO_2064_REG116 = common dso_local global i32 0, align 4
@RADIO_2064_REG12C = common dso_local global i32 0, align 4
@RADIO_2064_REG06A = common dso_local global i32 0, align 4
@RADIO_2064_REG098 = common dso_local global i32 0, align 4
@RADIO_2064_REG00B = common dso_local global i32 0, align 4
@RADIO_2064_REG113 = common dso_local global i32 0, align 4
@RADIO_2064_REG01D = common dso_local global i32 0, align 4
@RADIO_2064_REG114 = common dso_local global i32 0, align 4
@RADIO_2064_REG02E = common dso_local global i32 0, align 4
@RADIO_2064_REG12A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, %struct.lcnphy_rx_iqcomp*, i32, i32, i32, i32, i32)* @wlc_lcnphy_rx_iq_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_rx_iq_cal(%struct.brcms_phy* %0, %struct.lcnphy_rx_iqcomp* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcms_phy*, align 8
  %10 = alloca %struct.lcnphy_rx_iqcomp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lcnphy_txgains, align 4
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca [11 x i32], align 16
  %39 = alloca i32*, align 8
  %40 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %9, align 8
  store %struct.lcnphy_rx_iqcomp* %1, %struct.lcnphy_rx_iqcomp** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %43, align 8
  store %struct.brcms_phy_lcnphy* %44, %struct.brcms_phy_lcnphy** %40, align 8
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call i32* @kmalloc(i32 524, i32 %45)
  store i32* %46, i32** %39, align 8
  %47 = load i32*, i32** %39, align 8
  %48 = icmp eq i32* null, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %336

50:                                               ; preds = %7
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %89

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %87, %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %54
  %59 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %59, i64 %61
  %63 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @CHSPEC_CHANNEL(i32 %67)
  %69 = icmp eq i64 %64, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %58
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %72 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %72, i64 %74
  %76 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.lcnphy_rx_iqcomp*, %struct.lcnphy_rx_iqcomp** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %79, i64 %81
  %83 = getelementptr inbounds %struct.lcnphy_rx_iqcomp, %struct.lcnphy_rx_iqcomp* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @wlc_lcnphy_set_rx_iq_comp(%struct.brcms_phy* %71, i32 %78, i32 %85)
  store i32 1, i32* %19, align 4
  br label %88

87:                                               ; preds = %58
  br label %54

88:                                               ; preds = %70, %54
  br label %332

89:                                               ; preds = %50
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %331

92:                                               ; preds = %89
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %94 = call i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %93)
  store i32 %94, i32* %17, align 4
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %96 = load i32, i32* @LCNPHY_TX_PWR_CTRL_OFF, align 4
  %97 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %95, i32 %96)
  store i32 0, i32* %21, align 4
  br label %98

98:                                               ; preds = %112, %92
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %99, 11
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %103 = load i32*, i32** @rxiq_cal_rf_reg, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @read_radio_reg(%struct.brcms_phy* %102, i32 %107)
  %109 = load i32, i32* %21, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [11 x i32], [11 x i32]* %38, i64 0, i64 %110
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %21, align 4
  br label %98

115:                                              ; preds = %98
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %117 = call i32 @read_phy_reg(%struct.brcms_phy* %116, i32 1585)
  store i32 %117, i32* %22, align 4
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %119 = call i32 @or_phy_reg(%struct.brcms_phy* %118, i32 1585, i32 21)
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %121 = call i32 @read_phy_reg(%struct.brcms_phy* %120, i32 1100)
  store i32 %121, i32* %23, align 4
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %123 = call i32 @read_phy_reg(%struct.brcms_phy* %122, i32 1101)
  store i32 %123, i32* %24, align 4
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %125 = call i32 @read_phy_reg(%struct.brcms_phy* %124, i32 1200)
  store i32 %125, i32* %25, align 4
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %127 = call i32 @read_phy_reg(%struct.brcms_phy* %126, i32 1201)
  store i32 %127, i32* %26, align 4
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %129 = call i32 @read_phy_reg(%struct.brcms_phy* %128, i32 1273)
  store i32 %129, i32* %27, align 4
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %131 = call i32 @read_phy_reg(%struct.brcms_phy* %130, i32 1274)
  store i32 %131, i32* %28, align 4
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %133 = call i32 @read_phy_reg(%struct.brcms_phy* %132, i32 2360)
  store i32 %133, i32* %29, align 4
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %135 = call i32 @read_phy_reg(%struct.brcms_phy* %134, i32 2361)
  store i32 %135, i32* %30, align 4
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %137 = call i32 @read_phy_reg(%struct.brcms_phy* %136, i32 1083)
  store i32 %137, i32* %31, align 4
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %139 = call i32 @read_phy_reg(%struct.brcms_phy* %138, i32 1084)
  store i32 %139, i32* %32, align 4
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %141 = call i32 @read_phy_reg(%struct.brcms_phy* %140, i32 1754)
  store i32 %141, i32* %36, align 4
  %142 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %143 = call i32 @read_phy_reg(%struct.brcms_phy* %142, i32 1755)
  store i32 %143, i32* %37, align 4
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %145 = call i32 @wlc_lcnphy_tx_gain_override_enabled(%struct.brcms_phy* %144)
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %115
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %150 = call i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy* %149, %struct.lcnphy_txgains* %16)
  %151 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %40, align 8
  %152 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %18, align 4
  br label %154

154:                                              ; preds = %148, %115
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %155, i32 %156)
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %159 = call i32 @mod_phy_reg(%struct.brcms_phy* %158, i32 1273, i32 1, i32 1)
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %161 = call i32 @mod_phy_reg(%struct.brcms_phy* %160, i32 1274, i32 1, i32 0)
  %162 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %163 = call i32 @mod_phy_reg(%struct.brcms_phy* %162, i32 1083, i32 2, i32 2)
  %164 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %165 = call i32 @mod_phy_reg(%struct.brcms_phy* %164, i32 1084, i32 2, i32 0)
  %166 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %167 = load i32, i32* @RADIO_2064_REG116, align 4
  %168 = call i32 @write_radio_reg(%struct.brcms_phy* %166, i32 %167, i32 6)
  %169 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %170 = load i32, i32* @RADIO_2064_REG12C, align 4
  %171 = call i32 @write_radio_reg(%struct.brcms_phy* %169, i32 %170, i32 7)
  %172 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %173 = load i32, i32* @RADIO_2064_REG06A, align 4
  %174 = call i32 @write_radio_reg(%struct.brcms_phy* %172, i32 %173, i32 211)
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %176 = load i32, i32* @RADIO_2064_REG098, align 4
  %177 = call i32 @write_radio_reg(%struct.brcms_phy* %175, i32 %176, i32 3)
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %179 = load i32, i32* @RADIO_2064_REG00B, align 4
  %180 = call i32 @write_radio_reg(%struct.brcms_phy* %178, i32 %179, i32 7)
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %182 = load i32, i32* @RADIO_2064_REG113, align 4
  %183 = call i32 @mod_radio_reg(%struct.brcms_phy* %181, i32 %182, i32 16, i32 16)
  %184 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %185 = load i32, i32* @RADIO_2064_REG01D, align 4
  %186 = call i32 @write_radio_reg(%struct.brcms_phy* %184, i32 %185, i32 1)
  %187 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %188 = load i32, i32* @RADIO_2064_REG114, align 4
  %189 = call i32 @write_radio_reg(%struct.brcms_phy* %187, i32 %188, i32 1)
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %191 = load i32, i32* @RADIO_2064_REG02E, align 4
  %192 = call i32 @write_radio_reg(%struct.brcms_phy* %190, i32 %191, i32 16)
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %194 = load i32, i32* @RADIO_2064_REG12A, align 4
  %195 = call i32 @write_radio_reg(%struct.brcms_phy* %193, i32 %194, i32 8)
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %197 = call i32 @mod_phy_reg(%struct.brcms_phy* %196, i32 2360, i32 1, i32 1)
  %198 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %199 = call i32 @mod_phy_reg(%struct.brcms_phy* %198, i32 2361, i32 1, i32 0)
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %201 = call i32 @mod_phy_reg(%struct.brcms_phy* %200, i32 2360, i32 2, i32 2)
  %202 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %203 = call i32 @mod_phy_reg(%struct.brcms_phy* %202, i32 2361, i32 2, i32 2)
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %205 = call i32 @mod_phy_reg(%struct.brcms_phy* %204, i32 2360, i32 4, i32 4)
  %206 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %207 = call i32 @mod_phy_reg(%struct.brcms_phy* %206, i32 2361, i32 4, i32 4)
  %208 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %209 = call i32 @mod_phy_reg(%struct.brcms_phy* %208, i32 2360, i32 8, i32 8)
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %211 = call i32 @mod_phy_reg(%struct.brcms_phy* %210, i32 2361, i32 8, i32 8)
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %213 = call i32 @mod_phy_reg(%struct.brcms_phy* %212, i32 2360, i32 32, i32 32)
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %215 = call i32 @mod_phy_reg(%struct.brcms_phy* %214, i32 2361, i32 32, i32 0)
  %216 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %217 = call i32 @mod_phy_reg(%struct.brcms_phy* %216, i32 1083, i32 1, i32 1)
  %218 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %219 = call i32 @mod_phy_reg(%struct.brcms_phy* %218, i32 1084, i32 1, i32 0)
  %220 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %221 = call i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy* %220, i32 2000, i32 120, i32 0)
  %222 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %223 = call i32 @write_phy_reg(%struct.brcms_phy* %222, i32 1754, i32 65535)
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %225 = call i32 @or_phy_reg(%struct.brcms_phy* %224, i32 1755, i32 3)
  %226 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @wlc_lcnphy_set_trsw_override(%struct.brcms_phy* %226, i32 %227, i32 %228)
  %230 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %231 = call i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy* %230, i32 1)
  store i32 8, i32* %33, align 4
  store i32 950, i32* %35, align 4
  br label %232

232:                                              ; preds = %248, %154
  %233 = load i32, i32* %33, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %232
  %236 = load i32, i32* %33, align 4
  %237 = sub nsw i32 %236, 1
  store i32 %237, i32* %33, align 4
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %239 = load i32, i32* %33, align 4
  %240 = call i32 @wlc_lcnphy_set_rx_gain_by_distribution(%struct.brcms_phy* %238, i32 0, i32 0, i32 2, i32 2, i32 %239, i32 1, i32 0)
  %241 = call i32 @udelay(i32 500)
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %243 = call i32 @wlc_lcnphy_measure_digital_power(%struct.brcms_phy* %242, i32 2000)
  store i32 %243, i32* %34, align 4
  %244 = load i32, i32* %34, align 4
  %245 = load i32, i32* %35, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %235
  br label %249

248:                                              ; preds = %235
  br label %232

249:                                              ; preds = %247, %232
  %250 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %251 = call i32 @wlc_lcnphy_calc_rx_iq_comp(%struct.brcms_phy* %250, i32 65535)
  store i32 %251, i32* %19, align 4
  %252 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %253 = call i32 @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy* %252)
  %254 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %255 = load i32, i32* %22, align 4
  %256 = call i32 @write_phy_reg(%struct.brcms_phy* %254, i32 1585, i32 %255)
  %257 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %258 = load i32, i32* %24, align 4
  %259 = call i32 @write_phy_reg(%struct.brcms_phy* %257, i32 1100, i32 %258)
  %260 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %261 = load i32, i32* %24, align 4
  %262 = call i32 @write_phy_reg(%struct.brcms_phy* %260, i32 1101, i32 %261)
  %263 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %264 = load i32, i32* %25, align 4
  %265 = call i32 @write_phy_reg(%struct.brcms_phy* %263, i32 1200, i32 %264)
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %267 = load i32, i32* %26, align 4
  %268 = call i32 @write_phy_reg(%struct.brcms_phy* %266, i32 1201, i32 %267)
  %269 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %270 = load i32, i32* %27, align 4
  %271 = call i32 @write_phy_reg(%struct.brcms_phy* %269, i32 1273, i32 %270)
  %272 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %273 = load i32, i32* %28, align 4
  %274 = call i32 @write_phy_reg(%struct.brcms_phy* %272, i32 1274, i32 %273)
  %275 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %276 = load i32, i32* %29, align 4
  %277 = call i32 @write_phy_reg(%struct.brcms_phy* %275, i32 2360, i32 %276)
  %278 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %279 = load i32, i32* %30, align 4
  %280 = call i32 @write_phy_reg(%struct.brcms_phy* %278, i32 2361, i32 %279)
  %281 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %282 = load i32, i32* %31, align 4
  %283 = call i32 @write_phy_reg(%struct.brcms_phy* %281, i32 1083, i32 %282)
  %284 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %285 = load i32, i32* %32, align 4
  %286 = call i32 @write_phy_reg(%struct.brcms_phy* %284, i32 1084, i32 %285)
  %287 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %288 = load i32, i32* %36, align 4
  %289 = call i32 @write_phy_reg(%struct.brcms_phy* %287, i32 1754, i32 %288)
  %290 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %291 = load i32, i32* %37, align 4
  %292 = call i32 @write_phy_reg(%struct.brcms_phy* %290, i32 1755, i32 %291)
  %293 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %294 = call i32 @wlc_lcnphy_clear_trsw_override(%struct.brcms_phy* %293)
  %295 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %296 = call i32 @mod_phy_reg(%struct.brcms_phy* %295, i32 1100, i32 4, i32 0)
  store i32 0, i32* %21, align 4
  br label %297

297:                                              ; preds = %312, %249
  %298 = load i32, i32* %21, align 4
  %299 = icmp slt i32 %298, 11
  br i1 %299, label %300, label %315

300:                                              ; preds = %297
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %302 = load i32*, i32** @rxiq_cal_rf_reg, align 8
  %303 = load i32, i32* %21, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %21, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [11 x i32], [11 x i32]* %38, i64 0, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @write_radio_reg(%struct.brcms_phy* %301, i32 %306, i32 %310)
  br label %312

312:                                              ; preds = %300
  %313 = load i32, i32* %21, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %21, align 4
  br label %297

315:                                              ; preds = %297
  %316 = load i32, i32* %20, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %320 = load i32, i32* %18, align 4
  %321 = call i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy* %319, i32 %320)
  br label %325

322:                                              ; preds = %315
  %323 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %324 = call i32 @wlc_lcnphy_disable_tx_gain_override(%struct.brcms_phy* %323)
  br label %325

325:                                              ; preds = %322, %318
  %326 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %327 = load i32, i32* %17, align 4
  %328 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %326, i32 %327)
  %329 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %330 = call i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy* %329, i32 0)
  br label %331

331:                                              ; preds = %325, %89
  br label %332

332:                                              ; preds = %331, %88
  %333 = load i32*, i32** %39, align 8
  %334 = call i32 @kfree(i32* %333)
  %335 = load i32, i32* %19, align 4
  store i32 %335, i32* %8, align 4
  br label %336

336:                                              ; preds = %332, %49
  %337 = load i32, i32* %8, align 4
  ret i32 %337
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @wlc_lcnphy_set_rx_iq_comp(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_tx_gain_override_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_tx_gain(%struct.brcms_phy*, %struct.lcnphy_txgains*) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_by_index(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_start_tx_tone(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_trsw_override(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_rx_gain_by_distribution(%struct.brcms_phy*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_lcnphy_measure_digital_power(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_calc_rx_iq_comp(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_stop_tx_tone(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_clear_trsw_override(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_disable_tx_gain_override(%struct.brcms_phy*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
