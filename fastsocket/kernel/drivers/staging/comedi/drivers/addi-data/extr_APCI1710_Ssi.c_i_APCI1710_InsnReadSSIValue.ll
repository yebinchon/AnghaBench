; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Ssi.c_i_APCI1710_InsnReadSSIValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Ssi.c_i_APCI1710_InsnReadSSIValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i8, i8 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_SSI_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"The selected SSI is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Read Type Inputs Wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SSI not initialised\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"The module is not a SSI module\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnReadSSIValue(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32* %30, i32** %24, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32* %32, i32** %25, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32* %34, i32** %22, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32* %36, i32** %23, align 8
  %37 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @CR_AREF(i32 %39)
  %41 = trunc i64 %40 to i8
  store i8 %41, i8* %19, align 1
  %42 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @CR_CHAN(i32 %44)
  %46 = trunc i64 %45 to i8
  store i8 %46, i8* %20, align 1
  %47 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @CR_RANGE(i32 %49)
  %51 = trunc i64 %50 to i8
  store i8 %51, i8* %21, align 1
  %52 = load i8, i8* %19, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %418

55:                                               ; preds = %4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i8, i8* %19, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %64, 4294901760
  %66 = load i32, i32* @APCI1710_SSI_COUNTER, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %415

69:                                               ; preds = %55
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i8, i8* %19, align 1
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %412

80:                                               ; preds = %69
  %81 = load i8, i8* %21, align 1
  %82 = zext i8 %81 to i32
  switch i32 %82, label %409 [
    i32 129, label %83
    i32 128, label %236
  ]

83:                                               ; preds = %80
  %84 = load i8, i8* %20, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %233

87:                                               ; preds = %83
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 8
  %93 = load i8, i8* %19, align 1
  %94 = zext i8 %93 to i32
  %95 = mul nsw i32 64, %94
  %96 = add nsw i32 %92, %95
  %97 = call i32 @outl(i32 0, i32 %96)
  br label %98

98:                                               ; preds = %108, %87
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i8, i8* %19, align 1
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 64, %104
  %106 = add nsw i32 %102, %105
  %107 = call i32 @inl(i32 %106)
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %17, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %98, label %112

112:                                              ; preds = %108
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 4
  %118 = load i8, i8* %20, align 1
  %119 = zext i8 %118 to i32
  %120 = mul nsw i32 %119, 4
  %121 = add nsw i32 %117, %120
  %122 = load i8, i8* %19, align 1
  %123 = zext i8 %122 to i32
  %124 = mul nsw i32 64, %123
  %125 = add nsw i32 %121, %124
  %126 = call i32 @inl(i32 %125)
  store i32 %126, i32* %18, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i8, i8* %19, align 1
  %131 = zext i8 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %135, 2
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %11, align 1
  %138 = load i8, i8* %11, align 1
  %139 = zext i8 %138 to i32
  %140 = mul nsw i32 %139, 2
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load i8, i8* %19, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %140, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %112
  %152 = load i8, i8* %11, align 1
  %153 = add i8 %152, 1
  store i8 %153, i8* %11, align 1
  br label %154

154:                                              ; preds = %151, %112
  %155 = load i8, i8* %11, align 1
  %156 = zext i8 %155 to i32
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = load i8, i8* %19, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i8, i8* %164, align 4
  %166 = zext i8 %165 to i32
  %167 = sub nsw i32 %156, %166
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %12, align 1
  %169 = load i32, i32* %18, align 4
  %170 = load i8, i8* %12, align 1
  %171 = zext i8 %170 to i32
  %172 = lshr i32 %169, %171
  %173 = load i32*, i32** %24, align 8
  store i32 %172, i32* %173, align 4
  store i32 1, i32* %14, align 4
  store i8 0, i8* %10, align 1
  br label %174

174:                                              ; preds = %191, %154
  %175 = load i8, i8* %10, align 1
  %176 = zext i8 %175 to i32
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = load i8, i8* %19, align 1
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i8, i8* %184, align 4
  %186 = zext i8 %185 to i32
  %187 = icmp slt i32 %176, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %174
  %189 = load i32, i32* %14, align 4
  %190 = mul i32 %189, 2
  store i32 %190, i32* %14, align 4
  br label %191

191:                                              ; preds = %188
  %192 = load i8, i8* %10, align 1
  %193 = add i8 %192, 1
  store i8 %193, i8* %10, align 1
  br label %174

194:                                              ; preds = %174
  %195 = load i32*, i32** %24, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %14, align 4
  %198 = sub i32 %197, 1
  %199 = and i32 %196, %198
  %200 = load i32*, i32** %24, align 8
  store i32 %199, i32* %200, align 4
  %201 = load i32, i32* %18, align 4
  %202 = load i8, i8* %11, align 1
  %203 = zext i8 %202 to i32
  %204 = lshr i32 %201, %203
  %205 = load i32*, i32** %25, align 8
  store i32 %204, i32* %205, align 4
  store i32 1, i32* %14, align 4
  store i8 0, i8* %10, align 1
  br label %206

206:                                              ; preds = %223, %194
  %207 = load i8, i8* %10, align 1
  %208 = zext i8 %207 to i32
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = load i8, i8* %19, align 1
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp slt i32 %208, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %206
  %221 = load i32, i32* %14, align 4
  %222 = mul i32 %221, 2
  store i32 %222, i32* %14, align 4
  br label %223

223:                                              ; preds = %220
  %224 = load i8, i8* %10, align 1
  %225 = add i8 %224, 1
  store i8 %225, i8* %10, align 1
  br label %206

226:                                              ; preds = %206
  %227 = load i32*, i32** %25, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %14, align 4
  %230 = sub i32 %229, 1
  %231 = and i32 %228, %230
  %232 = load i32*, i32** %25, align 8
  store i32 %231, i32* %232, align 4
  br label %235

233:                                              ; preds = %83
  %234 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %235

235:                                              ; preds = %233, %226
  br label %411

236:                                              ; preds = %80
  store i32 1, i32* %15, align 4
  store i8 0, i8* %10, align 1
  br label %237

237:                                              ; preds = %254, %236
  %238 = load i8, i8* %10, align 1
  %239 = zext i8 %238 to i32
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = load i8, i8* %19, align 1
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 2
  %248 = load i8, i8* %247, align 4
  %249 = zext i8 %248 to i32
  %250 = icmp slt i32 %239, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %237
  %252 = load i32, i32* %15, align 4
  %253 = mul i32 %252, 2
  store i32 %253, i32* %15, align 4
  br label %254

254:                                              ; preds = %251
  %255 = load i8, i8* %10, align 1
  %256 = add i8 %255, 1
  store i8 %256, i8* %10, align 1
  br label %237

257:                                              ; preds = %237
  store i32 1, i32* %16, align 4
  store i8 0, i8* %10, align 1
  br label %258

258:                                              ; preds = %275, %257
  %259 = load i8, i8* %10, align 1
  %260 = zext i8 %259 to i32
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = load i8, i8* %19, align 1
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 3
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = icmp slt i32 %260, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %258
  %273 = load i32, i32* %16, align 4
  %274 = mul i32 %273, 2
  store i32 %274, i32* %16, align 4
  br label %275

275:                                              ; preds = %272
  %276 = load i8, i8* %10, align 1
  %277 = add i8 %276, 1
  store i8 %277, i8* %10, align 1
  br label %258

278:                                              ; preds = %258
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = add nsw i32 %282, 8
  %284 = load i8, i8* %19, align 1
  %285 = zext i8 %284 to i32
  %286 = mul nsw i32 64, %285
  %287 = add nsw i32 %283, %286
  %288 = call i32 @outl(i32 0, i32 %287)
  br label %289

289:                                              ; preds = %299, %278
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i8, i8* %19, align 1
  %295 = zext i8 %294 to i32
  %296 = mul nsw i32 64, %295
  %297 = add nsw i32 %293, %296
  %298 = call i32 @inl(i32 %297)
  store i32 %298, i32* %17, align 4
  br label %299

299:                                              ; preds = %289
  %300 = load i32, i32* %17, align 4
  %301 = and i32 %300, 1
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %289, label %303

303:                                              ; preds = %299
  store i8 0, i8* %13, align 1
  br label %304

304:                                              ; preds = %405, %303
  %305 = load i8, i8* %13, align 1
  %306 = zext i8 %305 to i32
  %307 = icmp slt i32 %306, 3
  br i1 %307, label %308, label %408

308:                                              ; preds = %304
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, 4
  %314 = load i8, i8* %13, align 1
  %315 = zext i8 %314 to i32
  %316 = mul nsw i32 %315, 4
  %317 = add nsw i32 %313, %316
  %318 = load i8, i8* %19, align 1
  %319 = zext i8 %318 to i32
  %320 = mul nsw i32 64, %319
  %321 = add nsw i32 %317, %320
  %322 = call i32 @inl(i32 %321)
  store i32 %322, i32* %18, align 4
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %324, align 8
  %326 = load i8, i8* %19, align 1
  %327 = zext i8 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = sdiv i32 %331, 2
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %11, align 1
  %334 = load i8, i8* %11, align 1
  %335 = zext i8 %334 to i32
  %336 = mul nsw i32 %335, 2
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %338, align 8
  %340 = load i8, i8* %19, align 1
  %341 = zext i8 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %336, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %308
  %348 = load i8, i8* %11, align 1
  %349 = add i8 %348, 1
  store i8 %349, i8* %11, align 1
  br label %350

350:                                              ; preds = %347, %308
  %351 = load i8, i8* %11, align 1
  %352 = zext i8 %351 to i32
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %354, align 8
  %356 = load i8, i8* %19, align 1
  %357 = zext i8 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 2
  %361 = load i8, i8* %360, align 4
  %362 = zext i8 %361 to i32
  %363 = sub nsw i32 %352, %362
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %12, align 1
  %365 = load i32, i32* %18, align 4
  %366 = load i8, i8* %12, align 1
  %367 = zext i8 %366 to i32
  %368 = lshr i32 %365, %367
  %369 = load i32*, i32** %22, align 8
  %370 = load i8, i8* %13, align 1
  %371 = zext i8 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  store i32 %368, i32* %372, align 4
  %373 = load i32*, i32** %22, align 8
  %374 = load i8, i8* %13, align 1
  %375 = zext i8 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %15, align 4
  %379 = sub i32 %378, 1
  %380 = and i32 %377, %379
  %381 = load i32*, i32** %22, align 8
  %382 = load i8, i8* %13, align 1
  %383 = zext i8 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 %380, i32* %384, align 4
  %385 = load i32, i32* %18, align 4
  %386 = load i8, i8* %11, align 1
  %387 = zext i8 %386 to i32
  %388 = lshr i32 %385, %387
  %389 = load i32*, i32** %23, align 8
  %390 = load i8, i8* %13, align 1
  %391 = zext i8 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  store i32 %388, i32* %392, align 4
  %393 = load i32*, i32** %23, align 8
  %394 = load i8, i8* %13, align 1
  %395 = zext i8 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %16, align 4
  %399 = sub i32 %398, 1
  %400 = and i32 %397, %399
  %401 = load i32*, i32** %23, align 8
  %402 = load i8, i8* %13, align 1
  %403 = zext i8 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  store i32 %400, i32* %404, align 4
  br label %405

405:                                              ; preds = %350
  %406 = load i8, i8* %13, align 1
  %407 = add i8 %406, 1
  store i8 %407, i8* %13, align 1
  br label %304

408:                                              ; preds = %304
  br label %411

409:                                              ; preds = %80
  %410 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %411

411:                                              ; preds = %409, %408, %235
  br label %414

412:                                              ; preds = %69
  %413 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %414

414:                                              ; preds = %412, %411
  br label %417

415:                                              ; preds = %55
  %416 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %417

417:                                              ; preds = %415, %414
  br label %420

418:                                              ; preds = %4
  %419 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %420

420:                                              ; preds = %418, %417
  %421 = load i32, i32* %9, align 4
  ret i32 %421
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
