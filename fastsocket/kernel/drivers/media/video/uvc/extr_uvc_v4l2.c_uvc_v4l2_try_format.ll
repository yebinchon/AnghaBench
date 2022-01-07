; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_try_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.uvc_format* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.uvc_format = type { i64, i32, i32, i32, i32, %struct.uvc_frame* }
%struct.uvc_frame = type { i32, i32, i32, i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.uvc_streaming_control = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UVC_TRACE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Trying format 0x%08x (%c%c%c%c): %ux%u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported format 0x%08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unsupported size %ux%u.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Using default frame interval %u.%u us (%u.%u fps).\0A\00", align 1
@UVC_QUIRK_PROBE_EXTRAFIELDS = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.v4l2_format*, %struct.uvc_streaming_control*, %struct.uvc_format**, %struct.uvc_frame**)* @uvc_v4l2_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_try_format(%struct.uvc_streaming* %0, %struct.v4l2_format* %1, %struct.uvc_streaming_control* %2, %struct.uvc_format** %3, %struct.uvc_frame** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uvc_streaming*, align 8
  %8 = alloca %struct.v4l2_format*, align 8
  %9 = alloca %struct.uvc_streaming_control*, align 8
  %10 = alloca %struct.uvc_format**, align 8
  %11 = alloca %struct.uvc_frame**, align 8
  %12 = alloca %struct.uvc_format*, align 8
  %13 = alloca %struct.uvc_frame*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %7, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %8, align 8
  store %struct.uvc_streaming_control* %2, %struct.uvc_streaming_control** %9, align 8
  store %struct.uvc_format** %3, %struct.uvc_format*** %10, align 8
  store %struct.uvc_frame** %4, %struct.uvc_frame*** %11, align 8
  store %struct.uvc_format* null, %struct.uvc_format** %12, align 8
  store %struct.uvc_frame* null, %struct.uvc_frame** %13, align 8
  store i32 0, i32* %20, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %28 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %335

34:                                               ; preds = %5
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = bitcast i64* %38 to i32*
  store i32* %39, i32** %21, align 8
  %40 = load i32, i32* @UVC_TRACE_FORMAT, align 4
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %21, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %21, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %21, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %21, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %63, i32 %68)
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %94, %34
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %73 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %70
  %77 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %78 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %77, i32 0, i32 5
  %79 = load %struct.uvc_format*, %struct.uvc_format** %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %79, i64 %81
  store %struct.uvc_format* %82, %struct.uvc_format** %12, align 8
  %83 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %84 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %85, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %97

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %18, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %18, align 4
  br label %70

97:                                               ; preds = %92, %70
  %98 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %99 = icmp eq %struct.uvc_format* %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %102 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %105 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %103, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %100, %97
  %111 = load i32, i32* @UVC_TRACE_FORMAT, align 4
  %112 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %113 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %335

121:                                              ; preds = %100
  %122 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %123 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %14, align 4
  %127 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %128 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %15, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %132

132:                                              ; preds = %188, %121
  %133 = load i32, i32* %18, align 4
  %134 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %135 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp ult i32 %133, %136
  br i1 %137, label %138, label %191

138:                                              ; preds = %132
  %139 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %140 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %139, i32 0, i32 5
  %141 = load %struct.uvc_frame*, %struct.uvc_frame** %140, align 8
  %142 = load i32, i32* %18, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %141, i64 %143
  %145 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %22, align 4
  %147 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %148 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %147, i32 0, i32 5
  %149 = load %struct.uvc_frame*, %struct.uvc_frame** %148, align 8
  %150 = load i32, i32* %18, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %149, i64 %151
  %153 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %23, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %14, align 4
  %157 = call i32 @min(i32 %155, i32 %156)
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @min(i32 %158, i32 %159)
  %161 = mul i32 %157, %160
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* %23, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %15, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %164, %167
  %169 = load i32, i32* %16, align 4
  %170 = mul i32 2, %169
  %171 = sub i32 %168, %170
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %138
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %17, align 4
  %177 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %178 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %177, i32 0, i32 5
  %179 = load %struct.uvc_frame*, %struct.uvc_frame** %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %179, i64 %181
  store %struct.uvc_frame* %182, %struct.uvc_frame** %13, align 8
  br label %183

183:                                              ; preds = %175, %138
  %184 = load i32, i32* %17, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  br label %191

187:                                              ; preds = %183
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %18, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %132

191:                                              ; preds = %186, %132
  %192 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %193 = icmp eq %struct.uvc_frame* %192, null
  br i1 %193, label %194, label %209

194:                                              ; preds = %191
  %195 = load i32, i32* @UVC_TRACE_FORMAT, align 4
  %196 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %197 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %202 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %195, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %200, i32 %205)
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %6, align 4
  br label %335

209:                                              ; preds = %191
  %210 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %211 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %19, align 4
  %213 = load i32, i32* @UVC_TRACE_FORMAT, align 4
  %214 = load i32, i32* %19, align 4
  %215 = sdiv i32 %214, 10
  %216 = load i32, i32* %19, align 4
  %217 = srem i32 %216, 10
  %218 = load i32, i32* %19, align 4
  %219 = sdiv i32 10000000, %218
  %220 = load i32, i32* %19, align 4
  %221 = sdiv i32 100000000, %220
  %222 = srem i32 %221, 10
  %223 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %213, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %215, i32 %217, i32 %219, i32 %222)
  %224 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %225 = call i32 @memset(%struct.uvc_streaming_control* %224, i32 0, i32 20)
  %226 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %227 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %226, i32 0, i32 0
  store i32 1, i32* %227, align 4
  %228 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %229 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %232 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 4
  %233 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %234 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %237 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %239 = load i32, i32* %19, align 4
  %240 = call i32 @uvc_try_frame_interval(%struct.uvc_frame* %238, i32 %239)
  %241 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %242 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 4
  %243 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %244 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %243, i32 0, i32 2
  %245 = call i32 @mutex_lock(i32* %244)
  %246 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %247 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %246, i32 0, i32 4
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @UVC_QUIRK_PROBE_EXTRAFIELDS, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %209
  %255 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %256 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %260 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 4
  br label %261

261:                                              ; preds = %254, %209
  %262 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %263 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %264 = call i32 @uvc_probe_video(%struct.uvc_streaming* %262, %struct.uvc_streaming_control* %263)
  store i32 %264, i32* %20, align 4
  %265 = load %struct.uvc_streaming*, %struct.uvc_streaming** %7, align 8
  %266 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %265, i32 0, i32 2
  %267 = call i32 @mutex_unlock(i32* %266)
  %268 = load i32, i32* %20, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %261
  br label %333

271:                                              ; preds = %261
  %272 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %273 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %276 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  store i32 %274, i32* %278, align 8
  %279 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %280 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %283 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 2
  store i32 %281, i32* %285, align 4
  %286 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %287 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %288 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 7
  store i32 %286, i32* %290, align 8
  %291 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %292 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %295 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = mul nsw i32 %293, %296
  %298 = sdiv i32 %297, 8
  %299 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %300 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 3
  store i32 %298, i32* %302, align 8
  %303 = load %struct.uvc_streaming_control*, %struct.uvc_streaming_control** %9, align 8
  %304 = getelementptr inbounds %struct.uvc_streaming_control, %struct.uvc_streaming_control* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %307 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 6
  store i32 %305, i32* %309, align 4
  %310 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %311 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %314 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 5
  store i32 %312, i32* %316, align 8
  %317 = load %struct.v4l2_format*, %struct.v4l2_format** %8, align 8
  %318 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 4
  store i64 0, i64* %320, align 8
  %321 = load %struct.uvc_format**, %struct.uvc_format*** %10, align 8
  %322 = icmp ne %struct.uvc_format** %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %271
  %324 = load %struct.uvc_format*, %struct.uvc_format** %12, align 8
  %325 = load %struct.uvc_format**, %struct.uvc_format*** %10, align 8
  store %struct.uvc_format* %324, %struct.uvc_format** %325, align 8
  br label %326

326:                                              ; preds = %323, %271
  %327 = load %struct.uvc_frame**, %struct.uvc_frame*** %11, align 8
  %328 = icmp ne %struct.uvc_frame** %327, null
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load %struct.uvc_frame*, %struct.uvc_frame** %13, align 8
  %331 = load %struct.uvc_frame**, %struct.uvc_frame*** %11, align 8
  store %struct.uvc_frame* %330, %struct.uvc_frame** %331, align 8
  br label %332

332:                                              ; preds = %329, %326
  br label %333

333:                                              ; preds = %332, %270
  %334 = load i32, i32* %20, align 4
  store i32 %334, i32* %6, align 4
  br label %335

335:                                              ; preds = %333, %194, %110, %31
  %336 = load i32, i32* %6, align 4
  ret i32 %336
}

declare dso_local i32 @uvc_trace(i32, i8*, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memset(%struct.uvc_streaming_control*, i32, i32) #1

declare dso_local i32 @uvc_try_frame_interval(%struct.uvc_frame*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uvc_probe_video(%struct.uvc_streaming*, %struct.uvc_streaming_control*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
