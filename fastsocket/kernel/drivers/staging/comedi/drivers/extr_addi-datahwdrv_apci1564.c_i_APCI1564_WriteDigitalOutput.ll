; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1564.c_i_APCI1564_WriteDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci1564.c_i_APCI1564_WriteDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1564_DIGITAL_OP = common dso_local global i64 0, align 8
@APCI1564_DIGITAL_OP_RW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c" chan spec wrong\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\0ASpecified channel not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\0ASpecified functionality does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1564_WriteDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @APCI1564_DIGITAL_OP_RW, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inl(i64 %28)
  store i32 %29, i32* %10, align 4
  br label %31

30:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %150

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* @APCI1564_DIGITAL_OP_RW, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outl(i32 %53, i64 %60)
  br label %149

62:                                               ; preds = %36
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %146

67:                                               ; preds = %62
  %68 = load i32, i32* %12, align 4
  switch i32 %68, label %129 [
    i32 2, label %69
    i32 4, label %82
    i32 8, label %95
    i32 16, label %108
    i32 31, label %121
  ]

69:                                               ; preds = %67
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = mul i32 2, %75
  %77 = shl i32 %72, %76
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %77, %78
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %79, i32* %81, align 4
  br label %134

82:                                               ; preds = %67
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = mul i32 4, %88
  %90 = shl i32 %85, %89
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %90, %91
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  br label %134

95:                                               ; preds = %67
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = mul i32 8, %101
  %103 = shl i32 %98, %102
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %103, %104
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %105, i32* %107, align 4
  br label %134

108:                                              ; preds = %67
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = mul i32 16, %114
  %116 = shl i32 %111, %115
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %116, %117
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %118, i32* %120, align 4
  br label %134

121:                                              ; preds = %67
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %10, align 4
  %126 = or i32 %124, %125
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %126, i32* %128, align 4
  br label %134

129:                                              ; preds = %67
  %130 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %131 = call i32 @comedi_error(%struct.comedi_device* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %358

134:                                              ; preds = %121, %108, %95, %82, %69
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %142 = add nsw i64 %140, %141
  %143 = load i64, i64* @APCI1564_DIGITAL_OP_RW, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @outl(i32 %137, i64 %144)
  br label %148

146:                                              ; preds = %62
  %147 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %134
  br label %149

149:                                              ; preds = %148, %41
  br label %354

150:                                              ; preds = %31
  %151 = load i32*, i32** %9, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %349

155:                                              ; preds = %150
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %200

160:                                              ; preds = %155
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = xor i32 %163, -1
  %165 = and i32 %164, 1
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %165, i32* %167, align 4
  store i32 1, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = shl i32 %168, %169
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = or i32 %171, %172
  store i32 %173, i32* %10, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %12, align 4
  %178 = shl i32 %176, %177
  %179 = xor i32 %178, -1
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  store i32 %179, i32* %181, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %10, align 4
  %186 = and i32 %184, %185
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %186, i32* %188, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %196 = add nsw i64 %194, %195
  %197 = load i64, i64* @APCI1564_DIGITAL_OP_RW, align 8
  %198 = add nsw i64 %196, %197
  %199 = call i32 @outl(i32 %191, i64 %198)
  br label %348

200:                                              ; preds = %155
  %201 = load i32*, i32** %9, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %345

205:                                              ; preds = %200
  %206 = load i32, i32* %12, align 4
  switch i32 %206, label %328 [
    i32 2, label %207
    i32 4, label %237
    i32 8, label %267
    i32 16, label %297
    i32 31, label %327
  ]

207:                                              ; preds = %205
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = xor i32 %210, -1
  %212 = and i32 %211, 3
  %213 = load i32*, i32** %9, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 %212, i32* %214, align 4
  store i32 3, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i32*, i32** %9, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  %218 = load i32, i32* %217, align 4
  %219 = mul i32 2, %218
  %220 = shl i32 %215, %219
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %11, align 4
  %223 = or i32 %221, %222
  store i32 %223, i32* %10, align 4
  %224 = load i32*, i32** %9, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %9, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  %229 = load i32, i32* %228, align 4
  %230 = mul i32 2, %229
  %231 = shl i32 %226, %230
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %10, align 4
  %234 = and i32 %232, %233
  %235 = load i32*, i32** %9, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  store i32 %234, i32* %236, align 4
  br label %333

237:                                              ; preds = %205
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = xor i32 %240, -1
  %242 = and i32 %241, 15
  %243 = load i32*, i32** %9, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 %242, i32* %244, align 4
  store i32 15, i32* %11, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load i32*, i32** %9, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = mul i32 4, %248
  %250 = shl i32 %245, %249
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %11, align 4
  %253 = or i32 %251, %252
  store i32 %253, i32* %10, align 4
  %254 = load i32*, i32** %9, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = mul i32 4, %259
  %261 = shl i32 %256, %260
  %262 = xor i32 %261, -1
  %263 = load i32, i32* %10, align 4
  %264 = and i32 %262, %263
  %265 = load i32*, i32** %9, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  store i32 %264, i32* %266, align 4
  br label %333

267:                                              ; preds = %205
  %268 = load i32*, i32** %9, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = xor i32 %270, -1
  %272 = and i32 %271, 255
  %273 = load i32*, i32** %9, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  store i32 %272, i32* %274, align 4
  store i32 255, i32* %11, align 4
  %275 = load i32, i32* %11, align 4
  %276 = load i32*, i32** %9, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 2
  %278 = load i32, i32* %277, align 4
  %279 = mul i32 8, %278
  %280 = shl i32 %275, %279
  store i32 %280, i32* %11, align 4
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %11, align 4
  %283 = or i32 %281, %282
  store i32 %283, i32* %10, align 4
  %284 = load i32*, i32** %9, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32*, i32** %9, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  %289 = load i32, i32* %288, align 4
  %290 = mul i32 8, %289
  %291 = shl i32 %286, %290
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %10, align 4
  %294 = and i32 %292, %293
  %295 = load i32*, i32** %9, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  store i32 %294, i32* %296, align 4
  br label %333

297:                                              ; preds = %205
  %298 = load i32*, i32** %9, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = xor i32 %300, -1
  %302 = and i32 %301, 65535
  %303 = load i32*, i32** %9, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 0
  store i32 %302, i32* %304, align 4
  store i32 65535, i32* %11, align 4
  %305 = load i32, i32* %11, align 4
  %306 = load i32*, i32** %9, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  %308 = load i32, i32* %307, align 4
  %309 = mul i32 16, %308
  %310 = shl i32 %305, %309
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* %10, align 4
  %312 = load i32, i32* %11, align 4
  %313 = or i32 %311, %312
  store i32 %313, i32* %10, align 4
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %9, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 2
  %319 = load i32, i32* %318, align 4
  %320 = mul i32 16, %319
  %321 = shl i32 %316, %320
  %322 = xor i32 %321, -1
  %323 = load i32, i32* %10, align 4
  %324 = and i32 %322, %323
  %325 = load i32*, i32** %9, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  store i32 %324, i32* %326, align 4
  br label %333

327:                                              ; preds = %205
  br label %333

328:                                              ; preds = %205
  %329 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %330 = call i32 @comedi_error(%struct.comedi_device* %329, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %331 = load i32, i32* @EINVAL, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %5, align 4
  br label %358

333:                                              ; preds = %327, %297, %267, %237, %207
  %334 = load i32*, i32** %9, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @APCI1564_DIGITAL_OP, align 8
  %341 = add nsw i64 %339, %340
  %342 = load i64, i64* @APCI1564_DIGITAL_OP_RW, align 8
  %343 = add nsw i64 %341, %342
  %344 = call i32 @outl(i32 %336, i64 %343)
  br label %347

345:                                              ; preds = %200
  %346 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %347

347:                                              ; preds = %345, %333
  br label %348

348:                                              ; preds = %347, %160
  br label %353

349:                                              ; preds = %150
  %350 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %351 = load i32, i32* @EINVAL, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %5, align 4
  br label %358

353:                                              ; preds = %348
  br label %354

354:                                              ; preds = %353, %149
  %355 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %356 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* %5, align 4
  br label %358

358:                                              ; preds = %354, %349, %328, %129
  %359 = load i32, i32* %5, align 4
  ret i32 %359
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
