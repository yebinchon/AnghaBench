; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_coarse_expo_autogain.h_gspca_coarse_grained_expo_autogain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_coarse_expo_autogain.h_gspca_coarse_grained_expo_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.ctrl* }
%struct.ctrl = type { i32 (%struct.gspca_dev*, i32)*, %struct.TYPE_4__, i64 (%struct.gspca_dev*, i32*)* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.sd = type { i64, i32, i32 }

@V4L2_CID_GAIN = common dso_local global i64 0, align 8
@V4L2_CID_EXPOSURE = common dso_local global i64 0, align 8
@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Error: gspca_coarse_grained_expo_autogain called on cam without gain or exposure\00", align 1
@D_FRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"autogain: lum: %d, desired: %d, steps: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32, i32)* @gspca_coarse_grained_expo_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gspca_coarse_grained_expo_autogain(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
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
  %18 = alloca %struct.ctrl*, align 8
  %19 = alloca %struct.ctrl*, align 8
  %20 = alloca %struct.sd*, align 8
  %21 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ctrl* null, %struct.ctrl** %18, align 8
  store %struct.ctrl* null, %struct.ctrl** %19, align 8
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %23 = bitcast %struct.gspca_dev* %22 to %struct.sd*
  store %struct.sd* %23, %struct.sd** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %88, %4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %91

32:                                               ; preds = %24
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %88

41:                                               ; preds = %32
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.ctrl*, %struct.ctrl** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %46, i64 %48
  %50 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V4L2_CID_GAIN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %41
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.ctrl*, %struct.ctrl** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %60, i64 %62
  store %struct.ctrl* %63, %struct.ctrl** %18, align 8
  br label %64

64:                                               ; preds = %55, %41
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %66 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load %struct.ctrl*, %struct.ctrl** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %69, i64 %71
  %73 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @V4L2_CID_EXPOSURE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %64
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %80 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load %struct.ctrl*, %struct.ctrl** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %83, i64 %85
  store %struct.ctrl* %86, %struct.ctrl** %19, align 8
  br label %87

87:                                               ; preds = %78, %64
  br label %88

88:                                               ; preds = %87, %40
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %24

91:                                               ; preds = %24
  %92 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %93 = icmp ne %struct.ctrl* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.ctrl*, %struct.ctrl** %19, align 8
  %96 = icmp ne %struct.ctrl* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @D_ERR, align 4
  %99 = call i32 (i32, i8*, ...) @PDEBUG(i32 %98, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %284

100:                                              ; preds = %94
  %101 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %102 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %101, i32 0, i32 2
  %103 = load i64 (%struct.gspca_dev*, i32*)*, i64 (%struct.gspca_dev*, i32*)** %102, align 8
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %105 = call i64 %103(%struct.gspca_dev* %104, i32* %12)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load %struct.ctrl*, %struct.ctrl** %19, align 8
  %109 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %108, i32 0, i32 2
  %110 = load i64 (%struct.gspca_dev*, i32*)*, i64 (%struct.gspca_dev*, i32*)** %109, align 8
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %112 = call i64 %110(%struct.gspca_dev* %111, i32* %14)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107, %100
  store i32 0, i32* %5, align 4
  br label %284

115:                                              ; preds = %107
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %15, align 4
  %118 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %119 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %123 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %121, %125
  %127 = sdiv i32 %126, 5
  %128 = mul nsw i32 %127, 2
  store i32 %128, i32* %16, align 4
  %129 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %130 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %16, align 4
  %135 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %136 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %140 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %138, %142
  %144 = sdiv i32 %143, 5
  %145 = mul nsw i32 %144, 4
  store i32 %145, i32* %17, align 4
  %146 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %147 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %7, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* %9, align 4
  %156 = sdiv i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* @D_FRAM, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 (i32, i8*, ...) @PDEBUG(i32 %157, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %17, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %183

167:                                              ; preds = %115
  %168 = load %struct.sd*, %struct.sd** %20, align 8
  %169 = getelementptr inbounds %struct.sd, %struct.sd* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.ctrl*, %struct.ctrl** %19, align 8
  %172 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %170, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %167
  %178 = load i32, i32* %17, align 4
  store i32 %178, i32* %12, align 4
  %179 = load %struct.sd*, %struct.sd** %20, align 8
  %180 = getelementptr inbounds %struct.sd, %struct.sd* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  br label %239

183:                                              ; preds = %167, %115
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %16, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %183
  %190 = load %struct.sd*, %struct.sd** %20, align 8
  %191 = getelementptr inbounds %struct.sd, %struct.sd* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.ctrl*, %struct.ctrl** %19, align 8
  %194 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = icmp sgt i64 %192, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %189
  %200 = load i32, i32* %16, align 4
  store i32 %200, i32* %12, align 4
  %201 = load %struct.sd*, %struct.sd** %20, align 8
  %202 = getelementptr inbounds %struct.sd, %struct.sd* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  br label %238

205:                                              ; preds = %189, %183
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %211 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = icmp sgt i32 %209, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %205
  %216 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %217 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %12, align 4
  br label %233

220:                                              ; preds = %205
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %223 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %220
  %228 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %229 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %12, align 4
  br label %232

232:                                              ; preds = %227, %220
  br label %233

233:                                              ; preds = %232, %215
  %234 = load %struct.sd*, %struct.sd** %20, align 8
  %235 = getelementptr inbounds %struct.sd, %struct.sd* %234, i32 0, i32 2
  store i32 0, i32* %235, align 4
  %236 = load %struct.sd*, %struct.sd** %20, align 8
  %237 = getelementptr inbounds %struct.sd, %struct.sd* %236, i32 0, i32 1
  store i32 0, i32* %237, align 8
  br label %238

238:                                              ; preds = %233, %199
  br label %239

239:                                              ; preds = %238, %177
  %240 = load %struct.sd*, %struct.sd** %20, align 8
  %241 = getelementptr inbounds %struct.sd, %struct.sd* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = icmp sgt i32 %242, 3
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %14, align 4
  %247 = load %struct.sd*, %struct.sd** %20, align 8
  %248 = getelementptr inbounds %struct.sd, %struct.sd* %247, i32 0, i32 2
  store i32 0, i32* %248, align 4
  br label %260

249:                                              ; preds = %239
  %250 = load %struct.sd*, %struct.sd** %20, align 8
  %251 = getelementptr inbounds %struct.sd, %struct.sd* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp sgt i32 %252, 3
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %14, align 4
  %257 = load %struct.sd*, %struct.sd** %20, align 8
  %258 = getelementptr inbounds %struct.sd, %struct.sd* %257, i32 0, i32 1
  store i32 0, i32* %258, align 8
  br label %259

259:                                              ; preds = %254, %249
  br label %260

260:                                              ; preds = %259, %244
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %260
  %265 = load %struct.ctrl*, %struct.ctrl** %18, align 8
  %266 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %265, i32 0, i32 0
  %267 = load i32 (%struct.gspca_dev*, i32)*, i32 (%struct.gspca_dev*, i32)** %266, align 8
  %268 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %269 = load i32, i32* %12, align 4
  %270 = call i32 %267(%struct.gspca_dev* %268, i32 %269)
  store i32 1, i32* %21, align 4
  br label %271

271:                                              ; preds = %264, %260
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* %15, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %271
  %276 = load %struct.ctrl*, %struct.ctrl** %19, align 8
  %277 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %276, i32 0, i32 0
  %278 = load i32 (%struct.gspca_dev*, i32)*, i32 (%struct.gspca_dev*, i32)** %277, align 8
  %279 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %280 = load i32, i32* %14, align 4
  %281 = call i32 %278(%struct.gspca_dev* %279, i32 %280)
  store i32 1, i32* %21, align 4
  br label %282

282:                                              ; preds = %275, %271
  %283 = load i32, i32* %21, align 4
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %282, %114, %97
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
