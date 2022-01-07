; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_get_current.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.tx_power = type { i32, i32, i32*, i32*, i64, i32*, i32*, i32*, i64*, i32* }
%struct.brcms_phy = type { i64, i64, i32, i32, %struct.TYPE_2__*, i64, i32*, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@WL_TX_POWER_F_MIMO = common dso_local global i32 0, align 4
@PHY_TPC_HW_ON = common dso_local global i64 0, align 8
@WL_TX_POWER_F_ENABLED = common dso_local global i32 0, align 4
@WL_TX_POWER_F_HW = common dso_local global i32 0, align 4
@WL_TX_POWER_F_SISO = common dso_local global i32 0, align 4
@RADIOPWR_OVERRIDE_DEF = common dso_local global i64 0, align 8
@TXP_NUM_RATES = common dso_local global i64 0, align 8
@TXP_LAST_OFDM_20_CDD = common dso_local global i64 0, align 8
@TXP_LAST_OFDM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_get_current(%struct.brcms_phy_pub* %0, %struct.tx_power* %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_phy_pub*, align 8
  %5 = alloca %struct.tx_power*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcms_phy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %4, align 8
  store %struct.tx_power* %1, %struct.tx_power** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %4, align 8
  %14 = bitcast %struct.brcms_phy_pub* %13 to %struct.brcms_phy*
  store %struct.brcms_phy* %14, %struct.brcms_phy** %7, align 8
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %16 = call i64 @ISNPHY(%struct.brcms_phy* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %20 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %19, i32 0, i32 0
  store i32 2, i32* %20, align 8
  %21 = load i32, i32* @WL_TX_POWER_F_MIMO, align 4
  %22 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %23 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PHY_TPC_HW_ON, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %18
  %32 = load i32, i32* @WL_TX_POWER_F_ENABLED, align 4
  %33 = load i32, i32* @WL_TX_POWER_F_HW, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %36 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %31, %18
  br label %76

40:                                               ; preds = %3
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %42 = call i64 @ISLCNPHY(%struct.brcms_phy* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %46 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @WL_TX_POWER_F_SISO, align 4
  %48 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %49 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @RADIOPWR_OVERRIDE_DEF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i32, i32* @WL_TX_POWER_F_ENABLED, align 4
  %59 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %60 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %44
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @WL_TX_POWER_F_HW, align 4
  %70 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %71 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63
  br label %75

75:                                               ; preds = %74, %40
  br label %76

76:                                               ; preds = %75, %39
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %78 = call i64 @ISNPHY(%struct.brcms_phy* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @TXP_NUM_RATES, align 8
  br label %94

82:                                               ; preds = %76
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %84 = call i64 @ISLCNPHY(%struct.brcms_phy* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* @TXP_LAST_OFDM_20_CDD, align 8
  %88 = add i64 %87, 1
  br label %92

89:                                               ; preds = %82
  %90 = load i64, i64* @TXP_LAST_OFDM, align 8
  %91 = add i64 %90, 1
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i64 [ %88, %86 ], [ %91, %89 ]
  br label %94

94:                                               ; preds = %92, %80
  %95 = phi i64 [ %81, %80 ], [ %93, %92 ]
  store i64 %95, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %96

96:                                               ; preds = %133, %94
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %136

100:                                              ; preds = %96
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %108 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %107, i32 0, i32 9
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %106, i32* %111, align 4
  %112 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %4, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @wlc_phy_txpower_sromlimit(%struct.brcms_phy_pub* %112, i64 %113, i64* %10, i64* %11, i64 %114)
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %118 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %117, i32 0, i32 8
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 %116, i64* %121, align 8
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %123 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %129 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %128, i32 0, i32 7
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %127, i32* %132, align 4
  br label %133

133:                                              ; preds = %100
  %134 = load i64, i64* %8, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %8, align 8
  br label %96

136:                                              ; preds = %96
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %138 = call i64 @ISNPHY(%struct.brcms_phy* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %265

140:                                              ; preds = %136
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %142 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %141, i32 0, i32 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @wlapi_suspend_mac_and_wait(i32 %145)
  %147 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %148 = bitcast %struct.brcms_phy* %147 to %struct.brcms_phy_pub*
  %149 = call i32 @wlc_phyreg_enter(%struct.brcms_phy_pub* %148)
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %151 = call i32 @wlc_phy_txpower_est_power_nphy(%struct.brcms_phy* %150)
  store i32 %151, i32* %12, align 4
  %152 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %153 = bitcast %struct.brcms_phy* %152 to %struct.brcms_phy_pub*
  %154 = call i32 @wlc_phyreg_exit(%struct.brcms_phy_pub* %153)
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %156 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %155, i32 0, i32 4
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @wlapi_enable_mac(i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = ashr i32 %161, 8
  %163 = and i32 %162, 255
  %164 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %165 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %12, align 4
  %169 = and i32 %168, 255
  %170 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %171 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %12, align 4
  %175 = ashr i32 %174, 24
  %176 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %177 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %175, i32* %179, align 4
  %180 = load i32, i32* %12, align 4
  %181 = ashr i32 %180, 16
  %182 = and i32 %181, 255
  %183 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %184 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 %182, i32* %186, align 4
  %187 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %188 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 128
  br i1 %192, label %193, label %198

193:                                              ; preds = %140
  %194 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %195 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 0, i32* %197, align 4
  br label %198

198:                                              ; preds = %193, %140
  %199 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %200 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 128
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %207 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 0, i32* %209, align 4
  br label %210

210:                                              ; preds = %205, %198
  %211 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %212 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 128
  br i1 %216, label %217, label %222

217:                                              ; preds = %210
  %218 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %219 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 0, i32* %221, align 4
  br label %222

222:                                              ; preds = %217, %210
  %223 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %224 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 128
  br i1 %228, label %229, label %234

229:                                              ; preds = %222
  %230 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %231 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  store i32 0, i32* %233, align 4
  br label %234

234:                                              ; preds = %229, %222
  %235 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %236 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %235, i32 0, i32 4
  store i64 0, i64* %236, align 8
  %237 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %238 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %241 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %240, i32 0, i32 6
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  store i32 %239, i32* %243, align 4
  %244 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %245 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %248 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %247, i32 0, i32 6
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  store i32 %246, i32* %250, align 4
  %251 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %252 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %255 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %254, i32 0, i32 5
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  store i32 %253, i32* %257, align 4
  %258 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %259 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %262 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %261, i32 0, i32 5
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  store i32 %260, i32* %264, align 4
  br label %346

265:                                              ; preds = %136
  %266 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %267 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %345

270:                                              ; preds = %265
  %271 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %272 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %271, i32 0, i32 4
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %345

277:                                              ; preds = %270
  %278 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %4, align 8
  %279 = call i32 @wlc_phyreg_enter(%struct.brcms_phy_pub* %278)
  %280 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %281 = call i64 @ISLCNPHY(%struct.brcms_phy* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %342

283:                                              ; preds = %277
  %284 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %285 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %288 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %287, i32 0, i32 6
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  store i32 %286, i32* %290, align 4
  %291 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %292 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %295 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %294, i32 0, i32 6
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  store i32 %293, i32* %297, align 4
  %298 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %299 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %302 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %301, i32 0, i32 5
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  store i32 %300, i32* %304, align 4
  %305 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %306 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %309 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %308, i32 0, i32 5
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 1
  store i32 %307, i32* %311, align 4
  %312 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %313 = call i64 @wlc_phy_tpc_isenabled_lcnphy(%struct.brcms_phy* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %283
  %316 = load i32, i32* @WL_TX_POWER_F_HW, align 4
  %317 = load i32, i32* @WL_TX_POWER_F_ENABLED, align 4
  %318 = or i32 %316, %317
  %319 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %320 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  br label %332

323:                                              ; preds = %283
  %324 = load i32, i32* @WL_TX_POWER_F_HW, align 4
  %325 = load i32, i32* @WL_TX_POWER_F_ENABLED, align 4
  %326 = or i32 %324, %325
  %327 = xor i32 %326, -1
  %328 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %329 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = and i32 %330, %327
  store i32 %331, i32* %329, align 4
  br label %332

332:                                              ; preds = %323, %315
  %333 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %334 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %335 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %334, i32 0, i32 2
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load %struct.tx_power*, %struct.tx_power** %5, align 8
  %339 = getelementptr inbounds %struct.tx_power, %struct.tx_power* %338, i32 0, i32 4
  %340 = bitcast i64* %339 to i32*
  %341 = call i32 @wlc_lcnphy_get_tssi(%struct.brcms_phy* %333, i32* %337, i32* %340)
  br label %342

342:                                              ; preds = %332, %277
  %343 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %4, align 8
  %344 = call i32 @wlc_phyreg_exit(%struct.brcms_phy_pub* %343)
  br label %345

345:                                              ; preds = %342, %270, %265
  br label %346

346:                                              ; preds = %345, %234
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpower_sromlimit(%struct.brcms_phy_pub*, i64, i64*, i64*, i64) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_phyreg_enter(%struct.brcms_phy_pub*) #1

declare dso_local i32 @wlc_phy_txpower_est_power_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phyreg_exit(%struct.brcms_phy_pub*) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

declare dso_local i64 @wlc_phy_tpc_isenabled_lcnphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_tssi(%struct.brcms_phy*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
