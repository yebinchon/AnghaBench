; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_OTHER = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_cmdtest(%struct.ni_gpct* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @TRIG_NOW, align 4
  %13 = load i32, i32* @TRIG_INT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TRIG_OTHER, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %18 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ni_tio_counting_mode_registers_present(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @TRIG_EXT, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %26
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @TRIG_FOLLOW, align 4
  %50 = load i32, i32* @TRIG_EXT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @TRIG_OTHER, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %45
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @TRIG_NOW, align 4
  %76 = load i32, i32* @TRIG_EXT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @TRIG_OTHER, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %71
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89, %71
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %89
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @TRIG_COUNT, align 4
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %108 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %98
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111, %98
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %117, %111
  %121 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %122 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* @TRIG_NONE, align 4
  %125 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %126 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %120
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133, %120
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %139, %133
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  br label %336

146:                                              ; preds = %142
  %147 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %148 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TRIG_NOW, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %146
  %153 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %154 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @TRIG_INT, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %152
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @TRIG_EXT, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @TRIG_OTHER, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %170, %164, %158, %152, %146
  %174 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %175 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @TRIG_FOLLOW, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %173
  %180 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %181 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @TRIG_EXT, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %187 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @TRIG_OTHER, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %191, %185, %179, %173
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @TRIG_OTHER, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %194
  %201 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %202 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @TRIG_EXT, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %200
  %207 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %208 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @TRIG_NOW, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %212, %206, %200, %194
  %216 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %217 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @TRIG_NONE, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %221, %215
  %225 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %226 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @TRIG_NOW, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %239

230:                                              ; preds = %224
  %231 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %232 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @TRIG_FOLLOW, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %230
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %239

239:                                              ; preds = %236, %230, %224
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 2, i32* %3, align 4
  br label %336

243:                                              ; preds = %239
  %244 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %245 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @TRIG_EXT, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %260

249:                                              ; preds = %243
  %250 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %251 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %250, i32 0, i32 5
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %256 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %255, i32 0, i32 5
  store i64 0, i64* %256, align 8
  %257 = load i32, i32* %6, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %6, align 4
  br label %259

259:                                              ; preds = %254, %249
  br label %260

260:                                              ; preds = %259, %243
  %261 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %262 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @TRIG_EXT, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %277

266:                                              ; preds = %260
  %267 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %268 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %267, i32 0, i32 10
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %273 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %272, i32 0, i32 10
  store i64 0, i64* %273, align 8
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %6, align 4
  br label %276

276:                                              ; preds = %271, %266
  br label %277

277:                                              ; preds = %276, %260
  %278 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %279 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @TRIG_EXT, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %294

283:                                              ; preds = %277
  %284 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %285 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %284, i32 0, i32 9
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %290 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %289, i32 0, i32 9
  store i64 0, i64* %290, align 8
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %6, align 4
  br label %293

293:                                              ; preds = %288, %283
  br label %294

294:                                              ; preds = %293, %277
  %295 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %296 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %295, i32 0, i32 6
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %299 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %298, i32 0, i32 7
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %297, %300
  br i1 %301, label %302, label %310

302:                                              ; preds = %294
  %303 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %304 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %303, i32 0, i32 7
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %307 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %306, i32 0, i32 6
  store i64 %305, i64* %307, align 8
  %308 = load i32, i32* %6, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %6, align 4
  br label %310

310:                                              ; preds = %302, %294
  %311 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %312 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @TRIG_NONE, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %316, label %327

316:                                              ; preds = %310
  %317 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %318 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %317, i32 0, i32 8
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %323 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %322, i32 0, i32 8
  store i64 0, i64* %323, align 8
  %324 = load i32, i32* %6, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %6, align 4
  br label %326

326:                                              ; preds = %321, %316
  br label %327

327:                                              ; preds = %326, %310
  %328 = load i32, i32* %6, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  store i32 3, i32* %3, align 4
  br label %336

331:                                              ; preds = %327
  %332 = load i32, i32* %6, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %331
  store i32 4, i32* %3, align 4
  br label %336

335:                                              ; preds = %331
  store i32 0, i32* %3, align 4
  br label %336

336:                                              ; preds = %335, %334, %330, %242, %145
  %337 = load i32, i32* %3, align 4
  ret i32 %337
}

declare dso_local i64 @ni_tio_counting_mode_registers_present(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
