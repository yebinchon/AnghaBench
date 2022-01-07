; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_s_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_s_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cx18_open_id = type { i64, i32, %struct.cx18* }
%struct.cx18 = type { i32, %struct.cx2341x_mpeg_params, i32*, i32, i32, i32 }
%struct.cx2341x_mpeg_params = type { i64, i32, i64, i64, i32, i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.cx18_api_func_private = type { i32*, %struct.cx18* }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }

@V4L2_CTRL_CLASS_USER = common dso_local global i64 0, align 8
@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@cx18_s_ext_ctrls.freqs = internal global [3 x i32] [i32 44100, i32 48000, i32 32000], align 4
@VIDIOC_S_EXT_CTRLS = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i64 0, align 8
@V4L2_MBUS_FMT_FIXED = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_mbus_fmt = common dso_local global i32 0, align 4
@cx18_api_func = common dso_local global i32 0, align 4
@audio = common dso_local global i32 0, align 4
@s_clock_freq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_s_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_control, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cx18_api_func_private, align 8
  %15 = alloca %struct.cx2341x_mpeg_params, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.v4l2_mbus_framefmt, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.cx18_open_id*
  store %struct.cx18_open_id* %21, %struct.cx18_open_id** %8, align 8
  %22 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %23 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %22, i32 0, i32 2
  %24 = load %struct.cx18*, %struct.cx18** %23, align 8
  store %struct.cx18* %24, %struct.cx18** %9, align 8
  %25 = load %struct.cx18*, %struct.cx18** %9, align 8
  %26 = getelementptr inbounds %struct.cx18, %struct.cx18* %25, i32 0, i32 5
  %27 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %28 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @v4l2_prio_check(i32* %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %218

35:                                               ; preds = %3
  %36 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @V4L2_CTRL_CLASS_USER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %85, %41
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %42
  %49 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = load %struct.cx18*, %struct.cx18** %9, align 8
  %68 = call i32 @cx18_s_ctrl(%struct.cx18* %67, %struct.v4l2_control* %11)
  store i32 %68, i32* %13, align 4
  %69 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %48
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %88

84:                                               ; preds = %48
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %42

88:                                               ; preds = %80, %42
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %4, align 4
  br label %218

90:                                               ; preds = %35
  %91 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %215

96:                                               ; preds = %90
  %97 = load %struct.cx18*, %struct.cx18** %9, align 8
  %98 = getelementptr inbounds %struct.cx18, %struct.cx18* %97, i32 0, i32 1
  %99 = bitcast %struct.cx2341x_mpeg_params* %15 to i8*
  %100 = bitcast %struct.cx2341x_mpeg_params* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 40, i1 false)
  %101 = load %struct.cx18*, %struct.cx18** %9, align 8
  %102 = getelementptr inbounds %struct.cx18, %struct.cx18* %101, i32 0, i32 4
  %103 = call i32 @atomic_read(i32* %102)
  %104 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %105 = load i32, i32* @VIDIOC_S_EXT_CTRLS, align 4
  %106 = call i32 @cx2341x_ext_ctrls(%struct.cx2341x_mpeg_params* %15, i32 %103, %struct.v4l2_ext_controls* %104, i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %96
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %4, align 4
  br label %218

111:                                              ; preds = %96
  %112 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %15, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.cx18*, %struct.cx18** %9, align 8
  %115 = getelementptr inbounds %struct.cx18, %struct.cx18* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %113, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %15, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %18, align 4
  %125 = load %struct.cx18*, %struct.cx18** %9, align 8
  %126 = getelementptr inbounds %struct.cx18, %struct.cx18* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 2, i32 1
  %133 = sdiv i32 %128, %132
  %134 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 0
  store i32 %133, i32* %134, align 4
  %135 = load %struct.cx18*, %struct.cx18** %9, align 8
  %136 = getelementptr inbounds %struct.cx18, %struct.cx18* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 2
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @V4L2_MBUS_FMT_FIXED, align 4
  %141 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %19, i32 0, i32 1
  store i32 %140, i32* %141, align 4
  %142 = load %struct.cx18*, %struct.cx18** %9, align 8
  %143 = getelementptr inbounds %struct.cx18, %struct.cx18* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @video, align 4
  %146 = load i32, i32* @s_mbus_fmt, align 4
  %147 = call i32 @v4l2_subdev_call(i32 %144, i32 %145, i32 %146, %struct.v4l2_mbus_framefmt* %19)
  br label %148

148:                                              ; preds = %119, %111
  %149 = load %struct.cx18*, %struct.cx18** %9, align 8
  %150 = getelementptr inbounds %struct.cx18_api_func_private, %struct.cx18_api_func_private* %14, i32 0, i32 1
  store %struct.cx18* %149, %struct.cx18** %150, align 8
  %151 = load %struct.cx18*, %struct.cx18** %9, align 8
  %152 = getelementptr inbounds %struct.cx18, %struct.cx18* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %155 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = getelementptr inbounds %struct.cx18_api_func_private, %struct.cx18_api_func_private* %14, i32 0, i32 0
  store i32* %157, i32** %158, align 8
  %159 = load i32, i32* @cx18_api_func, align 4
  %160 = load %struct.cx18*, %struct.cx18** %9, align 8
  %161 = getelementptr inbounds %struct.cx18, %struct.cx18* %160, i32 0, i32 1
  %162 = call i32 @cx2341x_update(%struct.cx18_api_func_private* %14, i32 %159, %struct.cx2341x_mpeg_params* %161, %struct.cx2341x_mpeg_params* %15)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %188, label %165

165:                                              ; preds = %148
  %166 = load %struct.cx18*, %struct.cx18** %9, align 8
  %167 = getelementptr inbounds %struct.cx18, %struct.cx18* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %15, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %169, %171
  br i1 %172, label %181, label %173

173:                                              ; preds = %165
  %174 = load %struct.cx18*, %struct.cx18** %9, align 8
  %175 = getelementptr inbounds %struct.cx18, %struct.cx18* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %15, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %177, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %173, %165
  %182 = load %struct.cx18*, %struct.cx18** %9, align 8
  %183 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %15, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %15, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @cx18_setup_vbi_fmt(%struct.cx18* %182, i64 %184, i64 %186)
  store i32 %187, i32* %16, align 4
  br label %188

188:                                              ; preds = %181, %173, %148
  %189 = load %struct.cx18*, %struct.cx18** %9, align 8
  %190 = getelementptr inbounds %struct.cx18, %struct.cx18* %189, i32 0, i32 1
  %191 = bitcast %struct.cx2341x_mpeg_params* %190 to i8*
  %192 = bitcast %struct.cx2341x_mpeg_params* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %191, i8* align 8 %192, i64 40, i1 false)
  %193 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %15, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = and i32 %194, 768
  %196 = load %struct.cx18*, %struct.cx18** %9, align 8
  %197 = getelementptr inbounds %struct.cx18, %struct.cx18* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %15, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = and i32 %199, 3
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @cx18_s_ext_ctrls.freqs, i64 0, i64 0))
  %203 = icmp ult i32 %201, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %188
  %205 = load %struct.cx18*, %struct.cx18** %9, align 8
  %206 = load i32, i32* @audio, align 4
  %207 = load i32, i32* @s_clock_freq, align 4
  %208 = load i32, i32* %17, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [3 x i32], [3 x i32]* @cx18_s_ext_ctrls.freqs, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @cx18_call_all(%struct.cx18* %205, i32 %206, i32 %207, i32 %211)
  br label %213

213:                                              ; preds = %204, %188
  %214 = load i32, i32* %16, align 4
  store i32 %214, i32* %4, align 4
  br label %218

215:                                              ; preds = %90
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %215, %213, %109, %88, %33
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32 @cx18_s_ctrl(%struct.cx18*, %struct.v4l2_control*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cx2341x_ext_ctrls(%struct.cx2341x_mpeg_params*, i32, %struct.v4l2_ext_controls*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @cx2341x_update(%struct.cx18_api_func_private*, i32, %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params*) #1

declare dso_local i32 @cx18_setup_vbi_fmt(%struct.cx18*, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
