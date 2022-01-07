; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2200.c_i_APCI2200_WriteDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci2200.c_i_APCI2200_WriteDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI2200_DIGITAL_OP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c" chan spec wrong\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\0ASpecified channel not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\0ASpecified functionality does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI2200_WriteDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %25 = load i64, i64* @APCI2200_DIGITAL_OP, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inw(i64 %26)
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
  br i1 %33, label %34, label %131

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
  %55 = load i64, i64* @APCI2200_DIGITAL_OP, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 %51, i64 %56)
  br label %130

58:                                               ; preds = %34
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %127

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  switch i32 %64, label %112 [
    i32 2, label %65
    i32 4, label %78
    i32 8, label %91
    i32 15, label %104
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
  br label %117

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
  br label %117

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
  br label %117

104:                                              ; preds = %63
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %107, %108
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %109, i32* %111, align 4
  br label %117

112:                                              ; preds = %63
  %113 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %114 = call i32 @comedi_error(%struct.comedi_device* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %305

117:                                              ; preds = %104, %91, %78, %65
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @APCI2200_DIGITAL_OP, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outw(i32 %120, i64 %125)
  br label %129

127:                                              ; preds = %58
  %128 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %117
  br label %130

130:                                              ; preds = %129, %39
  br label %301

131:                                              ; preds = %29
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %296

136:                                              ; preds = %131
  %137 = load i32*, i32** %9, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %179

141:                                              ; preds = %136
  %142 = load i32*, i32** %9, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %144, -1
  %146 = and i32 %145, 1
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %146, i32* %148, align 4
  store i32 1, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = shl i32 %149, %150
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %10, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %12, align 4
  %159 = shl i32 %157, %158
  %160 = xor i32 %159, 65535
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %160, i32* %162, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %165, %166
  %168 = load i32*, i32** %9, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  store i32 %167, i32* %169, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @APCI2200_DIGITAL_OP, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @outw(i32 %172, i64 %177)
  br label %295

179:                                              ; preds = %136
  %180 = load i32*, i32** %9, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %292

184:                                              ; preds = %179
  %185 = load i32, i32* %12, align 4
  switch i32 %185, label %277 [
    i32 2, label %186
    i32 4, label %216
    i32 8, label %246
    i32 15, label %276
  ]

186:                                              ; preds = %184
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = xor i32 %189, -1
  %191 = and i32 %190, 3
  %192 = load i32*, i32** %9, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %191, i32* %193, align 4
  store i32 3, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = mul i32 2, %197
  %199 = shl i32 %194, %198
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %11, align 4
  %202 = or i32 %200, %201
  store i32 %202, i32* %10, align 4
  %203 = load i32*, i32** %9, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = mul i32 2, %208
  %210 = shl i32 %205, %209
  %211 = xor i32 %210, 65535
  %212 = load i32, i32* %10, align 4
  %213 = and i32 %211, %212
  %214 = load i32*, i32** %9, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  store i32 %213, i32* %215, align 4
  br label %282

216:                                              ; preds = %184
  %217 = load i32*, i32** %9, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = xor i32 %219, -1
  %221 = and i32 %220, 15
  %222 = load i32*, i32** %9, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %221, i32* %223, align 4
  store i32 15, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load i32*, i32** %9, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32, i32* %226, align 4
  %228 = mul i32 4, %227
  %229 = shl i32 %224, %228
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %11, align 4
  %232 = or i32 %230, %231
  store i32 %232, i32* %10, align 4
  %233 = load i32*, i32** %9, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %9, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  %238 = load i32, i32* %237, align 4
  %239 = mul i32 4, %238
  %240 = shl i32 %235, %239
  %241 = xor i32 %240, 65535
  %242 = load i32, i32* %10, align 4
  %243 = and i32 %241, %242
  %244 = load i32*, i32** %9, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  store i32 %243, i32* %245, align 4
  br label %282

246:                                              ; preds = %184
  %247 = load i32*, i32** %9, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = xor i32 %249, -1
  %251 = and i32 %250, 255
  %252 = load i32*, i32** %9, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  store i32 %251, i32* %253, align 4
  store i32 255, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32*, i32** %9, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  %257 = load i32, i32* %256, align 4
  %258 = mul i32 8, %257
  %259 = shl i32 %254, %258
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* %11, align 4
  %262 = or i32 %260, %261
  store i32 %262, i32* %10, align 4
  %263 = load i32*, i32** %9, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %9, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 2
  %268 = load i32, i32* %267, align 4
  %269 = mul i32 8, %268
  %270 = shl i32 %265, %269
  %271 = xor i32 %270, 65535
  %272 = load i32, i32* %10, align 4
  %273 = and i32 %271, %272
  %274 = load i32*, i32** %9, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  store i32 %273, i32* %275, align 4
  br label %282

276:                                              ; preds = %184
  br label %282

277:                                              ; preds = %184
  %278 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %279 = call i32 @comedi_error(%struct.comedi_device* %278, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %280 = load i32, i32* @EINVAL, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %5, align 4
  br label %305

282:                                              ; preds = %276, %246, %216, %186
  %283 = load i32*, i32** %9, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @APCI2200_DIGITAL_OP, align 8
  %290 = add nsw i64 %288, %289
  %291 = call i32 @outw(i32 %285, i64 %290)
  br label %294

292:                                              ; preds = %179
  %293 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %282
  br label %295

295:                                              ; preds = %294, %141
  br label %300

296:                                              ; preds = %131
  %297 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %298 = load i32, i32* @EINVAL, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %5, align 4
  br label %305

300:                                              ; preds = %295
  br label %301

301:                                              ; preds = %300, %130
  %302 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %303 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %5, align 4
  br label %305

305:                                              ; preds = %301, %296, %277, %112
  %306 = load i32, i32* %5, align 4
  ret i32 %306
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
