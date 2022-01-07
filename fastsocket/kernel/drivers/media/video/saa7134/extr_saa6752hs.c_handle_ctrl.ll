; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_handle_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa6752hs.c_handle_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa6752hs_mpeg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@MPEG_PID_MAX = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_256K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_L2_BITRATE_384K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_256K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_AC3_BITRATE_384K = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_16x9 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_4x3 = common dso_local global i32 0, align 4
@MPEG_VIDEO_TARGET_BITRATE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.saa6752hs_mpeg_params*, %struct.v4l2_ext_control*, i32)* @handle_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ctrl(i32 %0, %struct.saa6752hs_mpeg_params* %1, %struct.v4l2_ext_control* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.saa6752hs_mpeg_params*, align 8
  %8 = alloca %struct.v4l2_ext_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.saa6752hs_mpeg_params* %1, %struct.saa6752hs_mpeg_params** %7, align 8
  store %struct.v4l2_ext_control* %2, %struct.v4l2_ext_control** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %8, align 8
  %13 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %8, align 8
  %16 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %333 [
    i32 133, label %18
    i32 135, label %31
    i32 137, label %54
    i32 134, label %77
    i32 136, label %100
    i32 140, label %123
    i32 139, label %147
    i32 141, label %176
    i32 138, label %211
    i32 128, label %224
    i32 132, label %237
    i32 131, label %264
    i32 129, label %295
    i32 130, label %326
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ERANGE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %340

29:                                               ; preds = %22, %18
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %11, align 4
  br label %336

31:                                               ; preds = %4
  %32 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %33 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @MPEG_PID_MAX, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ERANGE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %340

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @MPEG_PID_MAX, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @MPEG_PID_MAX, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %53 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %336

54:                                               ; preds = %4
  %55 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %56 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @MPEG_PID_MAX, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @ERANGE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %340

67:                                               ; preds = %60, %54
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @MPEG_PID_MAX, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @MPEG_PID_MAX, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %76 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %336

77:                                               ; preds = %4
  %78 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %79 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @MPEG_PID_MAX, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @ERANGE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %340

90:                                               ; preds = %83, %77
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @MPEG_PID_MAX, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @MPEG_PID_MAX, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %99 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %336

100:                                              ; preds = %4
  %101 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %102 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @MPEG_PID_MAX, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @ERANGE, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %340

113:                                              ; preds = %106, %100
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @MPEG_PID_MAX, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @MPEG_PID_MAX, align 4
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %122 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  br label %336

123:                                              ; preds = %4
  %124 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %125 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136, %133
  %141 = load i32, i32* @ERANGE, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %340

143:                                              ; preds = %136, %129, %123
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %146 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 4
  br label %336

147:                                              ; preds = %4
  %148 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %149 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %147
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_256K, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_384K, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* @ERANGE, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %5, align 4
  br label %340

164:                                              ; preds = %157, %153, %147
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_256K, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_256K, align 4
  store i32 %169, i32* %11, align 4
  br label %172

170:                                              ; preds = %164
  %171 = load i32, i32* @V4L2_MPEG_AUDIO_L2_BITRATE_384K, align 4
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %170, %168
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %175 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  br label %336

176:                                              ; preds = %4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %5, align 4
  br label %340

182:                                              ; preds = %176
  %183 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %184 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %182
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_256K, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_384K, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i32, i32* @ERANGE, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %5, align 4
  br label %340

199:                                              ; preds = %192, %188, %182
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_256K, align 4
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %199
  %204 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_256K, align 4
  store i32 %204, i32* %11, align 4
  br label %207

205:                                              ; preds = %199
  %206 = load i32, i32* @V4L2_MPEG_AUDIO_AC3_BITRATE_384K, align 4
  store i32 %206, i32* %11, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %210 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 4
  br label %336

211:                                              ; preds = %4
  %212 = load i32, i32* @V4L2_MPEG_AUDIO_SAMPLING_FREQ_48000, align 4
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %211
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i32, i32* @ERANGE, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %5, align 4
  br label %340

222:                                              ; preds = %215, %211
  %223 = load i32, i32* %10, align 4
  store i32 %223, i32* %11, align 4
  br label %336

224:                                              ; preds = %4
  %225 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %224
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i32, i32* @ERANGE, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %5, align 4
  br label %340

235:                                              ; preds = %228, %224
  %236 = load i32, i32* %10, align 4
  store i32 %236, i32* %11, align 4
  br label %336

237:                                              ; preds = %4
  %238 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %239 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %237
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_16x9, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_4x3, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i32, i32* @ERANGE, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %5, align 4
  br label %340

254:                                              ; preds = %247, %243, %237
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_16x9, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  %259 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_4x3, align 4
  store i32 %259, i32* %11, align 4
  br label %260

260:                                              ; preds = %258, %254
  %261 = load i32, i32* %11, align 4
  %262 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %263 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %262, i32 0, i32 7
  store i32 %261, i32* %263, align 4
  br label %336

264:                                              ; preds = %4
  %265 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %266 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 %267, 1000
  store i32 %268, i32* %10, align 4
  %269 = load i32, i32* %11, align 4
  %270 = sdiv i32 %269, 1000
  %271 = mul nsw i32 1000, %270
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %9, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %264
  %275 = load i32, i32* %11, align 4
  %276 = load i32, i32* @MPEG_VIDEO_TARGET_BITRATE_MAX, align 4
  %277 = mul nsw i32 %276, 1000
  %278 = icmp sgt i32 %275, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = load i32, i32* @ERANGE, align 4
  %281 = sub nsw i32 0, %280
  store i32 %281, i32* %5, align 4
  br label %340

282:                                              ; preds = %274, %264
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* @MPEG_VIDEO_TARGET_BITRATE_MAX, align 4
  %285 = mul nsw i32 %284, 1000
  %286 = icmp sgt i32 %283, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i32, i32* @MPEG_VIDEO_TARGET_BITRATE_MAX, align 4
  %289 = mul nsw i32 %288, 1000
  store i32 %289, i32* %11, align 4
  br label %290

290:                                              ; preds = %287, %282
  %291 = load i32, i32* %11, align 4
  %292 = sdiv i32 %291, 1000
  %293 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %294 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %293, i32 0, i32 8
  store i32 %292, i32* %294, align 4
  br label %336

295:                                              ; preds = %4
  %296 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %297 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %296, i32 0, i32 9
  %298 = load i32, i32* %297, align 4
  %299 = mul nsw i32 %298, 1000
  store i32 %299, i32* %10, align 4
  %300 = load i32, i32* %11, align 4
  %301 = sdiv i32 %300, 1000
  %302 = mul nsw i32 1000, %301
  store i32 %302, i32* %11, align 4
  %303 = load i32, i32* %9, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %295
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @MPEG_VIDEO_TARGET_BITRATE_MAX, align 4
  %308 = mul nsw i32 %307, 1000
  %309 = icmp sgt i32 %306, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %305
  %311 = load i32, i32* @ERANGE, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %5, align 4
  br label %340

313:                                              ; preds = %305, %295
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* @MPEG_VIDEO_TARGET_BITRATE_MAX, align 4
  %316 = mul nsw i32 %315, 1000
  %317 = icmp sgt i32 %314, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load i32, i32* @MPEG_VIDEO_TARGET_BITRATE_MAX, align 4
  %320 = mul nsw i32 %319, 1000
  store i32 %320, i32* %11, align 4
  br label %321

321:                                              ; preds = %318, %313
  %322 = load i32, i32* %11, align 4
  %323 = sdiv i32 %322, 1000
  %324 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %325 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %324, i32 0, i32 9
  store i32 %323, i32* %325, align 4
  br label %336

326:                                              ; preds = %4
  %327 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %328 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %327, i32 0, i32 10
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %10, align 4
  %330 = load i32, i32* %11, align 4
  %331 = load %struct.saa6752hs_mpeg_params*, %struct.saa6752hs_mpeg_params** %7, align 8
  %332 = getelementptr inbounds %struct.saa6752hs_mpeg_params, %struct.saa6752hs_mpeg_params* %331, i32 0, i32 10
  store i32 %330, i32* %332, align 4
  br label %336

333:                                              ; preds = %4
  %334 = load i32, i32* @EINVAL, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %5, align 4
  br label %340

336:                                              ; preds = %326, %321, %290, %260, %235, %222, %207, %172, %143, %119, %96, %73, %50, %29
  %337 = load i32, i32* %11, align 4
  %338 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %8, align 8
  %339 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %338, i32 0, i32 0
  store i32 %337, i32* %339, align 4
  store i32 0, i32* %5, align 4
  br label %340

340:                                              ; preds = %336, %333, %310, %279, %251, %232, %219, %196, %179, %161, %140, %110, %87, %64, %41, %26
  %341 = load i32, i32* %5, align 4
  ret i32 %341
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
