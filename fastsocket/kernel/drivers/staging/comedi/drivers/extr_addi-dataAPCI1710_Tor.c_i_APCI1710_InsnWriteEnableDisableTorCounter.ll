; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Tor.c_i_APCI1710_InsnWriteEnableDisableTorCounter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Tor.c_i_APCI1710_InsnWriteEnableDisableTorCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@APCI1710_TOR_COUNTER = common dso_local global i32 0, align 4
@APCI1710_TOR_SIMPLE_MODE = common dso_local global i8 0, align 1
@APCI1710_TOR_DOUBLE_MODE = common dso_local global i8 0, align 1
@APCI1710_TOR_QUADRUPLE_MODE = common dso_local global i8 0, align 1
@APCI1710_SINGLE = common dso_local global i8 0, align 1
@APCI1710_CONTINUOUS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [30 x i8] c"Interrupt parameter is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Tor counter acquisition mode cycle is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Extern gate input mode is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Tor input signal selection is wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Tor counter not initialised\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Tor counter not enabled \0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Tor counter selection is wrong\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"The module is not a tor counter module \0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Module number error \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnWriteEnableDisableTorCounter(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @CR_AREF(i32 %22)
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %13, align 1
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %14, align 1
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %15, align 1
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %16, align 1
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %17, align 1
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %18, align 1
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %19, align 1
  %49 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @current, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i8, i8* %13, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %387

58:                                               ; preds = %4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i8, i8* %13, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, 4294901760
  %69 = load i32, i32* @APCI1710_TOR_COUNTER, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %384

72:                                               ; preds = %58
  %73 = load i8, i8* %15, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sle i32 %74, 1
  br i1 %75, label %76, label %381

76:                                               ; preds = %72
  %77 = load i8, i8* %14, align 1
  %78 = zext i8 %77 to i32
  switch i32 %78, label %380 [
    i32 128, label %79
    i32 129, label %318
  ]

79:                                               ; preds = %76
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 8
  %85 = load i8, i8* %15, align 1
  %86 = zext i8 %85 to i32
  %87 = mul nsw i32 16, %86
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %84, %88
  %90 = load i8, i8* %13, align 1
  %91 = zext i8 %90 to i32
  %92 = mul nsw i32 64, %91
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @inl(i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 16
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %315

100:                                              ; preds = %79
  %101 = load i8, i8* %16, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %100
  %105 = load i8, i8* %16, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %126, label %108

108:                                              ; preds = %104
  %109 = load i8, i8* %16, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8, i8* @APCI1710_TOR_SIMPLE_MODE, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = load i8, i8* %16, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @APCI1710_TOR_DOUBLE_MODE, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i8, i8* %16, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* @APCI1710_TOR_QUADRUPLE_MODE, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %312

126:                                              ; preds = %120, %114, %108, %104, %100
  %127 = load i8, i8* %17, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = load i8, i8* %17, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i8, i8* %16, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %309

138:                                              ; preds = %134, %130, %126
  %139 = load i8, i8* %18, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* @APCI1710_SINGLE, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load i8, i8* %18, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @APCI1710_CONTINUOUS, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %306

150:                                              ; preds = %144, %138
  %151 = load i8, i8* %19, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 128
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i8, i8* %19, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 129
  br i1 %157, label %158, label %303

158:                                              ; preds = %154, %150
  %159 = load i8, i8* %19, align 1
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load i8, i8* %13, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load i8, i8* %15, align 1
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store i8 %159, i8* %172, align 1
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 4
  %178 = load i8, i8* %15, align 1
  %179 = zext i8 %178 to i32
  %180 = mul nsw i32 16, %179
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %177, %181
  %183 = load i8, i8* %13, align 1
  %184 = zext i8 %183 to i32
  %185 = mul nsw i32 64, %184
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %182, %186
  %188 = trunc i64 %187 to i32
  %189 = call i32 @inl(i32 %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = lshr i32 %190, 4
  %192 = and i32 %191, 48
  store i32 %192, i32* %12, align 4
  %193 = load i8, i8* %16, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp sgt i32 %194, 1
  br i1 %195, label %196, label %217

196:                                              ; preds = %158
  store i8 0, i8* %17, align 1
  %197 = load i32, i32* %12, align 4
  %198 = or i32 %197, 64
  store i32 %198, i32* %12, align 4
  %199 = load i8, i8* %16, align 1
  %200 = zext i8 %199 to i32
  %201 = load i8, i8* @APCI1710_TOR_SIMPLE_MODE, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load i32, i32* %12, align 4
  %206 = or i32 %205, 1920
  store i32 %206, i32* %12, align 4
  br label %207

207:                                              ; preds = %204, %196
  %208 = load i8, i8* %16, align 1
  %209 = zext i8 %208 to i32
  %210 = load i8, i8* @APCI1710_TOR_DOUBLE_MODE, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load i32, i32* %12, align 4
  %215 = or i32 %214, 384
  store i32 %215, i32* %12, align 4
  br label %216

216:                                              ; preds = %213, %207
  store i8 0, i8* %16, align 1
  br label %217

217:                                              ; preds = %216, %158
  %218 = load i32, i32* %12, align 4
  %219 = load i8, i8* %18, align 1
  %220 = zext i8 %219 to i32
  %221 = or i32 %218, %220
  %222 = load i8, i8* %19, align 1
  %223 = zext i8 %222 to i32
  %224 = mul nsw i32 %223, 2
  %225 = or i32 %221, %224
  %226 = load i8, i8* %16, align 1
  %227 = zext i8 %226 to i32
  %228 = mul nsw i32 %227, 4
  %229 = or i32 %225, %228
  %230 = load i8, i8* %17, align 1
  %231 = zext i8 %230 to i32
  %232 = mul nsw i32 %231, 8
  %233 = or i32 %229, %232
  store i32 %233, i32* %12, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, 0
  %239 = load i8, i8* %15, align 1
  %240 = zext i8 %239 to i32
  %241 = mul nsw i32 16, %240
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %238, %242
  %244 = load i8, i8* %13, align 1
  %245 = zext i8 %244 to i32
  %246 = mul nsw i32 64, %245
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %243, %247
  %249 = trunc i64 %248 to i32
  %250 = call i32 @inl(i32 %249)
  store i32 %250, i32* %11, align 4
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, 12
  %256 = load i8, i8* %15, align 1
  %257 = zext i8 %256 to i32
  %258 = mul nsw i32 16, %257
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %255, %259
  %261 = load i8, i8* %13, align 1
  %262 = zext i8 %261 to i32
  %263 = mul nsw i32 64, %262
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %260, %264
  %266 = trunc i64 %265 to i32
  %267 = call i32 @inl(i32 %266)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %272, 4
  %274 = load i8, i8* %15, align 1
  %275 = zext i8 %274 to i32
  %276 = mul nsw i32 16, %275
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %273, %277
  %279 = load i8, i8* %13, align 1
  %280 = zext i8 %279 to i32
  %281 = mul nsw i32 64, %280
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %278, %282
  %284 = trunc i64 %283 to i32
  %285 = call i32 @outl(i32 %268, i32 %284)
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, 8
  %291 = load i8, i8* %15, align 1
  %292 = zext i8 %291 to i32
  %293 = mul nsw i32 16, %292
  %294 = sext i32 %293 to i64
  %295 = add nsw i64 %290, %294
  %296 = load i8, i8* %13, align 1
  %297 = zext i8 %296 to i32
  %298 = mul nsw i32 64, %297
  %299 = sext i32 %298 to i64
  %300 = add nsw i64 %295, %299
  %301 = trunc i64 %300 to i32
  %302 = call i32 @outl(i32 1, i32 %301)
  br label %305

303:                                              ; preds = %154
  %304 = call i32 @DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -9, i32* %9, align 4
  br label %305

305:                                              ; preds = %303, %217
  br label %308

306:                                              ; preds = %144
  %307 = call i32 @DPRINTK(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -8, i32* %9, align 4
  br label %308

308:                                              ; preds = %306, %305
  br label %311

309:                                              ; preds = %134
  %310 = call i32 @DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -7, i32* %9, align 4
  br label %311

311:                                              ; preds = %309, %308
  br label %314

312:                                              ; preds = %120
  %313 = call i32 @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %314

314:                                              ; preds = %312, %311
  br label %317

315:                                              ; preds = %79
  %316 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %317

317:                                              ; preds = %315, %314
  br label %380

318:                                              ; preds = %76
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %322, 8
  %324 = load i8, i8* %15, align 1
  %325 = zext i8 %324 to i32
  %326 = mul nsw i32 16, %325
  %327 = sext i32 %326 to i64
  %328 = add nsw i64 %323, %327
  %329 = load i8, i8* %13, align 1
  %330 = zext i8 %329 to i32
  %331 = mul nsw i32 64, %330
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %328, %332
  %334 = trunc i64 %333 to i32
  %335 = call i32 @inl(i32 %334)
  store i32 %335, i32* %10, align 4
  %336 = load i32, i32* %10, align 4
  %337 = and i32 %336, 16
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %377

339:                                              ; preds = %318
  %340 = load i32, i32* %10, align 4
  %341 = and i32 %340, 1
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %374

343:                                              ; preds = %339
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %345, align 8
  %347 = load i8, i8* %13, align 1
  %348 = zext i8 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %351, align 8
  %353 = load i8, i8* %15, align 1
  %354 = zext i8 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  store i8 -127, i8* %356, align 1
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = add nsw i64 %360, 8
  %362 = load i8, i8* %15, align 1
  %363 = zext i8 %362 to i32
  %364 = mul nsw i32 16, %363
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %361, %365
  %367 = load i8, i8* %13, align 1
  %368 = zext i8 %367 to i32
  %369 = mul nsw i32 64, %368
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %366, %370
  %372 = trunc i64 %371 to i32
  %373 = call i32 @outl(i32 0, i32 %372)
  br label %376

374:                                              ; preds = %339
  %375 = call i32 @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %376

376:                                              ; preds = %374, %343
  br label %379

377:                                              ; preds = %318
  %378 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %379

379:                                              ; preds = %377, %376
  br label %380

380:                                              ; preds = %379, %76, %317
  br label %383

381:                                              ; preds = %72
  %382 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %383

383:                                              ; preds = %381, %380
  br label %386

384:                                              ; preds = %58
  %385 = call i32 @DPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %386

386:                                              ; preds = %384, %383
  br label %389

387:                                              ; preds = %4
  %388 = call i32 @DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %389

389:                                              ; preds = %387, %386
  %390 = load i32, i32* %9, align 4
  ret i32 %390
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
