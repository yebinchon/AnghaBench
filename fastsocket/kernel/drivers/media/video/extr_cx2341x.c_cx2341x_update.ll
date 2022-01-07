; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_mpeg_params = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cx2341x_update.mpeg_stream_type = internal global [6 x i32] [i32 0, i32 1, i32 2, i32 14, i32 11, i32 12], align 16
@CX2341X_ENC_SET_OUTPUT_PORT = common dso_local global i32 0, align 4
@is_50hz = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_FRAME_RATE = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@video_encoding = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i64 0, align 8
@CX2341X_ENC_SET_FRAME_SIZE = common dso_local global i32 0, align 4
@stream_type = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_STREAM_TYPE = common dso_local global i32 0, align 4
@video_aspect = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_ASPECT_RATIO = common dso_local global i32 0, align 4
@video_b_frames = common dso_local global i32 0, align 4
@video_gop_size = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_GOP_PROPERTIES = common dso_local global i32 0, align 4
@video_gop_closure = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_GOP_CLOSURE = common dso_local global i32 0, align 4
@audio_properties = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_AUDIO_PROPERTIES = common dso_local global i32 0, align 4
@audio_mute = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_AUDIO = common dso_local global i32 0, align 4
@video_bitrate_mode = common dso_local global i32 0, align 4
@video_bitrate = common dso_local global i32 0, align 4
@video_bitrate_peak = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_BIT_RATE = common dso_local global i32 0, align 4
@video_spatial_filter_mode = common dso_local global i32 0, align 4
@video_temporal_filter_mode = common dso_local global i32 0, align 4
@video_median_filter_type = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_DNR_FILTER_MODE = common dso_local global i32 0, align 4
@video_luma_median_filter_bottom = common dso_local global i32 0, align 4
@video_luma_median_filter_top = common dso_local global i32 0, align 4
@video_chroma_median_filter_bottom = common dso_local global i32 0, align 4
@video_chroma_median_filter_top = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_CORING_LEVELS = common dso_local global i32 0, align 4
@video_luma_spatial_filter_type = common dso_local global i32 0, align 4
@video_chroma_spatial_filter_type = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_SPATIAL_FILTER_TYPE = common dso_local global i32 0, align 4
@video_spatial_filter = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_DNR_FILTER_PROPS = common dso_local global i32 0, align 4
@video_temporal_decimation = common dso_local global i32 0, align 4
@CX2341X_ENC_SET_FRAME_DROP_RATE = common dso_local global i32 0, align 4
@video_mute = common dso_local global i32 0, align 4
@video_mute_yuv = common dso_local global i32 0, align 4
@CX2341X_ENC_MUTE_VIDEO = common dso_local global i32 0, align 4
@stream_insert_nav_packets = common dso_local global i32 0, align 4
@CX2341X_ENC_MISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx2341x_update(i8* %0, i32 %1, %struct.cx2341x_mpeg_params* %2, %struct.cx2341x_mpeg_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx2341x_mpeg_params*, align 8
  %9 = alloca %struct.cx2341x_mpeg_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cx2341x_mpeg_params* %2, %struct.cx2341x_mpeg_params** %8, align 8
  store %struct.cx2341x_mpeg_params* %3, %struct.cx2341x_mpeg_params** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %16 = icmp eq %struct.cx2341x_mpeg_params* %15, null
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %19 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CX2341X_ENC_SET_OUTPUT_PORT, align 4
  %24 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %25 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %21, i32 %22, i32 %23, i32 2, i32 %26, i32 0)
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @is_50hz, align 4
  %32 = call i64 @NEQ(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30, %4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CX2341X_ENC_SET_FRAME_RATE, align 4
  %38 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %39 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %38, i32 0, i32 29
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %35, i32 %36, i32 %37, i32 1, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %463

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @width, align 4
  %52 = call i64 @NEQ(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @height, align 4
  %56 = call i64 @NEQ(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @video_encoding, align 4
  %60 = call i64 @NEQ(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %58, %54, %50, %47
  %63 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %64 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %13, align 4
  %66 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %67 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %70 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %62
  %75 = load i32, i32* %13, align 4
  %76 = sdiv i32 %75, 2
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sdiv i32 %77, 2
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %74, %62
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @CX2341X_ENC_SET_FRAME_SIZE, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %80, i32 %81, i32 %82, i32 2, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %463

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %58
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @stream_type, align 4
  %96 = call i64 @NEQ(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %94, %91
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @CX2341X_ENC_SET_STREAM_TYPE, align 4
  %102 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %103 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* @cx2341x_update.mpeg_stream_type, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %99, i32 %100, i32 %101, i32 1, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %98
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %463

112:                                              ; preds = %98
  br label %113

113:                                              ; preds = %112, %94
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @video_aspect, align 4
  %118 = call i64 @NEQ(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %116, %113
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @CX2341X_ENC_SET_ASPECT_RATIO, align 4
  %124 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %125 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 1, %126
  %128 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %121, i32 %122, i32 %123, i32 1, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %5, align 4
  br label %463

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %116
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %145, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @video_b_frames, align 4
  %139 = call i64 @NEQ(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* @video_gop_size, align 4
  %143 = call i64 @NEQ(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %141, %137, %134
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @CX2341X_ENC_SET_GOP_PROPERTIES, align 4
  %149 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %150 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %153 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  %156 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %146, i32 %147, i32 %148, i32 2, i32 %151, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %145
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %5, align 4
  br label %463

161:                                              ; preds = %145
  br label %162

162:                                              ; preds = %161, %141
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* @video_gop_closure, align 4
  %167 = call i64 @NEQ(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %165, %162
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @CX2341X_ENC_SET_GOP_CLOSURE, align 4
  %173 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %174 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %173, i32 0, i32 28
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %170, i32 %171, i32 %172, i32 1, i32 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %169
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %5, align 4
  br label %463

181:                                              ; preds = %169
  br label %182

182:                                              ; preds = %181, %165
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @audio_properties, align 4
  %187 = call i64 @NEQ(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %185, %182
  %190 = load i8*, i8** %6, align 8
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @CX2341X_ENC_SET_AUDIO_PROPERTIES, align 4
  %193 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %194 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %193, i32 0, i32 27
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %190, i32 %191, i32 %192, i32 1, i32 %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %189
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %5, align 4
  br label %463

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201, %185
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* @audio_mute, align 4
  %207 = call i64 @NEQ(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %205, %202
  %210 = load i8*, i8** %6, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @CX2341X_ENC_MUTE_AUDIO, align 4
  %213 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %214 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %213, i32 0, i32 26
  %215 = load i32, i32* %214, align 8
  %216 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %210, i32 %211, i32 %212, i32 1, i32 %215)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %209
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %5, align 4
  br label %463

221:                                              ; preds = %209
  br label %222

222:                                              ; preds = %221, %205
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %237, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* @video_bitrate_mode, align 4
  %227 = call i64 @NEQ(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* @video_bitrate, align 4
  %231 = call i64 @NEQ(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = load i32, i32* @video_bitrate_peak, align 4
  %235 = call i64 @NEQ(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %257

237:                                              ; preds = %233, %229, %225, %222
  %238 = load i8*, i8** %6, align 8
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @CX2341X_ENC_SET_BIT_RATE, align 4
  %241 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %242 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %241, i32 0, i32 25
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %245 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %244, i32 0, i32 24
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %248 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %247, i32 0, i32 9
  %249 = load i32, i32* %248, align 4
  %250 = sdiv i32 %249, 400
  %251 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %238, i32 %239, i32 %240, i32 5, i32 %243, i32 %246, i32 %250, i32 0, i32 0)
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %237
  %255 = load i32, i32* %10, align 4
  store i32 %255, i32* %5, align 4
  br label %463

256:                                              ; preds = %237
  br label %257

257:                                              ; preds = %256, %233
  %258 = load i32, i32* %11, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %272, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* @video_spatial_filter_mode, align 4
  %262 = call i64 @NEQ(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %260
  %265 = load i32, i32* @video_temporal_filter_mode, align 4
  %266 = call i64 @NEQ(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = load i32, i32* @video_median_filter_type, align 4
  %270 = call i64 @NEQ(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %293

272:                                              ; preds = %268, %264, %260, %257
  %273 = load i8*, i8** %6, align 8
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* @CX2341X_ENC_SET_DNR_FILTER_MODE, align 4
  %276 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %277 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %276, i32 0, i32 10
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %280 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %279, i32 0, i32 11
  %281 = load i32, i32* %280, align 4
  %282 = shl i32 %281, 1
  %283 = or i32 %278, %282
  %284 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %285 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %284, i32 0, i32 12
  %286 = load i32, i32* %285, align 8
  %287 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %273, i32 %274, i32 %275, i32 2, i32 %283, i32 %286)
  store i32 %287, i32* %10, align 4
  %288 = load i32, i32* %10, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %272
  %291 = load i32, i32* %10, align 4
  store i32 %291, i32* %5, align 4
  br label %463

292:                                              ; preds = %272
  br label %293

293:                                              ; preds = %292, %268
  %294 = load i32, i32* %11, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %312, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* @video_luma_median_filter_bottom, align 4
  %298 = call i64 @NEQ(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %312, label %300

300:                                              ; preds = %296
  %301 = load i32, i32* @video_luma_median_filter_top, align 4
  %302 = call i64 @NEQ(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %312, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* @video_chroma_median_filter_bottom, align 4
  %306 = call i64 @NEQ(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %312, label %308

308:                                              ; preds = %304
  %309 = load i32, i32* @video_chroma_median_filter_top, align 4
  %310 = call i64 @NEQ(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %334

312:                                              ; preds = %308, %304, %300, %296, %293
  %313 = load i8*, i8** %6, align 8
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @CX2341X_ENC_SET_CORING_LEVELS, align 4
  %316 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %317 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %316, i32 0, i32 23
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %320 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %319, i32 0, i32 22
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %323 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %322, i32 0, i32 21
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %326 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %325, i32 0, i32 20
  %327 = load i32, i32* %326, align 8
  %328 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %313, i32 %314, i32 %315, i32 4, i32 %318, i32 %321, i32 %324, i32 %327)
  store i32 %328, i32* %10, align 4
  %329 = load i32, i32* %10, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %312
  %332 = load i32, i32* %10, align 4
  store i32 %332, i32* %5, align 4
  br label %463

333:                                              ; preds = %312
  br label %334

334:                                              ; preds = %333, %308
  %335 = load i32, i32* %11, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %345, label %337

337:                                              ; preds = %334
  %338 = load i32, i32* @video_luma_spatial_filter_type, align 4
  %339 = call i64 @NEQ(i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %337
  %342 = load i32, i32* @video_chroma_spatial_filter_type, align 4
  %343 = call i64 @NEQ(i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %361

345:                                              ; preds = %341, %337, %334
  %346 = load i8*, i8** %6, align 8
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* @CX2341X_ENC_SET_SPATIAL_FILTER_TYPE, align 4
  %349 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %350 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %349, i32 0, i32 13
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %353 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %352, i32 0, i32 14
  %354 = load i32, i32* %353, align 8
  %355 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %346, i32 %347, i32 %348, i32 2, i32 %351, i32 %354)
  store i32 %355, i32* %10, align 4
  %356 = load i32, i32* %10, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %345
  %359 = load i32, i32* %10, align 4
  store i32 %359, i32* %5, align 4
  br label %463

360:                                              ; preds = %345
  br label %361

361:                                              ; preds = %360, %341
  %362 = load i32, i32* %11, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %374, label %364

364:                                              ; preds = %361
  %365 = load i32, i32* @video_spatial_filter, align 4
  %366 = call i64 @NEQ(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %364
  %369 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %8, align 8
  %370 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* %12, align 4
  %373 = icmp ne i32 %371, %372
  br i1 %373, label %374, label %388

374:                                              ; preds = %368, %364, %361
  %375 = load i8*, i8** %6, align 8
  %376 = load i32, i32* %7, align 4
  %377 = load i32, i32* @CX2341X_ENC_SET_DNR_FILTER_PROPS, align 4
  %378 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %379 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %378, i32 0, i32 15
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %12, align 4
  %382 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %375, i32 %376, i32 %377, i32 2, i32 %380, i32 %381)
  store i32 %382, i32* %10, align 4
  %383 = load i32, i32* %10, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %374
  %386 = load i32, i32* %10, align 4
  store i32 %386, i32* %5, align 4
  br label %463

387:                                              ; preds = %374
  br label %388

388:                                              ; preds = %387, %368
  %389 = load i32, i32* %11, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %388
  %392 = load i32, i32* @video_temporal_decimation, align 4
  %393 = call i64 @NEQ(i32 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %408

395:                                              ; preds = %391, %388
  %396 = load i8*, i8** %6, align 8
  %397 = load i32, i32* %7, align 4
  %398 = load i32, i32* @CX2341X_ENC_SET_FRAME_DROP_RATE, align 4
  %399 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %400 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %399, i32 0, i32 19
  %401 = load i32, i32* %400, align 4
  %402 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %396, i32 %397, i32 %398, i32 1, i32 %401)
  store i32 %402, i32* %10, align 4
  %403 = load i32, i32* %10, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %395
  %406 = load i32, i32* %10, align 4
  store i32 %406, i32* %5, align 4
  br label %463

407:                                              ; preds = %395
  br label %408

408:                                              ; preds = %407, %391
  %409 = load i32, i32* %11, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %424, label %411

411:                                              ; preds = %408
  %412 = load i32, i32* @video_mute, align 4
  %413 = call i64 @NEQ(i32 %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %424, label %415

415:                                              ; preds = %411
  %416 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %417 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %416, i32 0, i32 16
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %442

420:                                              ; preds = %415
  %421 = load i32, i32* @video_mute_yuv, align 4
  %422 = call i64 @NEQ(i32 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %442

424:                                              ; preds = %420, %411, %408
  %425 = load i8*, i8** %6, align 8
  %426 = load i32, i32* %7, align 4
  %427 = load i32, i32* @CX2341X_ENC_MUTE_VIDEO, align 4
  %428 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %429 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %428, i32 0, i32 16
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %432 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %431, i32 0, i32 17
  %433 = load i32, i32* %432, align 4
  %434 = shl i32 %433, 8
  %435 = or i32 %430, %434
  %436 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %425, i32 %426, i32 %427, i32 1, i32 %435)
  store i32 %436, i32* %10, align 4
  %437 = load i32, i32* %10, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %424
  %440 = load i32, i32* %10, align 4
  store i32 %440, i32* %5, align 4
  br label %463

441:                                              ; preds = %424
  br label %442

442:                                              ; preds = %441, %420, %415
  %443 = load i32, i32* %11, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %449, label %445

445:                                              ; preds = %442
  %446 = load i32, i32* @stream_insert_nav_packets, align 4
  %447 = call i64 @NEQ(i32 %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %462

449:                                              ; preds = %445, %442
  %450 = load i8*, i8** %6, align 8
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %453 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %9, align 8
  %454 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %453, i32 0, i32 18
  %455 = load i32, i32* %454, align 8
  %456 = call i32 (i8*, i32, i32, i32, i32, ...) @cx2341x_api(i8* %450, i32 %451, i32 %452, i32 2, i32 7, i32 %455)
  store i32 %456, i32* %10, align 4
  %457 = load i32, i32* %10, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %461

459:                                              ; preds = %449
  %460 = load i32, i32* %10, align 4
  store i32 %460, i32* %5, align 4
  br label %463

461:                                              ; preds = %449
  br label %462

462:                                              ; preds = %461, %445
  store i32 0, i32* %5, align 4
  br label %463

463:                                              ; preds = %462, %459, %439, %405, %385, %358, %331, %290, %254, %219, %199, %179, %159, %131, %110, %88, %44
  %464 = load i32, i32* %5, align 4
  ret i32 %464
}

declare dso_local i32 @cx2341x_api(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i64 @NEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
