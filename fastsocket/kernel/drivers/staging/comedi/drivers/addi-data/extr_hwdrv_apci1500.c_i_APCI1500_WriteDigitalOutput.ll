; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_WriteDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1500.c_i_APCI1500_WriteDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@i_APCI1500_WriteDigitalOutput.ui_Temp = internal global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1500_DIGITAL_OP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c" chan spec wrong\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\0ASpecified channel not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\0ASpecified functionality does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1500_WriteDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  br label %21

21:                                               ; preds = %20, %4
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %123

26:                                               ; preds = %21
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @APCI1500_DIGITAL_OP, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outw(i32 %43, i64 %48)
  br label %122

50:                                               ; preds = %26
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %119

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  switch i32 %56, label %104 [
    i32 2, label %57
    i32 4, label %70
    i32 8, label %83
    i32 15, label %96
  ]

57:                                               ; preds = %55
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = mul i32 2, %63
  %65 = shl i32 %60, %64
  %66 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %67 = or i32 %65, %66
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %69, align 4
  br label %109

70:                                               ; preds = %55
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = mul i32 4, %76
  %78 = shl i32 %73, %77
  %79 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %80 = or i32 %78, %79
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  br label %109

83:                                               ; preds = %55
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = mul i32 8, %89
  %91 = shl i32 %86, %90
  %92 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %93 = or i32 %91, %92
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  br label %109

96:                                               ; preds = %55
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %101 = or i32 %99, %100
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %101, i32* %103, align 4
  br label %109

104:                                              ; preds = %55
  %105 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %106 = call i32 @comedi_error(%struct.comedi_device* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %300

109:                                              ; preds = %96, %83, %70, %57
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @APCI1500_DIGITAL_OP, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @outw(i32 %112, i64 %117)
  br label %121

119:                                              ; preds = %50
  %120 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %109
  br label %122

122:                                              ; preds = %121, %31
  br label %293

123:                                              ; preds = %21
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %288

128:                                              ; preds = %123
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %171

133:                                              ; preds = %128
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %137, 1
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 %138, i32* %140, align 4
  store i32 1, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = shl i32 %141, %142
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %144, %145
  store i32 %146, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = shl i32 %149, %150
  %152 = xor i32 %151, -1
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %152, i32* %154, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %159 = and i32 %157, %158
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %159, i32* %161, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @APCI1500_DIGITAL_OP, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @outw(i32 %164, i64 %169)
  br label %287

171:                                              ; preds = %128
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %284

176:                                              ; preds = %171
  %177 = load i32, i32* %11, align 4
  switch i32 %177, label %269 [
    i32 2, label %178
    i32 4, label %208
    i32 8, label %238
    i32 15, label %268
  ]

178:                                              ; preds = %176
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %182, 3
  %184 = load i32*, i32** %9, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 %183, i32* %185, align 4
  store i32 3, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = mul i32 2, %189
  %191 = shl i32 %186, %190
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %193 = load i32, i32* %10, align 4
  %194 = or i32 %192, %193
  store i32 %194, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %9, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = mul i32 2, %200
  %202 = shl i32 %197, %201
  %203 = xor i32 %202, -1
  %204 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %205 = and i32 %203, %204
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  store i32 %205, i32* %207, align 4
  br label %274

208:                                              ; preds = %176
  %209 = load i32*, i32** %9, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = xor i32 %211, -1
  %213 = and i32 %212, 15
  %214 = load i32*, i32** %9, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 %213, i32* %215, align 4
  store i32 15, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32*, i32** %9, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = mul i32 4, %219
  %221 = shl i32 %216, %220
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %223 = load i32, i32* %10, align 4
  %224 = or i32 %222, %223
  store i32 %224, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %225 = load i32*, i32** %9, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %9, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = load i32, i32* %229, align 4
  %231 = mul i32 4, %230
  %232 = shl i32 %227, %231
  %233 = xor i32 %232, -1
  %234 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %235 = and i32 %233, %234
  %236 = load i32*, i32** %9, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  store i32 %235, i32* %237, align 4
  br label %274

238:                                              ; preds = %176
  %239 = load i32*, i32** %9, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = xor i32 %241, -1
  %243 = and i32 %242, 255
  %244 = load i32*, i32** %9, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  store i32 %243, i32* %245, align 4
  store i32 255, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32*, i32** %9, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = load i32, i32* %248, align 4
  %250 = mul i32 8, %249
  %251 = shl i32 %246, %250
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %253 = load i32, i32* %10, align 4
  %254 = or i32 %252, %253
  store i32 %254, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %255 = load i32*, i32** %9, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %9, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  %260 = load i32, i32* %259, align 4
  %261 = mul i32 8, %260
  %262 = shl i32 %257, %261
  %263 = xor i32 %262, -1
  %264 = load i32, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %265 = and i32 %263, %264
  %266 = load i32*, i32** %9, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  store i32 %265, i32* %267, align 4
  br label %274

268:                                              ; preds = %176
  br label %274

269:                                              ; preds = %176
  %270 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %271 = call i32 @comedi_error(%struct.comedi_device* %270, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %5, align 4
  br label %300

274:                                              ; preds = %268, %238, %208, %178
  %275 = load i32*, i32** %9, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @APCI1500_DIGITAL_OP, align 8
  %282 = add nsw i64 %280, %281
  %283 = call i32 @outw(i32 %277, i64 %282)
  br label %286

284:                                              ; preds = %171
  %285 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %274
  br label %287

287:                                              ; preds = %286, %133
  br label %292

288:                                              ; preds = %123
  %289 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %5, align 4
  br label %300

292:                                              ; preds = %287
  br label %293

293:                                              ; preds = %292, %122
  %294 = load i32*, i32** %9, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* @i_APCI1500_WriteDigitalOutput.ui_Temp, align 4
  %297 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %298 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %5, align 4
  br label %300

300:                                              ; preds = %293, %288, %269, %104
  %301 = load i32, i32* %5, align 4
  ret i32 %301
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
