; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_labpc.c_labpc_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_2__* null, align 8
@labpc_1200_layout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @labpc_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @TRIG_NOW, align 4
  %16 = load i32, i32* @TRIG_EXT, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %3
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @TRIG_TIMER, align 4
  %40 = load i32, i32* @TRIG_FOLLOW, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TRIG_EXT, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %35
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %35
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @TRIG_TIMER, align 4
  %66 = load i32, i32* @TRIG_EXT, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %61
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %61
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %76
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %9, align 4
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 129
  store i32 %92, i32* %90, align 4
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %85
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97, %85
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %97
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %9, align 4
  store i32 129, i32* %11, align 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @labpc_1200_layout, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = load i32, i32* @TRIG_EXT, align 4
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %115, %106
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %126 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %130, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129, %119
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %135, %129
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 1, i32* %4, align 4
  br label %421

142:                                              ; preds = %138
  %143 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %144 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @TRIG_NOW, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %150 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TRIG_EXT, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %154, %148, %142
  %158 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TRIG_TIMER, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %178

163:                                              ; preds = %157
  %164 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %165 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @TRIG_FOLLOW, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %163
  %170 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %171 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @TRIG_EXT, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %175, %169, %163, %157
  %179 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %180 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @TRIG_TIMER, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %178
  %185 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %186 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @TRIG_EXT, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %190, %184, %178
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 129
  br i1 %197, label %198, label %212

198:                                              ; preds = %193
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @TRIG_EXT, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %198
  %205 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %206 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 128
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %209, %204, %198, %193
  %213 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %214 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @TRIG_EXT, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %212
  %219 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %220 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @TRIG_EXT, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %224, %218, %212
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  store i32 2, i32* %4, align 4
  br label %421

231:                                              ; preds = %227
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @TRIG_NOW, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %247

237:                                              ; preds = %231
  %238 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %239 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %244 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %243, i32 0, i32 5
  store i32 0, i32* %244, align 4
  %245 = load i32, i32* %8, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %8, align 4
  br label %247

247:                                              ; preds = %242, %237, %231
  %248 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %249 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %247
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %8, align 4
  br label %255

255:                                              ; preds = %252, %247
  %256 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %257 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %260 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %258, %261
  br i1 %262, label %263, label %271

263:                                              ; preds = %255
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %265 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %268 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %267, i32 0, i32 7
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %8, align 4
  br label %271

271:                                              ; preds = %263, %255
  %272 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %273 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @TRIG_TIMER, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %294

277:                                              ; preds = %271
  %278 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %279 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %293

285:                                              ; preds = %277
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %290 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %289, i32 0, i32 8
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* %8, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %8, align 4
  br label %293

293:                                              ; preds = %285, %277
  br label %294

294:                                              ; preds = %293, %271
  %295 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %296 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @TRIG_TIMER, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %355

300:                                              ; preds = %294
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @TRIG_TIMER, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %330

306:                                              ; preds = %300
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 9
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %311 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %314 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %313, i32 0, i32 6
  %315 = load i32, i32* %314, align 4
  %316 = mul nsw i32 %312, %315
  %317 = icmp slt i32 %309, %316
  br i1 %317, label %318, label %330

318:                                              ; preds = %306
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 8
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %323 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 4
  %325 = mul nsw i32 %321, %324
  %326 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %327 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %326, i32 0, i32 9
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* %8, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %8, align 4
  br label %330

330:                                              ; preds = %318, %306, %300
  %331 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %332 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %331, i32 0, i32 9
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %338 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 4
  %340 = mul nsw i32 %336, %339
  %341 = icmp slt i32 %333, %340
  br i1 %341, label %342, label %354

342:                                              ; preds = %330
  %343 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %347 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 4
  %349 = mul nsw i32 %345, %348
  %350 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %351 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %350, i32 0, i32 9
  store i32 %349, i32* %351, align 4
  %352 = load i32, i32* %8, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %8, align 4
  br label %354

354:                                              ; preds = %342, %330
  br label %355

355:                                              ; preds = %354, %294
  %356 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %357 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 4
  switch i32 %358, label %381 [
    i32 129, label %359
    i32 128, label %370
  ]

359:                                              ; preds = %355
  %360 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %361 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %360, i32 0, i32 10
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %369, label %364

364:                                              ; preds = %359
  %365 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %366 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %365, i32 0, i32 10
  store i32 1, i32* %366, align 4
  %367 = load i32, i32* %8, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %8, align 4
  br label %369

369:                                              ; preds = %364, %359
  br label %382

370:                                              ; preds = %355
  %371 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %372 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %371, i32 0, i32 10
  %373 = load i32, i32* %372, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %370
  %376 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %377 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %376, i32 0, i32 10
  store i32 0, i32* %377, align 4
  %378 = load i32, i32* %8, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %8, align 4
  br label %380

380:                                              ; preds = %375, %370
  br label %382

381:                                              ; preds = %355
  br label %382

382:                                              ; preds = %381, %380, %369
  %383 = load i32, i32* %8, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %382
  store i32 3, i32* %4, align 4
  br label %421

386:                                              ; preds = %382
  %387 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %388 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %387, i32 0, i32 8
  %389 = load i32, i32* %388, align 4
  store i32 %389, i32* %9, align 4
  %390 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %391 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %390, i32 0, i32 9
  %392 = load i32, i32* %391, align 4
  store i32 %392, i32* %10, align 4
  %393 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %394 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %395 = call i32 @labpc_adc_timing(%struct.comedi_device* %393, %struct.comedi_cmd* %394)
  %396 = load i32, i32* %9, align 4
  %397 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %398 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %397, i32 0, i32 8
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %396, %399
  br i1 %400, label %407, label %401

401:                                              ; preds = %386
  %402 = load i32, i32* %10, align 4
  %403 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %404 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %403, i32 0, i32 9
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %402, %405
  br i1 %406, label %407, label %410

407:                                              ; preds = %401, %386
  %408 = load i32, i32* %8, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %8, align 4
  br label %410

410:                                              ; preds = %407, %401
  %411 = load i32, i32* %8, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  store i32 4, i32* %4, align 4
  br label %421

414:                                              ; preds = %410
  %415 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %416 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %417 = call i64 @labpc_ai_chanlist_invalid(%struct.comedi_device* %415, %struct.comedi_cmd* %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %414
  store i32 5, i32* %4, align 4
  br label %421

420:                                              ; preds = %414
  store i32 0, i32* %4, align 4
  br label %421

421:                                              ; preds = %420, %419, %413, %385, %230, %141
  %422 = load i32, i32* %4, align 4
  ret i32 %422
}

declare dso_local i32 @labpc_adc_timing(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i64 @labpc_ai_chanlist_invalid(%struct.comedi_device*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
