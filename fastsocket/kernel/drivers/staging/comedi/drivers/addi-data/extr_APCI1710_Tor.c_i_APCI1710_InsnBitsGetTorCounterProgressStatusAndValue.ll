; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Tor.c_i_APCI1710_InsnBitsGetTorCounterProgressStatusAndValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Tor.c_i_APCI1710_InsnBitsGetTorCounterProgressStatusAndValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@APCI1710_TOR_READINTERRUPT = common dso_local global i8 0, align 1
@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_SAVE_INTERRUPT = common dso_local global i32 0, align 4
@APCI1710_TOR_COUNTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Timeout parameter is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Inputs wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Tor counter not enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Tor counter not initialised\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Tor counter selection is wrong\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"The module is not a tor counter module\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnBitsGetTorCounterProgressStatusAndValue(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call zeroext i8 @CR_AREF(i32 %24)
  store i8 %25, i8* %13, align 1
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %15, align 1
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %14, align 1
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = bitcast i32* %38 to i8*
  store i8* %39, i8** %17, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32* %41, i32** %18, align 8
  %42 = load i8, i8* %15, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @APCI1710_TOR_READINTERRUPT, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %101

47:                                               ; preds = %4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  %92 = load i32, i32* @APCI1710_SAVE_INTERRUPT, align 4
  %93 = sext i32 %92 to i64
  %94 = urem i64 %91, %93
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %99 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %5, align 4
  br label %318

101:                                              ; preds = %4
  %102 = load i8, i8* %13, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %314

105:                                              ; preds = %101
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i8, i8* %13, align 1
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = and i64 %114, 4294901760
  %116 = load i32, i32* @APCI1710_TOR_COUNTER, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %311

119:                                              ; preds = %105
  %120 = load i8, i8* %14, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sle i32 %121, 1
  br i1 %122, label %123, label %308

123:                                              ; preds = %119
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 8
  %129 = load i8, i8* %14, align 1
  %130 = zext i8 %129 to i32
  %131 = mul nsw i32 16, %130
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %128, %132
  %134 = load i8, i8* %13, align 1
  %135 = zext i8 %134 to i32
  %136 = mul nsw i32 64, %135
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %133, %137
  %139 = call i32 @inl(i64 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = and i32 %140, 16
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %305

143:                                              ; preds = %123
  %144 = load i32, i32* %11, align 4
  %145 = and i32 %144, 1
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %302

147:                                              ; preds = %143
  %148 = load i8, i8* %15, align 1
  %149 = zext i8 %148 to i32
  switch i32 %149, label %299 [
    i32 128, label %150
    i32 129, label %191
  ]

150:                                              ; preds = %147
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 4
  %156 = load i8, i8* %14, align 1
  %157 = zext i8 %156 to i32
  %158 = mul nsw i32 16, %157
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %155, %159
  %161 = load i8, i8* %13, align 1
  %162 = zext i8 %161 to i32
  %163 = mul nsw i32 64, %162
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %160, %164
  %166 = call i32 @inl(i64 %165)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = and i32 %167, 15
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %150
  %173 = load i32, i32* %11, align 4
  %174 = and i32 %173, 2
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %172
  %177 = load i32, i32* %11, align 4
  %178 = and i32 %177, 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i8*, i8** %17, align 8
  store i8 3, i8* %181, align 1
  br label %184

182:                                              ; preds = %176
  %183 = load i8*, i8** %17, align 8
  store i8 2, i8* %183, align 1
  br label %184

184:                                              ; preds = %182, %180
  br label %187

185:                                              ; preds = %172
  %186 = load i8*, i8** %17, align 8
  store i8 1, i8* %186, align 1
  br label %187

187:                                              ; preds = %185, %184
  br label %190

188:                                              ; preds = %150
  %189 = load i8*, i8** %17, align 8
  store i8 0, i8* %189, align 1
  br label %190

190:                                              ; preds = %188, %187
  br label %301

191:                                              ; preds = %147
  %192 = load i32, i32* %16, align 4
  %193 = icmp uge i32 %192, 0
  br i1 %193, label %194, label %296

194:                                              ; preds = %191
  %195 = load i32, i32* %16, align 4
  %196 = zext i32 %195 to i64
  %197 = icmp ule i64 %196, 65535
  br i1 %197, label %198, label %296

198:                                              ; preds = %194
  br label %199

199:                                              ; preds = %280, %198
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, 4
  %205 = load i8, i8* %14, align 1
  %206 = zext i8 %205 to i32
  %207 = mul nsw i32 16, %206
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %204, %208
  %210 = load i8, i8* %13, align 1
  %211 = zext i8 %210 to i32
  %212 = mul nsw i32 64, %211
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %209, %213
  %215 = call i32 @inl(i64 %214)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %216, 4
  %218 = icmp eq i32 %217, 4
  br i1 %218, label %219, label %238

219:                                              ; preds = %199
  %220 = load i8*, i8** %17, align 8
  store i8 3, i8* %220, align 1
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, 0
  %226 = load i8, i8* %14, align 1
  %227 = zext i8 %226 to i32
  %228 = mul nsw i32 16, %227
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %225, %229
  %231 = load i8, i8* %13, align 1
  %232 = zext i8 %231 to i32
  %233 = mul nsw i32 64, %232
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %230, %234
  %236 = call i32 @inl(i64 %235)
  %237 = load i32*, i32** %18, align 8
  store i32 %236, i32* %237, align 4
  br label %281

238:                                              ; preds = %199
  %239 = load i32, i32* %11, align 4
  %240 = and i32 %239, 2
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %242, label %261

242:                                              ; preds = %238
  %243 = load i8*, i8** %17, align 8
  store i8 2, i8* %243, align 1
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, 0
  %249 = load i8, i8* %14, align 1
  %250 = zext i8 %249 to i32
  %251 = mul nsw i32 16, %250
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %248, %252
  %254 = load i8, i8* %13, align 1
  %255 = zext i8 %254 to i32
  %256 = mul nsw i32 64, %255
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %253, %257
  %259 = call i32 @inl(i64 %258)
  %260 = load i32*, i32** %18, align 8
  store i32 %259, i32* %260, align 4
  br label %281

261:                                              ; preds = %238
  %262 = load i32, i32* %11, align 4
  %263 = and i32 %262, 1
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = load i8*, i8** %17, align 8
  store i8 1, i8* %266, align 1
  br label %269

267:                                              ; preds = %261
  %268 = load i8*, i8** %17, align 8
  store i8 0, i8* %268, align 1
  br label %269

269:                                              ; preds = %267, %265
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %12, align 4
  %273 = load i32, i32* %16, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %271
  br label %281

276:                                              ; preds = %271
  %277 = load i32, i32* %12, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %12, align 4
  %279 = call i32 @mdelay(i32 1000)
  br label %280

280:                                              ; preds = %276
  br label %199

281:                                              ; preds = %275, %242, %219
  %282 = load i8*, i8** %17, align 8
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = icmp ne i32 %284, 3
  br i1 %285, label %286, label %295

286:                                              ; preds = %281
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %16, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %286
  %291 = load i32, i32* %16, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i8*, i8** %17, align 8
  store i8 4, i8* %294, align 1
  br label %295

295:                                              ; preds = %293, %290, %286, %281
  br label %298

296:                                              ; preds = %194, %191
  %297 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -7, i32* %10, align 4
  br label %298

298:                                              ; preds = %296, %295
  br label %301

299:                                              ; preds = %147
  %300 = call i32 @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %301

301:                                              ; preds = %299, %298, %190
  br label %304

302:                                              ; preds = %143
  %303 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -6, i32* %10, align 4
  br label %304

304:                                              ; preds = %302, %301
  br label %307

305:                                              ; preds = %123
  %306 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -5, i32* %10, align 4
  br label %307

307:                                              ; preds = %305, %304
  br label %310

308:                                              ; preds = %119
  %309 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -4, i32* %10, align 4
  br label %310

310:                                              ; preds = %308, %307
  br label %313

311:                                              ; preds = %105
  %312 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 -3, i32* %10, align 4
  br label %313

313:                                              ; preds = %311, %310
  br label %316

314:                                              ; preds = %101
  %315 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 -2, i32* %10, align 4
  br label %316

316:                                              ; preds = %314, %313
  %317 = load i32, i32* %10, align 4
  store i32 %317, i32* %5, align 4
  br label %318

318:                                              ; preds = %316, %47
  %319 = load i32, i32* %5, align 4
  ret i32 %319
}

declare dso_local zeroext i8 @CR_AREF(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
