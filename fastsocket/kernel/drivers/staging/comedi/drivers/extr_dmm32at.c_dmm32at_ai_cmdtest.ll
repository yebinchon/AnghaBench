; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dmm32at.c_dmm32at_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32* }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"entries in chanlist must be consecutive channels, counting upwards\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"entries in chanlist must all have the same gain\0A\00", align 1
@MAX_SCAN_SPEED = common dso_local global i32 0, align 4
@MIN_SCAN_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @dmm32at_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm32at_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @TRIG_NOW, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %3
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @TRIG_TIMER, align 4
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %34
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @TRIG_TIMER, align 4
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %56
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @TRIG_COUNT, align 4
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %78
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97, %91
  %101 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @TRIG_COUNT, align 4
  %105 = load i32, i32* @TRIG_NONE, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %100
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %118 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %116, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115, %100
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %121, %115
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 1, i32* %4, align 4
  br label %490

128:                                              ; preds = %124
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @TRIG_TIMER, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @TRIG_EXT, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %140, %134, %128
  %144 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TRIG_TIMER, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @TRIG_EXT, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %155, %149, %143
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @TRIG_COUNT, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @TRIG_NONE, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %170, %164, %158
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 2, i32* %4, align 4
  br label %490

177:                                              ; preds = %173
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %184 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %183, i32 0, i32 5
  store i64 0, i64* %184, align 8
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %182, %177
  %188 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %189 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @TRIG_TIMER, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %187
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %196, 1000000
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 6
  store i32 1000000, i32* %200, align 8
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = icmp sgt i32 %206, 1000000000
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %210 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %209, i32 0, i32 6
  store i32 1000000000, i32* %210, align 8
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %208, %203
  br label %225

214:                                              ; preds = %187
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = icmp sgt i32 %217, 9
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %220, i32 0, i32 6
  store i32 9, i32* %221, align 8
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %219, %214
  br label %225

225:                                              ; preds = %224, %213
  %226 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %227 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @TRIG_TIMER, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %261

231:                                              ; preds = %225
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 4
  %235 = icmp sge i32 %234, 17500
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %238 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %237, i32 0, i32 7
  store i32 20000, i32* %238, align 4
  br label %260

239:                                              ; preds = %231
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %241 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = icmp sge i32 %242, 12500
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %246 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %245, i32 0, i32 7
  store i32 15000, i32* %246, align 4
  br label %259

247:                                              ; preds = %239
  %248 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %249 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 4
  %251 = icmp sge i32 %250, 7500
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %254 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %253, i32 0, i32 7
  store i32 10000, i32* %254, align 4
  br label %258

255:                                              ; preds = %247
  %256 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %257 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %256, i32 0, i32 7
  store i32 5000, i32* %257, align 4
  br label %258

258:                                              ; preds = %255, %252
  br label %259

259:                                              ; preds = %258, %244
  br label %260

260:                                              ; preds = %259, %236
  br label %272

261:                                              ; preds = %225
  %262 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %263 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %262, i32 0, i32 7
  %264 = load i32, i32* %263, align 4
  %265 = icmp sgt i32 %264, 9
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %268 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %267, i32 0, i32 7
  store i32 9, i32* %268, align 4
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %271

271:                                              ; preds = %266, %261
  br label %272

272:                                              ; preds = %271, %260
  %273 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %274 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %277 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %276, i32 0, i32 9
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %275, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %272
  %281 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %282 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %285 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %284, i32 0, i32 8
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %280, %272
  %289 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %290 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @TRIG_COUNT, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %315

294:                                              ; preds = %288
  %295 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %296 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %295, i32 0, i32 10
  %297 = load i32, i32* %296, align 8
  %298 = icmp ugt i32 %297, -16
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  %300 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %301 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %300, i32 0, i32 10
  store i32 -16, i32* %301, align 8
  %302 = load i32, i32* %8, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %8, align 4
  br label %304

304:                                              ; preds = %299, %294
  %305 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %306 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %305, i32 0, i32 10
  %307 = load i32, i32* %306, align 8
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %311 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %310, i32 0, i32 10
  store i32 1, i32* %311, align 8
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %8, align 4
  br label %314

314:                                              ; preds = %309, %304
  br label %326

315:                                              ; preds = %288
  %316 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %317 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %316, i32 0, i32 10
  %318 = load i32, i32* %317, align 8
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %322 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %321, i32 0, i32 10
  store i32 0, i32* %322, align 8
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %8, align 4
  br label %325

325:                                              ; preds = %320, %315
  br label %326

326:                                              ; preds = %325, %314
  %327 = load i32, i32* %8, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  store i32 3, i32* %4, align 4
  br label %490

330:                                              ; preds = %326
  %331 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %332 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @TRIG_TIMER, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %357

336:                                              ; preds = %330
  %337 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %338 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 8
  store i32 %339, i32* %9, align 4
  %340 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %341 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %340, i32 0, i32 6
  %342 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %343 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %342, i32 0, i32 11
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %346 = and i32 %344, %345
  %347 = call i32 @dmm32at_ns_to_timer(i32* %341, i32 %346)
  %348 = load i32, i32* %9, align 4
  %349 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %350 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %349, i32 0, i32 6
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %348, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %336
  %354 = load i32, i32* %8, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %8, align 4
  br label %356

356:                                              ; preds = %353, %336
  br label %357

357:                                              ; preds = %356, %330
  %358 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %359 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @TRIG_TIMER, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %414

363:                                              ; preds = %357
  %364 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %365 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %364, i32 0, i32 7
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %9, align 4
  %367 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %368 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %367, i32 0, i32 7
  %369 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %370 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %369, i32 0, i32 11
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %373 = and i32 %371, %372
  %374 = call i32 @dmm32at_ns_to_timer(i32* %368, i32 %373)
  %375 = load i32, i32* %9, align 4
  %376 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %377 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %376, i32 0, i32 7
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %375, %378
  br i1 %379, label %380, label %383

380:                                              ; preds = %363
  %381 = load i32, i32* %8, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %8, align 4
  br label %383

383:                                              ; preds = %380, %363
  %384 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %385 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @TRIG_TIMER, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %413

389:                                              ; preds = %383
  %390 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %391 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %394 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %393, i32 0, i32 7
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %397 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %396, i32 0, i32 8
  %398 = load i32, i32* %397, align 8
  %399 = mul nsw i32 %395, %398
  %400 = icmp slt i32 %392, %399
  br i1 %400, label %401, label %413

401:                                              ; preds = %389
  %402 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %403 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %402, i32 0, i32 7
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %406 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %405, i32 0, i32 8
  %407 = load i32, i32* %406, align 8
  %408 = mul nsw i32 %404, %407
  %409 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %410 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %409, i32 0, i32 6
  store i32 %408, i32* %410, align 8
  %411 = load i32, i32* %8, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %8, align 4
  br label %413

413:                                              ; preds = %401, %389, %383
  br label %414

414:                                              ; preds = %413, %357
  %415 = load i32, i32* %8, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %414
  store i32 4, i32* %4, align 4
  br label %490

418:                                              ; preds = %414
  %419 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %420 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %419, i32 0, i32 12
  %421 = load i32*, i32** %420, align 8
  %422 = icmp ne i32* %421, null
  br i1 %422, label %423, label %485

423:                                              ; preds = %418
  %424 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %425 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %424, i32 0, i32 12
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 0
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @CR_RANGE(i32 %428)
  store i32 %429, i32* %11, align 4
  %430 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %431 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %430, i32 0, i32 12
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 0
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @CR_CHAN(i32 %434)
  store i32 %435, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %436

436:                                              ; preds = %481, %423
  %437 = load i32, i32* %12, align 4
  %438 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %439 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %438, i32 0, i32 9
  %440 = load i32, i32* %439, align 4
  %441 = icmp slt i32 %437, %440
  br i1 %441, label %442, label %484

442:                                              ; preds = %436
  %443 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %444 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %443, i32 0, i32 12
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %12, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @CR_CHAN(i32 %449)
  %451 = load i32, i32* %10, align 4
  %452 = load i32, i32* %12, align 4
  %453 = add nsw i32 %451, %452
  %454 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %455 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = srem i32 %453, %456
  %458 = icmp ne i32 %450, %457
  br i1 %458, label %459, label %464

459:                                              ; preds = %442
  %460 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %461 = call i32 @comedi_error(%struct.comedi_device* %460, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %462 = load i32, i32* %8, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %8, align 4
  br label %464

464:                                              ; preds = %459, %442
  %465 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %466 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %465, i32 0, i32 12
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %12, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = call i32 @CR_RANGE(i32 %471)
  %473 = load i32, i32* %11, align 4
  %474 = icmp ne i32 %472, %473
  br i1 %474, label %475, label %480

475:                                              ; preds = %464
  %476 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %477 = call i32 @comedi_error(%struct.comedi_device* %476, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %478 = load i32, i32* %8, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %8, align 4
  br label %480

480:                                              ; preds = %475, %464
  br label %481

481:                                              ; preds = %480
  %482 = load i32, i32* %12, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %12, align 4
  br label %436

484:                                              ; preds = %436
  br label %485

485:                                              ; preds = %484, %418
  %486 = load i32, i32* %8, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %489

488:                                              ; preds = %485
  store i32 5, i32* %4, align 4
  br label %490

489:                                              ; preds = %485
  store i32 0, i32* %4, align 4
  br label %490

490:                                              ; preds = %489, %488, %417, %329, %176, %127
  %491 = load i32, i32* %4, align 4
  ret i32 %491
}

declare dso_local i32 @dmm32at_ns_to_timer(i32*, i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
