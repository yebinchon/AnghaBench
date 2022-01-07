; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CMDF_WRITE = common dso_local global i32 0, align 4
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ni_reg_611x = common dso_local global i64 0, align 8
@ni_reg_6143 = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@TRIG_OTHER = common dso_local global i32 0, align 4
@CR_INVERT = common dso_local global i32 0, align 4
@CR_EDGE = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@CR_ALT_FILTER = common dso_local global i32 0, align 4
@num_adc_stages_611x = common dso_local global i64 0, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @ni_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
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
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CMDF_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* @CMDF_WRITE, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %3
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @TRIG_NOW, align 4
  %33 = load i32, i32* @TRIG_INT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @TRIG_EXT, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %42 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %28
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @TRIG_TIMER, align 4
  %59 = load i32, i32* @TRIG_EXT, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %54
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @TRIG_TIMER, align 4
  %83 = load i32, i32* @TRIG_EXT, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %10, align 4
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %86 = load i64, i64* @ni_reg_611x, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %78
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %90 = load i64, i64* @ni_reg_6143, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88, %78
  %93 = load i32, i32* @TRIG_NOW, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %99 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106, %96
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %112, %106
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* @TRIG_COUNT, align 4
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %125 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %115
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128, %115
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %134, %128
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* @TRIG_COUNT, align 4
  %142 = load i32, i32* @TRIG_NONE, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %137
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %152, %137
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %158, %152
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 1, i32* %4, align 4
  br label %681

165:                                              ; preds = %161
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @TRIG_NOW, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %186

171:                                              ; preds = %165
  %172 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @TRIG_INT, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %171
  %178 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %179 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @TRIG_EXT, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %183, %177, %171, %165
  %187 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %188 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @TRIG_TIMER, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %207

192:                                              ; preds = %186
  %193 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %194 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @TRIG_EXT, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %192
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @TRIG_OTHER, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %207

207:                                              ; preds = %204, %198, %192, %186
  %208 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %209 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @TRIG_TIMER, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %207
  %214 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %215 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @TRIG_EXT, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %228

219:                                              ; preds = %213
  %220 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @TRIG_NOW, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %225, %219, %213, %207
  %229 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %230 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @TRIG_COUNT, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %243

234:                                              ; preds = %228
  %235 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %236 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @TRIG_NONE, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %240, %234, %228
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  store i32 2, i32* %4, align 4
  br label %681

247:                                              ; preds = %243
  %248 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %249 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @TRIG_EXT, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %283

253:                                              ; preds = %247
  %254 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %255 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @CR_CHAN(i32 %256)
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %11, align 4
  %259 = icmp ugt i32 %258, 16
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  store i32 16, i32* %11, align 4
  br label %261

261:                                              ; preds = %260, %253
  %262 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %263 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @CR_INVERT, align 4
  %266 = load i32, i32* @CR_EDGE, align 4
  %267 = or i32 %265, %266
  %268 = and i32 %264, %267
  %269 = load i32, i32* %11, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %11, align 4
  %271 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %272 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %11, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %261
  %277 = load i32, i32* %11, align 4
  %278 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %279 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %278, i32 0, i32 6
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* %8, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %8, align 4
  br label %282

282:                                              ; preds = %276, %261
  br label %294

283:                                              ; preds = %247
  %284 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %285 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %290 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %289, i32 0, i32 6
  store i32 0, i32* %290, align 4
  %291 = load i32, i32* %8, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %8, align 4
  br label %293

293:                                              ; preds = %288, %283
  br label %294

294:                                              ; preds = %293, %282
  %295 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %296 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @TRIG_TIMER, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %339

300:                                              ; preds = %294
  %301 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %302 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %301, i32 0, i32 7
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %305 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %306 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %305, i32 0, i32 8
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @ni_min_ai_scan_period_ns(%struct.comedi_device* %304, i32 %307)
  %309 = icmp slt i32 %303, %308
  br i1 %309, label %310, label %320

310:                                              ; preds = %300
  %311 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %312 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %313 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %312, i32 0, i32 8
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @ni_min_ai_scan_period_ns(%struct.comedi_device* %311, i32 %314)
  %316 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %317 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %316, i32 0, i32 7
  store i32 %315, i32* %317, align 4
  %318 = load i32, i32* %8, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %8, align 4
  br label %320

320:                                              ; preds = %310, %300
  %321 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %322 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %321, i32 0, i32 7
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 %326, 16777215
  %328 = icmp sgt i32 %323, %327
  br i1 %328, label %329, label %338

329:                                              ; preds = %320
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = mul nsw i32 %332, 16777215
  %334 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %335 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %334, i32 0, i32 7
  store i32 %333, i32* %335, align 4
  %336 = load i32, i32* %8, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %8, align 4
  br label %338

338:                                              ; preds = %329, %320
  br label %387

339:                                              ; preds = %294
  %340 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %341 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @TRIG_EXT, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %375

345:                                              ; preds = %339
  %346 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %347 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %346, i32 0, i32 7
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @CR_CHAN(i32 %348)
  store i32 %349, i32* %12, align 4
  %350 = load i32, i32* %12, align 4
  %351 = icmp ugt i32 %350, 16
  br i1 %351, label %352, label %353

352:                                              ; preds = %345
  store i32 16, i32* %12, align 4
  br label %353

353:                                              ; preds = %352, %345
  %354 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %355 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @CR_INVERT, align 4
  %358 = load i32, i32* @CR_EDGE, align 4
  %359 = or i32 %357, %358
  %360 = and i32 %356, %359
  %361 = load i32, i32* %12, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %12, align 4
  %363 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %364 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %12, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %374

368:                                              ; preds = %353
  %369 = load i32, i32* %12, align 4
  %370 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %371 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %370, i32 0, i32 7
  store i32 %369, i32* %371, align 4
  %372 = load i32, i32* %8, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %8, align 4
  br label %374

374:                                              ; preds = %368, %353
  br label %386

375:                                              ; preds = %339
  %376 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %377 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %376, i32 0, i32 7
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %375
  %381 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %382 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %381, i32 0, i32 7
  store i32 0, i32* %382, align 4
  %383 = load i32, i32* %8, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %8, align 4
  br label %385

385:                                              ; preds = %380, %375
  br label %386

386:                                              ; preds = %385, %374
  br label %387

387:                                              ; preds = %386, %338
  %388 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %389 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @TRIG_TIMER, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %444

393:                                              ; preds = %387
  %394 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %395 = load i64, i64* @ni_reg_611x, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %401, label %397

397:                                              ; preds = %393
  %398 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %399 = load i64, i64* @ni_reg_6143, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %412

401:                                              ; preds = %397, %393
  %402 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %403 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %402, i32 0, i32 9
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %401
  %407 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %408 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %407, i32 0, i32 9
  store i32 0, i32* %408, align 4
  %409 = load i32, i32* %8, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %8, align 4
  br label %411

411:                                              ; preds = %406, %401
  br label %443

412:                                              ; preds = %397
  %413 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %414 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %413, i32 0, i32 9
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 1), align 8
  %417 = icmp slt i32 %415, %416
  br i1 %417, label %418, label %424

418:                                              ; preds = %412
  %419 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 1), align 8
  %420 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %421 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %420, i32 0, i32 9
  store i32 %419, i32* %421, align 4
  %422 = load i32, i32* %8, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %8, align 4
  br label %424

424:                                              ; preds = %418, %412
  %425 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %426 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %425, i32 0, i32 9
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = mul nsw i32 %430, 65535
  %432 = icmp sgt i32 %427, %431
  br i1 %432, label %433, label %442

433:                                              ; preds = %424
  %434 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = mul nsw i32 %436, 65535
  %438 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %439 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %438, i32 0, i32 9
  store i32 %437, i32* %439, align 4
  %440 = load i32, i32* %8, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %8, align 4
  br label %442

442:                                              ; preds = %433, %424
  br label %443

443:                                              ; preds = %442, %411
  br label %499

444:                                              ; preds = %387
  %445 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %446 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @TRIG_EXT, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %480

450:                                              ; preds = %444
  %451 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %452 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %451, i32 0, i32 9
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @CR_CHAN(i32 %453)
  store i32 %454, i32* %13, align 4
  %455 = load i32, i32* %13, align 4
  %456 = icmp ugt i32 %455, 16
  br i1 %456, label %457, label %458

457:                                              ; preds = %450
  store i32 16, i32* %13, align 4
  br label %458

458:                                              ; preds = %457, %450
  %459 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %460 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %459, i32 0, i32 9
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @CR_ALT_FILTER, align 4
  %463 = load i32, i32* @CR_INVERT, align 4
  %464 = or i32 %462, %463
  %465 = and i32 %461, %464
  %466 = load i32, i32* %13, align 4
  %467 = or i32 %466, %465
  store i32 %467, i32* %13, align 4
  %468 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %469 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %468, i32 0, i32 9
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* %13, align 4
  %472 = icmp ne i32 %470, %471
  br i1 %472, label %473, label %479

473:                                              ; preds = %458
  %474 = load i32, i32* %13, align 4
  %475 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %476 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %475, i32 0, i32 9
  store i32 %474, i32* %476, align 4
  %477 = load i32, i32* %8, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %8, align 4
  br label %479

479:                                              ; preds = %473, %458
  br label %498

480:                                              ; preds = %444
  %481 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %482 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @TRIG_NOW, align 4
  %485 = icmp eq i32 %483, %484
  br i1 %485, label %486, label %497

486:                                              ; preds = %480
  %487 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %488 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %487, i32 0, i32 9
  %489 = load i32, i32* %488, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %496

491:                                              ; preds = %486
  %492 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %493 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %492, i32 0, i32 9
  store i32 0, i32* %493, align 4
  %494 = load i32, i32* %8, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %8, align 4
  br label %496

496:                                              ; preds = %491, %486
  br label %497

497:                                              ; preds = %496, %480
  br label %498

498:                                              ; preds = %497, %479
  br label %499

499:                                              ; preds = %498, %443
  %500 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %501 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %500, i32 0, i32 10
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %504 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %503, i32 0, i32 8
  %505 = load i32, i32* %504, align 4
  %506 = icmp ne i32 %502, %505
  br i1 %506, label %507, label %515

507:                                              ; preds = %499
  %508 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %509 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %508, i32 0, i32 8
  %510 = load i32, i32* %509, align 4
  %511 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %512 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %511, i32 0, i32 10
  store i32 %510, i32* %512, align 4
  %513 = load i32, i32* %8, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %8, align 4
  br label %515

515:                                              ; preds = %507, %499
  %516 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %517 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* @TRIG_COUNT, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %554

521:                                              ; preds = %515
  store i32 16777216, i32* %14, align 4
  %522 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %523 = load i64, i64* @ni_reg_611x, align 8
  %524 = icmp eq i64 %522, %523
  br i1 %524, label %525, label %531

525:                                              ; preds = %521
  %526 = load i64, i64* @num_adc_stages_611x, align 8
  %527 = load i32, i32* %14, align 4
  %528 = zext i32 %527 to i64
  %529 = sub nsw i64 %528, %526
  %530 = trunc i64 %529 to i32
  store i32 %530, i32* %14, align 4
  br label %531

531:                                              ; preds = %525, %521
  %532 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %533 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %532, i32 0, i32 11
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* %14, align 4
  %536 = icmp ugt i32 %534, %535
  br i1 %536, label %537, label %543

537:                                              ; preds = %531
  %538 = load i32, i32* %14, align 4
  %539 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %540 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %539, i32 0, i32 11
  store i32 %538, i32* %540, align 4
  %541 = load i32, i32* %8, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %8, align 4
  br label %543

543:                                              ; preds = %537, %531
  %544 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %545 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %544, i32 0, i32 11
  %546 = load i32, i32* %545, align 4
  %547 = icmp ult i32 %546, 1
  br i1 %547, label %548, label %553

548:                                              ; preds = %543
  %549 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %550 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %549, i32 0, i32 11
  store i32 1, i32* %550, align 4
  %551 = load i32, i32* %8, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %8, align 4
  br label %553

553:                                              ; preds = %548, %543
  br label %565

554:                                              ; preds = %515
  %555 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %556 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %555, i32 0, i32 11
  %557 = load i32, i32* %556, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %564

559:                                              ; preds = %554
  %560 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %561 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %560, i32 0, i32 11
  store i32 0, i32* %561, align 4
  %562 = load i32, i32* %8, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %8, align 4
  br label %564

564:                                              ; preds = %559, %554
  br label %565

565:                                              ; preds = %564, %553
  %566 = load i32, i32* %8, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %569

568:                                              ; preds = %565
  store i32 3, i32* %4, align 4
  br label %681

569:                                              ; preds = %565
  %570 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %571 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* @TRIG_TIMER, align 4
  %574 = icmp eq i32 %572, %573
  br i1 %574, label %575, label %603

575:                                              ; preds = %569
  %576 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %577 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %576, i32 0, i32 7
  %578 = load i32, i32* %577, align 4
  store i32 %578, i32* %9, align 4
  %579 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %580 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %581 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %582 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %581, i32 0, i32 7
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %585 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 4
  %587 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %588 = and i32 %586, %587
  %589 = call i32 @ni_ns_to_timer(%struct.comedi_device* %580, i32 %583, i32 %588)
  %590 = call i8* @ni_timer_to_ns(%struct.comedi_device* %579, i32 %589)
  %591 = ptrtoint i8* %590 to i32
  %592 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %593 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %592, i32 0, i32 7
  store i32 %591, i32* %593, align 4
  %594 = load i32, i32* %9, align 4
  %595 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %596 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %595, i32 0, i32 7
  %597 = load i32, i32* %596, align 4
  %598 = icmp ne i32 %594, %597
  br i1 %598, label %599, label %602

599:                                              ; preds = %575
  %600 = load i32, i32* %8, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %8, align 4
  br label %602

602:                                              ; preds = %599, %575
  br label %603

603:                                              ; preds = %602, %569
  %604 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %605 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %604, i32 0, i32 3
  %606 = load i32, i32* %605, align 4
  %607 = load i32, i32* @TRIG_TIMER, align 4
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %676

609:                                              ; preds = %603
  %610 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %611 = load i64, i64* @ni_reg_611x, align 8
  %612 = icmp ne i64 %610, %611
  br i1 %612, label %613, label %675

613:                                              ; preds = %609
  %614 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %615 = load i64, i64* @ni_reg_6143, align 8
  %616 = icmp ne i64 %614, %615
  br i1 %616, label %617, label %675

617:                                              ; preds = %613
  %618 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %619 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %618, i32 0, i32 9
  %620 = load i32, i32* %619, align 4
  store i32 %620, i32* %9, align 4
  %621 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %622 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %623 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %624 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %623, i32 0, i32 9
  %625 = load i32, i32* %624, align 4
  %626 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %627 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 4
  %629 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %630 = and i32 %628, %629
  %631 = call i32 @ni_ns_to_timer(%struct.comedi_device* %622, i32 %625, i32 %630)
  %632 = call i8* @ni_timer_to_ns(%struct.comedi_device* %621, i32 %631)
  %633 = ptrtoint i8* %632 to i32
  %634 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %635 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %634, i32 0, i32 9
  store i32 %633, i32* %635, align 4
  %636 = load i32, i32* %9, align 4
  %637 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %638 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %637, i32 0, i32 9
  %639 = load i32, i32* %638, align 4
  %640 = icmp ne i32 %636, %639
  br i1 %640, label %641, label %644

641:                                              ; preds = %617
  %642 = load i32, i32* %8, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %8, align 4
  br label %644

644:                                              ; preds = %641, %617
  %645 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %646 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %645, i32 0, i32 2
  %647 = load i32, i32* %646, align 4
  %648 = load i32, i32* @TRIG_TIMER, align 4
  %649 = icmp eq i32 %647, %648
  br i1 %649, label %650, label %674

650:                                              ; preds = %644
  %651 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %652 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %651, i32 0, i32 7
  %653 = load i32, i32* %652, align 4
  %654 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %655 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %654, i32 0, i32 9
  %656 = load i32, i32* %655, align 4
  %657 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %658 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %657, i32 0, i32 10
  %659 = load i32, i32* %658, align 4
  %660 = mul nsw i32 %656, %659
  %661 = icmp slt i32 %653, %660
  br i1 %661, label %662, label %674

662:                                              ; preds = %650
  %663 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %664 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %663, i32 0, i32 9
  %665 = load i32, i32* %664, align 4
  %666 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %667 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %666, i32 0, i32 10
  %668 = load i32, i32* %667, align 4
  %669 = mul nsw i32 %665, %668
  %670 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %671 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %670, i32 0, i32 7
  store i32 %669, i32* %671, align 4
  %672 = load i32, i32* %8, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %8, align 4
  br label %674

674:                                              ; preds = %662, %650, %644
  br label %675

675:                                              ; preds = %674, %613, %609
  br label %676

676:                                              ; preds = %675, %603
  %677 = load i32, i32* %8, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %680

679:                                              ; preds = %676
  store i32 4, i32* %4, align 4
  br label %681

680:                                              ; preds = %676
  store i32 0, i32* %4, align 4
  br label %681

681:                                              ; preds = %680, %679, %568, %246, %164
  %682 = load i32, i32* %4, align 4
  ret i32 %682
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @ni_min_ai_scan_period_ns(%struct.comedi_device*, i32) #1

declare dso_local i8* @ni_timer_to_ns(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_ns_to_timer(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
