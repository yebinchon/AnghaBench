; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i64*, i64, i32, i64, i64, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@AREF_DIFF = common dso_local global i32 0, align 4
@CR_FLAGS_MASK = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@TRIG_ROUND_UP = common dso_local global i32 0, align 4
@pci230_ai_bipolar = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [99 x i8] c"comedi%d: amplc_pci230: ai_cmdtest: channel numbers must increase or sequence must repeat exactly\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"comedi%d: amplc_pci230: ai_cmdtest: single-ended channel pairs must have the same range\0A\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"comedi%d: amplc_pci230: ai_cmdtest: channel sequence ranges must be all bipolar or all unipolar\0A\00", align 1
@.str.3 = private unnamed_addr constant [126 x i8] c"comedi%d: amplc_pci230: ai_cmdtest: channel sequence analogue references must be all the same (single-ended or differential)\0A\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"comedi%d: amplc_pci230: ai_cmdtest: differential channel number out of range 0 to %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [165 x i8] c"comedi: comedi%d: amplc_pci230: ai_cmdtest: Buggy PCI230+/260+ h/w version %u requires first channel of multi-channel sequence to be 0 (corrected in h/w version 4)\0A\00", align 1
@MAX_SPEED_AI_DIFF = common dso_local global i32 0, align 4
@MAX_SPEED_AI_PLUS = common dso_local global i32 0, align 4
@MAX_SPEED_AI_SE = common dso_local global i32 0, align 4
@MIN_SPEED_AI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @pci230_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @TRIG_NOW, align 4
  %26 = load i32, i32* @TRIG_INT, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %3
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53, %45
  %59 = load i32, i32* @TRIG_FOLLOW, align 4
  %60 = load i32, i32* @TRIG_TIMER, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @TRIG_INT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @TRIG_EXT, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %67 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %80

70:                                               ; preds = %53
  %71 = load i32, i32* @TRIG_FOLLOW, align 4
  %72 = load i32, i32* @TRIG_TIMER, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @TRIG_INT, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %70, %58
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85, %80
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %96 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @TRIG_TIMER, align 4
  %99 = load i32, i32* @TRIG_INT, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @TRIG_EXT, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %94
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111, %94
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %117, %111
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* @TRIG_COUNT, align 4
  %125 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %126 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %120
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133, %120
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %139, %133
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* @TRIG_COUNT, align 4
  %147 = load i32, i32* @TRIG_NONE, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %154 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %142
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157, %142
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %163, %157
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 1, i32* %4, align 4
  br label %839

170:                                              ; preds = %166
  %171 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %172 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sub i32 %176, 1
  %178 = and i32 %173, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %170
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %180, %170
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sub i32 %189, 1
  %191 = and i32 %186, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %183
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %193, %183
  %197 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %198 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %201 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = sub i32 %202, 1
  %204 = and i32 %199, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %196
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %206, %196
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = sub i32 %215, 1
  %217 = and i32 %212, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %209
  %220 = load i32, i32* %8, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %8, align 4
  br label %222

222:                                              ; preds = %219, %209
  %223 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %224 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %227 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = sub i32 %228, 1
  %230 = and i32 %225, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %222
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %232, %222
  %236 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %237 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @TRIG_FOLLOW, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %235
  %242 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %243 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @TRIG_TIMER, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %241
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  br label %250

250:                                              ; preds = %247, %241, %235
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  store i32 2, i32* %4, align 4
  br label %839

254:                                              ; preds = %250
  %255 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %256 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %261 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %260, i32 0, i32 5
  store i32 0, i32* %261, align 4
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  br label %264

264:                                              ; preds = %259, %254
  %265 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %266 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @TRIG_TIMER, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %323

270:                                              ; preds = %264
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %299

275:                                              ; preds = %270
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 6
  %278 = load i64*, i64** %277, align 8
  %279 = icmp ne i64* %278, null
  br i1 %279, label %280, label %297

280:                                              ; preds = %275
  %281 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %282 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %281, i32 0, i32 7
  %283 = load i64, i64* %282, align 8
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %285, label %297

285:                                              ; preds = %280
  %286 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %287 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %286, i32 0, i32 6
  %288 = load i64*, i64** %287, align 8
  %289 = getelementptr inbounds i64, i64* %288, i64 0
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @CR_AREF(i64 %290)
  %292 = load i32, i32* @AREF_DIFF, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %285
  store i32 8000, i32* %10, align 4
  br label %296

295:                                              ; preds = %285
  store i32 3200, i32* %10, align 4
  br label %296

296:                                              ; preds = %295, %294
  br label %298

297:                                              ; preds = %280, %275
  store i32 3200, i32* %10, align 4
  br label %298

298:                                              ; preds = %297, %296
  br label %300

299:                                              ; preds = %270
  store i32 4000, i32* %10, align 4
  br label %300

300:                                              ; preds = %299, %298
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = icmp ult i32 %303, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %300
  %307 = load i32, i32* %10, align 4
  %308 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %309 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %308, i32 0, i32 8
  store i32 %307, i32* %309, align 8
  %310 = load i32, i32* %8, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %8, align 4
  br label %312

312:                                              ; preds = %306, %300
  %313 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %314 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 8
  %316 = icmp ugt i32 %315, -1
  br i1 %316, label %317, label %322

317:                                              ; preds = %312
  %318 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %319 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %318, i32 0, i32 8
  store i32 -1, i32* %319, align 8
  %320 = load i32, i32* %8, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %8, align 4
  br label %322

322:                                              ; preds = %317, %312
  br label %407

323:                                              ; preds = %264
  %324 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %325 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @TRIG_EXT, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %395

329:                                              ; preds = %323
  %330 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %331 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %330, i32 0, i32 8
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @CR_FLAGS_MASK, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %383

336:                                              ; preds = %329
  %337 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %338 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %337, i32 0, i32 8
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @CR_FLAGS_MASK, align 4
  %341 = xor i32 %340, -1
  %342 = and i32 %339, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %356

344:                                              ; preds = %336
  %345 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %346 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %345, i32 0, i32 8
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @CR_FLAGS_MASK, align 4
  %349 = xor i32 %348, -1
  %350 = call i8* @COMBINE(i32 %347, i32 0, i32 %349)
  %351 = ptrtoint i8* %350 to i32
  %352 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %353 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %352, i32 0, i32 8
  store i32 %351, i32* %353, align 8
  %354 = load i32, i32* %8, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %8, align 4
  br label %356

356:                                              ; preds = %344, %336
  %357 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %358 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %357, i32 0, i32 8
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @CR_FLAGS_MASK, align 4
  %361 = load i32, i32* @CR_INVERT, align 4
  %362 = xor i32 %361, -1
  %363 = and i32 %360, %362
  %364 = and i32 %359, %363
  %365 = load i32, i32* @CR_EDGE, align 4
  %366 = icmp ne i32 %364, %365
  br i1 %366, label %367, label %382

367:                                              ; preds = %356
  %368 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %369 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @CR_EDGE, align 4
  %372 = load i32, i32* @CR_FLAGS_MASK, align 4
  %373 = load i32, i32* @CR_INVERT, align 4
  %374 = xor i32 %373, -1
  %375 = and i32 %372, %374
  %376 = call i8* @COMBINE(i32 %370, i32 %371, i32 %375)
  %377 = ptrtoint i8* %376 to i32
  %378 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %379 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %378, i32 0, i32 8
  store i32 %377, i32* %379, align 8
  %380 = load i32, i32* %8, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %8, align 4
  br label %382

382:                                              ; preds = %367, %356
  br label %394

383:                                              ; preds = %329
  %384 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %385 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %384, i32 0, i32 8
  %386 = load i32, i32* %385, align 8
  %387 = icmp ugt i32 %386, 1
  br i1 %387, label %388, label %393

388:                                              ; preds = %383
  %389 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %390 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %389, i32 0, i32 8
  store i32 1, i32* %390, align 8
  %391 = load i32, i32* %8, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %8, align 4
  br label %393

393:                                              ; preds = %388, %383
  br label %394

394:                                              ; preds = %393, %382
  br label %406

395:                                              ; preds = %323
  %396 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %397 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %396, i32 0, i32 8
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %395
  %401 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %402 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %401, i32 0, i32 8
  store i32 0, i32* %402, align 8
  %403 = load i32, i32* %8, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %8, align 4
  br label %405

405:                                              ; preds = %400, %395
  br label %406

406:                                              ; preds = %405, %394
  br label %407

407:                                              ; preds = %406, %322
  %408 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %409 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %408, i32 0, i32 9
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %412 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %411, i32 0, i32 7
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %410, %413
  br i1 %414, label %415, label %423

415:                                              ; preds = %407
  %416 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %417 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %416, i32 0, i32 7
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %420 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %419, i32 0, i32 9
  store i64 %418, i64* %420, align 8
  %421 = load i32, i32* %8, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %8, align 4
  br label %423

423:                                              ; preds = %415, %407
  %424 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %425 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %424, i32 0, i32 4
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @TRIG_NONE, align 4
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %440

429:                                              ; preds = %423
  %430 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %431 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %430, i32 0, i32 10
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %429
  %435 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %436 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %435, i32 0, i32 10
  store i64 0, i64* %436, align 8
  %437 = load i32, i32* %8, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %8, align 4
  br label %439

439:                                              ; preds = %434, %429
  br label %440

440:                                              ; preds = %439, %423
  %441 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %442 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @TRIG_EXT, align 4
  %445 = icmp eq i32 %443, %444
  br i1 %445, label %446, label %491

446:                                              ; preds = %440
  %447 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %448 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %447, i32 0, i32 11
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @CR_FLAGS_MASK, align 4
  %451 = xor i32 %450, -1
  %452 = and i32 %449, %451
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %466

454:                                              ; preds = %446
  %455 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %456 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %455, i32 0, i32 11
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* @CR_FLAGS_MASK, align 4
  %459 = xor i32 %458, -1
  %460 = call i8* @COMBINE(i32 %457, i32 0, i32 %459)
  %461 = ptrtoint i8* %460 to i32
  %462 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %463 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %462, i32 0, i32 11
  store i32 %461, i32* %463, align 8
  %464 = load i32, i32* %8, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %8, align 4
  br label %466

466:                                              ; preds = %454, %446
  %467 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %468 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %467, i32 0, i32 11
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @CR_FLAGS_MASK, align 4
  %471 = and i32 %469, %470
  %472 = load i32, i32* @CR_EDGE, align 4
  %473 = xor i32 %472, -1
  %474 = and i32 %471, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %490

476:                                              ; preds = %466
  %477 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %478 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %477, i32 0, i32 11
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @CR_FLAGS_MASK, align 4
  %481 = load i32, i32* @CR_EDGE, align 4
  %482 = xor i32 %481, -1
  %483 = and i32 %480, %482
  %484 = call i8* @COMBINE(i32 %479, i32 0, i32 %483)
  %485 = ptrtoint i8* %484 to i32
  %486 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %487 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %486, i32 0, i32 11
  store i32 %485, i32* %487, align 8
  %488 = load i32, i32* %8, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %8, align 4
  br label %490

490:                                              ; preds = %476, %466
  br label %517

491:                                              ; preds = %440
  %492 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %493 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @TRIG_TIMER, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %497, label %505

497:                                              ; preds = %491
  %498 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %499 = call i32 @pci230_ai_check_scan_period(%struct.comedi_cmd* %498)
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %504, label %501

501:                                              ; preds = %497
  %502 = load i32, i32* %8, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %8, align 4
  br label %504

504:                                              ; preds = %501, %497
  br label %516

505:                                              ; preds = %491
  %506 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %507 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %506, i32 0, i32 11
  %508 = load i32, i32* %507, align 8
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %515

510:                                              ; preds = %505
  %511 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %512 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %511, i32 0, i32 11
  store i32 0, i32* %512, align 8
  %513 = load i32, i32* %8, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %8, align 4
  br label %515

515:                                              ; preds = %510, %505
  br label %516

516:                                              ; preds = %515, %504
  br label %517

517:                                              ; preds = %516, %490
  %518 = load i32, i32* %8, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %521

520:                                              ; preds = %517
  store i32 3, i32* %4, align 4
  br label %839

521:                                              ; preds = %517
  %522 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %523 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @TRIG_TIMER, align 4
  %526 = icmp eq i32 %524, %525
  br i1 %526, label %527, label %548

527:                                              ; preds = %521
  %528 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %529 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %528, i32 0, i32 8
  %530 = load i32, i32* %529, align 8
  store i32 %530, i32* %9, align 4
  %531 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %532 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %531, i32 0, i32 8
  %533 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %534 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %533, i32 0, i32 12
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %537 = and i32 %535, %536
  %538 = call i32 @pci230_ns_to_single_timer(i32* %532, i32 %537)
  %539 = load i32, i32* %9, align 4
  %540 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %541 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %540, i32 0, i32 8
  %542 = load i32, i32* %541, align 8
  %543 = icmp ne i32 %539, %542
  br i1 %543, label %544, label %547

544:                                              ; preds = %527
  %545 = load i32, i32* %8, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %8, align 4
  br label %547

547:                                              ; preds = %544, %527
  br label %548

548:                                              ; preds = %547, %521
  %549 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %550 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %549, i32 0, i32 1
  %551 = load i32, i32* %550, align 4
  %552 = load i32, i32* @TRIG_TIMER, align 4
  %553 = icmp eq i32 %551, %552
  br i1 %553, label %554, label %586

554:                                              ; preds = %548
  %555 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %556 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %555, i32 0, i32 11
  %557 = load i32, i32* %556, align 8
  store i32 %557, i32* %9, align 4
  %558 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %559 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %558, i32 0, i32 11
  %560 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %561 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %560, i32 0, i32 12
  %562 = load i32, i32* %561, align 4
  %563 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %564 = and i32 %562, %563
  %565 = call i32 @pci230_ns_to_single_timer(i32* %559, i32 %564)
  %566 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %567 = call i32 @pci230_ai_check_scan_period(%struct.comedi_cmd* %566)
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %576, label %569

569:                                              ; preds = %554
  %570 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %571 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %570, i32 0, i32 11
  %572 = load i32, i32* @TRIG_ROUND_UP, align 4
  %573 = call i32 @pci230_ns_to_single_timer(i32* %571, i32 %572)
  %574 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %575 = call i32 @pci230_ai_check_scan_period(%struct.comedi_cmd* %574)
  br label %576

576:                                              ; preds = %569, %554
  %577 = load i32, i32* %9, align 4
  %578 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %579 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %578, i32 0, i32 11
  %580 = load i32, i32* %579, align 8
  %581 = icmp ne i32 %577, %580
  br i1 %581, label %582, label %585

582:                                              ; preds = %576
  %583 = load i32, i32* %8, align 4
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %8, align 4
  br label %585

585:                                              ; preds = %582, %576
  br label %586

586:                                              ; preds = %585, %548
  %587 = load i32, i32* %8, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %590

589:                                              ; preds = %586
  store i32 4, i32* %4, align 4
  br label %839

590:                                              ; preds = %586
  %591 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %592 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %591, i32 0, i32 6
  %593 = load i64*, i64** %592, align 8
  %594 = icmp ne i64* %593, null
  br i1 %594, label %595, label %834

595:                                              ; preds = %590
  %596 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %597 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %596, i32 0, i32 7
  %598 = load i64, i64* %597, align 8
  %599 = icmp sgt i64 %598, 0
  br i1 %599, label %600, label %834

600:                                              ; preds = %595
  store i32 0, i32* %20, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %21, align 4
  br label %601

601:                                              ; preds = %724, %600
  %602 = load i32, i32* %21, align 4
  %603 = zext i32 %602 to i64
  %604 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %605 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %604, i32 0, i32 7
  %606 = load i64, i64* %605, align 8
  %607 = icmp slt i64 %603, %606
  br i1 %607, label %608, label %727

608:                                              ; preds = %601
  %609 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %610 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %609, i32 0, i32 6
  %611 = load i64*, i64** %610, align 8
  %612 = load i32, i32* %21, align 4
  %613 = zext i32 %612 to i64
  %614 = getelementptr inbounds i64, i64* %611, i64 %613
  %615 = load i64, i64* %614, align 8
  %616 = call i32 @CR_CHAN(i64 %615)
  store i32 %616, i32* %12, align 4
  %617 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %618 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %617, i32 0, i32 6
  %619 = load i64*, i64** %618, align 8
  %620 = load i32, i32* %21, align 4
  %621 = zext i32 %620 to i64
  %622 = getelementptr inbounds i64, i64* %619, i64 %621
  %623 = load i64, i64* %622, align 8
  %624 = call i32 @CR_RANGE(i64 %623)
  store i32 %624, i32* %14, align 4
  %625 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %626 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %625, i32 0, i32 6
  %627 = load i64*, i64** %626, align 8
  %628 = load i32, i32* %21, align 4
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds i64, i64* %627, i64 %629
  %631 = load i64, i64* %630, align 8
  %632 = call i32 @CR_AREF(i64 %631)
  store i32 %632, i32* %18, align 4
  %633 = load i32*, i32** @pci230_ai_bipolar, align 8
  %634 = load i32, i32* %14, align 4
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds i32, i32* %633, i64 %635
  %637 = load i32, i32* %636, align 4
  store i32 %637, i32* %16, align 4
  %638 = load i32, i32* %18, align 4
  %639 = load i32, i32* @AREF_DIFF, align 4
  %640 = icmp eq i32 %638, %639
  br i1 %640, label %641, label %651

641:                                              ; preds = %608
  %642 = load i32, i32* %12, align 4
  %643 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %644 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %643, i32 0, i32 0
  %645 = load i32, i32* %644, align 4
  %646 = sdiv i32 %645, 2
  %647 = icmp uge i32 %642, %646
  br i1 %647, label %648, label %651

648:                                              ; preds = %641
  %649 = load i32, i32* %11, align 4
  %650 = or i32 %649, 16
  store i32 %650, i32* %11, align 4
  br label %651

651:                                              ; preds = %648, %641, %608
  %652 = load i32, i32* %21, align 4
  %653 = icmp ugt i32 %652, 0
  br i1 %653, label %654, label %719

654:                                              ; preds = %651
  %655 = load i32, i32* %12, align 4
  %656 = load i32, i32* %13, align 4
  %657 = icmp ule i32 %655, %656
  br i1 %657, label %658, label %663

658:                                              ; preds = %654
  %659 = load i32, i32* %20, align 4
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %663

661:                                              ; preds = %658
  %662 = load i32, i32* %21, align 4
  store i32 %662, i32* %20, align 4
  br label %663

663:                                              ; preds = %661, %658, %654
  %664 = load i32, i32* %20, align 4
  %665 = icmp ugt i32 %664, 0
  br i1 %665, label %666, label %687

666:                                              ; preds = %663
  %667 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %668 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %667, i32 0, i32 6
  %669 = load i64*, i64** %668, align 8
  %670 = load i32, i32* %21, align 4
  %671 = zext i32 %670 to i64
  %672 = getelementptr inbounds i64, i64* %669, i64 %671
  %673 = load i64, i64* %672, align 8
  %674 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %675 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %674, i32 0, i32 6
  %676 = load i64*, i64** %675, align 8
  %677 = load i32, i32* %21, align 4
  %678 = load i32, i32* %20, align 4
  %679 = urem i32 %677, %678
  %680 = zext i32 %679 to i64
  %681 = getelementptr inbounds i64, i64* %676, i64 %680
  %682 = load i64, i64* %681, align 8
  %683 = icmp ne i64 %673, %682
  br i1 %683, label %684, label %687

684:                                              ; preds = %666
  %685 = load i32, i32* %11, align 4
  %686 = or i32 %685, 1
  store i32 %686, i32* %11, align 4
  br label %687

687:                                              ; preds = %684, %666, %663
  %688 = load i32, i32* %18, align 4
  %689 = load i32, i32* %19, align 4
  %690 = icmp ne i32 %688, %689
  br i1 %690, label %691, label %694

691:                                              ; preds = %687
  %692 = load i32, i32* %11, align 4
  %693 = or i32 %692, 8
  store i32 %693, i32* %11, align 4
  br label %694

694:                                              ; preds = %691, %687
  %695 = load i32, i32* %16, align 4
  %696 = load i32, i32* %17, align 4
  %697 = icmp ne i32 %695, %696
  br i1 %697, label %698, label %701

698:                                              ; preds = %694
  %699 = load i32, i32* %11, align 4
  %700 = or i32 %699, 4
  store i32 %700, i32* %11, align 4
  br label %701

701:                                              ; preds = %698, %694
  %702 = load i32, i32* %18, align 4
  %703 = load i32, i32* @AREF_DIFF, align 4
  %704 = icmp ne i32 %702, %703
  br i1 %704, label %705, label %718

705:                                              ; preds = %701
  %706 = load i32, i32* %12, align 4
  %707 = load i32, i32* %13, align 4
  %708 = xor i32 %706, %707
  %709 = and i32 %708, -2
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %711, label %718

711:                                              ; preds = %705
  %712 = load i32, i32* %14, align 4
  %713 = load i32, i32* %15, align 4
  %714 = icmp ne i32 %712, %713
  br i1 %714, label %715, label %718

715:                                              ; preds = %711
  %716 = load i32, i32* %11, align 4
  %717 = or i32 %716, 2
  store i32 %717, i32* %11, align 4
  br label %718

718:                                              ; preds = %715, %711, %705, %701
  br label %719

719:                                              ; preds = %718, %651
  %720 = load i32, i32* %12, align 4
  store i32 %720, i32* %13, align 4
  %721 = load i32, i32* %14, align 4
  store i32 %721, i32* %15, align 4
  %722 = load i32, i32* %18, align 4
  store i32 %722, i32* %19, align 4
  %723 = load i32, i32* %16, align 4
  store i32 %723, i32* %17, align 4
  br label %724

724:                                              ; preds = %719
  %725 = load i32, i32* %21, align 4
  %726 = add i32 %725, 1
  store i32 %726, i32* %21, align 4
  br label %601

727:                                              ; preds = %601
  %728 = load i32, i32* %20, align 4
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %730, label %732

730:                                              ; preds = %727
  %731 = load i32, i32* %21, align 4
  store i32 %731, i32* %20, align 4
  br label %732

732:                                              ; preds = %730, %727
  %733 = load i32, i32* %21, align 4
  %734 = load i32, i32* %20, align 4
  %735 = urem i32 %733, %734
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %740

737:                                              ; preds = %732
  %738 = load i32, i32* %11, align 4
  %739 = or i32 %738, 1
  store i32 %739, i32* %11, align 4
  br label %740

740:                                              ; preds = %737, %732
  %741 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %742 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %741, i32 0, i32 0
  %743 = load i32, i32* %742, align 4
  %744 = icmp sgt i32 %743, 0
  br i1 %744, label %745, label %765

745:                                              ; preds = %740
  %746 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %747 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %746, i32 0, i32 0
  %748 = load i32, i32* %747, align 4
  %749 = icmp slt i32 %748, 4
  br i1 %749, label %750, label %765

750:                                              ; preds = %745
  %751 = load i32, i32* %20, align 4
  %752 = icmp ugt i32 %751, 1
  br i1 %752, label %753, label %764

753:                                              ; preds = %750
  %754 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %755 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %754, i32 0, i32 6
  %756 = load i64*, i64** %755, align 8
  %757 = getelementptr inbounds i64, i64* %756, i64 0
  %758 = load i64, i64* %757, align 8
  %759 = call i32 @CR_CHAN(i64 %758)
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %764

761:                                              ; preds = %753
  %762 = load i32, i32* %11, align 4
  %763 = or i32 %762, 32
  store i32 %763, i32* %11, align 4
  br label %764

764:                                              ; preds = %761, %753, %750
  br label %765

765:                                              ; preds = %764, %745, %740
  %766 = load i32, i32* %11, align 4
  %767 = icmp ne i32 %766, 0
  br i1 %767, label %768, label %833

768:                                              ; preds = %765
  %769 = load i32, i32* %8, align 4
  %770 = add nsw i32 %769, 1
  store i32 %770, i32* %8, align 4
  %771 = load i32, i32* %11, align 4
  %772 = and i32 %771, 1
  %773 = icmp ne i32 %772, 0
  br i1 %773, label %774, label %779

774:                                              ; preds = %768
  %775 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %776 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 4
  %778 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %777)
  br label %779

779:                                              ; preds = %774, %768
  %780 = load i32, i32* %11, align 4
  %781 = and i32 %780, 2
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %783, label %788

783:                                              ; preds = %779
  %784 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %785 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %784, i32 0, i32 0
  %786 = load i32, i32* %785, align 4
  %787 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %786)
  br label %788

788:                                              ; preds = %783, %779
  %789 = load i32, i32* %11, align 4
  %790 = and i32 %789, 4
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %797

792:                                              ; preds = %788
  %793 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %794 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %793, i32 0, i32 0
  %795 = load i32, i32* %794, align 4
  %796 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %795)
  br label %797

797:                                              ; preds = %792, %788
  %798 = load i32, i32* %11, align 4
  %799 = and i32 %798, 8
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %801, label %806

801:                                              ; preds = %797
  %802 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %803 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 4
  %805 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.3, i64 0, i64 0), i32 %804)
  br label %806

806:                                              ; preds = %801, %797
  %807 = load i32, i32* %11, align 4
  %808 = and i32 %807, 16
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %820

810:                                              ; preds = %806
  %811 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %812 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 4
  %814 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %815 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %814, i32 0, i32 0
  %816 = load i32, i32* %815, align 4
  %817 = sdiv i32 %816, 2
  %818 = sub nsw i32 %817, 1
  %819 = call i32 (i8*, i32, ...) @DPRINTK(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %813, i32 %818)
  br label %820

820:                                              ; preds = %810, %806
  %821 = load i32, i32* %11, align 4
  %822 = and i32 %821, 32
  %823 = icmp ne i32 %822, 0
  br i1 %823, label %824, label %832

824:                                              ; preds = %820
  %825 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %826 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %825, i32 0, i32 0
  %827 = load i32, i32* %826, align 4
  %828 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %829 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %828, i32 0, i32 0
  %830 = load i32, i32* %829, align 4
  %831 = call i32 @printk(i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.5, i64 0, i64 0), i32 %827, i32 %830)
  br label %832

832:                                              ; preds = %824, %820
  br label %833

833:                                              ; preds = %832, %765
  br label %834

834:                                              ; preds = %833, %595, %590
  %835 = load i32, i32* %8, align 4
  %836 = icmp ne i32 %835, 0
  br i1 %836, label %837, label %838

837:                                              ; preds = %834
  store i32 5, i32* %4, align 4
  br label %839

838:                                              ; preds = %834
  store i32 0, i32* %4, align 4
  br label %839

839:                                              ; preds = %838, %837, %589, %520, %253, %169
  %840 = load i32, i32* %4, align 4
  ret i32 %840
}

declare dso_local i32 @CR_AREF(i64) #1

declare dso_local i8* @COMBINE(i32, i32, i32) #1

declare dso_local i32 @pci230_ai_check_scan_period(%struct.comedi_cmd*) #1

declare dso_local i32 @pci230_ns_to_single_timer(i32*, i32) #1

declare dso_local i32 @CR_CHAN(i64) #1

declare dso_local i32 @CR_RANGE(i64) #1

declare dso_local i32 @DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
