; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_InsnConfigInitTimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_82x54.c_i_APCI1710_InsnConfigInitTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8, i8, i8, i8, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@APCI1710_82X54_TIMER = common dso_local global i32 0, align 4
@APCI1710_PCI_BUS_CLOCK = common dso_local global i8 0, align 1
@APCI1710_10MHZ = common dso_local global i8 0, align 1
@APCI1710_FRONT_CONNECTOR_INPUT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [45 x i8] c"Selection from hardware gate level is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Selection from output clock level is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Selection from input clock level is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Input timer clock selection is wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Timer mode selection is wrong\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Timer selection wrong\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"The module is not a TIMER module\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnConfigInitTimer(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @CR_AREF(i32 %24)
  %26 = trunc i64 %25 to i8
  store i8 %26, i8* %10, align 1
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @CR_CHAN(i32 %29)
  %31 = trunc i64 %30 to i8
  store i8 %31, i8* %11, align 1
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %12, align 1
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %14, align 1
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %15, align 1
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %16, align 1
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  %53 = load i32, i32* %52, align 4
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %17, align 1
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %421

58:                                               ; preds = %4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i8, i8* %10, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, 4294901760
  %69 = load i32, i32* @APCI1710_82X54_TIMER, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %418

72:                                               ; preds = %58
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sle i32 %74, 2
  br i1 %75, label %76, label %415

76:                                               ; preds = %72
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sle i32 %78, 5
  br i1 %79, label %80, label %412

80:                                               ; preds = %76
  %81 = load i8, i8* %11, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8, i8* %14, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @APCI1710_PCI_BUS_CLOCK, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %122, label %90

90:                                               ; preds = %84, %80
  %91 = load i8, i8* %11, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i8, i8* %14, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @APCI1710_10MHZ, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %122, label %100

100:                                              ; preds = %94, %90
  %101 = load i8, i8* %11, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %409

104:                                              ; preds = %100
  %105 = load i8, i8* %14, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @APCI1710_PCI_BUS_CLOCK, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %104
  %111 = load i8, i8* %14, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @APCI1710_FRONT_CONNECTOR_INPUT, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load i8, i8* %14, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @APCI1710_10MHZ, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %409

122:                                              ; preds = %116, %110, %104, %94, %84
  %123 = load i8, i8* %14, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @APCI1710_10MHZ, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i8, i8* %10, align 1
  %134 = zext i8 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = and i64 %137, 65535
  %139 = icmp uge i64 %138, 12593
  br i1 %139, label %146, label %140

140:                                              ; preds = %128, %122
  %141 = load i8, i8* %14, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @APCI1710_10MHZ, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %406

146:                                              ; preds = %140, %128
  %147 = load i8, i8* %15, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i8, i8* %15, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %403

154:                                              ; preds = %150, %146
  %155 = load i8, i8* %16, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i8, i8* %16, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %400

162:                                              ; preds = %158, %154
  %163 = load i8, i8* %17, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i8, i8* %17, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %397

170:                                              ; preds = %166, %162
  %171 = load i8, i8* %14, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8, i8* @APCI1710_10MHZ, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %176, label %207

176:                                              ; preds = %170
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i8, i8* %10, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = and i64 %185, 65535
  %187 = icmp ugt i64 %186, 12593
  br i1 %187, label %188, label %207

188:                                              ; preds = %176
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i8, i8* %11, align 1
  %194 = zext i8 %193 to i32
  %195 = mul nsw i32 %194, 4
  %196 = add nsw i32 16, %195
  %197 = load i8, i8* %10, align 1
  %198 = zext i8 %197 to i32
  %199 = mul nsw i32 64, %198
  %200 = add nsw i32 %196, %199
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %192, %201
  %203 = call i32 @inl(i64 %202)
  store i32 %203, i32* %18, align 4
  %204 = load i32, i32* %18, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 1
  store i32 %206, i32* %18, align 4
  br label %208

207:                                              ; preds = %176, %170
  store i32 1, i32* %18, align 4
  br label %208

208:                                              ; preds = %207, %188
  %209 = load i32, i32* %18, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %395

211:                                              ; preds = %208
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = load i8, i8* %10, align 1
  %216 = zext i8 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = load i8, i8* %11, align 1
  %222 = zext i8 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i32 1, i32* %224, align 4
  %225 = load i8, i8* %14, align 1
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = load i8, i8* %10, align 1
  %230 = zext i8 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %233, align 8
  %235 = load i8, i8* %11, align 1
  %236 = zext i8 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  store i8 %225, i8* %238, align 4
  %239 = load i8, i8* %15, align 1
  %240 = zext i8 %239 to i32
  %241 = xor i32 %240, -1
  %242 = and i32 %241, 1
  %243 = trunc i32 %242 to i8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = load i8, i8* %10, align 1
  %248 = zext i8 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %251, align 8
  %253 = load i8, i8* %11, align 1
  %254 = zext i8 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 2
  store i8 %243, i8* %256, align 1
  %257 = load i8, i8* %16, align 1
  %258 = zext i8 %257 to i32
  %259 = xor i32 %258, -1
  %260 = and i32 %259, 1
  %261 = trunc i32 %260 to i8
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %263, align 8
  %265 = load i8, i8* %10, align 1
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = load i8, i8* %11, align 1
  %272 = zext i8 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 3
  store i8 %261, i8* %274, align 2
  %275 = load i8, i8* %17, align 1
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = load i8, i8* %10, align 1
  %280 = zext i8 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = load i8, i8* %11, align 1
  %286 = zext i8 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 4
  store i8 %275, i8* %288, align 1
  %289 = load i8, i8* %14, align 1
  %290 = zext i8 %289 to i32
  %291 = load i8, i8* @APCI1710_10MHZ, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp eq i32 %290, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %211
  store i8 2, i8* %14, align 1
  br label %295

295:                                              ; preds = %294, %211
  %296 = load i8, i8* %17, align 1
  %297 = zext i8 %296 to i32
  %298 = shl i32 %297, 0
  %299 = and i32 %298, 1
  %300 = load i8, i8* %15, align 1
  %301 = zext i8 %300 to i32
  %302 = shl i32 %301, 1
  %303 = and i32 %302, 2
  %304 = or i32 %299, %303
  %305 = load i8, i8* %16, align 1
  %306 = zext i8 %305 to i32
  %307 = xor i32 %306, -1
  %308 = and i32 %307, 1
  %309 = shl i32 %308, 2
  %310 = and i32 %309, 4
  %311 = or i32 %304, %310
  %312 = load i8, i8* %14, align 1
  %313 = zext i8 %312 to i32
  %314 = shl i32 %313, 4
  %315 = and i32 %314, 48
  %316 = or i32 %311, %315
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %318, align 8
  %320 = load i8, i8* %10, align 1
  %321 = zext i8 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = load i8, i8* %11, align 1
  %327 = zext i8 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 5
  store i32 %316, i32* %329, align 4
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %331, align 8
  %333 = load i8, i8* %10, align 1
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %337, align 8
  %339 = load i8, i8* %11, align 1
  %340 = zext i8 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %347, 32
  %349 = load i8, i8* %11, align 1
  %350 = zext i8 %349 to i32
  %351 = mul nsw i32 %350, 4
  %352 = sext i32 %351 to i64
  %353 = add nsw i64 %348, %352
  %354 = load i8, i8* %10, align 1
  %355 = zext i8 %354 to i32
  %356 = mul nsw i32 64, %355
  %357 = sext i32 %356 to i64
  %358 = add nsw i64 %353, %357
  %359 = call i32 @outl(i32 %343, i64 %358)
  %360 = load i8, i8* %12, align 1
  %361 = zext i8 %360 to i32
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = add nsw i64 %365, 16
  %367 = load i8, i8* %11, align 1
  %368 = zext i8 %367 to i32
  %369 = mul nsw i32 %368, 4
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %366, %370
  %372 = load i8, i8* %10, align 1
  %373 = zext i8 %372 to i32
  %374 = mul nsw i32 64, %373
  %375 = sext i32 %374 to i64
  %376 = add nsw i64 %371, %375
  %377 = call i32 @outl(i32 %361, i64 %376)
  %378 = load i32, i32* %13, align 4
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %382, 0
  %384 = load i8, i8* %11, align 1
  %385 = zext i8 %384 to i32
  %386 = mul nsw i32 %385, 4
  %387 = sext i32 %386 to i64
  %388 = add nsw i64 %383, %387
  %389 = load i8, i8* %10, align 1
  %390 = zext i8 %389 to i32
  %391 = mul nsw i32 64, %390
  %392 = sext i32 %391 to i64
  %393 = add nsw i64 %388, %392
  %394 = call i32 @outl(i32 %378, i64 %393)
  br label %396

395:                                              ; preds = %208
  store i32 -6, i32* %9, align 4
  br label %396

396:                                              ; preds = %395, %295
  br label %399

397:                                              ; preds = %166
  %398 = call i32 @DPRINTK(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -9, i32* %9, align 4
  br label %399

399:                                              ; preds = %397, %396
  br label %402

400:                                              ; preds = %158
  %401 = call i32 @DPRINTK(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 -8, i32* %9, align 4
  br label %402

402:                                              ; preds = %400, %399
  br label %405

403:                                              ; preds = %150
  %404 = call i32 @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 -7, i32* %9, align 4
  br label %405

405:                                              ; preds = %403, %402
  br label %408

406:                                              ; preds = %140
  %407 = call i32 @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %408

408:                                              ; preds = %406, %405
  br label %411

409:                                              ; preds = %116, %100
  %410 = call i32 @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 -6, i32* %9, align 4
  br label %411

411:                                              ; preds = %409, %408
  br label %414

412:                                              ; preds = %76
  %413 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %414

414:                                              ; preds = %412, %411
  br label %417

415:                                              ; preds = %72
  %416 = call i32 @DPRINTK(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %417

417:                                              ; preds = %415, %414
  br label %420

418:                                              ; preds = %58
  %419 = call i32 @DPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %420

420:                                              ; preds = %418, %417
  br label %423

421:                                              ; preds = %4
  %422 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %423

423:                                              ; preds = %421, %420
  %424 = load i32, i32* %9, align 4
  ret i32 %424
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
