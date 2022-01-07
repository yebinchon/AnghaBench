; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_vertex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma*, i32* }
%struct.drm_device_dma = type { i64, %struct.drm_buf** }
%struct.drm_buf = type { i64, i64, %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"pid=%d index=%d count=%d discard=%d\0A\00", align 1
@DRM_CURRENTPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"buffer index %d (of %d max)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_PRIM_TYPE_3VRT_LINE_LIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"buffer prim %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"process %d using buffer owned by %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"sending pending buffer %d\0A\00", align 1
@RADEON_UPLOAD_CLIPRECTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"radeon_emit_state failed\0A\00", align 1
@RADEON_UPLOAD_TEX0IMAGES = common dso_local global i32 0, align 4
@RADEON_UPLOAD_TEX1IMAGES = common dso_local global i32 0, align 4
@RADEON_UPLOAD_TEX2IMAGES = common dso_local global i32 0, align 4
@RADEON_REQUIRE_QUIESCENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @radeon_cp_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cp_vertex(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_radeon_master_private*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.drm_device_dma*, align 8
  %12 = alloca %struct.drm_buf*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %19 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %21, align 8
  store %struct.drm_radeon_master_private* %22, %struct.drm_radeon_master_private** %9, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.drm_device_dma*, %struct.drm_device_dma** %24, align 8
  store %struct.drm_device_dma* %25, %struct.drm_device_dma** %11, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %13, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %30 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %28, %struct.drm_file* %29)
  %31 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %9, align 8
  %32 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %10, align 8
  %34 = load i32, i32* @DRM_CURRENTPID, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %37, i64 %40, i64 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  %54 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp uge i64 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %49, %3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  %62 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %63, 1
  %65 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %208

68:                                               ; preds = %49
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RADEON_PRIM_TYPE_3VRT_LINE_LIST, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73, %68
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %208

86:                                               ; preds = %73
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @RING_SPACE_TEST_WITH_RETURN(i32* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @VB_AGE_TEST_WITH_RETURN(i32* %89)
  %91 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  %92 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %91, i32 0, i32 1
  %93 = load %struct.drm_buf**, %struct.drm_buf*** %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %93, i64 %96
  %98 = load %struct.drm_buf*, %struct.drm_buf** %97, align 8
  store %struct.drm_buf* %98, %struct.drm_buf** %12, align 8
  %99 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %100 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %99, i32 0, i32 2
  %101 = load %struct.drm_file*, %struct.drm_file** %100, align 8
  %102 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %103 = icmp ne %struct.drm_file* %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %86
  %105 = load i32, i32* @DRM_CURRENTPID, align 4
  %106 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %107 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %106, i32 0, i32 2
  %108 = load %struct.drm_file*, %struct.drm_file** %107, align 8
  %109 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %105, %struct.drm_file* %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %208

112:                                              ; preds = %86
  %113 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %114 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %208

124:                                              ; preds = %112
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %194

129:                                              ; preds = %124
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %134 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @RADEON_UPLOAD_CLIPRECTS, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %172

142:                                              ; preds = %129
  %143 = load i32*, i32** %8, align 8
  %144 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @radeon_emit_state(i32* %143, %struct.drm_file* %144, i32* %146, i32 %149, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %142
  %156 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %208

159:                                              ; preds = %142
  %160 = load i32, i32* @RADEON_UPLOAD_TEX0IMAGES, align 4
  %161 = load i32, i32* @RADEON_UPLOAD_TEX1IMAGES, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @RADEON_UPLOAD_TEX2IMAGES, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @RADEON_REQUIRE_QUIESCENCE, align 4
  %166 = or i32 %164, %165
  %167 = xor i32 %166, -1
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %159, %129
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i64 %176, i64* %177, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 %180, i64* %181, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i64 %184, i64* %185, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %188, i32* %189, align 8
  %190 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %191 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %192 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %193 = call i32 @radeon_cp_dispatch_vertex(%struct.drm_device* %190, %struct.drm_file* %191, %struct.drm_buf* %192, %struct.TYPE_7__* %14)
  br label %194

194:                                              ; preds = %172, %124
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %201 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %202 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %201, i32 0, i32 0
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %205 = call i32 @radeon_cp_discard_buffer(%struct.drm_device* %200, %struct.TYPE_9__* %203, %struct.drm_buf* %204)
  br label %206

206:                                              ; preds = %199, %194
  %207 = call i32 (...) @COMMIT_RING()
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %206, %155, %117, %104, %79, %57
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i64, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @VB_AGE_TEST_WITH_RETURN(i32*) #1

declare dso_local i64 @radeon_emit_state(i32*, %struct.drm_file*, i32*, i32, i32) #1

declare dso_local i32 @radeon_cp_dispatch_vertex(%struct.drm_device*, %struct.drm_file*, %struct.drm_buf*, %struct.TYPE_7__*) #1

declare dso_local i32 @radeon_cp_discard_buffer(%struct.drm_device*, %struct.TYPE_9__*, %struct.drm_buf*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
