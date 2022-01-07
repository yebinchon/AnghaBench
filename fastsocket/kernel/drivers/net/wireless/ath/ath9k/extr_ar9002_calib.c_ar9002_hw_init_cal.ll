; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_init_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9002_calib.c_ar9002_hw_init_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__*, i32*, i32*, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@AR_PHY_ADC_CTL = common dso_local global i32 0, align 4
@AR_PHY_ADC_CTL_OFF_PWDADC = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_FLTR_CAL = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_CAL = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"offset calibration failed to complete in %d ms; noisy environment?\0A\00", align 1
@IQ_MISMATCH_CAL = common dso_local global i32 0, align 4
@ADC_GAIN_CAL = common dso_local global i32 0, align 4
@ADC_DC_CAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"enabling ADC Gain Calibration\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"enabling ADC DC Calibration\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"enabling IQ Calibration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9002_hw_init_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_init_cal(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %7)
  store %struct.ath_common* %8, %struct.ath_common** %6, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %10 = call i64 @AR_SREV_9271(%struct.ath_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %15 = call i32 @ar9285_hw_cl_cal(%struct.ath_hw* %13, %struct.ath9k_channel* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %224

18:                                               ; preds = %12
  br label %93

19:                                               ; preds = %2
  %20 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %21 = call i64 @AR_SREV_9285(%struct.ath_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %29 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %30 = call i32 @ar9285_hw_clc(%struct.ath_hw* %28, %struct.ath9k_channel* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %224

33:                                               ; preds = %27
  br label %92

34:                                               ; preds = %23, %19
  %35 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %36 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %40 = call i32 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = load i32, i32* @AR_PHY_ADC_CTL, align 4
  %45 = load i32, i32* @AR_PHY_ADC_CTL_OFF_PWDADC, align 4
  %46 = call i32 @REG_CLR_BIT(%struct.ath_hw* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %49 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %50 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %51 = call i32 @REG_SET_BIT(%struct.ath_hw* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %34
  %53 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %54 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %55 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %56 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %57 = call i32 @REG_READ(%struct.ath_hw* %55, i32 %56)
  %58 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @REG_WRITE(%struct.ath_hw* %53, i32 %54, i32 %59)
  %61 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %62 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %63 = load i32, i32* @AR_PHY_AGC_CONTROL_CAL, align 4
  %64 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %65 = call i32 @ath9k_hw_wait(%struct.ath_hw* %61, i32 %62, i32 %63, i32 0, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %52
  %68 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %69 = load i32, i32* @CALIBRATE, align 4
  %70 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %71 = sdiv i32 %70, 1000
  %72 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %68, i32 %69, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %71)
  store i32 0, i32* %3, align 4
  br label %224

73:                                               ; preds = %52
  %74 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %75 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %79 = call i32 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %83 = load i32, i32* @AR_PHY_ADC_CTL, align 4
  %84 = load i32, i32* @AR_PHY_ADC_CTL_OFF_PWDADC, align 4
  %85 = call i32 @REG_SET_BIT(%struct.ath_hw* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %77
  %87 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %88 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %89 = load i32, i32* @AR_PHY_AGC_CONTROL_FLTR_CAL, align 4
  %90 = call i32 @REG_CLR_BIT(%struct.ath_hw* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %73
  br label %92

92:                                               ; preds = %91, %33
  br label %93

93:                                               ; preds = %92, %18
  %94 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %95 = call i32 @ar9002_hw_pa_cal(%struct.ath_hw* %94, i32 1)
  %96 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %97 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = icmp ne %struct.TYPE_2__* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %102 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %100, %93
  %106 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %107 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %106, i32 0, i32 2
  store i32* null, i32** %107, align 8
  %108 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %109 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %108, i32 0, i32 7
  store i32* null, i32** %109, align 8
  %110 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %110, i32 0, i32 3
  store i32* null, i32** %111, align 8
  %112 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %113 = call i64 @AR_SREV_9100(%struct.ath_hw* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %105
  %116 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %117 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %213

119:                                              ; preds = %115, %105
  %120 = load i32, i32* @IQ_MISMATCH_CAL, align 4
  %121 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %122 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %124 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load i32, i32* @ADC_GAIN_CAL, align 4
  %128 = load i32, i32* @ADC_DC_CAL, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %131 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %126, %119
  %135 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %136 = call i64 @AR_SREV_9287(%struct.ath_hw* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i32, i32* @ADC_GAIN_CAL, align 4
  %140 = xor i32 %139, -1
  %141 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %142 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %138, %134
  %146 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %147 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %148 = load i32, i32* @ADC_GAIN_CAL, align 4
  %149 = call i64 @ar9002_hw_is_cal_supported(%struct.ath_hw* %146, %struct.ath9k_channel* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %153 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %152, i32 0, i32 6
  %154 = call i32 @INIT_CAL(i32* %153)
  %155 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %156 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %157 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %156, i32 0, i32 6
  %158 = call i32 @INSERT_CAL(%struct.ath_hw* %155, i32* %157)
  %159 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %160 = load i32, i32* @CALIBRATE, align 4
  %161 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %159, i32 %160, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %162

162:                                              ; preds = %151, %145
  %163 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %164 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %165 = load i32, i32* @ADC_DC_CAL, align 4
  %166 = call i64 @ar9002_hw_is_cal_supported(%struct.ath_hw* %163, %struct.ath9k_channel* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %170 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %169, i32 0, i32 5
  %171 = call i32 @INIT_CAL(i32* %170)
  %172 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %173 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %174 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %173, i32 0, i32 5
  %175 = call i32 @INSERT_CAL(%struct.ath_hw* %172, i32* %174)
  %176 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %177 = load i32, i32* @CALIBRATE, align 4
  %178 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %176, i32 %177, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %179

179:                                              ; preds = %168, %162
  %180 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %181 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %182 = load i32, i32* @IQ_MISMATCH_CAL, align 4
  %183 = call i64 @ar9002_hw_is_cal_supported(%struct.ath_hw* %180, %struct.ath9k_channel* %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %179
  %186 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %187 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %186, i32 0, i32 4
  %188 = call i32 @INIT_CAL(i32* %187)
  %189 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %190 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %191 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %190, i32 0, i32 4
  %192 = call i32 @INSERT_CAL(%struct.ath_hw* %189, i32* %191)
  %193 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %194 = load i32, i32* @CALIBRATE, align 4
  %195 = call i32 (%struct.ath_common*, i32, i8*, ...) @ath_dbg(%struct.ath_common* %193, i32 %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %196

196:                                              ; preds = %185, %179
  %197 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %198 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %201 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %200, i32 0, i32 2
  store i32* %199, i32** %201, align 8
  %202 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %203 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %196
  %207 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %208 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %209 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @ath9k_hw_reset_calibration(%struct.ath_hw* %207, i32* %210)
  br label %212

212:                                              ; preds = %206, %196
  br label %213

213:                                              ; preds = %212, %115
  %214 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %215 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %214, i32 0, i32 1
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = icmp ne %struct.TYPE_2__* %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %220 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %219, i32 0, i32 1
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  store i64 0, i64* %222, align 8
  br label %223

223:                                              ; preds = %218, %213
  store i32 1, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %67, %32, %17
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

declare dso_local i32 @ar9285_hw_cl_cal(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar9285_hw_clc(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, ...) #1

declare dso_local i32 @ar9002_hw_pa_cal(%struct.ath_hw*, i32) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @ar9002_hw_is_cal_supported(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @INIT_CAL(i32*) #1

declare dso_local i32 @INSERT_CAL(%struct.ath_hw*, i32*) #1

declare dso_local i32 @ath9k_hw_reset_calibration(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
