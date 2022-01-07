; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_bufs.c_drm_addbufs_fb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_bufs.c_drm_addbufs_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_2__*, i32, i64, %struct.drm_device_dma* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device_dma = type { i32, i32, i32, i64, i32, %struct.drm_buf**, %struct.drm_buf_entry* }
%struct.drm_buf = type { i32, i32, i32, i64, i32, i8*, i8*, i32*, i64, i64, i32*, i64, i64 }
%struct.drm_buf_entry = type { i32, i32, i32, i64, %struct.drm_buf* }
%struct.drm_buf_desc = type { i32, i32, i32, i64 }

@DRIVER_FB_DMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@_DRM_PAGE_ALIGN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"count:      %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"order:      %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"size:       %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"agp_offset: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"alignment:  %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"page_order: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"total:      %d\0A\00", align 1
@DRM_MIN_ORDER = common dso_local global i32 0, align 4
@DRM_MAX_ORDER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"buffer %d @ %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"byte_count: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"dma->buf_count : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"entry->buf_count : %d\0A\00", align 1
@_DRM_DMA_USE_FB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_buf_desc*)* @drm_addbufs_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_addbufs_fb(%struct.drm_device* %0, %struct.drm_buf_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_buf_desc*, align 8
  %6 = alloca %struct.drm_device_dma*, align 8
  %7 = alloca %struct.drm_buf_entry*, align 8
  %8 = alloca %struct.drm_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.drm_buf**, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_buf_desc* %1, %struct.drm_buf_desc** %5, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 5
  %22 = load %struct.drm_device_dma*, %struct.drm_device_dma** %21, align 8
  store %struct.drm_device_dma* %22, %struct.drm_device_dma** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load i32, i32* @DRIVER_FB_DMA, align 4
  %25 = call i32 @drm_core_check_feature(%struct.drm_device* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %425

30:                                               ; preds = %2
  %31 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %32 = icmp ne %struct.drm_device_dma* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %425

36:                                               ; preds = %30
  %37 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %38 = call i32 @capable(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %425

43:                                               ; preds = %36
  %44 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %45 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %48 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @drm_order(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = shl i32 1, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %54 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @_DRM_PAGE_ALIGN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @PAGE_ALIGN(i32 %60)
  br label %64

62:                                               ; preds = %43
  %63 = load i32, i32* %13, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %61, %59 ], [ %63, %62 ]
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = sub nsw i32 %66, %67
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = sub nsw i32 %71, %72
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 0, %74 ]
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* %15, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %80 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %81 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* %10, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @DRM_MIN_ORDER, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %75
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @DRM_MAX_ORDER, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101, %75
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %425

108:                                              ; preds = %101
  %109 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 3
  %111 = call i32 @spin_lock(i32* %110)
  %112 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %113 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %118 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %117, i32 0, i32 3
  %119 = call i32 @spin_unlock(i32* %118)
  %120 = load i32, i32* @EBUSY, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %425

122:                                              ; preds = %108
  %123 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 0
  %125 = call i32 @atomic_inc(i32* %124)
  %126 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %127 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %126, i32 0, i32 3
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 1
  %131 = call i32 @mutex_lock(i32* %130)
  %132 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %133 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %132, i32 0, i32 6
  %134 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %134, i64 %136
  store %struct.drm_buf_entry* %137, %struct.drm_buf_entry** %7, align 8
  %138 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %139 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %122
  %143 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %144 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %143, i32 0, i32 1
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %147 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %146, i32 0, i32 0
  %148 = call i32 @atomic_dec(i32* %147)
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %425

151:                                              ; preds = %122
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = icmp sgt i32 %155, 4096
  br i1 %156, label %157, label %166

157:                                              ; preds = %154, %151
  %158 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %159 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %158, i32 0, i32 1
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %162 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %161, i32 0, i32 0
  %163 = call i32 @atomic_dec(i32* %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %425

166:                                              ; preds = %154
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 96
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call i8* @kzalloc(i32 %170, i32 %171)
  %173 = bitcast i8* %172 to %struct.drm_buf*
  %174 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %175 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %174, i32 0, i32 4
  store %struct.drm_buf* %173, %struct.drm_buf** %175, align 8
  %176 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %177 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %176, i32 0, i32 4
  %178 = load %struct.drm_buf*, %struct.drm_buf** %177, align 8
  %179 = icmp ne %struct.drm_buf* %178, null
  br i1 %179, label %189, label %180

180:                                              ; preds = %166
  %181 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %182 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %181, i32 0, i32 1
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %185 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %184, i32 0, i32 0
  %186 = call i32 @atomic_dec(i32* %185)
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %3, align 4
  br label %425

189:                                              ; preds = %166
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %192 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %15, align 4
  %194 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %195 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  store i64 0, i64* %9, align 8
  br label %196

196:                                              ; preds = %287, %189
  %197 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %198 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %308

202:                                              ; preds = %196
  %203 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %204 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %203, i32 0, i32 4
  %205 = load %struct.drm_buf*, %struct.drm_buf** %204, align 8
  %206 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %207 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %205, i64 %209
  store %struct.drm_buf* %210, %struct.drm_buf** %8, align 8
  %211 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %212 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %215 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %213, %216
  %218 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %219 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %222 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %225 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %227 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %226, i32 0, i32 12
  store i64 0, i64* %227, align 8
  %228 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %229 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* %9, align 8
  %232 = add i64 %230, %231
  %233 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %234 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %233, i32 0, i32 11
  store i64 %232, i64* %234, align 8
  %235 = load i64, i64* %10, align 8
  %236 = load i64, i64* %9, align 8
  %237 = add i64 %235, %236
  %238 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %239 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %238, i32 0, i32 3
  store i64 %237, i64* %239, align 8
  %240 = load i64, i64* %10, align 8
  %241 = load i64, i64* %9, align 8
  %242 = add i64 %240, %241
  %243 = inttoptr i64 %242 to i8*
  %244 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %245 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %244, i32 0, i32 5
  store i8* %243, i8** %245, align 8
  %246 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %247 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %246, i32 0, i32 10
  store i32* null, i32** %247, align 8
  %248 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %249 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %248, i32 0, i32 9
  store i64 0, i64* %249, align 8
  %250 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %251 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %250, i32 0, i32 8
  store i64 0, i64* %251, align 8
  %252 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %253 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %252, i32 0, i32 7
  store i32* null, i32** %253, align 8
  %254 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %255 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %254, i32 0, i32 2
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %260 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %259, i32 0, i32 4
  store i32 %258, i32* %260, align 8
  %261 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %262 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @GFP_KERNEL, align 4
  %265 = call i8* @kzalloc(i32 %263, i32 %264)
  %266 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %267 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %266, i32 0, i32 6
  store i8* %265, i8** %267, align 8
  %268 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %269 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %268, i32 0, i32 6
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %287, label %272

272:                                              ; preds = %202
  %273 = load i32, i32* %11, align 4
  %274 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %275 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 8
  %276 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %277 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %278 = call i32 @drm_cleanup_buf_error(%struct.drm_device* %276, %struct.drm_buf_entry* %277)
  %279 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %280 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %279, i32 0, i32 1
  %281 = call i32 @mutex_unlock(i32* %280)
  %282 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %283 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %282, i32 0, i32 0
  %284 = call i32 @atomic_dec(i32* %283)
  %285 = load i32, i32* @ENOMEM, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %3, align 4
  br label %425

287:                                              ; preds = %202
  %288 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %289 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %292 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %291, i32 0, i32 5
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %290, i8* %293)
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = load i64, i64* %9, align 8
  %298 = add i64 %297, %296
  store i64 %298, i64* %9, align 8
  %299 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %300 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 8
  %303 = load i32, i32* @PAGE_SIZE, align 4
  %304 = load i32, i32* %15, align 4
  %305 = shl i32 %303, %304
  %306 = load i32, i32* %17, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %17, align 4
  br label %196

308:                                              ; preds = %196
  %309 = load i32, i32* %17, align 4
  %310 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %309)
  %311 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %312 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %311, i32 0, i32 5
  %313 = load %struct.drm_buf**, %struct.drm_buf*** %312, align 8
  %314 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %315 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %318 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %316, %319
  %321 = sext i32 %320 to i64
  %322 = mul i64 %321, 8
  %323 = trunc i64 %322 to i32
  %324 = load i32, i32* @GFP_KERNEL, align 4
  %325 = call %struct.drm_buf** @krealloc(%struct.drm_buf** %313, i32 %323, i32 %324)
  store %struct.drm_buf** %325, %struct.drm_buf*** %19, align 8
  %326 = load %struct.drm_buf**, %struct.drm_buf*** %19, align 8
  %327 = icmp ne %struct.drm_buf** %326, null
  br i1 %327, label %340, label %328

328:                                              ; preds = %308
  %329 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %330 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %331 = call i32 @drm_cleanup_buf_error(%struct.drm_device* %329, %struct.drm_buf_entry* %330)
  %332 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %333 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %332, i32 0, i32 1
  %334 = call i32 @mutex_unlock(i32* %333)
  %335 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %336 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %335, i32 0, i32 0
  %337 = call i32 @atomic_dec(i32* %336)
  %338 = load i32, i32* @ENOMEM, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %3, align 4
  br label %425

340:                                              ; preds = %308
  %341 = load %struct.drm_buf**, %struct.drm_buf*** %19, align 8
  %342 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %343 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %342, i32 0, i32 5
  store %struct.drm_buf** %341, %struct.drm_buf*** %343, align 8
  store i32 0, i32* %18, align 4
  br label %344

344:                                              ; preds = %367, %340
  %345 = load i32, i32* %18, align 4
  %346 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %347 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp slt i32 %345, %348
  br i1 %349, label %350, label %370

350:                                              ; preds = %344
  %351 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %352 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %351, i32 0, i32 4
  %353 = load %struct.drm_buf*, %struct.drm_buf** %352, align 8
  %354 = load i32, i32* %18, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %353, i64 %355
  %357 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %358 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %357, i32 0, i32 5
  %359 = load %struct.drm_buf**, %struct.drm_buf*** %358, align 8
  %360 = load i32, i32* %18, align 4
  %361 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %362 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = add nsw i32 %360, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %359, i64 %365
  store %struct.drm_buf* %356, %struct.drm_buf** %366, align 8
  br label %367

367:                                              ; preds = %350
  %368 = load i32, i32* %18, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %18, align 4
  br label %344

370:                                              ; preds = %344
  %371 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %372 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %375 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = add nsw i32 %376, %373
  store i32 %377, i32* %375, align 8
  %378 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %379 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %382 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %380
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %382, align 8
  %387 = load i32, i32* %17, align 4
  %388 = load i32, i32* @PAGE_SHIFT, align 4
  %389 = ashr i32 %387, %388
  %390 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %391 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %392, %389
  store i32 %393, i32* %391, align 4
  %394 = load i32, i32* %17, align 4
  %395 = sext i32 %394 to i64
  %396 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %397 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %396, i32 0, i32 3
  %398 = load i64, i64* %397, align 8
  %399 = add nsw i64 %398, %395
  store i64 %399, i64* %397, align 8
  %400 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %401 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %402)
  %404 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %405 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %406)
  %408 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %409 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %408, i32 0, i32 1
  %410 = call i32 @mutex_unlock(i32* %409)
  %411 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %412 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %415 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %414, i32 0, i32 0
  store i32 %413, i32* %415, align 8
  %416 = load i32, i32* %13, align 4
  %417 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %418 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %417, i32 0, i32 1
  store i32 %416, i32* %418, align 4
  %419 = load i32, i32* @_DRM_DMA_USE_FB, align 4
  %420 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %421 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %420, i32 0, i32 2
  store i32 %419, i32* %421, align 8
  %422 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %423 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %422, i32 0, i32 0
  %424 = call i32 @atomic_dec(i32* %423)
  store i32 0, i32* %3, align 4
  br label %425

425:                                              ; preds = %370, %328, %272, %180, %157, %142, %116, %105, %40, %33, %27
  %426 = load i32, i32* %3, align 4
  ret i32 %426
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @drm_order(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_cleanup_buf_error(%struct.drm_device*, %struct.drm_buf_entry*) #1

declare dso_local %struct.drm_buf** @krealloc(%struct.drm_buf**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
