; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_bufs.c_drm_addbufs_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_bufs.c_drm_addbufs_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64, %struct.drm_device_dma* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.drm_device_dma = type { i32, i32, i32, i64, i32, %struct.drm_buf**, %struct.drm_buf_entry* }
%struct.drm_buf = type { i32, i32, i32, i64, i32, i8*, i8*, i32*, i64, i64, i32*, i64, i64 }
%struct.drm_buf_entry = type { i32, i32, i32, i64, %struct.drm_buf* }
%struct.drm_buf_desc = type { i32, i32, i32, i64 }

@DRIVER_SG = common dso_local global i32 0, align 4
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
@_DRM_DMA_USE_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_buf_desc*)* @drm_addbufs_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_addbufs_sg(%struct.drm_device* %0, %struct.drm_buf_desc* %1) #0 {
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
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 6
  %22 = load %struct.drm_device_dma*, %struct.drm_device_dma** %21, align 8
  store %struct.drm_device_dma* %22, %struct.drm_device_dma** %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = load i32, i32* @DRIVER_SG, align 4
  %25 = call i32 @drm_core_check_feature(%struct.drm_device* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %431

30:                                               ; preds = %2
  %31 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %32 = icmp ne %struct.drm_device_dma* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %431

36:                                               ; preds = %30
  %37 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %38 = call i32 @capable(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %431

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
  br label %431

108:                                              ; preds = %101
  %109 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 4
  %111 = call i32 @spin_lock(i32* %110)
  %112 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %113 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %118 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %117, i32 0, i32 4
  %119 = call i32 @spin_unlock(i32* %118)
  %120 = load i32, i32* @EBUSY, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %431

122:                                              ; preds = %108
  %123 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 0
  %125 = call i32 @atomic_inc(i32* %124)
  %126 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %127 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %126, i32 0, i32 4
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
  br label %431

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
  br label %431

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
  br label %431

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

196:                                              ; preds = %293, %189
  %197 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %198 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %314

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
  %243 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %244 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %243, i32 0, i32 3
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %242, %247
  %249 = inttoptr i64 %248 to i8*
  %250 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %251 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %250, i32 0, i32 5
  store i8* %249, i8** %251, align 8
  %252 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %253 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %252, i32 0, i32 10
  store i32* null, i32** %253, align 8
  %254 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %255 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %254, i32 0, i32 9
  store i64 0, i64* %255, align 8
  %256 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %257 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %256, i32 0, i32 8
  store i64 0, i64* %257, align 8
  %258 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %259 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %258, i32 0, i32 7
  store i32* null, i32** %259, align 8
  %260 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %261 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %260, i32 0, i32 2
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %266 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %268 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @GFP_KERNEL, align 4
  %271 = call i8* @kzalloc(i32 %269, i32 %270)
  %272 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %273 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %272, i32 0, i32 6
  store i8* %271, i8** %273, align 8
  %274 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %275 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %274, i32 0, i32 6
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %293, label %278

278:                                              ; preds = %202
  %279 = load i32, i32* %11, align 4
  %280 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %281 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %283 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %284 = call i32 @drm_cleanup_buf_error(%struct.drm_device* %282, %struct.drm_buf_entry* %283)
  %285 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %286 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %285, i32 0, i32 1
  %287 = call i32 @mutex_unlock(i32* %286)
  %288 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %289 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %288, i32 0, i32 0
  %290 = call i32 @atomic_dec(i32* %289)
  %291 = load i32, i32* @ENOMEM, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %3, align 4
  br label %431

293:                                              ; preds = %202
  %294 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %295 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.drm_buf*, %struct.drm_buf** %8, align 8
  %298 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %297, i32 0, i32 5
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %296, i8* %299)
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = load i64, i64* %9, align 8
  %304 = add i64 %303, %302
  store i64 %304, i64* %9, align 8
  %305 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %306 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %306, align 8
  %309 = load i32, i32* @PAGE_SIZE, align 4
  %310 = load i32, i32* %15, align 4
  %311 = shl i32 %309, %310
  %312 = load i32, i32* %17, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %17, align 4
  br label %196

314:                                              ; preds = %196
  %315 = load i32, i32* %17, align 4
  %316 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %315)
  %317 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %318 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %317, i32 0, i32 5
  %319 = load %struct.drm_buf**, %struct.drm_buf*** %318, align 8
  %320 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %321 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %324 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %322, %325
  %327 = sext i32 %326 to i64
  %328 = mul i64 %327, 8
  %329 = trunc i64 %328 to i32
  %330 = load i32, i32* @GFP_KERNEL, align 4
  %331 = call %struct.drm_buf** @krealloc(%struct.drm_buf** %319, i32 %329, i32 %330)
  store %struct.drm_buf** %331, %struct.drm_buf*** %19, align 8
  %332 = load %struct.drm_buf**, %struct.drm_buf*** %19, align 8
  %333 = icmp ne %struct.drm_buf** %332, null
  br i1 %333, label %346, label %334

334:                                              ; preds = %314
  %335 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %336 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %337 = call i32 @drm_cleanup_buf_error(%struct.drm_device* %335, %struct.drm_buf_entry* %336)
  %338 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %339 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %338, i32 0, i32 1
  %340 = call i32 @mutex_unlock(i32* %339)
  %341 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %342 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %341, i32 0, i32 0
  %343 = call i32 @atomic_dec(i32* %342)
  %344 = load i32, i32* @ENOMEM, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %3, align 4
  br label %431

346:                                              ; preds = %314
  %347 = load %struct.drm_buf**, %struct.drm_buf*** %19, align 8
  %348 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %349 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %348, i32 0, i32 5
  store %struct.drm_buf** %347, %struct.drm_buf*** %349, align 8
  store i32 0, i32* %18, align 4
  br label %350

350:                                              ; preds = %373, %346
  %351 = load i32, i32* %18, align 4
  %352 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %353 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %351, %354
  br i1 %355, label %356, label %376

356:                                              ; preds = %350
  %357 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %358 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %357, i32 0, i32 4
  %359 = load %struct.drm_buf*, %struct.drm_buf** %358, align 8
  %360 = load i32, i32* %18, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %359, i64 %361
  %363 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %364 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %363, i32 0, i32 5
  %365 = load %struct.drm_buf**, %struct.drm_buf*** %364, align 8
  %366 = load i32, i32* %18, align 4
  %367 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %368 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %366, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %365, i64 %371
  store %struct.drm_buf* %362, %struct.drm_buf** %372, align 8
  br label %373

373:                                              ; preds = %356
  %374 = load i32, i32* %18, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %18, align 4
  br label %350

376:                                              ; preds = %350
  %377 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %378 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %381 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, %379
  store i32 %383, i32* %381, align 8
  %384 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %385 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %384, i32 0, i32 3
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %388 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %390, %386
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %388, align 8
  %393 = load i32, i32* %17, align 4
  %394 = load i32, i32* @PAGE_SHIFT, align 4
  %395 = ashr i32 %393, %394
  %396 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %397 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %398, %395
  store i32 %399, i32* %397, align 4
  %400 = load i32, i32* %17, align 4
  %401 = sext i32 %400 to i64
  %402 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %403 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %402, i32 0, i32 3
  %404 = load i64, i64* %403, align 8
  %405 = add nsw i64 %404, %401
  store i64 %405, i64* %403, align 8
  %406 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %407 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %408)
  %410 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %411 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %412)
  %414 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %415 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %414, i32 0, i32 1
  %416 = call i32 @mutex_unlock(i32* %415)
  %417 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %7, align 8
  %418 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %421 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %420, i32 0, i32 0
  store i32 %419, i32* %421, align 8
  %422 = load i32, i32* %13, align 4
  %423 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %5, align 8
  %424 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %423, i32 0, i32 1
  store i32 %422, i32* %424, align 4
  %425 = load i32, i32* @_DRM_DMA_USE_SG, align 4
  %426 = load %struct.drm_device_dma*, %struct.drm_device_dma** %6, align 8
  %427 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %426, i32 0, i32 2
  store i32 %425, i32* %427, align 8
  %428 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %429 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %428, i32 0, i32 0
  %430 = call i32 @atomic_dec(i32* %429)
  store i32 0, i32* %3, align 4
  br label %431

431:                                              ; preds = %376, %334, %278, %180, %157, %142, %116, %105, %40, %33, %27
  %432 = load i32, i32* %3, align 4
  ret i32 %432
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
