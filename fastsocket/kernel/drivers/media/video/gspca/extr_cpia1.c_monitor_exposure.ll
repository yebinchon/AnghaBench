; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_monitor_exposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_monitor_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }
%struct.sd = type { i64, i32, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CPIA_COMMAND_ReadVPRegs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ReadVPRegs(30,4,9,8) - failed: %d\00", align 1
@TC = common dso_local global i32 0, align 4
@EXP_ACC_LIGHT = common dso_local global i32 0, align 4
@EXP_ACC_DARK = common dso_local global i32 0, align 4
@MAX_COMP = common dso_local global i32 0, align 4
@HIGH_COMP_102 = common dso_local global i32 0, align 4
@EXPOSURE_VERY_DARK = common dso_local global i64 0, align 8
@EXPOSURE_DARK = common dso_local global i64 0, align 8
@LOW_EXP = common dso_local global i32 0, align 4
@VERY_LOW_EXP = common dso_local global i32 0, align 4
@EXPOSURE_VERY_LIGHT = common dso_local global i64 0, align 8
@EXPOSURE_LIGHT = common dso_local global i64 0, align 8
@EXPOSURE_NORMAL = common dso_local global i8* null, align 8
@MAX_EXP = common dso_local global i32 0, align 4
@DARK_TIME = common dso_local global i32 0, align 4
@flicker_jumps = common dso_local global i8**** null, align 8
@D_CONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Automatically decreasing sensor_fps\00", align 1
@LIGHT_TIME = common dso_local global i32 0, align 4
@MAX_EXP_102 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Automatically increasing sensor_fps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @monitor_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_exposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
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
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = bitcast %struct.gspca_dev* %21 to %struct.sd*
  store %struct.sd* %22, %struct.sd** %3, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* @CPIA_COMMAND_ReadVPRegs, align 4
  %24 = ashr i32 %23, 8
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* @CPIA_COMMAND_ReadVPRegs, align 4
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  store i32 30, i32* %29, align 8
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 4, i32* %30, align 4
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  store i32 9, i32* %31, align 16
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  store i32 8, i32* %32, align 4
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  store i32 8, i32* %33, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  store i32 0, i32* %34, align 4
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %37 = call i32 @cpia_usb_transferCmd(%struct.gspca_dev* %35, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %702

43:                                               ; preds = %1
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.sd*, %struct.sd** %3, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TC, align 4
  %70 = add nsw i32 %68, %69
  %71 = sub nsw i32 %70, 50
  %72 = load i32, i32* @EXP_ACC_LIGHT, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 255
  br i1 %75, label %76, label %77

76:                                               ; preds = %43
  store i32 255, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %43
  %78 = load %struct.sd*, %struct.sd** %3, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @TC, align 4
  %84 = add nsw i32 %82, %83
  %85 = sub nsw i32 %84, 50
  %86 = load i32, i32* @EXP_ACC_DARK, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %90, %77
  %92 = load i32, i32* %11, align 4
  %93 = sdiv i32 %92, 2
  store i32 %93, i32* %12, align 4
  %94 = load %struct.sd*, %struct.sd** %3, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 256
  %100 = load %struct.sd*, %struct.sd** %3, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %99, %104
  store i32 %105, i32* %13, align 4
  %106 = load %struct.sd*, %struct.sd** %3, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %227, label %112

112:                                              ; preds = %91
  %113 = call i64 @FIRMWARE_VERSION(i32 1, i32 2)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @MAX_COMP, align 4
  br label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @HIGH_COMP_102, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 128
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %19, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %171

126:                                              ; preds = %119
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %171

130:                                              ; preds = %126
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %130
  %135 = load %struct.sd*, %struct.sd** %3, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.sd*, %struct.sd** %3, align 8
  %142 = getelementptr inbounds %struct.sd, %struct.sd* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %151

145:                                              ; preds = %134
  %146 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %147 = load %struct.sd*, %struct.sd** %3, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.sd*, %struct.sd** %3, align 8
  %150 = getelementptr inbounds %struct.sd, %struct.sd* %149, i32 0, i32 1
  store i32 1, i32* %150, align 8
  br label %151

151:                                              ; preds = %145, %140
  br label %170

152:                                              ; preds = %130
  %153 = load %struct.sd*, %struct.sd** %3, align 8
  %154 = getelementptr inbounds %struct.sd, %struct.sd* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @EXPOSURE_DARK, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load %struct.sd*, %struct.sd** %3, align 8
  %160 = getelementptr inbounds %struct.sd, %struct.sd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  br label %169

163:                                              ; preds = %152
  %164 = load i64, i64* @EXPOSURE_DARK, align 8
  %165 = load %struct.sd*, %struct.sd** %3, align 8
  %166 = getelementptr inbounds %struct.sd, %struct.sd* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.sd*, %struct.sd** %3, align 8
  %168 = getelementptr inbounds %struct.sd, %struct.sd* %167, i32 0, i32 1
  store i32 1, i32* %168, align 8
  br label %169

169:                                              ; preds = %163, %158
  br label %170

170:                                              ; preds = %169, %151
  br label %226

171:                                              ; preds = %126, %119
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @LOW_EXP, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %220

179:                                              ; preds = %175, %171
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* @VERY_LOW_EXP, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %201

183:                                              ; preds = %179
  %184 = load %struct.sd*, %struct.sd** %3, align 8
  %185 = getelementptr inbounds %struct.sd, %struct.sd* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %183
  %190 = load %struct.sd*, %struct.sd** %3, align 8
  %191 = getelementptr inbounds %struct.sd, %struct.sd* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 8
  br label %200

194:                                              ; preds = %183
  %195 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %196 = load %struct.sd*, %struct.sd** %3, align 8
  %197 = getelementptr inbounds %struct.sd, %struct.sd* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.sd*, %struct.sd** %3, align 8
  %199 = getelementptr inbounds %struct.sd, %struct.sd* %198, i32 0, i32 1
  store i32 1, i32* %199, align 8
  br label %200

200:                                              ; preds = %194, %189
  br label %219

201:                                              ; preds = %179
  %202 = load %struct.sd*, %struct.sd** %3, align 8
  %203 = getelementptr inbounds %struct.sd, %struct.sd* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %201
  %208 = load %struct.sd*, %struct.sd** %3, align 8
  %209 = getelementptr inbounds %struct.sd, %struct.sd* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  br label %218

212:                                              ; preds = %201
  %213 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %214 = load %struct.sd*, %struct.sd** %3, align 8
  %215 = getelementptr inbounds %struct.sd, %struct.sd* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  %216 = load %struct.sd*, %struct.sd** %3, align 8
  %217 = getelementptr inbounds %struct.sd, %struct.sd* %216, i32 0, i32 1
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %212, %207
  br label %219

219:                                              ; preds = %218, %200
  br label %225

220:                                              ; preds = %175
  %221 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = load %struct.sd*, %struct.sd** %3, align 8
  %224 = getelementptr inbounds %struct.sd, %struct.sd* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  br label %225

225:                                              ; preds = %220, %219
  br label %226

226:                                              ; preds = %225, %170
  br label %332

227:                                              ; preds = %91
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* @MAX_EXP, align 4
  %230 = icmp sge i32 %228, %229
  br i1 %230, label %231, label %276

231:                                              ; preds = %227
  %232 = load i32, i32* %4, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %276

235:                                              ; preds = %231
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* %12, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %257

239:                                              ; preds = %235
  %240 = load %struct.sd*, %struct.sd** %3, align 8
  %241 = getelementptr inbounds %struct.sd, %struct.sd* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %239
  %246 = load %struct.sd*, %struct.sd** %3, align 8
  %247 = getelementptr inbounds %struct.sd, %struct.sd* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  br label %256

250:                                              ; preds = %239
  %251 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %252 = load %struct.sd*, %struct.sd** %3, align 8
  %253 = getelementptr inbounds %struct.sd, %struct.sd* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  %254 = load %struct.sd*, %struct.sd** %3, align 8
  %255 = getelementptr inbounds %struct.sd, %struct.sd* %254, i32 0, i32 1
  store i32 1, i32* %255, align 8
  br label %256

256:                                              ; preds = %250, %245
  br label %275

257:                                              ; preds = %235
  %258 = load %struct.sd*, %struct.sd** %3, align 8
  %259 = getelementptr inbounds %struct.sd, %struct.sd* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @EXPOSURE_DARK, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = load %struct.sd*, %struct.sd** %3, align 8
  %265 = getelementptr inbounds %struct.sd, %struct.sd* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 8
  br label %274

268:                                              ; preds = %257
  %269 = load i64, i64* @EXPOSURE_DARK, align 8
  %270 = load %struct.sd*, %struct.sd** %3, align 8
  %271 = getelementptr inbounds %struct.sd, %struct.sd* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  %272 = load %struct.sd*, %struct.sd** %3, align 8
  %273 = getelementptr inbounds %struct.sd, %struct.sd* %272, i32 0, i32 1
  store i32 1, i32* %273, align 8
  br label %274

274:                                              ; preds = %268, %263
  br label %275

275:                                              ; preds = %274, %256
  br label %331

276:                                              ; preds = %231, %227
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* @LOW_EXP, align 4
  %279 = icmp sle i32 %277, %278
  br i1 %279, label %284, label %280

280:                                              ; preds = %276
  %281 = load i32, i32* %4, align 4
  %282 = load i32, i32* %10, align 4
  %283 = icmp sgt i32 %281, %282
  br i1 %283, label %284, label %325

284:                                              ; preds = %280, %276
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* @VERY_LOW_EXP, align 4
  %287 = icmp sle i32 %285, %286
  br i1 %287, label %288, label %306

288:                                              ; preds = %284
  %289 = load %struct.sd*, %struct.sd** %3, align 8
  %290 = getelementptr inbounds %struct.sd, %struct.sd* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %288
  %295 = load %struct.sd*, %struct.sd** %3, align 8
  %296 = getelementptr inbounds %struct.sd, %struct.sd* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 8
  br label %305

299:                                              ; preds = %288
  %300 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %301 = load %struct.sd*, %struct.sd** %3, align 8
  %302 = getelementptr inbounds %struct.sd, %struct.sd* %301, i32 0, i32 0
  store i64 %300, i64* %302, align 8
  %303 = load %struct.sd*, %struct.sd** %3, align 8
  %304 = getelementptr inbounds %struct.sd, %struct.sd* %303, i32 0, i32 1
  store i32 1, i32* %304, align 8
  br label %305

305:                                              ; preds = %299, %294
  br label %324

306:                                              ; preds = %284
  %307 = load %struct.sd*, %struct.sd** %3, align 8
  %308 = getelementptr inbounds %struct.sd, %struct.sd* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %306
  %313 = load %struct.sd*, %struct.sd** %3, align 8
  %314 = getelementptr inbounds %struct.sd, %struct.sd* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  br label %323

317:                                              ; preds = %306
  %318 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %319 = load %struct.sd*, %struct.sd** %3, align 8
  %320 = getelementptr inbounds %struct.sd, %struct.sd* %319, i32 0, i32 0
  store i64 %318, i64* %320, align 8
  %321 = load %struct.sd*, %struct.sd** %3, align 8
  %322 = getelementptr inbounds %struct.sd, %struct.sd* %321, i32 0, i32 1
  store i32 1, i32* %322, align 8
  br label %323

323:                                              ; preds = %317, %312
  br label %324

324:                                              ; preds = %323, %305
  br label %330

325:                                              ; preds = %280
  %326 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %327 = ptrtoint i8* %326 to i64
  %328 = load %struct.sd*, %struct.sd** %3, align 8
  %329 = getelementptr inbounds %struct.sd, %struct.sd* %328, i32 0, i32 0
  store i64 %327, i64* %329, align 8
  br label %330

330:                                              ; preds = %325, %324
  br label %331

331:                                              ; preds = %330, %275
  br label %332

332:                                              ; preds = %331, %226
  %333 = load %struct.sd*, %struct.sd** %3, align 8
  %334 = getelementptr inbounds %struct.sd, %struct.sd* %333, i32 0, i32 4
  %335 = call i32 @atomic_read(i32* %334)
  store i32 %335, i32* %15, align 4
  %336 = load i32, i32* %15, align 4
  %337 = icmp sgt i32 %336, 30
  br i1 %337, label %341, label %338

338:                                              ; preds = %332
  %339 = load i32, i32* %15, align 4
  %340 = icmp slt i32 %339, 1
  br i1 %340, label %341, label %342

341:                                              ; preds = %338, %332
  store i32 1, i32* %15, align 4
  br label %342

342:                                              ; preds = %341, %338
  %343 = load %struct.sd*, %struct.sd** %3, align 8
  %344 = getelementptr inbounds %struct.sd, %struct.sd* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %567, label %349

349:                                              ; preds = %342
  %350 = load %struct.sd*, %struct.sd** %3, align 8
  %351 = getelementptr inbounds %struct.sd, %struct.sd* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %361, label %355

355:                                              ; preds = %349
  %356 = load %struct.sd*, %struct.sd** %3, align 8
  %357 = getelementptr inbounds %struct.sd, %struct.sd* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @EXPOSURE_DARK, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %447

361:                                              ; preds = %355, %349
  %362 = load %struct.sd*, %struct.sd** %3, align 8
  %363 = getelementptr inbounds %struct.sd, %struct.sd* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @DARK_TIME, align 4
  %366 = load i32, i32* %15, align 4
  %367 = mul nsw i32 %365, %366
  %368 = icmp sge i32 %364, %367
  br i1 %368, label %369, label %447

369:                                              ; preds = %361
  %370 = load %struct.sd*, %struct.sd** %3, align 8
  %371 = getelementptr inbounds %struct.sd, %struct.sd* %370, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp slt i32 %374, 3
  br i1 %375, label %376, label %447

376:                                              ; preds = %369
  %377 = load %struct.sd*, %struct.sd** %3, align 8
  %378 = getelementptr inbounds %struct.sd, %struct.sd* %377, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %380, align 8
  store i32 1, i32* %16, align 4
  %383 = load i8****, i8***** @flicker_jumps, align 8
  %384 = load %struct.sd*, %struct.sd** %3, align 8
  %385 = getelementptr inbounds %struct.sd, %struct.sd* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = getelementptr inbounds i8***, i8**** %383, i64 %386
  %388 = load i8***, i8**** %387, align 8
  %389 = load %struct.sd*, %struct.sd** %3, align 8
  %390 = getelementptr inbounds %struct.sd, %struct.sd* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds i8**, i8*** %388, i64 %393
  %395 = load i8**, i8*** %394, align 8
  %396 = load %struct.sd*, %struct.sd** %3, align 8
  %397 = getelementptr inbounds %struct.sd, %struct.sd* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8*, i8** %395, i64 %401
  %403 = load i8*, i8** %402, align 8
  %404 = ptrtoint i8* %403 to i32
  %405 = load %struct.sd*, %struct.sd** %3, align 8
  %406 = getelementptr inbounds %struct.sd, %struct.sd* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 0
  store i32 %404, i32* %408, align 8
  store i32 1, i32* %18, align 4
  %409 = load %struct.sd*, %struct.sd** %3, align 8
  %410 = getelementptr inbounds %struct.sd, %struct.sd* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = sub nsw i32 %413, 1
  store i32 %414, i32* %14, align 4
  br label %415

415:                                              ; preds = %420, %376
  %416 = load i32, i32* %14, align 4
  %417 = load i32, i32* %13, align 4
  %418 = sdiv i32 %417, 2
  %419 = icmp slt i32 %416, %418
  br i1 %419, label %420, label %428

420:                                              ; preds = %415
  %421 = load %struct.sd*, %struct.sd** %3, align 8
  %422 = getelementptr inbounds %struct.sd, %struct.sd* %421, i32 0, i32 3
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = load i32, i32* %14, align 4
  %427 = add nsw i32 %426, %425
  store i32 %427, i32* %14, align 4
  br label %415

428:                                              ; preds = %415
  %429 = load i32, i32* %14, align 4
  %430 = and i32 %429, 255
  %431 = load %struct.sd*, %struct.sd** %3, align 8
  %432 = getelementptr inbounds %struct.sd, %struct.sd* %431, i32 0, i32 3
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 1
  store i32 %430, i32* %434, align 4
  %435 = load i32, i32* %14, align 4
  %436 = ashr i32 %435, 8
  %437 = load %struct.sd*, %struct.sd** %3, align 8
  %438 = getelementptr inbounds %struct.sd, %struct.sd* %437, i32 0, i32 3
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 0
  store i32 %436, i32* %440, align 8
  store i32 1, i32* %17, align 4
  %441 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %442 = ptrtoint i8* %441 to i64
  %443 = load %struct.sd*, %struct.sd** %3, align 8
  %444 = getelementptr inbounds %struct.sd, %struct.sd* %443, i32 0, i32 0
  store i64 %442, i64* %444, align 8
  %445 = load i32, i32* @D_CONF, align 4
  %446 = call i32 @PDEBUG(i32 %445, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %566

447:                                              ; preds = %369, %361, %355
  %448 = load %struct.sd*, %struct.sd** %3, align 8
  %449 = getelementptr inbounds %struct.sd, %struct.sd* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %452 = icmp eq i64 %450, %451
  br i1 %452, label %459, label %453

453:                                              ; preds = %447
  %454 = load %struct.sd*, %struct.sd** %3, align 8
  %455 = getelementptr inbounds %struct.sd, %struct.sd* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %565

459:                                              ; preds = %453, %447
  %460 = load %struct.sd*, %struct.sd** %3, align 8
  %461 = getelementptr inbounds %struct.sd, %struct.sd* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* @LIGHT_TIME, align 4
  %464 = load i32, i32* %15, align 4
  %465 = mul nsw i32 %463, %464
  %466 = icmp sge i32 %462, %465
  br i1 %466, label %467, label %565

467:                                              ; preds = %459
  %468 = load %struct.sd*, %struct.sd** %3, align 8
  %469 = getelementptr inbounds %struct.sd, %struct.sd* %468, i32 0, i32 3
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = icmp sgt i32 %472, 0
  br i1 %473, label %474, label %565

474:                                              ; preds = %467
  %475 = call i64 @FIRMWARE_VERSION(i32 1, i32 2)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %474
  %478 = load i32, i32* @MAX_EXP_102, align 4
  br label %481

479:                                              ; preds = %474
  %480 = load i32, i32* @MAX_EXP, align 4
  br label %481

481:                                              ; preds = %479, %477
  %482 = phi i32 [ %478, %477 ], [ %480, %479 ]
  store i32 %482, i32* %20, align 4
  %483 = load %struct.sd*, %struct.sd** %3, align 8
  %484 = getelementptr inbounds %struct.sd, %struct.sd* %483, i32 0, i32 3
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = add nsw i32 %487, -1
  store i32 %488, i32* %486, align 8
  store i32 1, i32* %16, align 4
  %489 = load i8****, i8***** @flicker_jumps, align 8
  %490 = load %struct.sd*, %struct.sd** %3, align 8
  %491 = getelementptr inbounds %struct.sd, %struct.sd* %490, i32 0, i32 2
  %492 = load i64, i64* %491, align 8
  %493 = getelementptr inbounds i8***, i8**** %489, i64 %492
  %494 = load i8***, i8**** %493, align 8
  %495 = load %struct.sd*, %struct.sd** %3, align 8
  %496 = getelementptr inbounds %struct.sd, %struct.sd* %495, i32 0, i32 3
  %497 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 1
  %499 = load i64, i64* %498, align 8
  %500 = getelementptr inbounds i8**, i8*** %494, i64 %499
  %501 = load i8**, i8*** %500, align 8
  %502 = load %struct.sd*, %struct.sd** %3, align 8
  %503 = getelementptr inbounds %struct.sd, %struct.sd* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8*, i8** %501, i64 %507
  %509 = load i8*, i8** %508, align 8
  %510 = ptrtoint i8* %509 to i32
  %511 = load %struct.sd*, %struct.sd** %3, align 8
  %512 = getelementptr inbounds %struct.sd, %struct.sd* %511, i32 0, i32 3
  %513 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i32 0, i32 0
  store i32 %510, i32* %514, align 8
  store i32 1, i32* %18, align 4
  %515 = load %struct.sd*, %struct.sd** %3, align 8
  %516 = getelementptr inbounds %struct.sd, %struct.sd* %515, i32 0, i32 3
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i32 0, i32 2
  %518 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = sub nsw i32 %519, 1
  store i32 %520, i32* %14, align 4
  br label %521

521:                                              ; preds = %538, %481
  %522 = load i32, i32* %14, align 4
  %523 = load i32, i32* %13, align 4
  %524 = mul nsw i32 2, %523
  %525 = icmp slt i32 %522, %524
  br i1 %525, label %526, label %536

526:                                              ; preds = %521
  %527 = load i32, i32* %14, align 4
  %528 = load %struct.sd*, %struct.sd** %3, align 8
  %529 = getelementptr inbounds %struct.sd, %struct.sd* %528, i32 0, i32 3
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = add nsw i32 %527, %532
  %534 = load i32, i32* %20, align 4
  %535 = icmp slt i32 %533, %534
  br label %536

536:                                              ; preds = %526, %521
  %537 = phi i1 [ false, %521 ], [ %535, %526 ]
  br i1 %537, label %538, label %546

538:                                              ; preds = %536
  %539 = load %struct.sd*, %struct.sd** %3, align 8
  %540 = getelementptr inbounds %struct.sd, %struct.sd* %539, i32 0, i32 3
  %541 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %540, i32 0, i32 2
  %542 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* %14, align 4
  %545 = add nsw i32 %544, %543
  store i32 %545, i32* %14, align 4
  br label %521

546:                                              ; preds = %536
  %547 = load i32, i32* %14, align 4
  %548 = and i32 %547, 255
  %549 = load %struct.sd*, %struct.sd** %3, align 8
  %550 = getelementptr inbounds %struct.sd, %struct.sd* %549, i32 0, i32 3
  %551 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %551, i32 0, i32 1
  store i32 %548, i32* %552, align 4
  %553 = load i32, i32* %14, align 4
  %554 = ashr i32 %553, 8
  %555 = load %struct.sd*, %struct.sd** %3, align 8
  %556 = getelementptr inbounds %struct.sd, %struct.sd* %555, i32 0, i32 3
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %557, i32 0, i32 0
  store i32 %554, i32* %558, align 8
  store i32 1, i32* %17, align 4
  %559 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %560 = ptrtoint i8* %559 to i64
  %561 = load %struct.sd*, %struct.sd** %3, align 8
  %562 = getelementptr inbounds %struct.sd, %struct.sd* %561, i32 0, i32 0
  store i64 %560, i64* %562, align 8
  %563 = load i32, i32* @D_CONF, align 4
  %564 = call i32 @PDEBUG(i32 %563, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %565

565:                                              ; preds = %546, %467, %459, %453
  br label %566

566:                                              ; preds = %565, %428
  br label %684

567:                                              ; preds = %342
  %568 = load %struct.sd*, %struct.sd** %3, align 8
  %569 = getelementptr inbounds %struct.sd, %struct.sd* %568, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %579, label %573

573:                                              ; preds = %567
  %574 = load %struct.sd*, %struct.sd** %3, align 8
  %575 = getelementptr inbounds %struct.sd, %struct.sd* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = load i64, i64* @EXPOSURE_DARK, align 8
  %578 = icmp eq i64 %576, %577
  br i1 %578, label %579, label %621

579:                                              ; preds = %573, %567
  %580 = load %struct.sd*, %struct.sd** %3, align 8
  %581 = getelementptr inbounds %struct.sd, %struct.sd* %580, i32 0, i32 1
  %582 = load i32, i32* %581, align 8
  %583 = load i32, i32* @DARK_TIME, align 4
  %584 = load i32, i32* %15, align 4
  %585 = mul nsw i32 %583, %584
  %586 = icmp sge i32 %582, %585
  br i1 %586, label %587, label %621

587:                                              ; preds = %579
  %588 = load %struct.sd*, %struct.sd** %3, align 8
  %589 = getelementptr inbounds %struct.sd, %struct.sd* %588, i32 0, i32 3
  %590 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = icmp slt i32 %592, 3
  br i1 %593, label %594, label %621

594:                                              ; preds = %587
  %595 = load %struct.sd*, %struct.sd** %3, align 8
  %596 = getelementptr inbounds %struct.sd, %struct.sd* %595, i32 0, i32 3
  %597 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %596, i32 0, i32 1
  %598 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %598, align 8
  store i32 1, i32* %16, align 4
  %601 = load %struct.sd*, %struct.sd** %3, align 8
  %602 = getelementptr inbounds %struct.sd, %struct.sd* %601, i32 0, i32 3
  %603 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %603, i32 0, i32 2
  %605 = load i64, i64* %604, align 8
  %606 = icmp sgt i64 %605, 0
  br i1 %606, label %607, label %614

607:                                              ; preds = %594
  %608 = load %struct.sd*, %struct.sd** %3, align 8
  %609 = getelementptr inbounds %struct.sd, %struct.sd* %608, i32 0, i32 3
  %610 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %610, i32 0, i32 2
  %612 = load i64, i64* %611, align 8
  %613 = add nsw i64 %612, -1
  store i64 %613, i64* %611, align 8
  store i32 1, i32* %17, align 4
  br label %614

614:                                              ; preds = %607, %594
  %615 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %616 = ptrtoint i8* %615 to i64
  %617 = load %struct.sd*, %struct.sd** %3, align 8
  %618 = getelementptr inbounds %struct.sd, %struct.sd* %617, i32 0, i32 0
  store i64 %616, i64* %618, align 8
  %619 = load i32, i32* @D_CONF, align 4
  %620 = call i32 @PDEBUG(i32 %619, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %683

621:                                              ; preds = %587, %579, %573
  %622 = load %struct.sd*, %struct.sd** %3, align 8
  %623 = getelementptr inbounds %struct.sd, %struct.sd* %622, i32 0, i32 0
  %624 = load i64, i64* %623, align 8
  %625 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %626 = icmp eq i64 %624, %625
  br i1 %626, label %633, label %627

627:                                              ; preds = %621
  %628 = load %struct.sd*, %struct.sd** %3, align 8
  %629 = getelementptr inbounds %struct.sd, %struct.sd* %628, i32 0, i32 0
  %630 = load i64, i64* %629, align 8
  %631 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %632 = icmp eq i64 %630, %631
  br i1 %632, label %633, label %682

633:                                              ; preds = %627, %621
  %634 = load %struct.sd*, %struct.sd** %3, align 8
  %635 = getelementptr inbounds %struct.sd, %struct.sd* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 8
  %637 = load i32, i32* @LIGHT_TIME, align 4
  %638 = load i32, i32* %15, align 4
  %639 = mul nsw i32 %637, %638
  %640 = icmp sge i32 %636, %639
  br i1 %640, label %641, label %682

641:                                              ; preds = %633
  %642 = load %struct.sd*, %struct.sd** %3, align 8
  %643 = getelementptr inbounds %struct.sd, %struct.sd* %642, i32 0, i32 3
  %644 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %643, i32 0, i32 1
  %645 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 8
  %647 = icmp sgt i32 %646, 0
  br i1 %647, label %648, label %682

648:                                              ; preds = %641
  %649 = load %struct.sd*, %struct.sd** %3, align 8
  %650 = getelementptr inbounds %struct.sd, %struct.sd* %649, i32 0, i32 3
  %651 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %651, i32 0, i32 0
  %653 = load i32, i32* %652, align 8
  %654 = add nsw i32 %653, -1
  store i32 %654, i32* %652, align 8
  store i32 1, i32* %16, align 4
  %655 = load %struct.sd*, %struct.sd** %3, align 8
  %656 = getelementptr inbounds %struct.sd, %struct.sd* %655, i32 0, i32 3
  %657 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %656, i32 0, i32 0
  %658 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %657, i32 0, i32 2
  %659 = load i64, i64* %658, align 8
  %660 = load %struct.sd*, %struct.sd** %3, align 8
  %661 = getelementptr inbounds %struct.sd, %struct.sd* %660, i32 0, i32 3
  %662 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %661, i32 0, i32 0
  %663 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 8
  %665 = sub nsw i32 %664, 1
  %666 = sext i32 %665 to i64
  %667 = icmp slt i64 %659, %666
  br i1 %667, label %668, label %675

668:                                              ; preds = %648
  %669 = load %struct.sd*, %struct.sd** %3, align 8
  %670 = getelementptr inbounds %struct.sd, %struct.sd* %669, i32 0, i32 3
  %671 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %671, i32 0, i32 2
  %673 = load i64, i64* %672, align 8
  %674 = add nsw i64 %673, 1
  store i64 %674, i64* %672, align 8
  store i32 1, i32* %17, align 4
  br label %675

675:                                              ; preds = %668, %648
  %676 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %677 = ptrtoint i8* %676 to i64
  %678 = load %struct.sd*, %struct.sd** %3, align 8
  %679 = getelementptr inbounds %struct.sd, %struct.sd* %678, i32 0, i32 0
  store i64 %677, i64* %679, align 8
  %680 = load i32, i32* @D_CONF, align 4
  %681 = call i32 @PDEBUG(i32 %680, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %682

682:                                              ; preds = %675, %641, %633, %627
  br label %683

683:                                              ; preds = %682, %614
  br label %684

684:                                              ; preds = %683, %566
  %685 = load i32, i32* %17, align 4
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %690

687:                                              ; preds = %684
  %688 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %689 = call i32 @command_setexposure(%struct.gspca_dev* %688)
  br label %690

690:                                              ; preds = %687, %684
  %691 = load i32, i32* %16, align 4
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %696

693:                                              ; preds = %690
  %694 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %695 = call i32 @command_setsensorfps(%struct.gspca_dev* %694)
  br label %696

696:                                              ; preds = %693, %690
  %697 = load i32, i32* %18, align 4
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %702

699:                                              ; preds = %696
  %700 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %701 = call i32 @command_setflickerctrl(%struct.gspca_dev* %700)
  br label %702

702:                                              ; preds = %40, %699, %696
  ret void
}

declare dso_local i32 @cpia_usb_transferCmd(%struct.gspca_dev*, i32*) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i64 @FIRMWARE_VERSION(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @command_setexposure(%struct.gspca_dev*) #1

declare dso_local i32 @command_setsensorfps(%struct.gspca_dev*) #1

declare dso_local i32 @command_setflickerctrl(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
