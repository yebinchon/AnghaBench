; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Inp_cpt.c_i_APCI1710_InsnWriteEnableDisablePulseEncoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_Inp_cpt.c_i_APCI1710_InsnWriteEnableDisablePulseEncoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@APCI1710_CONTINUOUS = common dso_local global i8 0, align 1
@APCI1710_SINGLE = common dso_local global i8 0, align 1
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Interrupt handling mode is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cycle selection mode is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Pulse encoder not initialised\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Pulse encoder selection is wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Module selection is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnWriteEnableDisablePulseEncoder(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @CR_AREF(i32 %20)
  %22 = trunc i64 %21 to i8
  store i8 %22, i8* %10, align 1
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %14, align 1
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %11, align 1
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %12, align 1
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %13, align 1
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sle i32 %40, 3
  br i1 %41, label %42, label %299

42:                                               ; preds = %4
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sle i32 %44, 3
  br i1 %45, label %46, label %296

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i8, i8* %10, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i8, i8* %11, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %293

62:                                               ; preds = %46
  %63 = load i8, i8* %14, align 1
  %64 = zext i8 %63 to i32
  switch i32 %64, label %292 [
    i32 128, label %65
    i32 129, label %248
  ]

65:                                               ; preds = %62
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @APCI1710_CONTINUOUS, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @APCI1710_SINGLE, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %245

77:                                               ; preds = %71, %65
  %78 = load i8, i8* %13, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8, i8* %13, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 129
  br i1 %84, label %85, label %242

85:                                               ; preds = %81, %77
  %86 = load i8, i8* %13, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 129
  br i1 %88, label %89, label %115

89:                                               ; preds = %85
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i8, i8* %10, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = load i8, i8* %11, align 1
  %101 = zext i8 %100 to i32
  %102 = zext i32 %101 to i64
  %103 = shl i64 1, %102
  %104 = sub i64 4294967295, %103
  %105 = and i64 %99, %104
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i8, i8* %10, align 1
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 %106, i32* %114, align 8
  br label %143

115:                                              ; preds = %85
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i8, i8* %10, align 1
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = load i8, i8* %11, align 1
  %127 = zext i8 %126 to i32
  %128 = zext i32 %127 to i64
  %129 = shl i64 1, %128
  %130 = or i64 %125, %129
  %131 = trunc i64 %130 to i32
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i8, i8* %10, align 1
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i32 %131, i32* %139, align 8
  %140 = load i32, i32* @current, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %115, %89
  %144 = load i32, i32* %9, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %241

146:                                              ; preds = %143
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i8, i8* %10, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 20
  %161 = load i8, i8* %10, align 1
  %162 = zext i8 %161 to i32
  %163 = mul nsw i32 64, %162
  %164 = add nsw i32 %160, %163
  %165 = call i32 @outl(i32 %155, i32 %164)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i8, i8* %10, align 1
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i8, i8* %11, align 1
  %176 = zext i8 %175 to i32
  %177 = zext i32 %176 to i64
  %178 = shl i64 1, %177
  %179 = or i64 %174, %178
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i8, i8* %10, align 1
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  store i64 %179, i64* %187, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i8, i8* %10, align 1
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i8, i8* %11, align 1
  %198 = zext i8 %197 to i32
  %199 = add nsw i32 %198, 4
  %200 = shl i32 1, %199
  %201 = sext i32 %200 to i64
  %202 = sub i64 4294967295, %201
  %203 = and i64 %196, %202
  %204 = load i8, i8* %12, align 1
  %205 = zext i8 %204 to i64
  %206 = and i64 %205, 1
  %207 = load i8, i8* %11, align 1
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 4, %208
  %210 = zext i32 %209 to i64
  %211 = shl i64 %206, %210
  %212 = or i64 %203, %211
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = load i8, i8* %10, align 1
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  store i64 %212, i64* %220, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i8, i8* %10, align 1
  %225 = zext i8 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = add nsw i32 %234, 16
  %236 = load i8, i8* %10, align 1
  %237 = zext i8 %236 to i32
  %238 = mul nsw i32 64, %237
  %239 = add nsw i32 %235, %238
  %240 = call i32 @outl(i32 %230, i32 %239)
  br label %241

241:                                              ; preds = %146, %143
  br label %244

242:                                              ; preds = %81
  %243 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %244

244:                                              ; preds = %242, %241
  br label %247

245:                                              ; preds = %71
  %246 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %247

247:                                              ; preds = %245, %244
  br label %292

248:                                              ; preds = %62
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = load i8, i8* %10, align 1
  %253 = zext i8 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i8, i8* %11, align 1
  %259 = zext i8 %258 to i32
  %260 = zext i32 %259 to i64
  %261 = shl i64 1, %260
  %262 = sub i64 4294967295, %261
  %263 = and i64 %257, %262
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = load i8, i8* %10, align 1
  %268 = zext i8 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  store i64 %263, i64* %271, align 8
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %273, align 8
  %275 = load i8, i8* %10, align 1
  %276 = zext i8 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %285, 16
  %287 = load i8, i8* %10, align 1
  %288 = zext i8 %287 to i32
  %289 = mul nsw i32 64, %288
  %290 = add nsw i32 %286, %289
  %291 = call i32 @outl(i32 %281, i32 %290)
  br label %292

292:                                              ; preds = %62, %248, %247
  br label %295

293:                                              ; preds = %46
  %294 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %295

295:                                              ; preds = %293, %292
  br label %298

296:                                              ; preds = %42
  %297 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %298

298:                                              ; preds = %296, %295
  br label %301

299:                                              ; preds = %4
  %300 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %301

301:                                              ; preds = %299, %298
  %302 = load i32, i32* %9, align 4
  ret i32 %302
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
