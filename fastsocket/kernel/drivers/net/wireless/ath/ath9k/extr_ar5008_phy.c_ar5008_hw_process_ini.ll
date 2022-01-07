; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_process_ini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_process_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_8__, i32, i32, i64, %struct.TYPE_8__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { {}* }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AR_PHY_ADC_SERIAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_SEL_EXTERNAL_RADIO = common dso_local global i32 0, align 4
@AR_PHY_SEL_INTERNAL_ADDAC = common dso_local global i32 0, align 4
@AR_AN_TOP2 = common dso_local global i32 0, align 4
@AR_AN_TOP2_PWDCLKIND = common dso_local global i32 0, align 4
@ATH_USB = common dso_local global i64 0, align 8
@AR_PHY_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_ENA = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL3 = common dso_local global i32 0, align 4
@AR_PHY_TX_END_TO_ADC_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ar5416SetRfRegs failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_process_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5008_hw_process_ini(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %18 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %24 [
    i32 136, label %20
    i32 135, label %20
    i32 133, label %21
    i32 134, label %21
    i32 131, label %22
    i32 130, label %22
    i32 132, label %22
    i32 128, label %23
    i32 129, label %23
  ]

20:                                               ; preds = %2, %2
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %27

21:                                               ; preds = %2, %2
  store i32 2, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %27

22:                                               ; preds = %2, %2, %2
  store i32 4, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %27

23:                                               ; preds = %2, %2
  store i32 3, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %266

27:                                               ; preds = %23, %22, %21, %20
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = call i32 @AR_PHY(i32 0)
  %30 = call i32 @REG_WRITE(%struct.ath_hw* %28, i32 %29, i32 7)
  %31 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %32 = load i32, i32* @AR_PHY_ADC_SERIAL_CTL, align 4
  %33 = load i32, i32* @AR_PHY_SEL_EXTERNAL_RADIO, align 4
  %34 = call i32 @REG_WRITE(%struct.ath_hw* %31, i32 %32, i32 %33)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 9
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.ath_hw*, %struct.ath9k_channel*)**
  %40 = load i32 (%struct.ath_hw*, %struct.ath9k_channel*)*, i32 (%struct.ath_hw*, %struct.ath9k_channel*)** %39, align 8
  %41 = icmp ne i32 (%struct.ath_hw*, %struct.ath9k_channel*)* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %27
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %43, i32 0, i32 9
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.ath_hw*, %struct.ath9k_channel*)**
  %48 = load i32 (%struct.ath_hw*, %struct.ath9k_channel*)*, i32 (%struct.ath_hw*, %struct.ath9k_channel*)** %47, align 8
  %49 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %50 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %51 = call i32 %48(%struct.ath_hw* %49, %struct.ath9k_channel* %50)
  br label %52

52:                                               ; preds = %42, %27
  %53 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %54 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %53, i32 0, i32 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @REG_WRITE_ARRAY(i32* %54, i32 1, i32 %55)
  %57 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %58 = load i32, i32* @AR_PHY_ADC_SERIAL_CTL, align 4
  %59 = load i32, i32* @AR_PHY_SEL_INTERNAL_ADDAC, align 4
  %60 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %62 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %61)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %122, %52
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %125

70:                                               ; preds = %63
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 7
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @INI_RA(%struct.TYPE_8__* %72, i32 %73, i32 0)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %76 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %75, i32 0, i32 7
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @INI_RA(%struct.TYPE_8__* %76, i32 %77, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @AR_AN_TOP2, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %70
  %84 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %85 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @AR_AN_TOP2_PWDCLKIND, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %12, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %88, %83, %70
  %94 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @REG_WRITE(%struct.ath_hw* %94, i32 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = icmp sge i32 %98, 30720
  br i1 %99, label %100, label %119

100:                                              ; preds = %93
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 30880
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %111 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ATH_USB, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = call i32 @udelay(i32 100)
  br label %119

119:                                              ; preds = %117, %109, %103, %100, %93
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @DO_DELAY(i32 %120)
  br label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %63

125:                                              ; preds = %63
  %126 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %127 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %126)
  %128 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %129 = call i64 @AR_SREV_9280(%struct.ath_hw* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  %132 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %133 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131, %125
  %136 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %137 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %136, i32 0, i32 5
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @REG_WRITE_ARRAY(i32* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %131
  %142 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %143 = call i64 @AR_SREV_9280(%struct.ath_hw* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %147 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %151 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %149, %145, %141
  %154 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %155 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %154, i32 0, i32 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @REG_WRITE_ARRAY(i32* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %149
  %160 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %161 = call i64 @AR_SREV_9271_10(%struct.ath_hw* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %165 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %166 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_ENA, align 4
  %167 = call i32 @REG_SET_BIT(%struct.ath_hw* %164, i32 %165, i32 %166)
  %168 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %169 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %170 = load i32, i32* @AR_PHY_TX_END_TO_ADC_ON, align 4
  %171 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %168, i32 %169, i32 %170, i32 10)
  br label %172

172:                                              ; preds = %163, %159
  %173 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %174 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %173)
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %219, %172
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %178 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %222

182:                                              ; preds = %175
  %183 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %184 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %183, i32 0, i32 3
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @INI_RA(%struct.TYPE_8__* %184, i32 %185, i32 0)
  store i32 %186, i32* %13, align 4
  %187 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %188 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %187, i32 0, i32 3
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @INI_RA(%struct.TYPE_8__* %188, i32 %189, i32 1)
  store i32 %190, i32* %14, align 4
  %191 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @REG_WRITE(%struct.ath_hw* %191, i32 %192, i32 %193)
  %195 = load i32, i32* %13, align 4
  %196 = icmp sge i32 %195, 30720
  br i1 %196, label %197, label %216

197:                                              ; preds = %182
  %198 = load i32, i32* %13, align 4
  %199 = icmp slt i32 %198, 30880
  br i1 %199, label %200, label %216

200:                                              ; preds = %197
  %201 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %202 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %200
  %207 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %208 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %207, i32 0, i32 0
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ATH_USB, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = call i32 @udelay(i32 100)
  br label %216

216:                                              ; preds = %214, %206, %200, %197, %182
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @DO_DELAY(i32 %217)
  br label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  br label %175

222:                                              ; preds = %175
  %223 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %224 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %223)
  %225 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %226 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %225, i32 0, i32 1
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @REG_WRITE_ARRAY(i32* %226, i32 %227, i32 %228)
  %230 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %231 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %232 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %230, %struct.ath9k_channel* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %222
  %235 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %236 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %235, i32 0, i32 0
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @REG_WRITE_ARRAY(i32* %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %234, %222
  %241 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %242 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %243 = call i32 @ar5008_hw_override_ini(%struct.ath_hw* %241, %struct.ath9k_channel* %242)
  %244 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %245 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %246 = call i32 @ar5008_hw_set_channel_regs(%struct.ath_hw* %244, %struct.ath9k_channel* %245)
  %247 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %248 = call i32 @ar5008_hw_init_chain_masks(%struct.ath_hw* %247)
  %249 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %250 = call i32 @ath9k_olc_init(%struct.ath_hw* %249)
  %251 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %252 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %253 = call i32 @ath9k_hw_apply_txpower(%struct.ath_hw* %251, %struct.ath9k_channel* %252, i32 0)
  %254 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %255 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @ath9k_hw_set_rf_regs(%struct.ath_hw* %254, %struct.ath9k_channel* %255, i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %240
  %260 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %261 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %260)
  %262 = call i32 @ath_err(%struct.ath_common* %261, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %263 = load i32, i32* @EIO, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %3, align 4
  br label %266

265:                                              ; preds = %240
  store i32 0, i32* %3, align 4
  br label %266

266:                                              ; preds = %265, %259, %24
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local i32 @REG_WRITE_ARRAY(i32*, i32, i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @INI_RA(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DO_DELAY(i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271_10(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_override_ini(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_set_channel_regs(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_init_chain_masks(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_olc_init(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_apply_txpower(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @ath9k_hw_set_rf_regs(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
