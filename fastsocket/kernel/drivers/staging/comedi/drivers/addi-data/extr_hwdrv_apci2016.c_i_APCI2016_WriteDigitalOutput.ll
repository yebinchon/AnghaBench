; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2016.c_i_APCI2016_WriteDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2016.c_i_APCI2016_WriteDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"Invalid Channel Numbers !!!, Channel Numbers must be between 0 and 15\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI2016_DIGITAL_OP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Invalid Data[1] value !!!, Data[1] should be 0 or 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" chan spec wrong\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\0ASpecified channel not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\0ASpecified functionality does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI2016_WriteDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ult i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ugt i32 %20, 15
  br i1 %21, label %22, label %27

22:                                               ; preds = %19, %4
  %23 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %24 = call i32 @comedi_error(%struct.comedi_device* %23, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %331

27:                                               ; preds = %19
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @APCI2016_DIGITAL_OP, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @inw(i64 %37)
  store i32 %38, i32* %11, align 4
  br label %40

39:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %52 = call i32 @comedi_error(%struct.comedi_device* %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %331

55:                                               ; preds = %45, %40
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %157

60:                                               ; preds = %55
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @APCI2016_DIGITAL_OP, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outw(i32 %77, i64 %82)
  br label %156

84:                                               ; preds = %60
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %153

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  switch i32 %90, label %138 [
    i32 2, label %91
    i32 4, label %104
    i32 8, label %117
    i32 15, label %130
  ]

91:                                               ; preds = %89
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = mul i32 2, %97
  %99 = shl i32 %94, %98
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %99, %100
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %101, i32* %103, align 4
  br label %143

104:                                              ; preds = %89
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = mul i32 4, %110
  %112 = shl i32 %107, %111
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %112, %113
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %114, i32* %116, align 4
  br label %143

117:                                              ; preds = %89
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = mul i32 8, %123
  %125 = shl i32 %120, %124
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %125, %126
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %127, i32* %129, align 4
  br label %143

130:                                              ; preds = %89
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %133, %134
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  br label %143

138:                                              ; preds = %89
  %139 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %140 = call i32 @comedi_error(%struct.comedi_device* %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %331

143:                                              ; preds = %130, %117, %104, %91
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @APCI2016_DIGITAL_OP, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @outw(i32 %146, i64 %151)
  br label %155

153:                                              ; preds = %84
  %154 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %143
  br label %156

156:                                              ; preds = %155, %65
  br label %327

157:                                              ; preds = %55
  %158 = load i32*, i32** %9, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %322

162:                                              ; preds = %157
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %205

167:                                              ; preds = %162
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = xor i32 %170, -1
  %172 = and i32 %171, 1
  %173 = load i32*, i32** %9, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %172, i32* %174, align 4
  store i32 1, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %10, align 4
  %177 = shl i32 %175, %176
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %12, align 4
  %180 = or i32 %178, %179
  store i32 %180, i32* %11, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %10, align 4
  %185 = shl i32 %183, %184
  %186 = xor i32 %185, 65535
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %186, i32* %188, align 4
  %189 = load i32*, i32** %9, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = and i32 %191, %192
  %194 = load i32*, i32** %9, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  store i32 %193, i32* %195, align 4
  %196 = load i32*, i32** %9, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @APCI2016_DIGITAL_OP, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @outw(i32 %198, i64 %203)
  br label %321

205:                                              ; preds = %162
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %318

210:                                              ; preds = %205
  %211 = load i32, i32* %10, align 4
  switch i32 %211, label %303 [
    i32 2, label %212
    i32 4, label %242
    i32 8, label %272
    i32 15, label %302
  ]

212:                                              ; preds = %210
  %213 = load i32*, i32** %9, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = xor i32 %215, -1
  %217 = and i32 %216, 3
  %218 = load i32*, i32** %9, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  store i32 %217, i32* %219, align 4
  store i32 3, i32* %12, align 4
  %220 = load i32, i32* %12, align 4
  %221 = load i32*, i32** %9, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = mul i32 2, %223
  %225 = shl i32 %220, %224
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %12, align 4
  %228 = or i32 %226, %227
  store i32 %228, i32* %11, align 4
  %229 = load i32*, i32** %9, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %9, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 2
  %234 = load i32, i32* %233, align 4
  %235 = mul i32 2, %234
  %236 = shl i32 %231, %235
  %237 = xor i32 %236, 65535
  %238 = load i32, i32* %11, align 4
  %239 = and i32 %237, %238
  %240 = load i32*, i32** %9, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  store i32 %239, i32* %241, align 4
  br label %308

242:                                              ; preds = %210
  %243 = load i32*, i32** %9, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = xor i32 %245, -1
  %247 = and i32 %246, 15
  %248 = load i32*, i32** %9, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  store i32 %247, i32* %249, align 4
  store i32 15, i32* %12, align 4
  %250 = load i32, i32* %12, align 4
  %251 = load i32*, i32** %9, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  %253 = load i32, i32* %252, align 4
  %254 = mul i32 4, %253
  %255 = shl i32 %250, %254
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* %12, align 4
  %258 = or i32 %256, %257
  store i32 %258, i32* %11, align 4
  %259 = load i32*, i32** %9, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %9, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 2
  %264 = load i32, i32* %263, align 4
  %265 = mul i32 4, %264
  %266 = shl i32 %261, %265
  %267 = xor i32 %266, 65535
  %268 = load i32, i32* %11, align 4
  %269 = and i32 %267, %268
  %270 = load i32*, i32** %9, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  store i32 %269, i32* %271, align 4
  br label %308

272:                                              ; preds = %210
  %273 = load i32*, i32** %9, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = xor i32 %275, -1
  %277 = and i32 %276, 255
  %278 = load i32*, i32** %9, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  store i32 %277, i32* %279, align 4
  store i32 255, i32* %12, align 4
  %280 = load i32, i32* %12, align 4
  %281 = load i32*, i32** %9, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load i32, i32* %282, align 4
  %284 = mul i32 8, %283
  %285 = shl i32 %280, %284
  store i32 %285, i32* %12, align 4
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* %12, align 4
  %288 = or i32 %286, %287
  store i32 %288, i32* %11, align 4
  %289 = load i32*, i32** %9, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %9, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 2
  %294 = load i32, i32* %293, align 4
  %295 = mul i32 8, %294
  %296 = shl i32 %291, %295
  %297 = xor i32 %296, 65535
  %298 = load i32, i32* %11, align 4
  %299 = and i32 %297, %298
  %300 = load i32*, i32** %9, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  store i32 %299, i32* %301, align 4
  br label %308

302:                                              ; preds = %210
  br label %308

303:                                              ; preds = %210
  %304 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %305 = call i32 @comedi_error(%struct.comedi_device* %304, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %306 = load i32, i32* @EINVAL, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %5, align 4
  br label %331

308:                                              ; preds = %302, %272, %242, %212
  %309 = load i32*, i32** %9, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @APCI2016_DIGITAL_OP, align 8
  %316 = add nsw i64 %314, %315
  %317 = call i32 @outw(i32 %311, i64 %316)
  br label %320

318:                                              ; preds = %205
  %319 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %320

320:                                              ; preds = %318, %308
  br label %321

321:                                              ; preds = %320, %167
  br label %326

322:                                              ; preds = %157
  %323 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %324 = load i32, i32* @EINVAL, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %5, align 4
  br label %331

326:                                              ; preds = %321
  br label %327

327:                                              ; preds = %326, %156
  %328 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %329 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* %5, align 4
  br label %331

331:                                              ; preds = %327, %322, %303, %138, %50, %22
  %332 = load i32, i32* %5, align 4
  ret i32 %332
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
