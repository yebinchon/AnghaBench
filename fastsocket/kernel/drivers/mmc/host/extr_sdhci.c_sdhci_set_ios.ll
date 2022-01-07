; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i32, i32, i64, i64, i64 }
%struct.sdhci_host = type { i32, i64, i32, i32, i32 }

@SDHCI_DEVICE_DEAD = common dso_local global i32 0, align 4
@MMC_POWER_OFF = common dso_local global i64 0, align 8
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_8 = common dso_local global i64 0, align 8
@SDHCI_CTRL_8BITBUS = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@SDHCI_CTRL_4BITBUS = common dso_local global i32 0, align 4
@MMC_TIMING_SD_HS = common dso_local global i64 0, align 8
@SDHCI_CTRL_HISPD = common dso_local global i32 0, align 4
@SDHCI_SPEC_300 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR25 = common dso_local global i64 0, align 8
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_PRESET_VAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_CTRL_DRV_TYPE_MASK = common dso_local global i32 0, align 4
@MMC_SET_DRIVER_TYPE_A = common dso_local global i64 0, align 8
@SDHCI_CTRL_DRV_TYPE_A = common dso_local global i32 0, align 4
@MMC_SET_DRIVER_TYPE_C = common dso_local global i64 0, align 8
@SDHCI_CTRL_DRV_TYPE_C = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CARD_EN = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_MASK = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR12 = common dso_local global i64 0, align 8
@SDHCI_CTRL_UHS_SDR12 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR25 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR50 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_SDR104 = common dso_local global i32 0, align 4
@SDHCI_CTRL_UHS_DDR50 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @sdhci_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %11)
  store %struct.sdhci_host* %12, %struct.sdhci_host** %5, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SDHCI_DEVICE_DEAD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %308

24:                                               ; preds = %2
  %25 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MMC_POWER_OFF, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %32 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %33 = call i32 @sdhci_writel(%struct.sdhci_host* %31, i32 0, i32 %32)
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %35 = call i32 @sdhci_reinit(%struct.sdhci_host* %34)
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %38 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sdhci_set_clock(%struct.sdhci_host* %37, i32 %40)
  %42 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MMC_POWER_OFF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %49 = call i32 @sdhci_set_power(%struct.sdhci_host* %48, i32 -1)
  br label %56

50:                                               ; preds = %36
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %52 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sdhci_set_power(%struct.sdhci_host* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %58 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %59 = call i32 @sdhci_readb(%struct.sdhci_host* %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %61 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MMC_BUS_WIDTH_8, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %74

69:                                               ; preds = %56
  %70 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %89

84:                                               ; preds = %74
  %85 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MMC_TIMING_SD_HS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* @SDHCI_CTRL_HISPD, align 4
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %104

99:                                               ; preds = %89
  %100 = load i32, i32* @SDHCI_CTRL_HISPD, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %106 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SDHCI_SPEC_300, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %289

110:                                              ; preds = %104
  %111 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %112 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MMC_TIMING_UHS_SDR50, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %134, label %116

116:                                              ; preds = %110
  %117 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %118 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %116
  %123 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %124 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %130 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MMC_TIMING_UHS_SDR25, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128, %122, %116, %110
  %135 = load i32, i32* @SDHCI_CTRL_HISPD, align 4
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %134, %128
  %139 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %140 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %141 = call i32 @sdhci_readw(%struct.sdhci_host* %139, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @SDHCI_CTRL_PRESET_VAL_ENABLE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %180, label %146

146:                                              ; preds = %138
  %147 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %150 = call i32 @sdhci_writeb(%struct.sdhci_host* %147, i32 %148, i32 %149)
  %151 = load i32, i32* @SDHCI_CTRL_DRV_TYPE_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %9, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %156 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MMC_SET_DRIVER_TYPE_A, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %146
  %161 = load i32, i32* @SDHCI_CTRL_DRV_TYPE_A, align 4
  %162 = load i32, i32* %9, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %9, align 4
  br label %175

164:                                              ; preds = %146
  %165 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %166 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @MMC_SET_DRIVER_TYPE_C, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32, i32* @SDHCI_CTRL_DRV_TYPE_C, align 4
  %172 = load i32, i32* %9, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %170, %164
  br label %175

175:                                              ; preds = %174, %160
  %176 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %179 = call i32 @sdhci_writew(%struct.sdhci_host* %176, i32 %177, i32 %178)
  br label %204

180:                                              ; preds = %138
  %181 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %182 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %183 = call i32 @sdhci_readw(%struct.sdhci_host* %181, i32 %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %8, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %8, align 4
  %188 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %191 = call i32 @sdhci_writew(%struct.sdhci_host* %188, i32 %189, i32 %190)
  %192 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %195 = call i32 @sdhci_writeb(%struct.sdhci_host* %192, i32 %193, i32 %194)
  %196 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %197 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  store i32 %198, i32* %10, align 4
  %199 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %200 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %199, i32 0, i32 2
  store i32 0, i32* %200, align 8
  %201 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @sdhci_set_clock(%struct.sdhci_host* %201, i32 %202)
  br label %204

204:                                              ; preds = %180, %175
  %205 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %206 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %207 = call i32 @sdhci_readw(%struct.sdhci_host* %205, i32 %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* @SDHCI_CTRL_UHS_MASK, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %9, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %9, align 4
  %212 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %213 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @MMC_TIMING_UHS_SDR12, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %204
  %218 = load i32, i32* @SDHCI_CTRL_UHS_SDR12, align 4
  %219 = load i32, i32* %9, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %9, align 4
  br label %265

221:                                              ; preds = %204
  %222 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %223 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @MMC_TIMING_UHS_SDR25, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load i32, i32* @SDHCI_CTRL_UHS_SDR25, align 4
  %229 = load i32, i32* %9, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %9, align 4
  br label %264

231:                                              ; preds = %221
  %232 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %233 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @MMC_TIMING_UHS_SDR50, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load i32, i32* @SDHCI_CTRL_UHS_SDR50, align 4
  %239 = load i32, i32* %9, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %9, align 4
  br label %263

241:                                              ; preds = %231
  %242 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %243 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load i32, i32* @SDHCI_CTRL_UHS_SDR104, align 4
  %249 = load i32, i32* %9, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %9, align 4
  br label %262

251:                                              ; preds = %241
  %252 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %253 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %251
  %258 = load i32, i32* @SDHCI_CTRL_UHS_DDR50, align 4
  %259 = load i32, i32* %9, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %9, align 4
  br label %261

261:                                              ; preds = %257, %251
  br label %262

262:                                              ; preds = %261, %247
  br label %263

263:                                              ; preds = %262, %237
  br label %264

264:                                              ; preds = %263, %227
  br label %265

265:                                              ; preds = %264, %217
  %266 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %267 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %268 = call i32 @sdhci_readw(%struct.sdhci_host* %266, i32 %267)
  store i32 %268, i32* %8, align 4
  %269 = load i32, i32* @SDHCI_CLOCK_CARD_EN, align 4
  %270 = xor i32 %269, -1
  %271 = load i32, i32* %8, align 4
  %272 = and i32 %271, %270
  store i32 %272, i32* %8, align 4
  %273 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %276 = call i32 @sdhci_writew(%struct.sdhci_host* %273, i32 %274, i32 %275)
  %277 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %280 = call i32 @sdhci_writew(%struct.sdhci_host* %277, i32 %278, i32 %279)
  %281 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %282 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %10, align 4
  %284 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %285 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %284, i32 0, i32 2
  store i32 0, i32* %285, align 8
  %286 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %287 = load i32, i32* %10, align 4
  %288 = call i32 @sdhci_set_clock(%struct.sdhci_host* %286, i32 %287)
  br label %294

289:                                              ; preds = %104
  %290 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %293 = call i32 @sdhci_writeb(%struct.sdhci_host* %290, i32 %291, i32 %292)
  br label %294

294:                                              ; preds = %289, %265
  %295 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %296 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %294
  %302 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %303 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %304 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %305 = or i32 %303, %304
  %306 = call i32 @sdhci_reset(%struct.sdhci_host* %302, i32 %305)
  br label %307

307:                                              ; preds = %301, %294
  br label %308

308:                                              ; preds = %307, %23
  %309 = call i32 (...) @mmiowb()
  %310 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %311 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %310, i32 0, i32 4
  %312 = load i64, i64* %6, align 8
  %313 = call i32 @spin_unlock_irqrestore(i32* %311, i64 %312)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_reinit(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_set_clock(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_set_power(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
