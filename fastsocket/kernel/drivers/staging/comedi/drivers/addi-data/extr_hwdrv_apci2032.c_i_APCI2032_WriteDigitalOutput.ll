; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2032.c_i_APCI2032_WriteDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2032.c_i_APCI2032_WriteDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI2032_DIGITAL_OP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c" chan spec wrong\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\0ASpecified channel not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\0ASpecified functionality does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI2032_WriteDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @APCI2032_DIGITAL_OP, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inl(i64 %26)
  store i32 %27, i32* %10, align 4
  br label %29

28:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %144

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @APCI2032_DIGITAL_OP, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outl(i32 %51, i64 %56)
  br label %143

58:                                               ; preds = %34
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %140

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  switch i32 %64, label %125 [
    i32 2, label %65
    i32 4, label %78
    i32 8, label %91
    i32 16, label %104
    i32 31, label %117
  ]

65:                                               ; preds = %63
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = mul i32 2, %71
  %73 = shl i32 %68, %72
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %73, %74
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  br label %130

78:                                               ; preds = %63
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = mul i32 4, %84
  %86 = shl i32 %81, %85
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %88, i32* %90, align 4
  br label %130

91:                                               ; preds = %63
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = mul i32 8, %97
  %99 = shl i32 %94, %98
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %99, %100
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %101, i32* %103, align 4
  br label %130

104:                                              ; preds = %63
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = mul i32 16, %110
  %112 = shl i32 %107, %111
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %112, %113
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %114, i32* %116, align 4
  br label %130

117:                                              ; preds = %63
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %120, %121
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %122, i32* %124, align 4
  br label %130

125:                                              ; preds = %63
  %126 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %127 = call i32 @comedi_error(%struct.comedi_device* %126, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %348

130:                                              ; preds = %117, %104, %91, %78, %65
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @APCI2032_DIGITAL_OP, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @outl(i32 %133, i64 %138)
  br label %142

140:                                              ; preds = %58
  %141 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %130
  br label %143

143:                                              ; preds = %142, %39
  br label %344

144:                                              ; preds = %29
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %339

149:                                              ; preds = %144
  %150 = load i32*, i32** %9, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %192

154:                                              ; preds = %149
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %158, 1
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %159, i32* %161, align 4
  store i32 1, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = shl i32 %162, %163
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = or i32 %165, %166
  store i32 %167, i32* %10, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %12, align 4
  %172 = shl i32 %170, %171
  %173 = xor i32 %172, -1
  %174 = load i32*, i32** %9, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %173, i32* %175, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %178, %179
  %181 = load i32*, i32** %9, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 %180, i32* %182, align 4
  %183 = load i32*, i32** %9, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @APCI2032_DIGITAL_OP, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @outl(i32 %185, i64 %190)
  br label %338

192:                                              ; preds = %149
  %193 = load i32*, i32** %9, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %335

197:                                              ; preds = %192
  %198 = load i32, i32* %12, align 4
  switch i32 %198, label %320 [
    i32 2, label %199
    i32 4, label %229
    i32 8, label %259
    i32 16, label %289
    i32 31, label %319
  ]

199:                                              ; preds = %197
  %200 = load i32*, i32** %9, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = xor i32 %202, -1
  %204 = and i32 %203, 3
  %205 = load i32*, i32** %9, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  store i32 %204, i32* %206, align 4
  store i32 3, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = mul i32 2, %210
  %212 = shl i32 %207, %211
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = or i32 %213, %214
  store i32 %215, i32* %10, align 4
  %216 = load i32*, i32** %9, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %9, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  %221 = load i32, i32* %220, align 4
  %222 = mul i32 2, %221
  %223 = shl i32 %218, %222
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %10, align 4
  %226 = and i32 %224, %225
  %227 = load i32*, i32** %9, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  store i32 %226, i32* %228, align 4
  br label %325

229:                                              ; preds = %197
  %230 = load i32*, i32** %9, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = xor i32 %232, -1
  %234 = and i32 %233, 15
  %235 = load i32*, i32** %9, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  store i32 %234, i32* %236, align 4
  store i32 15, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  %240 = load i32, i32* %239, align 4
  %241 = mul i32 4, %240
  %242 = shl i32 %237, %241
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %11, align 4
  %245 = or i32 %243, %244
  store i32 %245, i32* %10, align 4
  %246 = load i32*, i32** %9, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %9, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = mul i32 4, %251
  %253 = shl i32 %248, %252
  %254 = xor i32 %253, -1
  %255 = load i32, i32* %10, align 4
  %256 = and i32 %254, %255
  %257 = load i32*, i32** %9, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  store i32 %256, i32* %258, align 4
  br label %325

259:                                              ; preds = %197
  %260 = load i32*, i32** %9, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = xor i32 %262, -1
  %264 = and i32 %263, 255
  %265 = load i32*, i32** %9, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  store i32 %264, i32* %266, align 4
  store i32 255, i32* %11, align 4
  %267 = load i32, i32* %11, align 4
  %268 = load i32*, i32** %9, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = mul i32 8, %270
  %272 = shl i32 %267, %271
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %11, align 4
  %275 = or i32 %273, %274
  store i32 %275, i32* %10, align 4
  %276 = load i32*, i32** %9, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %9, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  %282 = mul i32 8, %281
  %283 = shl i32 %278, %282
  %284 = xor i32 %283, -1
  %285 = load i32, i32* %10, align 4
  %286 = and i32 %284, %285
  %287 = load i32*, i32** %9, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  store i32 %286, i32* %288, align 4
  br label %325

289:                                              ; preds = %197
  %290 = load i32*, i32** %9, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = xor i32 %292, -1
  %294 = and i32 %293, 65535
  %295 = load i32*, i32** %9, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  store i32 %294, i32* %296, align 4
  store i32 65535, i32* %11, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load i32*, i32** %9, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 2
  %300 = load i32, i32* %299, align 4
  %301 = mul i32 16, %300
  %302 = shl i32 %297, %301
  store i32 %302, i32* %11, align 4
  %303 = load i32, i32* %10, align 4
  %304 = load i32, i32* %11, align 4
  %305 = or i32 %303, %304
  store i32 %305, i32* %10, align 4
  %306 = load i32*, i32** %9, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %9, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 2
  %311 = load i32, i32* %310, align 4
  %312 = mul i32 16, %311
  %313 = shl i32 %308, %312
  %314 = xor i32 %313, -1
  %315 = load i32, i32* %10, align 4
  %316 = and i32 %314, %315
  %317 = load i32*, i32** %9, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  store i32 %316, i32* %318, align 4
  br label %325

319:                                              ; preds = %197
  br label %325

320:                                              ; preds = %197
  %321 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %322 = call i32 @comedi_error(%struct.comedi_device* %321, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %323 = load i32, i32* @EINVAL, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %5, align 4
  br label %348

325:                                              ; preds = %319, %289, %259, %229, %199
  %326 = load i32*, i32** %9, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @APCI2032_DIGITAL_OP, align 8
  %333 = add nsw i64 %331, %332
  %334 = call i32 @outl(i32 %328, i64 %333)
  br label %337

335:                                              ; preds = %192
  %336 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %337

337:                                              ; preds = %335, %325
  br label %338

338:                                              ; preds = %337, %154
  br label %343

339:                                              ; preds = %144
  %340 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %341 = load i32, i32* @EINVAL, align 4
  %342 = sub nsw i32 0, %341
  store i32 %342, i32* %5, align 4
  br label %348

343:                                              ; preds = %338
  br label %344

344:                                              ; preds = %343, %143
  %345 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %346 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  store i32 %347, i32* %5, align 4
  br label %348

348:                                              ; preds = %344, %339, %320, %125
  %349 = load i32, i32* %5, align 4
  ret i32 %349
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
