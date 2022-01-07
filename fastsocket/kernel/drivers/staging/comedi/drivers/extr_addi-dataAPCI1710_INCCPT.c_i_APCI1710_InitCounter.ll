; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InitCounter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InitCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8 }
%struct.TYPE_10__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_14__* null, align 8
@APCI1710_INCREMENTAL_COUNTER = common dso_local global i32 0, align 4
@APCI1710_16BIT_COUNTER = common dso_local global i8 0, align 1
@APCI1710_32BIT_COUNTER = common dso_local global i8 0, align 1
@APCI1710_QUADRUPLE_MODE = common dso_local global i8 0, align 1
@APCI1710_DOUBLE_MODE = common dso_local global i8 0, align 1
@APCI1710_SIMPLE_MODE = common dso_local global i8 0, align 1
@APCI1710_DIRECT_MODE = common dso_local global i8 0, align 1
@APCI1710_INCREMENT = common dso_local global i8 0, align 1
@APCI1710_DECREMENT = common dso_local global i8 0, align 1
@APCI1710_HYSTERESIS_ON = common dso_local global i8 0, align 1
@APCI1710_HYSTERESIS_OFF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [55 x i8] c"The selected second counter operating option is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"The selected second counter operating mode is wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"The selected first counter operating option is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"The selected first counter operating mode is wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"The selected counter range is wrong\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"The module is not a counter module\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InitCounter(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, i8 zeroext %6) #0 {
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i8 %3, i8* %11, align 1
  store i8 %4, i8* %12, align 1
  store i8 %5, i8* %13, align 1
  store i8 %6, i8* %14, align 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i8, i8* %9, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, 4294901760
  %26 = load i32, i32* @APCI1710_INCREMENTAL_COUNTER, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %319

29:                                               ; preds = %7
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @APCI1710_16BIT_COUNTER, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8, i8* %10, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @APCI1710_32BIT_COUNTER, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %193

41:                                               ; preds = %35, %29
  %42 = load i8, i8* %11, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @APCI1710_QUADRUPLE_MODE, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %41
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @APCI1710_DOUBLE_MODE, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load i8, i8* %11, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @APCI1710_SIMPLE_MODE, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i8, i8* %11, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %190

65:                                               ; preds = %59, %53, %47, %41
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @APCI1710_INCREMENT, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %101, label %77

77:                                               ; preds = %71
  %78 = load i8, i8* %12, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @APCI1710_DECREMENT, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %101, label %83

83:                                               ; preds = %77, %65
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %187

89:                                               ; preds = %83
  %90 = load i8, i8* %12, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @APCI1710_HYSTERESIS_ON, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i8, i8* %12, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @APCI1710_HYSTERESIS_OFF, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %187

101:                                              ; preds = %95, %89, %77, %71
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @APCI1710_16BIT_COUNTER, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %186

107:                                              ; preds = %101
  %108 = load i8, i8* %11, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %109, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %107
  %114 = load i8, i8* %13, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @APCI1710_QUADRUPLE_MODE, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %143, label %119

119:                                              ; preds = %113
  %120 = load i8, i8* %13, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @APCI1710_DOUBLE_MODE, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %143, label %125

125:                                              ; preds = %119
  %126 = load i8, i8* %13, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8, i8* @APCI1710_SIMPLE_MODE, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %143, label %131

131:                                              ; preds = %125, %107
  %132 = load i8, i8* %11, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %183

137:                                              ; preds = %131
  %138 = load i8, i8* %13, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %183

143:                                              ; preds = %137, %125, %119, %113
  %144 = load i8, i8* %13, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %143
  %150 = load i8, i8* %14, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* @APCI1710_INCREMENT, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %179, label %155

155:                                              ; preds = %149
  %156 = load i8, i8* %14, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* @APCI1710_DECREMENT, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %179, label %161

161:                                              ; preds = %155, %143
  %162 = load i8, i8* %13, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp ne i32 %163, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %161
  %168 = load i8, i8* %14, align 1
  %169 = zext i8 %168 to i32
  %170 = load i8, i8* @APCI1710_HYSTERESIS_ON, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %179, label %173

173:                                              ; preds = %167
  %174 = load i8, i8* %14, align 1
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* @APCI1710_HYSTERESIS_OFF, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173, %167, %155, %149
  store i32 0, i32* %15, align 4
  br label %182

180:                                              ; preds = %173, %161
  %181 = call i32 @DPRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 -7, i32* %15, align 4
  br label %182

182:                                              ; preds = %180, %179
  br label %185

183:                                              ; preds = %137, %131
  %184 = call i32 @DPRINTK(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 -6, i32* %15, align 4
  br label %185

185:                                              ; preds = %183, %182
  br label %186

186:                                              ; preds = %185, %101
  br label %189

187:                                              ; preds = %95, %83
  %188 = call i32 @DPRINTK(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  store i32 -5, i32* %15, align 4
  br label %189

189:                                              ; preds = %187, %186
  br label %192

190:                                              ; preds = %59
  %191 = call i32 @DPRINTK(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  store i32 -4, i32* %15, align 4
  br label %192

192:                                              ; preds = %190, %189
  br label %195

193:                                              ; preds = %35
  %194 = call i32 @DPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 -3, i32* %15, align 4
  br label %195

195:                                              ; preds = %193, %192
  %196 = load i32, i32* %15, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %318

198:                                              ; preds = %195
  %199 = load i8, i8* %10, align 1
  %200 = zext i8 %199 to i32
  %201 = load i8, i8* @APCI1710_32BIT_COUNTER, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %224

204:                                              ; preds = %198
  %205 = load i8, i8* %10, align 1
  %206 = zext i8 %205 to i32
  %207 = load i8, i8* %11, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %206, %208
  %210 = load i8, i8* %12, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %209, %211
  %213 = trunc i32 %212 to i8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = load i8, i8* %9, align 1
  %218 = zext i8 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  store i8 %213, i8* %223, align 4
  br label %287

224:                                              ; preds = %198
  %225 = load i8, i8* %10, align 1
  %226 = zext i8 %225 to i32
  %227 = load i8, i8* %11, align 1
  %228 = zext i8 %227 to i32
  %229 = and i32 %228, 5
  %230 = or i32 %226, %229
  %231 = load i8, i8* %12, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 %232, 32
  %234 = or i32 %230, %233
  %235 = load i8, i8* %13, align 1
  %236 = zext i8 %235 to i32
  %237 = and i32 %236, 10
  %238 = or i32 %234, %237
  %239 = load i8, i8* %14, align 1
  %240 = zext i8 %239 to i32
  %241 = and i32 %240, 64
  %242 = or i32 %238, %241
  %243 = trunc i32 %242 to i8
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %245, align 8
  %247 = load i8, i8* %9, align 1
  %248 = zext i8 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  store i8 %243, i8* %253, align 4
  %254 = load i8, i8* %11, align 1
  %255 = zext i8 %254 to i32
  %256 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp eq i32 %255, %257
  br i1 %258, label %259, label %286

259:                                              ; preds = %224
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %261, align 8
  %263 = load i8, i8* %9, align 1
  %264 = zext i8 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i8, i8* %269, align 4
  %271 = zext i8 %270 to i32
  %272 = load i8, i8* @APCI1710_DIRECT_MODE, align 1
  %273 = zext i8 %272 to i32
  %274 = or i32 %271, %273
  %275 = trunc i32 %274 to i8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %277, align 8
  %279 = load i8, i8* %9, align 1
  %280 = zext i8 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  store i8 %275, i8* %285, align 4
  br label %286

286:                                              ; preds = %259, %224
  br label %287

287:                                              ; preds = %286, %204
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %289, align 8
  %291 = load i8, i8* %9, align 1
  %292 = zext i8 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, 20
  %303 = load i8, i8* %9, align 1
  %304 = zext i8 %303 to i32
  %305 = mul nsw i32 64, %304
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %302, %306
  %308 = call i32 @outl(i32 %297, i64 %307)
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %310, align 8
  %312 = load i8, i8* %9, align 1
  %313 = zext i8 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 0
  store i32 1, i32* %317, align 4
  br label %318

318:                                              ; preds = %287, %195
  br label %321

319:                                              ; preds = %7
  %320 = call i32 @DPRINTK(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 -2, i32* %15, align 4
  br label %321

321:                                              ; preds = %319, %318
  %322 = load i32, i32* %15, align 4
  ret i32 %322
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
