; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_indices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma*, i32* }
%struct.drm_device_dma = type { i64, %struct.drm_buf** }
%struct.drm_buf = type { i32, i64, %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"pid=%d index=%d start=%d end=%d discard=%d\0A\00", align 1
@DRM_CURRENTPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"buffer index %d (of %d max)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_PRIM_TYPE_3VRT_LINE_LIST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"buffer prim %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"process %d using buffer owned by %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"sending pending buffer %d\0A\00", align 1
@RADEON_INDEX_PRIM_OFFSET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"misaligned buffer 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"no header 0x%x - 0x%x\0A\00", align 1
@RADEON_UPLOAD_CLIPRECTS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"radeon_emit_state failed\0A\00", align 1
@RADEON_UPLOAD_TEX0IMAGES = common dso_local global i32 0, align 4
@RADEON_UPLOAD_TEX1IMAGES = common dso_local global i32 0, align 4
@RADEON_UPLOAD_TEX2IMAGES = common dso_local global i32 0, align 4
@RADEON_REQUIRE_QUIESCENCE = common dso_local global i32 0, align 4
@RADEON_MAX_VB_VERTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @radeon_cp_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cp_indices(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_radeon_master_private*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.drm_device_dma*, align 8
  %12 = alloca %struct.drm_buf*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %20 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %22, align 8
  store %struct.drm_radeon_master_private* %23, %struct.drm_radeon_master_private** %9, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.drm_device_dma*, %struct.drm_device_dma** %25, align 8
  store %struct.drm_device_dma* %26, %struct.drm_device_dma** %11, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %13, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %31 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %29, %struct.drm_file* %30)
  %32 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %9, align 8
  %33 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %10, align 8
  %35 = load i32, i32* @DRM_CURRENTPID, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %38, i32 %41, i32 %44, i64 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %3
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  %58 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %53, %3
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  %66 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %67, 1
  %69 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %258

72:                                               ; preds = %53
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @RADEON_PRIM_TYPE_3VRT_LINE_LIST, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77, %72
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %258

90:                                               ; preds = %77
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @RING_SPACE_TEST_WITH_RETURN(i32* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @VB_AGE_TEST_WITH_RETURN(i32* %93)
  %95 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  %96 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %95, i32 0, i32 1
  %97 = load %struct.drm_buf**, %struct.drm_buf*** %96, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %97, i64 %100
  %102 = load %struct.drm_buf*, %struct.drm_buf** %101, align 8
  store %struct.drm_buf* %102, %struct.drm_buf** %12, align 8
  %103 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %104 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %103, i32 0, i32 2
  %105 = load %struct.drm_file*, %struct.drm_file** %104, align 8
  %106 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %107 = icmp ne %struct.drm_file* %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %90
  %109 = load i32, i32* @DRM_CURRENTPID, align 4
  %110 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %111 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %110, i32 0, i32 2
  %112 = load %struct.drm_file*, %struct.drm_file** %111, align 8
  %113 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %109, %struct.drm_file* %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %258

116:                                              ; preds = %90
  %117 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %118 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %258

128:                                              ; preds = %116
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %131, %134
  %136 = sext i32 %135 to i64
  %137 = udiv i64 %136, 4
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %15, align 4
  %139 = load i64, i64* @RADEON_INDEX_PRIM_OFFSET, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 7
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %128
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %258

158:                                              ; preds = %128
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %163 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %171 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %169, i32 %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %4, align 4
  br label %258

176:                                              ; preds = %158
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %181 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @RADEON_UPLOAD_CLIPRECTS, align 4
  %186 = xor i32 %185, -1
  %187 = and i32 %184, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %219

189:                                              ; preds = %176
  %190 = load i32*, i32** %8, align 8
  %191 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @radeon_emit_state(i32* %190, %struct.drm_file* %191, i32* %193, i32 %196, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %189
  %203 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %258

206:                                              ; preds = %189
  %207 = load i32, i32* @RADEON_UPLOAD_TEX0IMAGES, align 4
  %208 = load i32, i32* @RADEON_UPLOAD_TEX1IMAGES, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @RADEON_UPLOAD_TEX2IMAGES, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @RADEON_REQUIRE_QUIESCENCE, align 4
  %213 = or i32 %211, %212
  %214 = xor i32 %213, -1
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, %214
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %206, %176
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %222, i32* %223, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %226, i32* %227, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i64 %230, i64* %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 5
  store i64 0, i64* %232, align 8
  %233 = load i32, i32* @RADEON_MAX_VB_VERTS, align 4
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i32 %233, i32* %234, align 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i32 %237, i32* %238, align 8
  %239 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %240 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %241 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %240, i32 0, i32 0
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %244 = call i32 @radeon_cp_dispatch_indices(%struct.drm_device* %239, %struct.TYPE_10__* %242, %struct.drm_buf* %243, %struct.TYPE_7__* %14)
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %219
  %250 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %251 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %252 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %251, i32 0, i32 0
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %255 = call i32 @radeon_cp_discard_buffer(%struct.drm_device* %250, %struct.TYPE_10__* %253, %struct.drm_buf* %254)
  br label %256

256:                                              ; preds = %249, %219
  %257 = call i32 (...) @COMMIT_RING()
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %256, %202, %166, %151, %121, %108, %83, %61
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i32, i32, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @VB_AGE_TEST_WITH_RETURN(i32*) #1

declare dso_local i64 @radeon_emit_state(i32*, %struct.drm_file*, i32*, i32, i32) #1

declare dso_local i32 @radeon_cp_dispatch_indices(%struct.drm_device*, %struct.TYPE_10__*, %struct.drm_buf*, %struct.TYPE_7__*) #1

declare dso_local i32 @radeon_cp_discard_buffer(%struct.drm_device*, %struct.TYPE_10__*, %struct.drm_buf*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
