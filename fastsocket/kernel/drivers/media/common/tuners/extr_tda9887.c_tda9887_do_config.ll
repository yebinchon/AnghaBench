; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_do_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_do_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda9887_priv* }
%struct.tda9887_priv = type { i8*, i32, i32, i64 }

@TDA9887_PORT1_ACTIVE = common dso_local global i32 0, align 4
@cOutputPort1Inactive = common dso_local global i8 0, align 1
@TDA9887_PORT1_INACTIVE = common dso_local global i32 0, align 4
@TDA9887_PORT2_ACTIVE = common dso_local global i32 0, align 4
@cOutputPort2Inactive = common dso_local global i8 0, align 1
@TDA9887_PORT2_INACTIVE = common dso_local global i32 0, align 4
@TDA9887_QSS = common dso_local global i32 0, align 4
@cQSS = common dso_local global i8 0, align 1
@TDA9887_INTERCARRIER = common dso_local global i32 0, align 4
@TDA9887_AUTOMUTE = common dso_local global i32 0, align 4
@cAutoMuteFmActive = common dso_local global i8 0, align 1
@TDA9887_DEEMPHASIS_MASK = common dso_local global i32 0, align 4
@cDeemphasisOFF = common dso_local global i8 0, align 1
@cDeemphasisON = common dso_local global i8 0, align 1
@cDeemphasis50 = common dso_local global i8 0, align 1
@cDeemphasis75 = common dso_local global i8 0, align 1
@TDA9887_TOP_SET = common dso_local global i32 0, align 4
@cTopMask = common dso_local global i8 0, align 1
@TDA9887_INTERCARRIER_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@TDA9887_GATING_18 = common dso_local global i32 0, align 4
@cGating_36 = common dso_local global i8 0, align 1
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@TDA9887_RIF_41_3 = common dso_local global i32 0, align 4
@cVideoIFMask = common dso_local global i8 0, align 1
@cRadioIF_41_30 = common dso_local global i8 0, align 1
@TDA9887_GAIN_NORMAL = common dso_local global i32 0, align 4
@cTunerGainLow = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda9887_do_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9887_do_config(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda9887_priv*, align 8
  %4 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.tda9887_priv*, %struct.tda9887_priv** %6, align 8
  store %struct.tda9887_priv* %7, %struct.tda9887_priv** %3, align 8
  %8 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %12 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TDA9887_PORT1_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i8, i8* @cOutputPort1Inactive, align 1
  %19 = sext i8 %18 to i32
  %20 = xor i32 %19, -1
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = and i32 %24, %20
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 1
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %29 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TDA9887_PORT1_INACTIVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load i8, i8* @cOutputPort1Inactive, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = or i32 %40, %36
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 1
  br label %43

43:                                               ; preds = %34, %27
  %44 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %45 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TDA9887_PORT2_ACTIVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i8, i8* @cOutputPort2Inactive, align 1
  %52 = sext i8 %51 to i32
  %53 = xor i32 %52, -1
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %57, %53
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  br label %60

60:                                               ; preds = %50, %43
  %61 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %62 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TDA9887_PORT2_INACTIVE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i8, i8* @cOutputPort2Inactive, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = or i32 %73, %69
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 1
  br label %76

76:                                               ; preds = %67, %60
  %77 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %78 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TDA9887_QSS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load i8, i8* @cQSS, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = or i32 %89, %85
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  br label %92

92:                                               ; preds = %83, %76
  %93 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %94 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TDA9887_INTERCARRIER, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load i8, i8* @cQSS, align 1
  %101 = sext i8 %100 to i32
  %102 = xor i32 %101, -1
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = and i32 %106, %102
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %104, align 1
  br label %109

109:                                              ; preds = %99, %92
  %110 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %111 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TDA9887_AUTOMUTE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %109
  %117 = load i8, i8* @cAutoMuteFmActive, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = or i32 %122, %118
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %120, align 1
  br label %125

125:                                              ; preds = %116, %109
  %126 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %127 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @TDA9887_DEEMPHASIS_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %178

132:                                              ; preds = %125
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = and i32 %136, -97
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %134, align 1
  %139 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %140 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @TDA9887_DEEMPHASIS_MASK, align 4
  %143 = and i32 %141, %142
  switch i32 %143, label %177 [
    i32 128, label %144
    i32 130, label %153
    i32 129, label %165
  ]

144:                                              ; preds = %132
  %145 = load i8, i8* @cDeemphasisOFF, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = or i32 %150, %146
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %148, align 1
  br label %177

153:                                              ; preds = %132
  %154 = load i8, i8* @cDeemphasisON, align 1
  %155 = sext i8 %154 to i32
  %156 = load i8, i8* @cDeemphasis50, align 1
  %157 = sext i8 %156 to i32
  %158 = or i32 %155, %157
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = or i32 %162, %158
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %160, align 1
  br label %177

165:                                              ; preds = %132
  %166 = load i8, i8* @cDeemphasisON, align 1
  %167 = sext i8 %166 to i32
  %168 = load i8, i8* @cDeemphasis75, align 1
  %169 = sext i8 %168 to i32
  %170 = or i32 %167, %169
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 2
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = or i32 %174, %170
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %172, align 1
  br label %177

177:                                              ; preds = %132, %165, %153, %144
  br label %178

178:                                              ; preds = %177, %125
  %179 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %180 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @TDA9887_TOP_SET, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %208

185:                                              ; preds = %178
  %186 = load i8, i8* @cTopMask, align 1
  %187 = sext i8 %186 to i32
  %188 = xor i32 %187, -1
  %189 = load i8*, i8** %4, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 2
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = and i32 %192, %188
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %190, align 1
  %195 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %196 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = ashr i32 %197, 8
  %199 = load i8, i8* @cTopMask, align 1
  %200 = sext i8 %199 to i32
  %201 = and i32 %198, %200
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 2
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = or i32 %205, %201
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %203, align 1
  br label %208

208:                                              ; preds = %185, %178
  %209 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %210 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @TDA9887_INTERCARRIER_NTSC, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %232

215:                                              ; preds = %208
  %216 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %217 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @V4L2_STD_NTSC, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %215
  %223 = load i8, i8* @cQSS, align 1
  %224 = sext i8 %223 to i32
  %225 = xor i32 %224, -1
  %226 = load i8*, i8** %4, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = and i32 %229, %225
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %227, align 1
  br label %232

232:                                              ; preds = %222, %215, %208
  %233 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %234 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @TDA9887_GATING_18, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %232
  %240 = load i8, i8* @cGating_36, align 1
  %241 = sext i8 %240 to i32
  %242 = xor i32 %241, -1
  %243 = load i8*, i8** %4, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 3
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = and i32 %246, %242
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %244, align 1
  br label %249

249:                                              ; preds = %239, %232
  %250 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %251 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %298

255:                                              ; preds = %249
  %256 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %257 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @TDA9887_RIF_41_3, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %280

262:                                              ; preds = %255
  %263 = load i8, i8* @cVideoIFMask, align 1
  %264 = sext i8 %263 to i32
  %265 = xor i32 %264, -1
  %266 = load i8*, i8** %4, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 3
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = and i32 %269, %265
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %267, align 1
  %272 = load i8, i8* @cRadioIF_41_30, align 1
  %273 = sext i8 %272 to i32
  %274 = load i8*, i8** %4, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 3
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = or i32 %277, %273
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %275, align 1
  br label %280

280:                                              ; preds = %262, %255
  %281 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %282 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @TDA9887_GAIN_NORMAL, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %280
  %288 = load i8, i8* @cTunerGainLow, align 1
  %289 = sext i8 %288 to i32
  %290 = xor i32 %289, -1
  %291 = load i8*, i8** %4, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 3
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = and i32 %294, %290
  %296 = trunc i32 %295 to i8
  store i8 %296, i8* %292, align 1
  br label %297

297:                                              ; preds = %287, %280
  br label %298

298:                                              ; preds = %297, %249
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
