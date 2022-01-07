; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_monitor_exposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_monitor_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i64, i32, i32, i64, i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32, i32*, i32*)* }

@CPIA_COMMAND_ReadVPRegs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ReadVPRegs(30,4,9,8) - failed, retval=%d\0A\00", align 1
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
@COMMAND_SETSENSORFPS = common dso_local global i32 0, align 4
@flicker_jumps = common dso_local global i8**** null, align 8
@COMMAND_SETFLICKERCTRL = common dso_local global i32 0, align 4
@COMMAND_SETEXPOSURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Automatically decreasing sensor_fps\0A\00", align 1
@LIGHT_TIME = common dso_local global i32 0, align 4
@MAX_EXP_102 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Automatically increasing sensor_fps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_data*)* @monitor_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_exposure(%struct.cam_data* %0) #0 {
  %2 = alloca %struct.cam_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
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
  store %struct.cam_data* %0, %struct.cam_data** %2, align 8
  %18 = load i32, i32* @CPIA_COMMAND_ReadVPRegs, align 4
  %19 = ashr i32 %18, 8
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* @CPIA_COMMAND_ReadVPRegs, align 4
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  store i32 30, i32* %24, align 8
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  store i32 4, i32* %25, align 4
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  store i32 9, i32* %26, align 16
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  store i32 8, i32* %27, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  store i32 8, i32* %28, align 8
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  store i32 0, i32* %29, align 4
  %30 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %31 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %30, i32 0, i32 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %33, align 8
  %35 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %36 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %40 = call i32 %34(i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %728

46:                                               ; preds = %1
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %48 = load i32, i32* %47, align 16
  store i32 %48, i32* %3, align 4
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %5, align 4
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %56 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %55, i32 0, i32 4
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %59 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TC, align 4
  %64 = add nsw i32 %62, %63
  %65 = sub nsw i32 %64, 50
  %66 = load i32, i32* @EXP_ACC_LIGHT, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sgt i32 %68, 255
  br i1 %69, label %70, label %71

70:                                               ; preds = %46
  store i32 255, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %73 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TC, align 4
  %78 = add nsw i32 %76, %77
  %79 = sub nsw i32 %78, 50
  %80 = load i32, i32* @EXP_ACC_DARK, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i32, i32* %11, align 4
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %12, align 4
  %88 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %89 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %92, 256
  %94 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %95 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %93, %98
  store i32 %99, i32* %13, align 4
  %100 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %101 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %221, label %106

106:                                              ; preds = %85
  %107 = call i64 @FIRMWARE_VERSION(i32 1, i32 2)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @MAX_COMP, align 4
  br label %113

111:                                              ; preds = %106
  %112 = load i32, i32* @HIGH_COMP_102, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 128
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %165

120:                                              ; preds = %113
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %165

124:                                              ; preds = %120
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %130 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %136 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %145

139:                                              ; preds = %128
  %140 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %141 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %142 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %144 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %143, i32 0, i32 1
  store i32 1, i32* %144, align 8
  br label %145

145:                                              ; preds = %139, %134
  br label %164

146:                                              ; preds = %124
  %147 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %148 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @EXPOSURE_DARK, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %154 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  br label %163

157:                                              ; preds = %146
  %158 = load i64, i64* @EXPOSURE_DARK, align 8
  %159 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %160 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %162 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %161, i32 0, i32 1
  store i32 1, i32* %162, align 8
  br label %163

163:                                              ; preds = %157, %152
  br label %164

164:                                              ; preds = %163, %145
  br label %220

165:                                              ; preds = %120, %113
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @LOW_EXP, align 4
  %168 = icmp sle i32 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %214

173:                                              ; preds = %169, %165
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @VERY_LOW_EXP, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %173
  %178 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %179 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %185 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  br label %194

188:                                              ; preds = %177
  %189 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %190 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %191 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  %192 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %193 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %192, i32 0, i32 1
  store i32 1, i32* %193, align 8
  br label %194

194:                                              ; preds = %188, %183
  br label %213

195:                                              ; preds = %173
  %196 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %197 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %203 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  br label %212

206:                                              ; preds = %195
  %207 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %208 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %209 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  %210 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %211 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %210, i32 0, i32 1
  store i32 1, i32* %211, align 8
  br label %212

212:                                              ; preds = %206, %201
  br label %213

213:                                              ; preds = %212, %194
  br label %219

214:                                              ; preds = %169
  %215 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %216 = ptrtoint i8* %215 to i64
  %217 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %218 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %214, %213
  br label %220

220:                                              ; preds = %219, %164
  br label %326

221:                                              ; preds = %85
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* @MAX_EXP, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %270

225:                                              ; preds = %221
  %226 = load i32, i32* %3, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %270

229:                                              ; preds = %225
  %230 = load i32, i32* %3, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %251

233:                                              ; preds = %229
  %234 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %235 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %241 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 8
  br label %250

244:                                              ; preds = %233
  %245 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %246 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %247 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %246, i32 0, i32 0
  store i64 %245, i64* %247, align 8
  %248 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %249 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %248, i32 0, i32 1
  store i32 1, i32* %249, align 8
  br label %250

250:                                              ; preds = %244, %239
  br label %269

251:                                              ; preds = %229
  %252 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %253 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @EXPOSURE_DARK, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %259 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 8
  br label %268

262:                                              ; preds = %251
  %263 = load i64, i64* @EXPOSURE_DARK, align 8
  %264 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %265 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %264, i32 0, i32 0
  store i64 %263, i64* %265, align 8
  %266 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %267 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %266, i32 0, i32 1
  store i32 1, i32* %267, align 8
  br label %268

268:                                              ; preds = %262, %257
  br label %269

269:                                              ; preds = %268, %250
  br label %325

270:                                              ; preds = %225, %221
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* @LOW_EXP, align 4
  %273 = icmp sle i32 %271, %272
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %3, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp sgt i32 %275, %276
  br i1 %277, label %278, label %319

278:                                              ; preds = %274, %270
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* @VERY_LOW_EXP, align 4
  %281 = icmp sle i32 %279, %280
  br i1 %281, label %282, label %300

282:                                              ; preds = %278
  %283 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %284 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %293

288:                                              ; preds = %282
  %289 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %290 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 8
  br label %299

293:                                              ; preds = %282
  %294 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %295 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %296 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %295, i32 0, i32 0
  store i64 %294, i64* %296, align 8
  %297 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %298 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %297, i32 0, i32 1
  store i32 1, i32* %298, align 8
  br label %299

299:                                              ; preds = %293, %288
  br label %318

300:                                              ; preds = %278
  %301 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %302 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %311

306:                                              ; preds = %300
  %307 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %308 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 8
  br label %317

311:                                              ; preds = %300
  %312 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %313 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %314 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %313, i32 0, i32 0
  store i64 %312, i64* %314, align 8
  %315 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %316 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %315, i32 0, i32 1
  store i32 1, i32* %316, align 8
  br label %317

317:                                              ; preds = %311, %306
  br label %318

318:                                              ; preds = %317, %299
  br label %324

319:                                              ; preds = %274
  %320 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %321 = ptrtoint i8* %320 to i64
  %322 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %323 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  br label %324

324:                                              ; preds = %319, %318
  br label %325

325:                                              ; preds = %324, %269
  br label %326

326:                                              ; preds = %325, %220
  %327 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %328 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %15, align 4
  %330 = load i32, i32* %15, align 4
  %331 = icmp sgt i32 %330, 30
  br i1 %331, label %335, label %332

332:                                              ; preds = %326
  %333 = load i32, i32* %15, align 4
  %334 = icmp slt i32 %333, 1
  br i1 %334, label %335, label %336

335:                                              ; preds = %332, %326
  store i32 1, i32* %15, align 4
  br label %336

336:                                              ; preds = %335, %332
  %337 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %338 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %337, i32 0, i32 6
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %589, label %343

343:                                              ; preds = %336
  %344 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %345 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %355, label %349

349:                                              ; preds = %343
  %350 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %351 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @EXPOSURE_DARK, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %455

355:                                              ; preds = %349, %343
  %356 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %357 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @DARK_TIME, align 4
  %360 = load i32, i32* %15, align 4
  %361 = mul nsw i32 %359, %360
  %362 = icmp sge i32 %358, %361
  br i1 %362, label %363, label %455

363:                                              ; preds = %355
  %364 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %365 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %364, i32 0, i32 6
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = icmp slt i32 %368, 3
  br i1 %369, label %370, label %455

370:                                              ; preds = %363
  %371 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %372 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %371, i32 0, i32 6
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %374, align 8
  %377 = load i32, i32* @COMMAND_SETSENSORFPS, align 4
  %378 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %379 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = or i32 %380, %377
  store i32 %381, i32* %379, align 4
  %382 = load i8****, i8***** @flicker_jumps, align 8
  %383 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %384 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds i8***, i8**** %382, i64 %385
  %387 = load i8***, i8**** %386, align 8
  %388 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %389 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %388, i32 0, i32 6
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds i8**, i8*** %387, i64 %392
  %394 = load i8**, i8*** %393, align 8
  %395 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %396 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %395, i32 0, i32 6
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8*, i8** %394, i64 %400
  %402 = load i8*, i8** %401, align 8
  %403 = ptrtoint i8* %402 to i32
  %404 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %405 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %404, i32 0, i32 6
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 0
  store i32 %403, i32* %407, align 8
  %408 = load i32, i32* @COMMAND_SETFLICKERCTRL, align 4
  %409 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %410 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 4
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 4
  %413 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %414 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %413, i32 0, i32 6
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = sub nsw i32 %417, 1
  store i32 %418, i32* %14, align 4
  br label %419

419:                                              ; preds = %424, %370
  %420 = load i32, i32* %14, align 4
  %421 = load i32, i32* %13, align 4
  %422 = sdiv i32 %421, 2
  %423 = icmp slt i32 %420, %422
  br i1 %423, label %424, label %432

424:                                              ; preds = %419
  %425 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %426 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %425, i32 0, i32 6
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* %14, align 4
  %431 = add nsw i32 %430, %429
  store i32 %431, i32* %14, align 4
  br label %419

432:                                              ; preds = %419
  %433 = load i32, i32* %14, align 4
  %434 = and i32 %433, 255
  %435 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %436 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %435, i32 0, i32 6
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 1
  store i32 %434, i32* %438, align 4
  %439 = load i32, i32* %14, align 4
  %440 = ashr i32 %439, 8
  %441 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %442 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %441, i32 0, i32 6
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %443, i32 0, i32 0
  store i32 %440, i32* %444, align 8
  %445 = load i32, i32* @COMMAND_SETEXPOSURE, align 4
  %446 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %447 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %446, i32 0, i32 5
  %448 = load i32, i32* %447, align 4
  %449 = or i32 %448, %445
  store i32 %449, i32* %447, align 4
  %450 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %451 = ptrtoint i8* %450 to i64
  %452 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %453 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %452, i32 0, i32 0
  store i64 %451, i64* %453, align 8
  %454 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %588

455:                                              ; preds = %363, %355, %349
  %456 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %457 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %467, label %461

461:                                              ; preds = %455
  %462 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %463 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %466 = icmp eq i64 %464, %465
  br i1 %466, label %467, label %587

467:                                              ; preds = %461, %455
  %468 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %469 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* @LIGHT_TIME, align 4
  %472 = load i32, i32* %15, align 4
  %473 = mul nsw i32 %471, %472
  %474 = icmp sge i32 %470, %473
  br i1 %474, label %475, label %587

475:                                              ; preds = %467
  %476 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %477 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %476, i32 0, i32 6
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %587

482:                                              ; preds = %475
  %483 = call i64 @FIRMWARE_VERSION(i32 1, i32 2)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %482
  %486 = load i32, i32* @MAX_EXP_102, align 4
  br label %489

487:                                              ; preds = %482
  %488 = load i32, i32* @MAX_EXP, align 4
  br label %489

489:                                              ; preds = %487, %485
  %490 = phi i32 [ %486, %485 ], [ %488, %487 ]
  store i32 %490, i32* %17, align 4
  %491 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %492 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %491, i32 0, i32 6
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = add nsw i32 %495, -1
  store i32 %496, i32* %494, align 8
  %497 = load i32, i32* @COMMAND_SETSENSORFPS, align 4
  %498 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %499 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %498, i32 0, i32 5
  %500 = load i32, i32* %499, align 4
  %501 = or i32 %500, %497
  store i32 %501, i32* %499, align 4
  %502 = load i8****, i8***** @flicker_jumps, align 8
  %503 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %504 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %503, i32 0, i32 3
  %505 = load i64, i64* %504, align 8
  %506 = getelementptr inbounds i8***, i8**** %502, i64 %505
  %507 = load i8***, i8**** %506, align 8
  %508 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %509 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %508, i32 0, i32 6
  %510 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = getelementptr inbounds i8**, i8*** %507, i64 %512
  %514 = load i8**, i8*** %513, align 8
  %515 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %516 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %515, i32 0, i32 6
  %517 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8*, i8** %514, i64 %520
  %522 = load i8*, i8** %521, align 8
  %523 = ptrtoint i8* %522 to i32
  %524 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %525 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %524, i32 0, i32 6
  %526 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %525, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %526, i32 0, i32 0
  store i32 %523, i32* %527, align 8
  %528 = load i32, i32* @COMMAND_SETFLICKERCTRL, align 4
  %529 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %530 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %529, i32 0, i32 5
  %531 = load i32, i32* %530, align 4
  %532 = or i32 %531, %528
  store i32 %532, i32* %530, align 4
  %533 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %534 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %533, i32 0, i32 6
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i32 0, i32 2
  %536 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = sub nsw i32 %537, 1
  store i32 %538, i32* %14, align 4
  br label %539

539:                                              ; preds = %556, %489
  %540 = load i32, i32* %14, align 4
  %541 = load i32, i32* %13, align 4
  %542 = mul nsw i32 2, %541
  %543 = icmp slt i32 %540, %542
  br i1 %543, label %544, label %554

544:                                              ; preds = %539
  %545 = load i32, i32* %14, align 4
  %546 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %547 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %546, i32 0, i32 6
  %548 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %547, i32 0, i32 2
  %549 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = add nsw i32 %545, %550
  %552 = load i32, i32* %17, align 4
  %553 = icmp slt i32 %551, %552
  br label %554

554:                                              ; preds = %544, %539
  %555 = phi i1 [ false, %539 ], [ %553, %544 ]
  br i1 %555, label %556, label %564

556:                                              ; preds = %554
  %557 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %558 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %557, i32 0, i32 6
  %559 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = load i32, i32* %14, align 4
  %563 = add nsw i32 %562, %561
  store i32 %563, i32* %14, align 4
  br label %539

564:                                              ; preds = %554
  %565 = load i32, i32* %14, align 4
  %566 = and i32 %565, 255
  %567 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %568 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %567, i32 0, i32 6
  %569 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i32 0, i32 1
  store i32 %566, i32* %570, align 4
  %571 = load i32, i32* %14, align 4
  %572 = ashr i32 %571, 8
  %573 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %574 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %573, i32 0, i32 6
  %575 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %575, i32 0, i32 0
  store i32 %572, i32* %576, align 8
  %577 = load i32, i32* @COMMAND_SETEXPOSURE, align 4
  %578 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %579 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %578, i32 0, i32 5
  %580 = load i32, i32* %579, align 4
  %581 = or i32 %580, %577
  store i32 %581, i32* %579, align 4
  %582 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %583 = ptrtoint i8* %582 to i64
  %584 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %585 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %584, i32 0, i32 0
  store i64 %583, i64* %585, align 8
  %586 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %587

587:                                              ; preds = %564, %475, %467, %461
  br label %588

588:                                              ; preds = %587, %432
  br label %724

589:                                              ; preds = %336
  %590 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %591 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %590, i32 0, i32 0
  %592 = load i64, i64* %591, align 8
  %593 = load i64, i64* @EXPOSURE_VERY_DARK, align 8
  %594 = icmp eq i64 %592, %593
  br i1 %594, label %601, label %595

595:                                              ; preds = %589
  %596 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %597 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = load i64, i64* @EXPOSURE_DARK, align 8
  %600 = icmp eq i64 %598, %599
  br i1 %600, label %601, label %652

601:                                              ; preds = %595, %589
  %602 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %603 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %602, i32 0, i32 1
  %604 = load i32, i32* %603, align 8
  %605 = load i32, i32* @DARK_TIME, align 4
  %606 = load i32, i32* %15, align 4
  %607 = mul nsw i32 %605, %606
  %608 = icmp sge i32 %604, %607
  br i1 %608, label %609, label %652

609:                                              ; preds = %601
  %610 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %611 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %610, i32 0, i32 6
  %612 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %611, i32 0, i32 1
  %613 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %612, i32 0, i32 0
  %614 = load i32, i32* %613, align 8
  %615 = icmp slt i32 %614, 3
  br i1 %615, label %616, label %652

616:                                              ; preds = %609
  %617 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %618 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %617, i32 0, i32 6
  %619 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %618, i32 0, i32 1
  %620 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %620, align 8
  %623 = load i32, i32* @COMMAND_SETSENSORFPS, align 4
  %624 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %625 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %624, i32 0, i32 5
  %626 = load i32, i32* %625, align 4
  %627 = or i32 %626, %623
  store i32 %627, i32* %625, align 4
  %628 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %629 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %628, i32 0, i32 6
  %630 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %630, i32 0, i32 2
  %632 = load i64, i64* %631, align 8
  %633 = icmp sgt i64 %632, 0
  br i1 %633, label %634, label %646

634:                                              ; preds = %616
  %635 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %636 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %635, i32 0, i32 6
  %637 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %637, i32 0, i32 2
  %639 = load i64, i64* %638, align 8
  %640 = add nsw i64 %639, -1
  store i64 %640, i64* %638, align 8
  %641 = load i32, i32* @COMMAND_SETEXPOSURE, align 4
  %642 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %643 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %642, i32 0, i32 5
  %644 = load i32, i32* %643, align 4
  %645 = or i32 %644, %641
  store i32 %645, i32* %643, align 4
  br label %646

646:                                              ; preds = %634, %616
  %647 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %648 = ptrtoint i8* %647 to i64
  %649 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %650 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %649, i32 0, i32 0
  store i64 %648, i64* %650, align 8
  %651 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %723

652:                                              ; preds = %609, %601, %595
  %653 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %654 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %653, i32 0, i32 0
  %655 = load i64, i64* %654, align 8
  %656 = load i64, i64* @EXPOSURE_VERY_LIGHT, align 8
  %657 = icmp eq i64 %655, %656
  br i1 %657, label %664, label %658

658:                                              ; preds = %652
  %659 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %660 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %659, i32 0, i32 0
  %661 = load i64, i64* %660, align 8
  %662 = load i64, i64* @EXPOSURE_LIGHT, align 8
  %663 = icmp eq i64 %661, %662
  br i1 %663, label %664, label %722

664:                                              ; preds = %658, %652
  %665 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %666 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %665, i32 0, i32 1
  %667 = load i32, i32* %666, align 8
  %668 = load i32, i32* @LIGHT_TIME, align 4
  %669 = load i32, i32* %15, align 4
  %670 = mul nsw i32 %668, %669
  %671 = icmp sge i32 %667, %670
  br i1 %671, label %672, label %722

672:                                              ; preds = %664
  %673 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %674 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %673, i32 0, i32 6
  %675 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %674, i32 0, i32 1
  %676 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %675, i32 0, i32 0
  %677 = load i32, i32* %676, align 8
  %678 = icmp sgt i32 %677, 0
  br i1 %678, label %679, label %722

679:                                              ; preds = %672
  %680 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %681 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %680, i32 0, i32 6
  %682 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %681, i32 0, i32 1
  %683 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = add nsw i32 %684, -1
  store i32 %685, i32* %683, align 8
  %686 = load i32, i32* @COMMAND_SETSENSORFPS, align 4
  %687 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %688 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %687, i32 0, i32 5
  %689 = load i32, i32* %688, align 4
  %690 = or i32 %689, %686
  store i32 %690, i32* %688, align 4
  %691 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %692 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %691, i32 0, i32 6
  %693 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %693, i32 0, i32 2
  %695 = load i64, i64* %694, align 8
  %696 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %697 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %696, i32 0, i32 6
  %698 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %697, i32 0, i32 0
  %699 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %698, i32 0, i32 3
  %700 = load i32, i32* %699, align 8
  %701 = sub nsw i32 %700, 1
  %702 = sext i32 %701 to i64
  %703 = icmp slt i64 %695, %702
  br i1 %703, label %704, label %716

704:                                              ; preds = %679
  %705 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %706 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %705, i32 0, i32 6
  %707 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %706, i32 0, i32 0
  %708 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %707, i32 0, i32 2
  %709 = load i64, i64* %708, align 8
  %710 = add nsw i64 %709, 1
  store i64 %710, i64* %708, align 8
  %711 = load i32, i32* @COMMAND_SETEXPOSURE, align 4
  %712 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %713 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %712, i32 0, i32 5
  %714 = load i32, i32* %713, align 4
  %715 = or i32 %714, %711
  store i32 %715, i32* %713, align 4
  br label %716

716:                                              ; preds = %704, %679
  %717 = load i8*, i8** @EXPOSURE_NORMAL, align 8
  %718 = ptrtoint i8* %717 to i64
  %719 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %720 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %719, i32 0, i32 0
  store i64 %718, i64* %720, align 8
  %721 = call i32 (i8*, ...) @LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %722

722:                                              ; preds = %716, %672, %664, %658
  br label %723

723:                                              ; preds = %722, %646
  br label %724

724:                                              ; preds = %723, %588
  %725 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %726 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %725, i32 0, i32 4
  %727 = call i32 @mutex_unlock(i32* %726)
  br label %728

728:                                              ; preds = %724, %43
  ret void
}

declare dso_local i32 @LOG(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FIRMWARE_VERSION(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
