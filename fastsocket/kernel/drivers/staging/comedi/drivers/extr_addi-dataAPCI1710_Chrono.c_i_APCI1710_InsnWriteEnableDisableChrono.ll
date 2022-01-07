; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_InsnWriteEnableDisableChrono.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Chrono.c_i_APCI1710_InsnWriteEnableDisableChrono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8, i8, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_8__* null, align 8
@APCI1710_CHRONOMETER = common dso_local global i32 0, align 4
@APCI1710_SINGLE = common dso_local global i8 0, align 1
@APCI1710_CONTINUOUS = common dso_local global i8 0, align 1
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Interrupt parameter is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Chronometer acquisition mode cycle is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Inputs wrong! Enable or Disable chrono\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Chronometer not initialised\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"The module is not a Chronometer module\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnWriteEnableDisableChrono(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call zeroext i8 @CR_AREF(i32 %16)
  store i8 %17, i8* %10, align 1
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %13, align 1
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %11, align 1
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %12, align 1
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %274

36:                                               ; preds = %4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 4294901760
  %47 = load i32, i32* @APCI1710_CHRONOMETER, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %271

50:                                               ; preds = %36
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %268

61:                                               ; preds = %50
  %62 = load i8, i8* %13, align 1
  %63 = zext i8 %62 to i32
  switch i32 %63, label %265 [
    i32 128, label %64
    i32 129, label %194
  ]

64:                                               ; preds = %61
  %65 = load i8, i8* %11, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @APCI1710_SINGLE, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @APCI1710_CONTINUOUS, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %191

76:                                               ; preds = %70, %64
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8, i8* %12, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 129
  br i1 %83, label %84, label %188

84:                                               ; preds = %80, %76
  %85 = load i8, i8* %12, align 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i8, i8* %10, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i8 %85, i8* %93, align 4
  %94 = load i8, i8* %11, align 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i8, i8* %10, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  store i8 %94, i8* %102, align 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i8, i8* %10, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 143
  %113 = load i8, i8* %12, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 1, %114
  %116 = shl i32 %115, 5
  %117 = or i32 %112, %116
  %118 = load i8, i8* %11, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 1, %119
  %121 = shl i32 %120, 6
  %122 = or i32 %117, %121
  %123 = or i32 %122, 16
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i8, i8* %10, align 1
  %128 = zext i8 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  store i32 %123, i32* %131, align 4
  %132 = load i8, i8* %12, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 128
  br i1 %134, label %135, label %158

135:                                              ; preds = %84
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i8, i8* %10, align 1
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 32
  %150 = load i8, i8* %10, align 1
  %151 = zext i8 %150 to i32
  %152 = mul nsw i32 64, %151
  %153 = add nsw i32 %149, %152
  %154 = call i32 @outl(i32 %144, i32 %153)
  %155 = load i32, i32* @current, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %135, %84
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i8, i8* %10, align 1
  %163 = zext i8 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 16
  %173 = load i8, i8* %10, align 1
  %174 = zext i8 %173 to i32
  %175 = mul nsw i32 64, %174
  %176 = add nsw i32 %172, %175
  %177 = call i32 @outl(i32 %167, i32 %176)
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 36
  %183 = load i8, i8* %10, align 1
  %184 = zext i8 %183 to i32
  %185 = mul nsw i32 64, %184
  %186 = add nsw i32 %182, %185
  %187 = call i32 @outl(i32 0, i32 %186)
  br label %190

188:                                              ; preds = %80
  %189 = call i32 @DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %190

190:                                              ; preds = %188, %158
  br label %193

191:                                              ; preds = %70
  %192 = call i32 @DPRINTK(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %193

193:                                              ; preds = %191, %190
  br label %267

194:                                              ; preds = %61
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load i8, i8* %10, align 1
  %199 = zext i8 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  store i8 0, i8* %202, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = load i8, i8* %10, align 1
  %207 = zext i8 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 47
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = load i8, i8* %10, align 1
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 3
  store i32 %212, i32* %220, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = load i8, i8* %10, align 1
  %225 = zext i8 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, 16
  %235 = load i8, i8* %10, align 1
  %236 = zext i8 %235 to i32
  %237 = mul nsw i32 64, %236
  %238 = add nsw i32 %234, %237
  %239 = call i32 @outl(i32 %229, i32 %238)
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = load i8, i8* %10, align 1
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 2
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = load i8, i8* @APCI1710_CONTINUOUS, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %264

253:                                              ; preds = %194
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devpriv, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, 36
  %259 = load i8, i8* %10, align 1
  %260 = zext i8 %259 to i32
  %261 = mul nsw i32 64, %260
  %262 = add nsw i32 %258, %261
  %263 = call i32 @outl(i32 0, i32 %262)
  br label %264

264:                                              ; preds = %253, %194
  br label %267

265:                                              ; preds = %61
  %266 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 -8, i32* %9, align 4
  br label %267

267:                                              ; preds = %265, %264, %193
  br label %270

268:                                              ; preds = %50
  %269 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %270

270:                                              ; preds = %268, %267
  br label %273

271:                                              ; preds = %36
  %272 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %273

273:                                              ; preds = %271, %270
  br label %276

274:                                              ; preds = %4
  %275 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %276

276:                                              ; preds = %274, %273
  %277 = load i32, i32* %9, align 4
  ret i32 %277
}

declare dso_local zeroext i8 @CR_AREF(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
