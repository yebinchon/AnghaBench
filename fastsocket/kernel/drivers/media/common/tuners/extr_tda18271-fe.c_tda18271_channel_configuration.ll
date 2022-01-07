; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_channel_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_channel_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, i64, i32 }
%struct.tda18271_std_map_item = type { i32, i32, i32, i32, i8, i32 }

@R_EP3 = common dso_local global i64 0, align 8
@TDA18271HDC2 = common dso_local global i64 0, align 8
@R_EP4 = common dso_local global i64 0, align 8
@R_EB22 = common dso_local global i64 0, align 8
@R_EP1 = common dso_local global i64 0, align 8
@R_TM = common dso_local global i64 0, align 8
@R_EB1 = common dso_local global i64 0, align 8
@R_MPD = common dso_local global i64 0, align 8
@R_CPD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.tda18271_std_map_item*, i64, i64)* @tda18271_channel_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_channel_configuration(%struct.dvb_frontend* %0, %struct.tda18271_std_map_item* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.tda18271_std_map_item*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tda18271_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.tda18271_std_map_item* %1, %struct.tda18271_std_map_item** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.tda18271_priv*, %struct.tda18271_priv** %14, align 8
  store %struct.tda18271_priv* %15, %struct.tda18271_priv** %9, align 8
  %16 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %17 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* @R_EP3, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, -32
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %21, align 1
  %26 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %6, align 8
  %27 = getelementptr inbounds %struct.tda18271_std_map_item, %struct.tda18271_std_map_item* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 3
  %30 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %6, align 8
  %31 = getelementptr inbounds %struct.tda18271_std_map_item, %struct.tda18271_std_map_item* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* @R_EP3, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %33
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %42 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TDA18271HDC2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %4
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* @R_EP3, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, -5
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 1
  br label %54

54:                                               ; preds = %46, %4
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* @R_EP4, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, -4
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %57, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* @R_EP4, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, -29
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %64, align 1
  %69 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %6, align 8
  %70 = getelementptr inbounds %struct.tda18271_std_map_item, %struct.tda18271_std_map_item* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 2
  %73 = load i8*, i8** %10, align 8
  %74 = load i64, i64* @R_EP4, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, %72
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %75, align 1
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* @R_EP4, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, -129
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %82, align 1
  %87 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %6, align 8
  %88 = getelementptr inbounds %struct.tda18271_std_map_item, %struct.tda18271_std_map_item* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 7
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* @R_EP4, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %95, %90
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %93, align 1
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* @R_EB22, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %6, align 8
  %102 = getelementptr inbounds %struct.tda18271_std_map_item, %struct.tda18271_std_map_item* %101, i32 0, i32 4
  %103 = load i8, i8* %102, align 4
  %104 = zext i8 %103 to i32
  %105 = load i8*, i8** %10, align 8
  %106 = load i64, i64* @R_EB22, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %109, %104
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %107, align 1
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %113 = load i64, i64* @R_EB22, align 8
  %114 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %112, i64 %113, i32 1)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i64 @tda_fail(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %54
  br label %271

119:                                              ; preds = %54
  %120 = load i8*, i8** %10, align 8
  %121 = load i64, i64* @R_EP1, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %124, 64
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %122, align 1
  %127 = load i8*, i8** %10, align 8
  %128 = load i64, i64* @R_TM, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, -17
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %129, align 1
  %134 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %135 = call i32 @tda18271_calc_ir_measure(%struct.dvb_frontend* %134, i64* %7)
  %136 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %137 = call i32 @tda18271_calc_bp_filter(%struct.dvb_frontend* %136, i64* %7)
  %138 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %139 = call i32 @tda18271_calc_rf_band(%struct.dvb_frontend* %138, i64* %7)
  %140 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %141 = call i32 @tda18271_calc_gain_taper(%struct.dvb_frontend* %140, i64* %7)
  %142 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %143 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  switch i32 %144, label %161 [
    i32 129, label %145
    i32 128, label %153
  ]

145:                                              ; preds = %119
  %146 = load i8*, i8** %10, align 8
  %147 = load i64, i64* @R_EB1, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %150, 4
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %148, align 1
  br label %161

153:                                              ; preds = %119
  %154 = load i8*, i8** %10, align 8
  %155 = load i64, i64* @R_EB1, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, -5
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %156, align 1
  br label %161

161:                                              ; preds = %119, %153, %145
  %162 = load i8*, i8** %10, align 8
  %163 = load i64, i64* @R_EB1, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, -3
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %164, align 1
  %169 = load i8*, i8** %10, align 8
  %170 = load i64, i64* @R_EB1, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, -2
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %171, align 1
  %176 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %177 = load i64, i64* @R_EB1, align 8
  %178 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %176, i64 %177, i32 1)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = call i64 @tda_fail(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %161
  br label %271

183:                                              ; preds = %161
  %184 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %6, align 8
  %185 = getelementptr inbounds %struct.tda18271_std_map_item, %struct.tda18271_std_map_item* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %186, 1000
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* %7, align 8
  %190 = add nsw i64 %188, %189
  store i64 %190, i64* %12, align 8
  %191 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %192 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %225 [
    i32 129, label %194
    i32 128, label %203
  ]

194:                                              ; preds = %183
  %195 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %196 = load i64, i64* %12, align 8
  %197 = call i32 @tda18271_calc_main_pll(%struct.dvb_frontend* %195, i64 %196)
  %198 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %199 = call i32 @tda18271_set_if_notch(%struct.dvb_frontend* %198)
  %200 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %201 = load i64, i64* @R_MPD, align 8
  %202 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %200, i64 %201, i32 4)
  br label %225

203:                                              ; preds = %183
  %204 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %205 = load i64, i64* %12, align 8
  %206 = call i32 @tda18271_calc_cal_pll(%struct.dvb_frontend* %204, i64 %205)
  %207 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %208 = load i64, i64* @R_CPD, align 8
  %209 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %207, i64 %208, i32 4)
  %210 = load i8*, i8** %10, align 8
  %211 = load i64, i64* @R_CPD, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = and i32 %214, 127
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %10, align 8
  %218 = load i64, i64* @R_MPD, align 8
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8 %216, i8* %219, align 1
  %220 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %221 = call i32 @tda18271_set_if_notch(%struct.dvb_frontend* %220)
  %222 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %223 = load i64, i64* @R_MPD, align 8
  %224 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %222, i64 %223, i32 1)
  br label %225

225:                                              ; preds = %183, %203, %194
  %226 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %227 = load i64, i64* @R_TM, align 8
  %228 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %226, i64 %227, i32 7)
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = call i64 @tda_fail(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %225
  br label %271

233:                                              ; preds = %225
  %234 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %235 = call i32 @charge_pump_source(%struct.dvb_frontend* %234, i32 1)
  %236 = call i32 @msleep(i32 1)
  %237 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %238 = call i32 @charge_pump_source(%struct.dvb_frontend* %237, i32 0)
  %239 = call i32 @msleep(i32 20)
  %240 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  %241 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @TDA18271HDC2, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %270

245:                                              ; preds = %233
  %246 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %6, align 8
  %247 = getelementptr inbounds %struct.tda18271_std_map_item, %struct.tda18271_std_map_item* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %245
  %251 = load i8*, i8** %10, align 8
  %252 = load i64, i64* @R_EP3, align 8
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = and i32 %255, -5
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %253, align 1
  br label %266

258:                                              ; preds = %245
  %259 = load i8*, i8** %10, align 8
  %260 = load i64, i64* @R_EP3, align 8
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = or i32 %263, 4
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %261, align 1
  br label %266

266:                                              ; preds = %258, %250
  %267 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %268 = load i64, i64* @R_EP3, align 8
  %269 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %267, i64 %268, i32 1)
  store i32 %269, i32* %11, align 4
  br label %270

270:                                              ; preds = %266, %233
  br label %271

271:                                              ; preds = %270, %232, %182, %118
  %272 = load i32, i32* %11, align 4
  ret i32 %272
}

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i64 @tda_fail(i32) #1

declare dso_local i32 @tda18271_calc_ir_measure(%struct.dvb_frontend*, i64*) #1

declare dso_local i32 @tda18271_calc_bp_filter(%struct.dvb_frontend*, i64*) #1

declare dso_local i32 @tda18271_calc_rf_band(%struct.dvb_frontend*, i64*) #1

declare dso_local i32 @tda18271_calc_gain_taper(%struct.dvb_frontend*, i64*) #1

declare dso_local i32 @tda18271_calc_main_pll(%struct.dvb_frontend*, i64) #1

declare dso_local i32 @tda18271_set_if_notch(%struct.dvb_frontend*) #1

declare dso_local i32 @tda18271_calc_cal_pll(%struct.dvb_frontend*, i64) #1

declare dso_local i32 @charge_pump_source(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
