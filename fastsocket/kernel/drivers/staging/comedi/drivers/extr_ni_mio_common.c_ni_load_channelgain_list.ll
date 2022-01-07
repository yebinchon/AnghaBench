; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_load_channelgain_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_load_channelgain_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32 (%struct.comedi_device*, i32, i32)* }
%struct.comedi_device = type { i32 }

@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ni_reg_m_series_mask = common dso_local global i32 0, align 4
@ni_reg_611x = common dso_local global i32 0, align 4
@ni_reg_6143 = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@Configuration_Memory_Clear = common dso_local global i32 0, align 4
@CR_ALT_SOURCE = common dso_local global i32 0, align 4
@Calibration_Channel_6143_RelayOn = common dso_local global i32 0, align 4
@Calibration_Channel_6143 = common dso_local global i32 0, align 4
@Calibration_Channel_6143_RelayOff = common dso_local global i32 0, align 4
@CR_ALT_FILTER = common dso_local global i32 0, align 4
@ni_gainlkup = common dso_local global i32** null, align 8
@Calibration_Channel_Select_611x = common dso_local global i32 0, align 4
@AI_DIFFERENTIAL = common dso_local global i32 0, align 4
@AI_COMMON = common dso_local global i32 0, align 4
@AI_GROUND = common dso_local global i32 0, align 4
@Configuration_Memory_High = common dso_local global i32 0, align 4
@AI_LAST_CHANNEL = common dso_local global i32 0, align 4
@AI_DITHER = common dso_local global i32 0, align 4
@Configuration_Memory_Low = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32*)* @ni_load_channelgain_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_load_channelgain_list(%struct.comedi_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %16 = load i32, i32* @ni_reg_m_series_mask, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ni_m_series_load_channelgain_list(%struct.comedi_device* %20, i32 %21, i32* %22)
  br label %314

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %57

27:                                               ; preds = %24
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %29 = load i32, i32* @ni_reg_611x, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %33 = load i32, i32* @ni_reg_6143, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %314

49:                                               ; preds = %40, %35
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %60

57:                                               ; preds = %31, %27, %24
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 5
  %63 = load i32 (%struct.comedi_device*, i32, i32)*, i32 (%struct.comedi_device*, i32, i32)** %62, align 8
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = load i32, i32* @Configuration_Memory_Clear, align 4
  %66 = call i32 %63(%struct.comedi_device* %64, i32 1, i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %68 = load i32, i32* @ni_reg_6143, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %128

70:                                               ; preds = %60
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CR_ALT_SOURCE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %70
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @Calibration_Channel_6143_RelayOn, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @Calibration_Channel_6143, align 4
  %89 = call i32 @ni_writew(i32 %87, i32 %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @Calibration_Channel_6143, align 4
  %94 = call i32 @ni_writew(i32 %92, i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = call i32 @msleep_interruptible(i32 100)
  br label %127

98:                                               ; preds = %77, %70
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CR_ALT_SOURCE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %105
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @Calibration_Channel_6143_RelayOff, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @Calibration_Channel_6143, align 4
  %117 = call i32 @ni_writew(i32 %115, i32 %116)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @Calibration_Channel_6143, align 4
  %122 = call i32 @ni_writew(i32 %120, i32 %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  store i32 0, i32* %124, align 8
  %125 = call i32 @msleep_interruptible(i32 100)
  br label %126

126:                                              ; preds = %110, %105, %98
  br label %127

127:                                              ; preds = %126, %82
  br label %128

128:                                              ; preds = %127, %60
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 1), align 4
  %130 = sub nsw i32 %129, 1
  %131 = shl i32 1, %130
  store i32 %131, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %300, %128
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %303

136:                                              ; preds = %132
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %138 = load i32, i32* @ni_reg_6143, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %10, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @CR_ALT_SOURCE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %7, align 4
  br label %160

153:                                              ; preds = %140, %136
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @CR_CHAN(i32 %158)
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %153, %149
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %10, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @CR_AREF(i32 %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %10, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @CR_RANGE(i32 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %10, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @CR_ALT_FILTER, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %14, align 4
  %182 = load i32**, i32*** @ni_gainlkup, align 8
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 2), align 8
  %184 = getelementptr inbounds i32*, i32** %182, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %191 = load i32, i32* @ni_reg_611x, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %160
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %194, i32* %200, align 4
  br label %216

201:                                              ; preds = %160
  %202 = load i32, i32* %8, align 4
  %203 = and i32 %202, 256
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %208

206:                                              ; preds = %201
  %207 = load i32, i32* %13, align 4
  br label %208

208:                                              ; preds = %206, %205
  %209 = phi i32 [ 0, %205 ], [ %207, %206 ]
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %10, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %209, i32* %215, align 4
  br label %216

216:                                              ; preds = %208, %193
  store i32 0, i32* %11, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* %10, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @CR_ALT_SOURCE, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %216
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %227 = load i32, i32* @ni_reg_611x, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %239

229:                                              ; preds = %225
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %10, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @CR_CHAN(i32 %234)
  %236 = and i32 %235, 3
  %237 = load i32, i32* @Calibration_Channel_Select_611x, align 4
  %238 = call i32 @ni_writew(i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %229, %225
  br label %267

240:                                              ; preds = %216
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %242 = load i32, i32* @ni_reg_611x, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store i32 130, i32* %9, align 4
  br label %251

245:                                              ; preds = %240
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %247 = load i32, i32* @ni_reg_6143, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  store i32 128, i32* %9, align 4
  br label %250

250:                                              ; preds = %249, %245
  br label %251

251:                                              ; preds = %250, %244
  %252 = load i32, i32* %9, align 4
  switch i32 %252, label %266 [
    i32 130, label %253
    i32 131, label %257
    i32 129, label %261
    i32 128, label %265
  ]

253:                                              ; preds = %251
  %254 = load i32, i32* @AI_DIFFERENTIAL, align 4
  %255 = load i32, i32* %11, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %11, align 4
  br label %266

257:                                              ; preds = %251
  %258 = load i32, i32* @AI_COMMON, align 4
  %259 = load i32, i32* %11, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %11, align 4
  br label %266

261:                                              ; preds = %251
  %262 = load i32, i32* @AI_GROUND, align 4
  %263 = load i32, i32* %11, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %11, align 4
  br label %266

265:                                              ; preds = %251
  br label %266

266:                                              ; preds = %251, %265, %261, %257, %253
  br label %267

267:                                              ; preds = %266, %239
  %268 = load i32, i32* %7, align 4
  %269 = call i32 @AI_CONFIG_CHANNEL(i32 %268)
  %270 = load i32, i32* %11, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* @Configuration_Memory_High, align 4
  %274 = call i32 @ni_writew(i32 %272, i32 %273)
  %275 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %276 = load i32, i32* @ni_reg_6143, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %299

278:                                              ; preds = %267
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %12, align 4
  %280 = load i32, i32* %10, align 4
  %281 = load i32, i32* %5, align 4
  %282 = sub i32 %281, 1
  %283 = icmp eq i32 %280, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %278
  %285 = load i32, i32* @AI_LAST_CHANNEL, align 4
  %286 = load i32, i32* %12, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %12, align 4
  br label %288

288:                                              ; preds = %284, %278
  %289 = load i32, i32* %14, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load i32, i32* @AI_DITHER, align 4
  %293 = load i32, i32* %12, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %12, align 4
  br label %295

295:                                              ; preds = %291, %288
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* @Configuration_Memory_Low, align 4
  %298 = call i32 @ni_writew(i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %295, %267
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %10, align 4
  %302 = add i32 %301, 1
  store i32 %302, i32* %10, align 4
  br label %132

303:                                              ; preds = %132
  %304 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %305 = load i32, i32* @ni_reg_611x, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %303
  %308 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %309 = load i32, i32* @ni_reg_6143, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %313 = call i32 @ni_prime_channelgain_list(%struct.comedi_device* %312)
  br label %314

314:                                              ; preds = %19, %48, %311, %307, %303
  ret void
}

declare dso_local i32 @ni_m_series_load_channelgain_list(%struct.comedi_device*, i32, i32*) #1

declare dso_local i32 @ni_writew(i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @AI_CONFIG_CHANNEL(i32) #1

declare dso_local i32 @ni_prime_channelgain_list(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
