; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_update_power_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_update_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@POLARIS_AVMODE_ANALOGT_TV = common dso_local global i32 0, align 4
@FLD_PWRDN_TUNING_BIAS = common dso_local global i32 0, align 4
@FLD_PWRDN_ENABLE_PLL = common dso_local global i32 0, align 4
@SUP_BLK_PWRDN = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH1 = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH2 = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH3 = common dso_local global i32 0, align 4
@POLARIS_AVMODE_DIGITAL = common dso_local global i32 0, align 4
@FLD_PWRDN_PD_BANDGAP = common dso_local global i32 0, align 4
@FLD_PWRDN_PD_BIAS = common dso_local global i32 0, align 4
@FLD_PWRDN_PD_TUNECK = common dso_local global i32 0, align 4
@POLARIS_AVMODE_ENXTERNAL_AV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid AV mode input\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_afe_update_power_control(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %135 [
    i32 137, label %10
    i32 136, label %10
    i32 132, label %10
    i32 134, label %10
    i32 135, label %10
    i32 133, label %10
    i32 131, label %10
    i32 130, label %10
    i32 129, label %10
    i32 128, label %10
  ]

10:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @POLARIS_AVMODE_ANALOGT_TV, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %18 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %19 = or i32 %17, %18
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %23 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %24 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %25 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @afe_write_byte(%struct.cx231xx* %22, i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %29 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %30 = call i32 @afe_read_byte(%struct.cx231xx* %28, i32 %29, i32* %5)
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %37

36:                                               ; preds = %21
  br label %15

37:                                               ; preds = %35, %15
  %38 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %39 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %40 = call i32 @afe_write_byte(%struct.cx231xx* %38, i32 %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %42 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %43 = call i32 @afe_write_byte(%struct.cx231xx* %41, i32 %42, i32 0)
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %47 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %48 = call i32 @afe_write_byte(%struct.cx231xx* %46, i32 %47, i32 0)
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %134

51:                                               ; preds = %10
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @POLARIS_AVMODE_DIGITAL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %51
  %56 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %57 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %58 = call i32 @afe_write_byte(%struct.cx231xx* %56, i32 %57, i32 112)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %60 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %61 = call i32 @afe_write_byte(%struct.cx231xx* %59, i32 %60, i32 112)
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %65 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %66 = call i32 @afe_write_byte(%struct.cx231xx* %64, i32 %65, i32 112)
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %70 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %71 = call i32 @afe_read_byte(%struct.cx231xx* %69, i32 %70, i32* %5)
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @FLD_PWRDN_PD_BANDGAP, align 4
  %75 = load i32, i32* @FLD_PWRDN_PD_BIAS, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @FLD_PWRDN_PD_TUNECK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %82 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @afe_write_byte(%struct.cx231xx* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %133

87:                                               ; preds = %51
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @POLARIS_AVMODE_ENXTERNAL_AV, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %113, %91
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %95 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %96 = or i32 %94, %95
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %100 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %101 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %102 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @afe_write_byte(%struct.cx231xx* %99, i32 %100, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %106 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %107 = call i32 @afe_read_byte(%struct.cx231xx* %105, i32 %106, i32* %5)
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %114

113:                                              ; preds = %98
  br label %92

114:                                              ; preds = %112, %92
  %115 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %116 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %117 = call i32 @afe_write_byte(%struct.cx231xx* %115, i32 %116, i32 0)
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %121 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %122 = call i32 @afe_write_byte(%struct.cx231xx* %120, i32 %121, i32 0)
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  %125 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %126 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %127 = call i32 @afe_write_byte(%struct.cx231xx* %125, i32 %126, i32 0)
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %132

130:                                              ; preds = %87
  %131 = call i32 @cx231xx_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %114
  br label %133

133:                                              ; preds = %132, %55
  br label %134

134:                                              ; preds = %133, %37
  br label %262

135:                                              ; preds = %2
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @POLARIS_AVMODE_ANALOGT_TV, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %178

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %161, %139
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %143 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %144 = or i32 %142, %143
  %145 = icmp ne i32 %141, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %140
  %147 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %148 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %149 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %150 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @afe_write_byte(%struct.cx231xx* %147, i32 %148, i32 %151)
  store i32 %152, i32* %6, align 4
  %153 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %154 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %155 = call i32 @afe_read_byte(%struct.cx231xx* %153, i32 %154, i32* %5)
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  br label %162

161:                                              ; preds = %146
  br label %140

162:                                              ; preds = %160, %140
  %163 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %164 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %165 = call i32 @afe_write_byte(%struct.cx231xx* %163, i32 %164, i32 64)
  %166 = load i32, i32* %6, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %6, align 4
  %168 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %169 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %170 = call i32 @afe_write_byte(%struct.cx231xx* %168, i32 %169, i32 64)
  %171 = load i32, i32* %6, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %6, align 4
  %173 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %174 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %175 = call i32 @afe_write_byte(%struct.cx231xx* %173, i32 %174, i32 0)
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %6, align 4
  br label %261

178:                                              ; preds = %135
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @POLARIS_AVMODE_DIGITAL, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %214

182:                                              ; preds = %178
  %183 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %184 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %185 = call i32 @afe_write_byte(%struct.cx231xx* %183, i32 %184, i32 112)
  store i32 %185, i32* %6, align 4
  %186 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %187 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %188 = call i32 @afe_write_byte(%struct.cx231xx* %186, i32 %187, i32 112)
  %189 = load i32, i32* %6, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %6, align 4
  %191 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %192 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %193 = call i32 @afe_write_byte(%struct.cx231xx* %191, i32 %192, i32 112)
  %194 = load i32, i32* %6, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %6, align 4
  %196 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %197 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %198 = call i32 @afe_read_byte(%struct.cx231xx* %196, i32 %197, i32* %5)
  %199 = load i32, i32* %6, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* @FLD_PWRDN_PD_BANDGAP, align 4
  %202 = load i32, i32* @FLD_PWRDN_PD_BIAS, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @FLD_PWRDN_PD_TUNECK, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* %5, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %5, align 4
  %208 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %209 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @afe_write_byte(%struct.cx231xx* %208, i32 %209, i32 %210)
  %212 = load i32, i32* %6, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %6, align 4
  br label %260

214:                                              ; preds = %178
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @POLARIS_AVMODE_ENXTERNAL_AV, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %257

218:                                              ; preds = %214
  br label %219

219:                                              ; preds = %240, %218
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %222 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %223 = or i32 %221, %222
  %224 = icmp ne i32 %220, %223
  br i1 %224, label %225, label %241

225:                                              ; preds = %219
  %226 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %227 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %228 = load i32, i32* @FLD_PWRDN_TUNING_BIAS, align 4
  %229 = load i32, i32* @FLD_PWRDN_ENABLE_PLL, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @afe_write_byte(%struct.cx231xx* %226, i32 %227, i32 %230)
  store i32 %231, i32* %6, align 4
  %232 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %233 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %234 = call i32 @afe_read_byte(%struct.cx231xx* %232, i32 %233, i32* %5)
  %235 = load i32, i32* %6, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %6, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %225
  br label %241

240:                                              ; preds = %225
  br label %219

241:                                              ; preds = %239, %219
  %242 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %243 = load i32, i32* @ADC_PWRDN_CLAMP_CH1, align 4
  %244 = call i32 @afe_write_byte(%struct.cx231xx* %242, i32 %243, i32 0)
  %245 = load i32, i32* %6, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %6, align 4
  %247 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %248 = load i32, i32* @ADC_PWRDN_CLAMP_CH2, align 4
  %249 = call i32 @afe_write_byte(%struct.cx231xx* %247, i32 %248, i32 0)
  %250 = load i32, i32* %6, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %6, align 4
  %252 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %253 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %254 = call i32 @afe_write_byte(%struct.cx231xx* %252, i32 %253, i32 64)
  %255 = load i32, i32* %6, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %6, align 4
  br label %259

257:                                              ; preds = %214
  %258 = call i32 @cx231xx_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %259

259:                                              ; preds = %257, %241
  br label %260

260:                                              ; preds = %259, %182
  br label %261

261:                                              ; preds = %260, %162
  br label %262

262:                                              ; preds = %261, %134
  %263 = load i32, i32* %6, align 4
  ret i32 %263
}

declare dso_local i32 @afe_write_byte(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @afe_read_byte(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @cx231xx_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
