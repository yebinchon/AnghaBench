; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Inp_cpt.c_i_APCI1710_InsnConfigInitPulseEncoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Inp_cpt.c_i_APCI1710_InsnConfigInitPulseEncoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@APCI1710_PULSE_ENCODER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Pulse encoder start value is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Digital TRIGGER output action selection is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Input level selection is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Pulse encoder selection is wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"The module is not a pulse encoder module\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnConfigInitPulseEncoder(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @CR_AREF(i32 %18)
  %20 = trunc i64 %19 to i8
  store i8 %20, i8* %11, align 1
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %12, align 1
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %13, align 1
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %14, align 1
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sle i32 %40, 3
  br i1 %41, label %42, label %289

42:                                               ; preds = %4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @APCI1710_PULSE_ENCODER, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @APCI1710_PULSE_ENCODER, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %286

55:                                               ; preds = %42
  %56 = load i8, i8* %12, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sle i32 %57, 3
  br i1 %58, label %59, label %283

59:                                               ; preds = %55
  %60 = load i8, i8* %13, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i8, i8* %13, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %280

67:                                               ; preds = %63, %59
  %68 = load i8, i8* %14, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp sle i32 %69, 2
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %277

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %15, align 4
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %274

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 20
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  %86 = mul nsw i32 64, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %83, %87
  %89 = call i32 @inl(i64 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i8, i8* %12, align 1
  %96 = zext i8 %95 to i32
  %97 = mul nsw i32 %96, 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %94, %98
  %100 = load i8, i8* %11, align 1
  %101 = zext i8 %100 to i32
  %102 = mul nsw i32 64, %101
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %99, %103
  %105 = call i32 @outl(i32 %90, i64 %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = load i8, i8* %11, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load i8, i8* %12, align 1
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 8, %117
  %119 = zext i32 %118 to i64
  %120 = shl i64 1, %119
  %121 = sub i64 4294967295, %120
  %122 = and i64 %115, %121
  %123 = load i8, i8* %13, align 1
  %124 = zext i8 %123 to i32
  %125 = xor i32 %124, -1
  %126 = sext i32 %125 to i64
  %127 = and i64 1, %126
  %128 = load i8, i8* %12, align 1
  %129 = zext i8 %128 to i32
  %130 = add nsw i32 8, %129
  %131 = zext i32 %130 to i64
  %132 = shl i64 %127, %131
  %133 = or i64 %122, %132
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i8, i8* %11, align 1
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32 %134, i32* %142, align 8
  %143 = load i8, i8* %14, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %213

146:                                              ; preds = %78
  %147 = load i8, i8* %12, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %213

150:                                              ; preds = %146
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load i8, i8* %11, align 1
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = load i8, i8* %12, align 1
  %162 = zext i8 %161 to i32
  %163 = add nsw i32 4, %162
  %164 = zext i32 %163 to i64
  %165 = shl i64 1, %164
  %166 = or i64 %160, %165
  %167 = trunc i64 %166 to i32
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = load i8, i8* %11, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  store i32 %167, i32* %175, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = load i8, i8* %11, align 1
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = load i8, i8* %12, align 1
  %187 = zext i8 %186 to i32
  %188 = add nsw i32 12, %187
  %189 = zext i32 %188 to i64
  %190 = shl i64 1, %189
  %191 = sub i64 4294967295, %190
  %192 = and i64 %185, %191
  %193 = load i8, i8* %14, align 1
  %194 = zext i8 %193 to i32
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = and i64 1, %196
  %198 = load i8, i8* %12, align 1
  %199 = zext i8 %198 to i32
  %200 = add nsw i32 12, %199
  %201 = zext i32 %200 to i64
  %202 = shl i64 %197, %201
  %203 = or i64 %192, %202
  %204 = trunc i64 %203 to i32
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = load i8, i8* %11, align 1
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i32 %204, i32* %212, align 8
  br label %240

213:                                              ; preds = %146, %78
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load i8, i8* %11, align 1
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = load i8, i8* %12, align 1
  %225 = zext i8 %224 to i32
  %226 = add nsw i32 4, %225
  %227 = zext i32 %226 to i64
  %228 = shl i64 1, %227
  %229 = sub i64 4294967295, %228
  %230 = and i64 %223, %229
  %231 = trunc i64 %230 to i32
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = load i8, i8* %11, align 1
  %236 = zext i8 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  store i32 %231, i32* %239, align 8
  br label %240

240:                                              ; preds = %213, %150
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = load i8, i8* %11, align 1
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %253, 20
  %255 = load i8, i8* %11, align 1
  %256 = zext i8 %255 to i32
  %257 = mul nsw i32 64, %256
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %254, %258
  %260 = call i32 @outl(i32 %249, i64 %259)
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %262, align 8
  %264 = load i8, i8* %11, align 1
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = load i8, i8* %12, align 1
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  store i32 1, i32* %273, align 4
  br label %276

274:                                              ; preds = %75
  %275 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %276

276:                                              ; preds = %274, %240
  br label %279

277:                                              ; preds = %71
  %278 = call i32 @DPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %279

279:                                              ; preds = %277, %276
  br label %282

280:                                              ; preds = %63
  %281 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %282

282:                                              ; preds = %280, %279
  br label %285

283:                                              ; preds = %55
  %284 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %285

285:                                              ; preds = %283, %282
  br label %288

286:                                              ; preds = %42
  %287 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %288

288:                                              ; preds = %286, %285
  br label %291

289:                                              ; preds = %4
  %290 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %291

291:                                              ; preds = %289, %288
  %292 = load i32, i32* %9, align 4
  ret i32 %292
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
