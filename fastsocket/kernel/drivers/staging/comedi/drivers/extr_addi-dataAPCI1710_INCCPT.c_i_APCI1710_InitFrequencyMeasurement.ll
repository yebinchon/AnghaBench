; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InitFrequencyMeasurement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_INCCPT.c_i_APCI1710_InitFrequencyMeasurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_14__* null, align 8
@APCI1710_30MHZ = common dso_local global i8 0, align 1
@APCI1710_33MHZ = common dso_local global i8 0, align 1
@APCI1710_40MHZ = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"40MHz quartz not on board\0A\00", align 1
@APCI1710_ENABLE_40MHZ_FREQUENCY = common dso_local global i32 0, align 4
@APCI1710_DISABLE_40MHZ_FREQUENCY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Counter not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Base timing selection is wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Timing unity selection is wrong\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"The selected PCI input clock is wrong\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"The selected module number parameter is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InitFrequencyMeasurement(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %530

20:                                               ; preds = %6
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %527

32:                                               ; preds = %20
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @APCI1710_30MHZ, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load i8, i8* %9, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @APCI1710_33MHZ, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @APCI1710_40MHZ, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %524

50:                                               ; preds = %44, %38, %32
  %51 = load i8, i8* %10, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sle i32 %52, 2
  br i1 %53, label %54, label %521

54:                                               ; preds = %50
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @APCI1710_30MHZ, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = icmp uge i32 %65, 266
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = icmp ule i64 %69, 8738133
  br i1 %70, label %207, label %71

71:                                               ; preds = %67, %64, %60, %54
  %72 = load i8, i8* %9, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @APCI1710_30MHZ, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load i8, i8* %10, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = icmp uge i32 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = icmp ule i64 %86, 8738
  br i1 %87, label %207, label %88

88:                                               ; preds = %84, %81, %77, %71
  %89 = load i8, i8* %9, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @APCI1710_30MHZ, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i8, i8* %10, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = icmp uge i32 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = icmp ule i64 %103, 8
  br i1 %104, label %207, label %105

105:                                              ; preds = %101, %98, %94, %88
  %106 = load i8, i8* %9, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @APCI1710_33MHZ, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i8, i8* %10, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load i32, i32* %11, align 4
  %117 = icmp uge i32 %116, 242
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* %11, align 4
  %120 = zext i32 %119 to i64
  %121 = icmp ule i64 %120, 7943757
  br i1 %121, label %207, label %122

122:                                              ; preds = %118, %115, %111, %105
  %123 = load i8, i8* %9, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* @APCI1710_33MHZ, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %122
  %129 = load i8, i8* %10, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32, i32* %11, align 4
  %134 = icmp uge i32 %133, 1
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = zext i32 %136 to i64
  %138 = icmp ule i64 %137, 7943
  br i1 %138, label %207, label %139

139:                                              ; preds = %135, %132, %128, %122
  %140 = load i8, i8* %9, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8, i8* @APCI1710_33MHZ, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load i8, i8* %10, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = icmp uge i32 %150, 1
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32, i32* %11, align 4
  %154 = zext i32 %153 to i64
  %155 = icmp ule i64 %154, 7
  br i1 %155, label %207, label %156

156:                                              ; preds = %152, %149, %145, %139
  %157 = load i8, i8* %9, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* @APCI1710_40MHZ, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load i8, i8* %10, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i32, i32* %11, align 4
  %168 = icmp uge i32 %167, 200
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = zext i32 %170 to i64
  %172 = icmp ule i64 %171, 6553500
  br i1 %172, label %207, label %173

173:                                              ; preds = %169, %166, %162, %156
  %174 = load i8, i8* %9, align 1
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* @APCI1710_40MHZ, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load i8, i8* %10, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load i32, i32* %11, align 4
  %185 = icmp uge i32 %184, 1
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i32, i32* %11, align 4
  %188 = zext i32 %187 to i64
  %189 = icmp ule i64 %188, 6553
  br i1 %189, label %207, label %190

190:                                              ; preds = %186, %183, %179, %173
  %191 = load i8, i8* %9, align 1
  %192 = zext i8 %191 to i32
  %193 = load i8, i8* @APCI1710_40MHZ, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %518

196:                                              ; preds = %190
  %197 = load i8, i8* %10, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %518

200:                                              ; preds = %196
  %201 = load i32, i32* %11, align 4
  %202 = icmp uge i32 %201, 1
  br i1 %202, label %203, label %518

203:                                              ; preds = %200
  %204 = load i32, i32* %11, align 4
  %205 = zext i32 %204 to i64
  %206 = icmp ule i64 %205, 6
  br i1 %206, label %207, label %518

207:                                              ; preds = %203, %186, %169, %152, %135, %118, %101, %84, %67
  %208 = load i8, i8* %9, align 1
  %209 = zext i8 %208 to i32
  %210 = load i8, i8* @APCI1710_40MHZ, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %245

213:                                              ; preds = %207
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i8, i8* %8, align 1
  %219 = zext i8 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 65535
  %223 = icmp sge i32 %222, 12597
  br i1 %223, label %224, label %242

224:                                              ; preds = %213
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 36
  %230 = load i8, i8* %8, align 1
  %231 = zext i8 %230 to i32
  %232 = mul nsw i32 64, %231
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %229, %233
  %235 = call i32 @inl(i64 %234)
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* %16, align 4
  %237 = and i32 %236, 1
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %239, label %241

239:                                              ; preds = %224
  %240 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -7, i32* %13, align 4
  br label %241

241:                                              ; preds = %239, %224
  br label %244

242:                                              ; preds = %213
  %243 = call i32 @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -7, i32* %13, align 4
  br label %244

244:                                              ; preds = %242, %241
  br label %245

245:                                              ; preds = %244, %207
  %246 = load i32, i32* %13, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %517

248:                                              ; preds = %245
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i8, i8* %8, align 1
  %254 = zext i8 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, 65535
  %258 = icmp sge i32 %257, 12593
  br i1 %258, label %259, label %514

259:                                              ; preds = %248
  %260 = load i8, i8* %9, align 1
  %261 = zext i8 %260 to i32
  %262 = load i8, i8* @APCI1710_40MHZ, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp eq i32 %261, %263
  br i1 %264, label %265, label %289

265:                                              ; preds = %259
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %267, align 8
  %269 = load i8, i8* %8, align 1
  %270 = zext i8 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @APCI1710_ENABLE_40MHZ_FREQUENCY, align 4
  %278 = or i32 %276, %277
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %280, align 8
  %282 = load i8, i8* %8, align 1
  %283 = zext i8 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  store i32 %278, i32* %288, align 4
  br label %313

289:                                              ; preds = %259
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %291, align 8
  %293 = load i8, i8* %8, align 1
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @APCI1710_DISABLE_40MHZ_FREQUENCY, align 4
  %302 = and i32 %300, %301
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %304, align 8
  %306 = load i8, i8* %8, align 1
  %307 = zext i8 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  store i32 %302, i32* %312, align 4
  br label %313

313:                                              ; preds = %289, %265
  %314 = call i32 (...) @fpu_begin()
  %315 = load i8, i8* %10, align 1
  %316 = zext i8 %315 to i32
  switch i32 %316, label %491 [
    i32 0, label %317
    i32 1, label %375
    i32 2, label %433
  ]

317:                                              ; preds = %313
  %318 = load i32, i32* %11, align 4
  %319 = uitofp i32 %318 to double
  %320 = load i8, i8* %9, align 1
  %321 = zext i8 %320 to i32
  %322 = sitofp i32 %321 to double
  %323 = fmul double 2.500000e-04, %322
  %324 = fmul double %319, %323
  %325 = fptoui double %324 to i32
  store i32 %325, i32* %14, align 4
  %326 = load i32, i32* %11, align 4
  %327 = uitofp i32 %326 to double
  %328 = load i8, i8* %9, align 1
  %329 = uitofp i8 %328 to double
  %330 = fmul double 2.500000e-04, %329
  %331 = fmul double %327, %330
  %332 = load i32, i32* %14, align 4
  %333 = uitofp i32 %332 to double
  %334 = fadd double %333, 5.000000e-01
  %335 = fcmp oge double %331, %334
  br i1 %335, label %336, label %339

336:                                              ; preds = %317
  %337 = load i32, i32* %14, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %14, align 4
  br label %339

339:                                              ; preds = %336, %317
  %340 = load i32, i32* %14, align 4
  %341 = uitofp i32 %340 to double
  %342 = load i8, i8* %9, align 1
  %343 = uitofp i8 %342 to double
  %344 = fmul double 2.500000e-04, %343
  %345 = fdiv double %341, %344
  %346 = fptoui double %345 to i32
  %347 = load i32*, i32** %12, align 8
  store i32 %346, i32* %347, align 4
  %348 = load i32, i32* %14, align 4
  %349 = uitofp i32 %348 to double
  %350 = load i8, i8* %9, align 1
  %351 = uitofp i8 %350 to double
  %352 = fmul double 2.500000e-04, %351
  %353 = fdiv double %349, %352
  store double %353, double* %15, align 8
  %354 = load i32, i32* %14, align 4
  %355 = uitofp i32 %354 to double
  %356 = load i8, i8* %9, align 1
  %357 = uitofp i8 %356 to double
  %358 = fmul double 2.500000e-04, %357
  %359 = fdiv double %355, %358
  %360 = load i32*, i32** %12, align 8
  %361 = load i32, i32* %360, align 4
  %362 = uitofp i32 %361 to double
  %363 = fadd double %362, 5.000000e-01
  %364 = fcmp oge double %359, %363
  br i1 %364, label %365, label %370

365:                                              ; preds = %339
  %366 = load i32*, i32** %12, align 8
  %367 = load i32, i32* %366, align 4
  %368 = add i32 %367, 1
  %369 = load i32*, i32** %12, align 8
  store i32 %368, i32* %369, align 4
  br label %370

370:                                              ; preds = %365, %339
  %371 = load i32, i32* %11, align 4
  %372 = sub i32 %371, 1
  store i32 %372, i32* %11, align 4
  %373 = load i32, i32* %14, align 4
  %374 = sub i32 %373, 2
  store i32 %374, i32* %14, align 4
  br label %491

375:                                              ; preds = %313
  %376 = load i32, i32* %11, align 4
  %377 = uitofp i32 %376 to double
  %378 = load i8, i8* %9, align 1
  %379 = zext i8 %378 to i32
  %380 = sitofp i32 %379 to double
  %381 = fmul double 2.500000e-01, %380
  %382 = fmul double %377, %381
  %383 = fptoui double %382 to i32
  store i32 %383, i32* %14, align 4
  %384 = load i32, i32* %11, align 4
  %385 = uitofp i32 %384 to double
  %386 = load i8, i8* %9, align 1
  %387 = uitofp i8 %386 to double
  %388 = fmul double 2.500000e-01, %387
  %389 = fmul double %385, %388
  %390 = load i32, i32* %14, align 4
  %391 = uitofp i32 %390 to double
  %392 = fadd double %391, 5.000000e-01
  %393 = fcmp oge double %389, %392
  br i1 %393, label %394, label %397

394:                                              ; preds = %375
  %395 = load i32, i32* %14, align 4
  %396 = add i32 %395, 1
  store i32 %396, i32* %14, align 4
  br label %397

397:                                              ; preds = %394, %375
  %398 = load i32, i32* %14, align 4
  %399 = uitofp i32 %398 to double
  %400 = load i8, i8* %9, align 1
  %401 = uitofp i8 %400 to double
  %402 = fmul double 2.500000e-01, %401
  %403 = fdiv double %399, %402
  %404 = fptoui double %403 to i32
  %405 = load i32*, i32** %12, align 8
  store i32 %404, i32* %405, align 4
  %406 = load i32, i32* %14, align 4
  %407 = uitofp i32 %406 to double
  %408 = load i8, i8* %9, align 1
  %409 = uitofp i8 %408 to double
  %410 = fmul double 2.500000e-01, %409
  %411 = fdiv double %407, %410
  store double %411, double* %15, align 8
  %412 = load i32, i32* %14, align 4
  %413 = uitofp i32 %412 to double
  %414 = load i8, i8* %9, align 1
  %415 = uitofp i8 %414 to double
  %416 = fmul double 2.500000e-01, %415
  %417 = fdiv double %413, %416
  %418 = load i32*, i32** %12, align 8
  %419 = load i32, i32* %418, align 4
  %420 = uitofp i32 %419 to double
  %421 = fadd double %420, 5.000000e-01
  %422 = fcmp oge double %417, %421
  br i1 %422, label %423, label %428

423:                                              ; preds = %397
  %424 = load i32*, i32** %12, align 8
  %425 = load i32, i32* %424, align 4
  %426 = add i32 %425, 1
  %427 = load i32*, i32** %12, align 8
  store i32 %426, i32* %427, align 4
  br label %428

428:                                              ; preds = %423, %397
  %429 = load i32, i32* %11, align 4
  %430 = sub i32 %429, 1
  store i32 %430, i32* %11, align 4
  %431 = load i32, i32* %14, align 4
  %432 = sub i32 %431, 2
  store i32 %432, i32* %14, align 4
  br label %491

433:                                              ; preds = %313
  %434 = load i32, i32* %11, align 4
  %435 = uitofp i32 %434 to double
  %436 = load i8, i8* %9, align 1
  %437 = zext i8 %436 to i32
  %438 = sitofp i32 %437 to double
  %439 = fmul double 2.500000e+02, %438
  %440 = fmul double %435, %439
  %441 = fptoui double %440 to i32
  store i32 %441, i32* %14, align 4
  %442 = load i32, i32* %11, align 4
  %443 = uitofp i32 %442 to double
  %444 = load i8, i8* %9, align 1
  %445 = uitofp i8 %444 to double
  %446 = fmul double 2.500000e+02, %445
  %447 = fmul double %443, %446
  %448 = load i32, i32* %14, align 4
  %449 = uitofp i32 %448 to double
  %450 = fadd double %449, 5.000000e-01
  %451 = fcmp oge double %447, %450
  br i1 %451, label %452, label %455

452:                                              ; preds = %433
  %453 = load i32, i32* %14, align 4
  %454 = add i32 %453, 1
  store i32 %454, i32* %14, align 4
  br label %455

455:                                              ; preds = %452, %433
  %456 = load i32, i32* %14, align 4
  %457 = uitofp i32 %456 to double
  %458 = load i8, i8* %9, align 1
  %459 = uitofp i8 %458 to double
  %460 = fmul double 2.500000e+02, %459
  %461 = fdiv double %457, %460
  %462 = fptoui double %461 to i32
  %463 = load i32*, i32** %12, align 8
  store i32 %462, i32* %463, align 4
  %464 = load i32, i32* %14, align 4
  %465 = uitofp i32 %464 to double
  %466 = load i8, i8* %9, align 1
  %467 = uitofp i8 %466 to double
  %468 = fmul double 2.500000e+02, %467
  %469 = fdiv double %465, %468
  store double %469, double* %15, align 8
  %470 = load i32, i32* %14, align 4
  %471 = uitofp i32 %470 to double
  %472 = load i8, i8* %9, align 1
  %473 = uitofp i8 %472 to double
  %474 = fmul double 2.500000e+02, %473
  %475 = fdiv double %471, %474
  %476 = load i32*, i32** %12, align 8
  %477 = load i32, i32* %476, align 4
  %478 = uitofp i32 %477 to double
  %479 = fadd double %478, 5.000000e-01
  %480 = fcmp oge double %475, %479
  br i1 %480, label %481, label %486

481:                                              ; preds = %455
  %482 = load i32*, i32** %12, align 8
  %483 = load i32, i32* %482, align 4
  %484 = add i32 %483, 1
  %485 = load i32*, i32** %12, align 8
  store i32 %484, i32* %485, align 4
  br label %486

486:                                              ; preds = %481, %455
  %487 = load i32, i32* %11, align 4
  %488 = sub i32 %487, 1
  store i32 %488, i32* %11, align 4
  %489 = load i32, i32* %14, align 4
  %490 = sub i32 %489, 2
  store i32 %490, i32* %14, align 4
  br label %491

491:                                              ; preds = %313, %486, %428, %370
  %492 = call i32 (...) @fpu_end()
  %493 = load i32, i32* %14, align 4
  %494 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %495 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %495, i32 0, i32 1
  %497 = load i64, i64* %496, align 8
  %498 = add nsw i64 %497, 32
  %499 = load i8, i8* %8, align 1
  %500 = zext i8 %499 to i32
  %501 = mul nsw i32 64, %500
  %502 = sext i32 %501 to i64
  %503 = add nsw i64 %498, %502
  %504 = call i32 @outl(i32 %493, i64 %503)
  %505 = load %struct.TYPE_14__*, %struct.TYPE_14__** @devpriv, align 8
  %506 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %505, i32 0, i32 0
  %507 = load %struct.TYPE_13__*, %struct.TYPE_13__** %506, align 8
  %508 = load i8, i8* %8, align 1
  %509 = zext i8 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %507, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i32 0, i32 1
  store i32 1, i32* %513, align 4
  br label %516

514:                                              ; preds = %248
  %515 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %13, align 4
  br label %516

516:                                              ; preds = %514, %491
  br label %517

517:                                              ; preds = %516, %245
  br label %520

518:                                              ; preds = %203, %200, %196, %190
  %519 = call i32 @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -6, i32* %13, align 4
  br label %520

520:                                              ; preds = %518, %517
  br label %523

521:                                              ; preds = %50
  %522 = call i32 @DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 -5, i32* %13, align 4
  br label %523

523:                                              ; preds = %521, %520
  br label %526

524:                                              ; preds = %44
  %525 = call i32 @DPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 -4, i32* %13, align 4
  br label %526

526:                                              ; preds = %524, %523
  br label %529

527:                                              ; preds = %20
  %528 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %13, align 4
  br label %529

529:                                              ; preds = %527, %526
  br label %532

530:                                              ; preds = %6
  %531 = call i32 @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  store i32 -2, i32* %13, align 4
  br label %532

532:                                              ; preds = %530, %529
  %533 = load i32, i32* %13, align 4
  ret i32 %533
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @fpu_begin(...) #1

declare dso_local i32 @fpu_end(...) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
