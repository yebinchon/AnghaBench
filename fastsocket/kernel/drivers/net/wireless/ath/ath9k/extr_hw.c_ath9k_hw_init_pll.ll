; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64 }
%struct.ath9k_channel = type { i32 }

@AR_CH0_BB_DPLL2 = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL2_PLL_PWD = common dso_local global i32 0, align 4
@AR_CH0_DPLL2_KD = common dso_local global i32 0, align 4
@AR_CH0_DPLL2_KI = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL1 = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL1_REFDIV = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL1_NINI = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL1_NFRAC = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL2_OUTDIV = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL2_LOCAL_PLL = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL2_EN_NEGTRIG = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL3 = common dso_local global i32 0, align 4
@AR_CH0_BB_DPLL3_PHASE_SHIFT = common dso_local global i32 0, align 4
@AR_CH0_DDR_DPLL2 = common dso_local global i32 0, align 4
@AR_CH0_DDR_DPLL3 = common dso_local global i32 0, align 4
@AR_CH0_DPLL3_PHASE_SHIFT = common dso_local global i32 0, align 4
@AR_RTC_PLL_CONTROL = common dso_local global i32 0, align 4
@AR_RTC_PLL_CONTROL2 = common dso_local global i32 0, align 4
@AR_PHY_PLL_MODE = common dso_local global i32 0, align 4
@AR_PHY_PLL_CONTROL = common dso_local global i32 0, align 4
@RTC_PLL_SETTLE_DELAY = common dso_local global i32 0, align 4
@AR_RTC_SLEEP_CLK = common dso_local global i32 0, align 4
@AR_RTC_FORCE_DERIVED_CLK = common dso_local global i32 0, align 4
@AR_RTC_DERIVED_CLK = common dso_local global i32 0, align 4
@AR_SLP32_MODE = common dso_local global i32 0, align 4
@AR_SLP32_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_channel*)* @ath9k_hw_init_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_pll(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %14 = call i64 @AR_SREV_9485(%struct.ath_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call i64 @AR_SREV_9565(%struct.ath_hw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %16, %2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %23 = load i32, i32* @AR_CH0_BB_DPLL2_PLL_PWD, align 4
  %24 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %21, i32 %22, i32 %23, i32 1)
  %25 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %26 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %27 = load i32, i32* @AR_CH0_DPLL2_KD, align 4
  %28 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %25, i32 %26, i32 %27, i32 64)
  %29 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %30 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %31 = load i32, i32* @AR_CH0_DPLL2_KI, align 4
  %32 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %29, i32 %30, i32 %31, i32 4)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = load i32, i32* @AR_CH0_BB_DPLL1, align 4
  %35 = load i32, i32* @AR_CH0_BB_DPLL1_REFDIV, align 4
  %36 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %33, i32 %34, i32 %35, i32 5)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = load i32, i32* @AR_CH0_BB_DPLL1, align 4
  %39 = load i32, i32* @AR_CH0_BB_DPLL1_NINI, align 4
  %40 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %37, i32 %38, i32 %39, i32 88)
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = load i32, i32* @AR_CH0_BB_DPLL1, align 4
  %43 = load i32, i32* @AR_CH0_BB_DPLL1_NFRAC, align 4
  %44 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %41, i32 %42, i32 %43, i32 0)
  %45 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %46 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %47 = load i32, i32* @AR_CH0_BB_DPLL2_OUTDIV, align 4
  %48 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %45, i32 %46, i32 %47, i32 1)
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %51 = load i32, i32* @AR_CH0_BB_DPLL2_LOCAL_PLL, align 4
  %52 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %49, i32 %50, i32 %51, i32 1)
  %53 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %54 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %55 = load i32, i32* @AR_CH0_BB_DPLL2_EN_NEGTRIG, align 4
  %56 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %53, i32 %54, i32 %55, i32 1)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %58 = load i32, i32* @AR_CH0_BB_DPLL3, align 4
  %59 = load i32, i32* @AR_CH0_BB_DPLL3_PHASE_SHIFT, align 4
  %60 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %57, i32 %58, i32 %59, i32 6)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %63 = load i32, i32* @AR_CH0_BB_DPLL2_PLL_PWD, align 4
  %64 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %61, i32 %62, i32 %63, i32 0)
  %65 = call i32 @udelay(i32 1000)
  br label %193

66:                                               ; preds = %16
  %67 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %68 = call i64 @AR_SREV_9330(%struct.ath_hw* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %107

70:                                               ; preds = %66
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 417869569, i32* %6, align 4
  store i32 14699069, i32* %7, align 4
  store i32 29, i32* %8, align 4
  br label %77

76:                                               ; preds = %70
  store i32 434646785, i32* %6, align 4
  store i32 8939110, i32* %7, align 4
  store i32 61, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %79 = load i32, i32* @AR_CH0_DDR_DPLL2, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @REG_WRITE(%struct.ath_hw* %78, i32 %79, i32 %80)
  %82 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %83 = load i32, i32* @AR_CH0_DDR_DPLL3, align 4
  %84 = load i32, i32* @AR_CH0_DPLL3_PHASE_SHIFT, align 4
  %85 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %82, i32 %83, i32 %84, i32 1)
  %86 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %87 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %88 = call i32 @REG_WRITE(%struct.ath_hw* %86, i32 %87, i32 70700)
  %89 = call i32 @udelay(i32 1000)
  %90 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %91 = load i32, i32* @AR_RTC_PLL_CONTROL2, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @REG_WRITE(%struct.ath_hw* %90, i32 %91, i32 %92)
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %96 = load i32, i32* @AR_CH0_DPLL2_KD, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %100 = load i32, i32* @AR_CH0_BB_DPLL2, align 4
  %101 = load i32, i32* @AR_CH0_DPLL2_KI, align 4
  %102 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %99, i32 %100, i32 %101, i32 6)
  %103 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %104 = load i32, i32* @AR_CH0_BB_DPLL3, align 4
  %105 = load i32, i32* @AR_CH0_BB_DPLL3_PHASE_SHIFT, align 4
  %106 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %103, i32 %104, i32 %105, i32 1)
  br label %192

107:                                              ; preds = %66
  %108 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %109 = call i64 @AR_SREV_9340(%struct.ath_hw* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %113 = call i64 @AR_SREV_9550(%struct.ath_hw* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %191

115:                                              ; preds = %111, %107
  %116 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %117 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %118 = call i32 @REG_WRITE(%struct.ath_hw* %116, i32 %117, i32 70700)
  %119 = call i32 @udelay(i32 1000)
  %120 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %121 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %122 = call i32 @REG_SET_BIT(%struct.ath_hw* %120, i32 %121, i32 65536)
  %123 = call i32 @udelay(i32 100)
  %124 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %125 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %115
  store i32 84, i32* %10, align 4
  store i32 125829, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %136

129:                                              ; preds = %115
  %130 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %131 = call i64 @AR_SREV_9340(%struct.ath_hw* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 88, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 5, i32* %12, align 4
  br label %135

134:                                              ; preds = %129
  store i32 17, i32* %10, align 4
  store i32 157286, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %135

135:                                              ; preds = %134, %133
  br label %136

136:                                              ; preds = %135, %128
  %137 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %138 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %139 = call i32 @REG_READ(%struct.ath_hw* %137, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = or i32 %140, 65536
  store i32 %141, i32* %9, align 4
  %142 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %143 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @REG_WRITE(%struct.ath_hw* %142, i32 %143, i32 %144)
  %146 = call i32 @udelay(i32 100)
  %147 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %148 = load i32, i32* @AR_PHY_PLL_CONTROL, align 4
  %149 = load i32, i32* %12, align 4
  %150 = shl i32 %149, 27
  %151 = load i32, i32* %10, align 4
  %152 = shl i32 %151, 18
  %153 = or i32 %150, %152
  %154 = load i32, i32* %11, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @REG_WRITE(%struct.ath_hw* %147, i32 %148, i32 %155)
  %157 = call i32 @udelay(i32 100)
  %158 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %159 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %160 = call i32 @REG_READ(%struct.ath_hw* %158, i32 %159)
  store i32 %160, i32* %9, align 4
  %161 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %162 = call i64 @AR_SREV_9340(%struct.ath_hw* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %136
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, -2147016705
  %167 = or i32 %166, 1073741824
  %168 = or i32 %167, 8192
  %169 = or i32 %168, 268435456
  %170 = or i32 %169, 12582912
  store i32 %170, i32* %9, align 4
  br label %178

171:                                              ; preds = %136
  %172 = load i32, i32* %9, align 4
  %173 = and i32 %172, -2147016705
  %174 = or i32 %173, -1073741824
  %175 = or i32 %174, 8192
  %176 = or i32 %175, 268435456
  %177 = or i32 %176, 50331648
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %171, %164
  %179 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %180 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @REG_WRITE(%struct.ath_hw* %179, i32 %180, i32 %181)
  %183 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %184 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %185 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %186 = load i32, i32* @AR_PHY_PLL_MODE, align 4
  %187 = call i32 @REG_READ(%struct.ath_hw* %185, i32 %186)
  %188 = and i32 %187, -65537
  %189 = call i32 @REG_WRITE(%struct.ath_hw* %183, i32 %184, i32 %188)
  %190 = call i32 @udelay(i32 1000)
  br label %191

191:                                              ; preds = %178, %111
  br label %192

192:                                              ; preds = %191, %77
  br label %193

193:                                              ; preds = %192, %20
  %194 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %195 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %196 = call i32 @ath9k_hw_compute_pll_control(%struct.ath_hw* %194, %struct.ath9k_channel* %195)
  store i32 %196, i32* %5, align 4
  %197 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %198 = call i64 @AR_SREV_9565(%struct.ath_hw* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i32, i32* %5, align 4
  %202 = or i32 %201, 262144
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %200, %193
  %204 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %205 = load i32, i32* @AR_RTC_PLL_CONTROL, align 4
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @REG_WRITE(%struct.ath_hw* %204, i32 %205, i32 %206)
  %208 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %209 = call i64 @AR_SREV_9485(%struct.ath_hw* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %203
  %212 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %213 = call i64 @AR_SREV_9340(%struct.ath_hw* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %211
  %216 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %217 = call i64 @AR_SREV_9330(%struct.ath_hw* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %221 = call i64 @AR_SREV_9550(%struct.ath_hw* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %219, %215, %211, %203
  %224 = call i32 @udelay(i32 1000)
  br label %225

225:                                              ; preds = %223, %219
  %226 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %227 = call i64 @AR_SREV_9271(%struct.ath_hw* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = call i32 @udelay(i32 500)
  %231 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %232 = call i32 @REG_WRITE(%struct.ath_hw* %231, i32 327744, i32 772)
  br label %233

233:                                              ; preds = %229, %225
  %234 = load i32, i32* @RTC_PLL_SETTLE_DELAY, align 4
  %235 = call i32 @udelay(i32 %234)
  %236 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %237 = load i32, i32* @AR_RTC_SLEEP_CLK, align 4
  %238 = load i32, i32* @AR_RTC_FORCE_DERIVED_CLK, align 4
  %239 = call i32 @REG_WRITE(%struct.ath_hw* %236, i32 %237, i32 %238)
  %240 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %241 = call i64 @AR_SREV_9340(%struct.ath_hw* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %233
  %244 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %245 = call i64 @AR_SREV_9550(%struct.ath_hw* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %274

247:                                              ; preds = %243, %233
  %248 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %249 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %247
  %253 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %254 = load i32, i32* @AR_RTC_DERIVED_CLK, align 4
  %255 = call i32 @REG_WRITE(%struct.ath_hw* %253, i32 %254, i32 760)
  %256 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %257 = load i32, i32* @AR_SLP32_MODE, align 4
  %258 = call i32 @REG_WRITE(%struct.ath_hw* %256, i32 %257, i32 1110999)
  %259 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %260 = load i32, i32* @AR_SLP32_INC, align 4
  %261 = call i32 @REG_WRITE(%struct.ath_hw* %259, i32 %260, i32 124846)
  br label %272

262:                                              ; preds = %247
  %263 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %264 = load i32, i32* @AR_RTC_DERIVED_CLK, align 4
  %265 = call i32 @REG_WRITE(%struct.ath_hw* %263, i32 %264, i32 1218)
  %266 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %267 = load i32, i32* @AR_SLP32_MODE, align 4
  %268 = call i32 @REG_WRITE(%struct.ath_hw* %266, i32 %267, i32 1111040)
  %269 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %270 = load i32, i32* @AR_SLP32_INC, align 4
  %271 = call i32 @REG_WRITE(%struct.ath_hw* %269, i32 %270, i32 124928)
  br label %272

272:                                              ; preds = %262, %252
  %273 = call i32 @udelay(i32 100)
  br label %274

274:                                              ; preds = %272, %243
  ret void
}

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_compute_pll_control(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
