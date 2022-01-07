; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_vertex2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_cp_vertex2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma*, i32* }
%struct.drm_device_dma = type { i64, %struct.drm_buf** }
%struct.drm_buf = type { i64, %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.drm_radeon_master_private* }
%struct.drm_radeon_master_private = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i64, i32*, i32* }
%struct.TYPE_14__ = type { i8, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"pid=%d index=%d discard=%d\0A\00", align 1
@DRM_CURRENTPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"buffer index %d (of %d max)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"process %d using buffer owned by %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"sending pending buffer %d\0A\00", align 1
@RADEON_NR_SAREA_CLIPRECTS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"radeon_emit_state2 failed\0A\00", align 1
@RADEON_PRIM_WALK_IND = common dso_local global i32 0, align 4
@RADEON_MAX_VB_VERTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @radeon_cp_vertex2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_cp_vertex2(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_radeon_master_private*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.drm_device_dma*, align 8
  %12 = alloca %struct.drm_buf*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca %struct.TYPE_14__, align 4
  %17 = alloca %struct.TYPE_13__, align 4
  %18 = alloca %struct.TYPE_14__, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %25, align 8
  store %struct.drm_radeon_master_private* %26, %struct.drm_radeon_master_private** %9, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.drm_device_dma*, %struct.drm_device_dma** %28, align 8
  store %struct.drm_device_dma* %29, %struct.drm_device_dma** %11, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %13, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %34 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %32, %struct.drm_file* %33)
  %35 = load %struct.drm_radeon_master_private*, %struct.drm_radeon_master_private** %9, align 8
  %36 = getelementptr inbounds %struct.drm_radeon_master_private, %struct.drm_radeon_master_private* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %10, align 8
  %38 = load i32, i32* @DRM_CURRENTPID, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %41, i64 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %3
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  %55 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50, %3
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  %63 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %64, 1
  %66 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %233

69:                                               ; preds = %50
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @RING_SPACE_TEST_WITH_RETURN(i32* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @VB_AGE_TEST_WITH_RETURN(i32* %72)
  %74 = load %struct.drm_device_dma*, %struct.drm_device_dma** %11, align 8
  %75 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %74, i32 0, i32 1
  %76 = load %struct.drm_buf**, %struct.drm_buf*** %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %76, i64 %79
  %81 = load %struct.drm_buf*, %struct.drm_buf** %80, align 8
  store %struct.drm_buf* %81, %struct.drm_buf** %12, align 8
  %82 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %83 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %82, i32 0, i32 1
  %84 = load %struct.drm_file*, %struct.drm_file** %83, align 8
  %85 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %86 = icmp ne %struct.drm_file* %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %69
  %88 = load i32, i32* @DRM_CURRENTPID, align 4
  %89 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %90 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %89, i32 0, i32 1
  %91 = load %struct.drm_file*, %struct.drm_file** %90, align 8
  %92 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %88, %struct.drm_file* %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %233

95:                                               ; preds = %69
  %96 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %97 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %233

107:                                              ; preds = %95
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RADEON_NR_SAREA_CLIPRECTS, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %233

116:                                              ; preds = %107
  store i8 -1, i8* %15, align 1
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %216, %116
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %219

123:                                              ; preds = %117
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i64 @DRM_COPY_FROM_USER(%struct.TYPE_14__* %16, i32* %129, i32 24)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i32, i32* @EFAULT, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %233

135:                                              ; preds = %123
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %137 = load i8, i8* %136, align 4
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* %15, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp ne i32 %138, %140
  br i1 %141, label %142, label %167

142:                                              ; preds = %135
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %147 = load i8, i8* %146, align 4
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = call i64 @DRM_COPY_FROM_USER(%struct.TYPE_14__* %18, i32* %149, i32 24)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load i32, i32* @EFAULT, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %233

155:                                              ; preds = %142
  %156 = load i32*, i32** %8, align 8
  %157 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %158 = call i64 @radeon_emit_state2(i32* %156, %struct.drm_file* %157, %struct.TYPE_14__* %18)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %233

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %166 = load i8, i8* %165, align 4
  store i8 %166, i8* %15, align 1
  br label %167

167:                                              ; preds = %164, %135
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 5
  store i32 %169, i32* %170, align 4
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 4
  store i32 %172, i32* %173, align 4
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @RADEON_PRIM_WALK_IND, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %167
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %187, 64
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* @RADEON_MAX_VB_VERTS, align 4
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  store i32 %190, i32* %191, align 4
  %192 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %193 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %194 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %193, i32 0, i32 0
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %197 = call i32 @radeon_cp_dispatch_indices(%struct.drm_device* %192, %struct.TYPE_16__* %195, %struct.drm_buf* %196, %struct.TYPE_13__* %17)
  br label %207

198:                                              ; preds = %167
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  store i32 %200, i32* %201, align 4
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  store i32 0, i32* %202, align 4
  %203 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %204 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %205 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %206 = call i32 @radeon_cp_dispatch_vertex(%struct.drm_device* %203, %struct.drm_file* %204, %struct.drm_buf* %205, %struct.TYPE_13__* %17)
  br label %207

207:                                              ; preds = %198, %185
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  store i32 0, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %207
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %117

219:                                              ; preds = %117
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %226 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %227 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %226, i32 0, i32 0
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %227, align 8
  %229 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %230 = call i32 @radeon_cp_discard_buffer(%struct.drm_device* %225, %struct.TYPE_16__* %228, %struct.drm_buf* %229)
  br label %231

231:                                              ; preds = %224, %219
  %232 = call i32 (...) @COMMIT_RING()
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %231, %160, %152, %132, %113, %100, %87, %58
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @VB_AGE_TEST_WITH_RETURN(i32*) #1

declare dso_local i64 @DRM_COPY_FROM_USER(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i64 @radeon_emit_state2(i32*, %struct.drm_file*, %struct.TYPE_14__*) #1

declare dso_local i32 @radeon_cp_dispatch_indices(%struct.drm_device*, %struct.TYPE_16__*, %struct.drm_buf*, %struct.TYPE_13__*) #1

declare dso_local i32 @radeon_cp_dispatch_vertex(%struct.drm_device*, %struct.drm_file*, %struct.drm_buf*, %struct.TYPE_13__*) #1

declare dso_local i32 @radeon_cp_discard_buffer(%struct.drm_device*, %struct.TYPE_16__*, %struct.drm_buf*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
