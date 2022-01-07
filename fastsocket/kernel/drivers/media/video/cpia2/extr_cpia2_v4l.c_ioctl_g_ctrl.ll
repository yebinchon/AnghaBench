; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.camera_data = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.v4l2_control = type { i32, i32 }

@CPIA2_CMD_GET_VP_BRIGHTNESS = common dso_local global i32 0, align 4
@TRANSFER_READ = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_CONTRAST = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_VP_SATURATION = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_USER_EFFECTS = common dso_local global i32 0, align 4
@CPIA2_VP_USER_EFFECTS_MIRROR = common dso_local global i32 0, align 4
@CPIA2_VP_USER_EFFECTS_FLIP = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_VP_GPIO_DATA = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_FLICKER_MODES = common dso_local global i32 0, align 4
@CPIA2_VP_FLICKER_MODES_NEVER_FLICKER = common dso_local global i32 0, align 4
@NEVER_FLICKER = common dso_local global i32 0, align 4
@CPIA2_VP_FLICKER_MODES_50HZ = common dso_local global i32 0, align 4
@FLICKER_50 = common dso_local global i32 0, align 4
@FLICKER_60 = common dso_local global i32 0, align 4
@NUM_FLICKER_CONTROLS = common dso_local global i32 0, align 4
@flicker_controls = common dso_local global %struct.TYPE_18__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@NUM_FRAMERATE_CONTROLS = common dso_local global i32 0, align 4
@framerate_controls = common dso_local global %struct.TYPE_17__* null, align 8
@NUM_LIGHTS_CONTROLS = common dso_local global i32 0, align 4
@GPIO_LIGHTS_MASK = common dso_local global i32 0, align 4
@lights_controls = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Get control id:%d, value:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_g_ctrl(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.v4l2_control*
  store %struct.v4l2_control* %13, %struct.v4l2_control** %6, align 8
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %251 [
    i32 132, label %17
    i32 131, label %29
    i32 129, label %41
    i32 130, label %53
    i32 128, label %69
    i32 134, label %85
    i32 137, label %93
    i32 139, label %105
    i32 138, label %164
    i32 133, label %200
    i32 136, label %208
    i32 135, label %248
  ]

17:                                               ; preds = %2
  %18 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %19 = load i32, i32* @CPIA2_CMD_GET_VP_BRIGHTNESS, align 4
  %20 = load i32, i32* @TRANSFER_READ, align 4
  %21 = call i32 @cpia2_do_command(%struct.camera_data* %18, i32 %19, i32 %20, i32 0)
  %22 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %23 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %254

29:                                               ; preds = %2
  %30 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %31 = load i32, i32* @CPIA2_CMD_GET_CONTRAST, align 4
  %32 = load i32, i32* @TRANSFER_READ, align 4
  %33 = call i32 @cpia2_do_command(%struct.camera_data* %30, i32 %31, i32 %32, i32 0)
  %34 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %35 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %254

41:                                               ; preds = %2
  %42 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %43 = load i32, i32* @CPIA2_CMD_GET_VP_SATURATION, align 4
  %44 = load i32, i32* @TRANSFER_READ, align 4
  %45 = call i32 @cpia2_do_command(%struct.camera_data* %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %47 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %254

53:                                               ; preds = %2
  %54 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %55 = load i32, i32* @CPIA2_CMD_GET_USER_EFFECTS, align 4
  %56 = load i32, i32* @TRANSFER_READ, align 4
  %57 = call i32 @cpia2_do_command(%struct.camera_data* %54, i32 %55, i32 %56, i32 0)
  %58 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %59 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CPIA2_VP_USER_EFFECTS_MIRROR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %68 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %254

69:                                               ; preds = %2
  %70 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %71 = load i32, i32* @CPIA2_CMD_GET_USER_EFFECTS, align 4
  %72 = load i32, i32* @TRANSFER_READ, align 4
  %73 = call i32 @cpia2_do_command(%struct.camera_data* %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %75 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CPIA2_VP_USER_EFFECTS_FLIP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %254

85:                                               ; preds = %2
  %86 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %87 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %92 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %254

93:                                               ; preds = %2
  %94 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %95 = load i32, i32* @CPIA2_CMD_GET_VP_GPIO_DATA, align 4
  %96 = load i32, i32* @TRANSFER_READ, align 4
  %97 = call i32 @cpia2_do_command(%struct.camera_data* %94, i32 %95, i32 %96, i32 0)
  %98 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %99 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %104 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %254

105:                                              ; preds = %2
  %106 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %107 = load i32, i32* @CPIA2_CMD_GET_FLICKER_MODES, align 4
  %108 = load i32, i32* @TRANSFER_READ, align 4
  %109 = call i32 @cpia2_do_command(%struct.camera_data* %106, i32 %107, i32 %108, i32 0)
  %110 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %111 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CPIA2_VP_FLICKER_MODES_NEVER_FLICKER, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i32, i32* @NEVER_FLICKER, align 4
  store i32 %119, i32* %8, align 4
  br label %134

120:                                              ; preds = %105
  %121 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %122 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CPIA2_VP_FLICKER_MODES_50HZ, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* @FLICKER_50, align 4
  store i32 %130, i32* %8, align 4
  br label %133

131:                                              ; preds = %120
  %132 = load i32, i32* @FLICKER_60, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %131, %129
  br label %134

134:                                              ; preds = %133, %118
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %153, %134
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @NUM_FLICKER_CONTROLS, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** @flicker_controls, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %151 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %156

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %135

156:                                              ; preds = %148, %135
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @NUM_FLICKER_CONTROLS, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %262

163:                                              ; preds = %156
  br label %254

164:                                              ; preds = %2
  %165 = load i32, i32* @NUM_FRAMERATE_CONTROLS, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %186, %164
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %167
  %172 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %173 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** @framerate_controls, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %176, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %171
  br label %189

185:                                              ; preds = %171
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %167

189:                                              ; preds = %184, %167
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp sgt i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %262

196:                                              ; preds = %189
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %199 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  br label %254

200:                                              ; preds = %2
  %201 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %202 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %207 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %254

208:                                              ; preds = %2
  %209 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %210 = load i32, i32* @CPIA2_CMD_GET_VP_GPIO_DATA, align 4
  %211 = load i32, i32* @TRANSFER_READ, align 4
  %212 = call i32 @cpia2_do_command(%struct.camera_data* %209, i32 %210, i32 %211, i32 0)
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %234, %208
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @NUM_LIGHTS_CONTROLS, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %237

217:                                              ; preds = %213
  %218 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %219 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @GPIO_LIGHTS_MASK, align 4
  %224 = and i32 %222, %223
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** @lights_controls, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %224, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %217
  br label %237

233:                                              ; preds = %217
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %213

237:                                              ; preds = %232, %213
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* @NUM_LIGHTS_CONTROLS, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %3, align 4
  br label %262

244:                                              ; preds = %237
  %245 = load i32, i32* %11, align 4
  %246 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %247 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  br label %254

248:                                              ; preds = %2
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %3, align 4
  br label %262

251:                                              ; preds = %2
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %3, align 4
  br label %262

254:                                              ; preds = %244, %200, %196, %163, %93, %85, %69, %53, %41, %29, %17
  %255 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %256 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.v4l2_control*, %struct.v4l2_control** %6, align 8
  %259 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %257, i32 %260)
  store i32 0, i32* %3, align 4
  br label %262

262:                                              ; preds = %254, %251, %248, %241, %193, %160
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
