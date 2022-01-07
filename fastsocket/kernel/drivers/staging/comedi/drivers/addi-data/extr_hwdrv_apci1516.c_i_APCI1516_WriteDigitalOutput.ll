; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1516.c_i_APCI1516_WriteDigitalOutput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci1516.c_i_APCI1516_WriteDigitalOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"EL311003 : @=%x\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@APCI1516_DIGITAL_OP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"EL311003 : d=%d @=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" chan spec wrong\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"\0ASpecified channel not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\0ASpecified functionality does not exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1516_WriteDigitalOutput(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @inw(i64 %32)
  store i32 %33, i32* %10, align 4
  br label %35

34:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %142

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %12, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outw(i32 %57, i64 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %66, i64 %71)
  br label %141

73:                                               ; preds = %40
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %138

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  switch i32 %79, label %114 [
    i32 2, label %80
    i32 4, label %93
    i32 7, label %106
  ]

80:                                               ; preds = %78
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 2, %86
  %88 = shl i32 %83, %87
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %88, %89
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %90, i32* %92, align 4
  br label %119

93:                                               ; preds = %78
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = mul i32 4, %99
  %101 = shl i32 %96, %100
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %101, %102
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %103, i32* %105, align 4
  br label %119

106:                                              ; preds = %78
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = or i32 %109, %110
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %111, i32* %113, align 4
  br label %119

114:                                              ; preds = %78
  %115 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %116 = call i32 @comedi_error(%struct.comedi_device* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %304

119:                                              ; preds = %106, %93, %80
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @outw(i32 %122, i64 %127)
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %131, i64 %136)
  br label %140

138:                                              ; preds = %73
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %119
  br label %141

141:                                              ; preds = %140, %45
  br label %300

142:                                              ; preds = %35
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %295

147:                                              ; preds = %142
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %199

152:                                              ; preds = %147
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = xor i32 %155, -1
  %157 = and i32 %156, 1
  %158 = load i32*, i32** %9, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %157, i32* %159, align 4
  store i32 1, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = shl i32 %160, %161
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %11, align 4
  %165 = or i32 %163, %164
  store i32 %165, i32* %10, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %12, align 4
  %170 = shl i32 %168, %169
  %171 = xor i32 %170, 255
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 %171, i32* %173, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %10, align 4
  %178 = and i32 %176, %177
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 %178, i32* %180, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @outw(i32 %183, i64 %188)
  %190 = load i32*, i32** %9, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %192, i64 %197)
  br label %294

199:                                              ; preds = %147
  %200 = load i32*, i32** %9, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %291

204:                                              ; preds = %199
  %205 = load i32, i32* %12, align 4
  switch i32 %205, label %267 [
    i32 2, label %206
    i32 4, label %236
    i32 7, label %266
  ]

206:                                              ; preds = %204
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = xor i32 %209, -1
  %211 = and i32 %210, 3
  %212 = load i32*, i32** %9, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 %211, i32* %213, align 4
  store i32 3, i32* %11, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load i32*, i32** %9, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  %217 = load i32, i32* %216, align 4
  %218 = mul i32 2, %217
  %219 = shl i32 %214, %218
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %11, align 4
  %222 = or i32 %220, %221
  store i32 %222, i32* %10, align 4
  %223 = load i32*, i32** %9, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %9, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load i32, i32* %227, align 4
  %229 = mul i32 2, %228
  %230 = shl i32 %225, %229
  %231 = xor i32 %230, 255
  %232 = load i32, i32* %10, align 4
  %233 = and i32 %231, %232
  %234 = load i32*, i32** %9, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  store i32 %233, i32* %235, align 4
  br label %272

236:                                              ; preds = %204
  %237 = load i32*, i32** %9, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %239, -1
  %241 = and i32 %240, 15
  %242 = load i32*, i32** %9, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  store i32 %241, i32* %243, align 4
  store i32 15, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = load i32*, i32** %9, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 2
  %247 = load i32, i32* %246, align 4
  %248 = mul i32 4, %247
  %249 = shl i32 %244, %248
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %11, align 4
  %252 = or i32 %250, %251
  store i32 %252, i32* %10, align 4
  %253 = load i32*, i32** %9, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %9, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  %258 = load i32, i32* %257, align 4
  %259 = mul i32 4, %258
  %260 = shl i32 %255, %259
  %261 = xor i32 %260, 255
  %262 = load i32, i32* %10, align 4
  %263 = and i32 %261, %262
  %264 = load i32*, i32** %9, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  store i32 %263, i32* %265, align 4
  br label %272

266:                                              ; preds = %204
  br label %272

267:                                              ; preds = %204
  %268 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %269 = call i32 @comedi_error(%struct.comedi_device* %268, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %270 = load i32, i32* @EINVAL, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %5, align 4
  br label %304

272:                                              ; preds = %266, %236, %206
  %273 = load i32*, i32** %9, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %280 = add nsw i64 %278, %279
  %281 = call i32 @outw(i32 %275, i64 %280)
  %282 = load i32*, i32** %9, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @APCI1516_DIGITAL_OP, align 8
  %289 = add nsw i64 %287, %288
  %290 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %284, i64 %289)
  br label %293

291:                                              ; preds = %199
  %292 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %293

293:                                              ; preds = %291, %272
  br label %294

294:                                              ; preds = %293, %152
  br label %299

295:                                              ; preds = %142
  %296 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %297 = load i32, i32* @EINVAL, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %5, align 4
  br label %304

299:                                              ; preds = %294
  br label %300

300:                                              ; preds = %299, %141
  %301 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %302 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %5, align 4
  br label %304

304:                                              ; preds = %300, %295, %267, %114
  %305 = load i32, i32* %5, align 4
  ret i32 %305
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
