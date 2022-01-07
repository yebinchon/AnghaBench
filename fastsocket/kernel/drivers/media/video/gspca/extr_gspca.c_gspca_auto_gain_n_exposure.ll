; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_gspca_auto_gain_n_exposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_gspca_auto_gain_n_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.ctrl* }
%struct.ctrl = type { i32 (%struct.gspca_dev*, i32)*, %struct.TYPE_4__, i64 (%struct.gspca_dev*, i32*)* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@V4L2_CID_GAIN = common dso_local global i64 0, align 8
@V4L2_CID_EXPOSURE = common dso_local global i64 0, align 8
@V4L2_CID_AUTOGAIN = common dso_local global i64 0, align 8
@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Error: gspca_auto_gain_n_exposure called on cam without (auto)gain/exposure\00", align 1
@D_FRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"autogain: lum: %d, desired: %d, steps: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gspca_auto_gain_n_exposure(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gspca_dev*, align 8
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
  %21 = alloca %struct.ctrl*, align 8
  %22 = alloca %struct.ctrl*, align 8
  %23 = alloca %struct.ctrl*, align 8
  %24 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.ctrl* null, %struct.ctrl** %21, align 8
  store %struct.ctrl* null, %struct.ctrl** %22, align 8
  store %struct.ctrl* null, %struct.ctrl** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %112, %6
  %26 = load i32, i32* %14, align 4
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %115

33:                                               ; preds = %25
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %112

42:                                               ; preds = %33
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %44 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.ctrl*, %struct.ctrl** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %47, i64 %49
  %51 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @V4L2_CID_GAIN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %42
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load %struct.ctrl*, %struct.ctrl** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %61, i64 %63
  store %struct.ctrl* %64, %struct.ctrl** %21, align 8
  br label %65

65:                                               ; preds = %56, %42
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %67 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load %struct.ctrl*, %struct.ctrl** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %70, i64 %72
  %74 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @V4L2_CID_EXPOSURE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %65
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load %struct.ctrl*, %struct.ctrl** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %84, i64 %86
  store %struct.ctrl* %87, %struct.ctrl** %22, align 8
  br label %88

88:                                               ; preds = %79, %65
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %90 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load %struct.ctrl*, %struct.ctrl** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %93, i64 %95
  %97 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @V4L2_CID_AUTOGAIN, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %88
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %104 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load %struct.ctrl*, %struct.ctrl** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %107, i64 %109
  store %struct.ctrl* %110, %struct.ctrl** %23, align 8
  br label %111

111:                                              ; preds = %102, %88
  br label %112

112:                                              ; preds = %111, %41
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %25

115:                                              ; preds = %25
  %116 = load %struct.ctrl*, %struct.ctrl** %21, align 8
  %117 = icmp ne %struct.ctrl* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.ctrl*, %struct.ctrl** %22, align 8
  %120 = icmp ne %struct.ctrl* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.ctrl*, %struct.ctrl** %23, align 8
  %123 = icmp ne %struct.ctrl* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %121, %118, %115
  %125 = load i32, i32* @D_ERR, align 4
  %126 = call i32 (i32, i8*, ...) @PDEBUG(i32 %125, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %302

127:                                              ; preds = %121
  %128 = load %struct.ctrl*, %struct.ctrl** %21, align 8
  %129 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %128, i32 0, i32 2
  %130 = load i64 (%struct.gspca_dev*, i32*)*, i64 (%struct.gspca_dev*, i32*)** %129, align 8
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %132 = call i64 %130(%struct.gspca_dev* %131, i32* %16)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %151, label %134

134:                                              ; preds = %127
  %135 = load %struct.ctrl*, %struct.ctrl** %22, align 8
  %136 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %135, i32 0, i32 2
  %137 = load i64 (%struct.gspca_dev*, i32*)*, i64 (%struct.gspca_dev*, i32*)** %136, align 8
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %139 = call i64 %137(%struct.gspca_dev* %138, i32* %18)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %134
  %142 = load %struct.ctrl*, %struct.ctrl** %23, align 8
  %143 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %142, i32 0, i32 2
  %144 = load i64 (%struct.gspca_dev*, i32*)*, i64 (%struct.gspca_dev*, i32*)** %143, align 8
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %146 = call i64 %144(%struct.gspca_dev* %145, i32* %20)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %20, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148, %141, %134, %127
  store i32 0, i32* %7, align 4
  br label %302

152:                                              ; preds = %148
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %18, align 4
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %9, align 4
  %157 = sub nsw i32 %155, %156
  %158 = call i32 @abs(i32 %157) #3
  %159 = load i32, i32* %11, align 4
  %160 = sdiv i32 %158, %159
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* @D_FRAM, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %15, align 4
  %165 = call i32 (i32, i8*, ...) @PDEBUG(i32 %161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %163, i32 %164)
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %275, %152
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %278

170:                                              ; preds = %166
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %224

174:                                              ; preds = %170
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %16, align 4
  br label %223

181:                                              ; preds = %174
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %18, align 4
  br label %222

188:                                              ; preds = %181
  %189 = load i32, i32* %16, align 4
  %190 = load %struct.ctrl*, %struct.ctrl** %21, align 8
  %191 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = icmp sgt i32 %189, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load i32, i32* %16, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %16, align 4
  br label %221

198:                                              ; preds = %188
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.ctrl*, %struct.ctrl** %22, align 8
  %201 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = icmp sgt i32 %199, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %18, align 4
  br label %220

208:                                              ; preds = %198
  %209 = load i32, i32* %16, align 4
  %210 = load %struct.ctrl*, %struct.ctrl** %21, align 8
  %211 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %209, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %208
  %216 = load i32, i32* %16, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %16, align 4
  br label %219

218:                                              ; preds = %208
  br label %278

219:                                              ; preds = %215
  br label %220

220:                                              ; preds = %219, %205
  br label %221

221:                                              ; preds = %220, %195
  br label %222

222:                                              ; preds = %221, %185
  br label %223

223:                                              ; preds = %222, %178
  br label %274

224:                                              ; preds = %170
  %225 = load i32, i32* %16, align 4
  %226 = load %struct.ctrl*, %struct.ctrl** %21, align 8
  %227 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %225, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = load i32, i32* %16, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %16, align 4
  br label %273

234:                                              ; preds = %224
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %234
  %239 = load i32, i32* %18, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %18, align 4
  br label %272

241:                                              ; preds = %234
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load i32, i32* %16, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %16, align 4
  br label %271

248:                                              ; preds = %241
  %249 = load i32, i32* %18, align 4
  %250 = load %struct.ctrl*, %struct.ctrl** %22, align 8
  %251 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = icmp slt i32 %249, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %18, align 4
  br label %270

258:                                              ; preds = %248
  %259 = load i32, i32* %16, align 4
  %260 = load %struct.ctrl*, %struct.ctrl** %21, align 8
  %261 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %259, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %258
  %266 = load i32, i32* %16, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %16, align 4
  br label %269

268:                                              ; preds = %258
  br label %278

269:                                              ; preds = %265
  br label %270

270:                                              ; preds = %269, %255
  br label %271

271:                                              ; preds = %270, %245
  br label %272

272:                                              ; preds = %271, %238
  br label %273

273:                                              ; preds = %272, %231
  br label %274

274:                                              ; preds = %273, %223
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %14, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %14, align 4
  br label %166

278:                                              ; preds = %268, %218, %166
  %279 = load i32, i32* %16, align 4
  %280 = load i32, i32* %17, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %278
  %283 = load %struct.ctrl*, %struct.ctrl** %21, align 8
  %284 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %283, i32 0, i32 0
  %285 = load i32 (%struct.gspca_dev*, i32)*, i32 (%struct.gspca_dev*, i32)** %284, align 8
  %286 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %287 = load i32, i32* %16, align 4
  %288 = call i32 %285(%struct.gspca_dev* %286, i32 %287)
  store i32 1, i32* %24, align 4
  br label %289

289:                                              ; preds = %282, %278
  %290 = load i32, i32* %18, align 4
  %291 = load i32, i32* %19, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %289
  %294 = load %struct.ctrl*, %struct.ctrl** %22, align 8
  %295 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %294, i32 0, i32 0
  %296 = load i32 (%struct.gspca_dev*, i32)*, i32 (%struct.gspca_dev*, i32)** %295, align 8
  %297 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %298 = load i32, i32* %18, align 4
  %299 = call i32 %296(%struct.gspca_dev* %297, i32 %298)
  store i32 1, i32* %24, align 4
  br label %300

300:                                              ; preds = %293, %289
  %301 = load i32, i32* %24, align 4
  store i32 %301, i32* %7, align 4
  br label %302

302:                                              ; preds = %300, %151, %124
  %303 = load i32, i32* %7, align 4
  ret i32 %303
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
