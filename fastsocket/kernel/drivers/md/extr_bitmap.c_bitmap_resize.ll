; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_bitmap.c_bitmap_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.TYPE_7__*, %struct.bitmap_counts, %struct.bitmap_storage }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32)* }
%struct.TYPE_6__ = type { i64, i32, i32, i64, i64 }
%struct.bitmap_counts = type { i64, i32, i64, i64, i32, %struct.bitmap_page* }
%struct.bitmap_page = type { i32 }
%struct.bitmap_storage = type { i32, i64, i32* }

@BITMAP_BLOCK_SHIFT = common dso_local global i32 0, align 4
@PAGE_COUNTER_RATIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NEEDED_MASK = common dso_local global i32 0, align 4
@BITMAP_PAGE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_resize(%struct.bitmap* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bitmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bitmap_storage, align 8
  %10 = alloca %struct.bitmap_counts, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.bitmap_page*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %16, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %97

30:                                               ; preds = %4
  %31 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %32 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %20, align 8
  %37 = load i64, i64* %20, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %30
  %40 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %41 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @DIV_ROUND_UP(i64 %43, i32 8)
  store i64 %44, i64* %19, align 8
  %45 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %46 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i64, i64* %19, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %19, align 8
  br label %55

55:                                               ; preds = %52, %39
  %56 = load i64, i64* %19, align 8
  %57 = call i64 @DIV_ROUND_UP(i64 %56, i32 512)
  store i64 %57, i64* %20, align 8
  %58 = load i64, i64* %20, align 8
  %59 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %60 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i64 %58, i64* %63, align 8
  br label %64

64:                                               ; preds = %55, %30
  %65 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %66 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %91, %64
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %15, align 4
  %76 = shl i32 1, %75
  %77 = call i64 @DIV_ROUND_UP_SECTOR_T(i32 %74, i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @DIV_ROUND_UP(i64 %78, i32 8)
  store i64 %79, i64* %19, align 8
  %80 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %81 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %71
  %88 = load i64, i64* %19, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %19, align 8
  br label %90

90:                                               ; preds = %87, %71
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = shl i64 %93, 9
  %95 = icmp sgt i64 %92, %94
  br i1 %95, label %71, label %96

96:                                               ; preds = %91
  br label %103

97:                                               ; preds = %4
  %98 = load i32, i32* %7, align 4
  %99 = xor i32 %98, -1
  %100 = call i32 @ffz(i32 %99)
  %101 = load i32, i32* @BITMAP_BLOCK_SHIFT, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %97, %96
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %15, align 4
  %106 = shl i32 1, %105
  %107 = call i64 @DIV_ROUND_UP_SECTOR_T(i32 %104, i32 %106)
  store i64 %107, i64* %11, align 8
  %108 = call i32 @memset(%struct.bitmap_storage* %9, i32 0, i32 24)
  %109 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %110 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %103
  %117 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %118 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %116, %103
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %127 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @bitmap_storage_alloc(%struct.bitmap_storage* %9, i64 %125, i32 %134)
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %124, %116
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %407

140:                                              ; preds = %136
  %141 = load i64, i64* %11, align 8
  %142 = load i32, i32* @PAGE_COUNTER_RATIO, align 4
  %143 = call i64 @DIV_ROUND_UP(i64 %141, i32 %142)
  store i64 %143, i64* %17, align 8
  %144 = load i64, i64* %17, align 8
  %145 = mul i64 %144, 4
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call %struct.bitmap_page* @kzalloc(i64 %145, i32 %146)
  store %struct.bitmap_page* %147, %struct.bitmap_page** %18, align 8
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %16, align 4
  %150 = load %struct.bitmap_page*, %struct.bitmap_page** %18, align 8
  %151 = icmp ne %struct.bitmap_page* %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %140
  %153 = call i32 @bitmap_file_unmap(%struct.bitmap_storage* %9)
  br label %407

154:                                              ; preds = %140
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %154
  %158 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %159 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %163, align 8
  %165 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %166 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = call i32 %164(%struct.TYPE_7__* %167, i32 1)
  br label %169

169:                                              ; preds = %157, %154
  %170 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %171 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %9, i32 0, i32 2
  store i32* %173, i32** %174, align 8
  %175 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %176 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %176, i32 0, i32 2
  store i32* null, i32** %177, align 8
  %178 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %9, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %169
  %182 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %183 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %9, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @page_address(i64 %189)
  %191 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %192 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @page_address(i64 %194)
  %196 = call i32 @memcpy(i32 %190, i32 %195, i32 4)
  br label %197

197:                                              ; preds = %187, %181, %169
  %198 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %199 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %198, i32 0, i32 2
  %200 = call i32 @bitmap_file_unmap(%struct.bitmap_storage* %199)
  %201 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %202 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %201, i32 0, i32 2
  %203 = bitcast %struct.bitmap_storage* %202 to i8*
  %204 = bitcast %struct.bitmap_storage* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %203, i8* align 8 %204, i64 24, i1 false)
  %205 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %206 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %205, i32 0, i32 1
  %207 = bitcast %struct.bitmap_counts* %10 to i8*
  %208 = bitcast %struct.bitmap_counts* %206 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %207, i8* align 8 %208, i64 48, i1 false)
  %209 = load %struct.bitmap_page*, %struct.bitmap_page** %18, align 8
  %210 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %211 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %211, i32 0, i32 5
  store %struct.bitmap_page* %209, %struct.bitmap_page** %212, align 8
  %213 = load i64, i64* %17, align 8
  %214 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %215 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %215, i32 0, i32 2
  store i64 %213, i64* %216, align 8
  %217 = load i64, i64* %17, align 8
  %218 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %219 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %219, i32 0, i32 3
  store i64 %217, i64* %220, align 8
  %221 = load i32, i32* %15, align 4
  %222 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %223 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %223, i32 0, i32 1
  store i32 %221, i32* %224, align 8
  %225 = load i64, i64* %11, align 8
  %226 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %227 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %227, i32 0, i32 0
  store i64 %225, i64* %228, align 8
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* @BITMAP_BLOCK_SHIFT, align 4
  %231 = add nsw i32 %229, %230
  %232 = shl i32 1, %231
  %233 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %234 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %233, i32 0, i32 0
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  store i32 %232, i32* %237, align 8
  %238 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %10, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %10, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = zext i32 %241 to i64
  %243 = shl i64 %239, %242
  %244 = trunc i64 %243 to i32
  %245 = load i64, i64* %11, align 8
  %246 = load i32, i32* %15, align 4
  %247 = zext i32 %246 to i64
  %248 = shl i64 %245, %247
  %249 = call i32 @min(i32 %244, i64 %248)
  store i32 %249, i32* %6, align 4
  %250 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %251 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %251, i32 0, i32 4
  %253 = call i32 @spin_lock_irq(i32* %252)
  store i32 0, i32* %12, align 4
  br label %254

254:                                              ; preds = %324, %197
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %6, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %328

258:                                              ; preds = %254
  %259 = load i32, i32* %12, align 4
  %260 = call i32* @bitmap_get_counter(%struct.bitmap_counts* %10, i32 %259, i32* %13, i32 0)
  store i32* %260, i32** %21, align 8
  %261 = load i32*, i32** %21, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load i32*, i32** %21, align 8
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @NEEDED(i32 %265)
  %267 = icmp ne i64 %266, 0
  br label %268

268:                                              ; preds = %263, %258
  %269 = phi i1 [ false, %258 ], [ %267, %263 ]
  %270 = zext i1 %269 to i32
  store i32 %270, i32* %23, align 4
  %271 = load i32, i32* %23, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %324

273:                                              ; preds = %268
  %274 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %275 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %274, i32 0, i32 1
  %276 = load i32, i32* %12, align 4
  %277 = call i32* @bitmap_get_counter(%struct.bitmap_counts* %275, i32 %276, i32* %14, i32 1)
  store i32* %277, i32** %22, align 8
  %278 = load i32*, i32** %22, align 8
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %313

281:                                              ; preds = %273
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %282, %283
  store i32 %284, i32* %24, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %15, align 4
  %287 = ashr i32 %285, %286
  store i32 %287, i32* %25, align 4
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* %25, align 4
  %290 = shl i32 %289, %288
  store i32 %290, i32* %25, align 4
  br label %291

291:                                              ; preds = %295, %281
  %292 = load i32, i32* %25, align 4
  %293 = load i32, i32* %24, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %303

295:                                              ; preds = %291
  %296 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %297 = load i32, i32* %12, align 4
  %298 = call i32 @bitmap_file_set_bit(%struct.bitmap* %296, i32 %297)
  %299 = load i32, i32* %15, align 4
  %300 = shl i32 1, %299
  %301 = load i32, i32* %25, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* %25, align 4
  br label %291

303:                                              ; preds = %291
  %304 = load i32*, i32** %22, align 8
  store i32 2, i32* %304, align 4
  %305 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %306 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %305, i32 0, i32 1
  %307 = load i32, i32* %12, align 4
  %308 = call i32 @bitmap_count_page(%struct.bitmap_counts* %306, i32 %307, i32 1)
  %309 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %310 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %309, i32 0, i32 1
  %311 = load i32, i32* %12, align 4
  %312 = call i32 @bitmap_set_pending(%struct.bitmap_counts* %310, i32 %311)
  br label %313

313:                                              ; preds = %303, %273
  %314 = load i32, i32* @NEEDED_MASK, align 4
  %315 = load i32*, i32** %22, align 8
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %314
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* %14, align 4
  %319 = load i32, i32* %13, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %313
  %322 = load i32, i32* %14, align 4
  store i32 %322, i32* %13, align 4
  br label %323

323:                                              ; preds = %321, %313
  br label %324

324:                                              ; preds = %323, %268
  %325 = load i32, i32* %13, align 4
  %326 = load i32, i32* %12, align 4
  %327 = add nsw i32 %326, %325
  store i32 %327, i32* %12, align 4
  br label %254

328:                                              ; preds = %254
  %329 = load i32, i32* %8, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %385, label %331

331:                                              ; preds = %328
  br label %332

332:                                              ; preds = %364, %331
  %333 = load i32, i32* %12, align 4
  %334 = sext i32 %333 to i64
  %335 = load i64, i64* %11, align 8
  %336 = load i32, i32* %15, align 4
  %337 = zext i32 %336 to i64
  %338 = shl i64 %335, %337
  %339 = icmp ult i64 %334, %338
  br i1 %339, label %340, label %368

340:                                              ; preds = %332
  %341 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %342 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %341, i32 0, i32 1
  %343 = load i32, i32* %12, align 4
  %344 = call i32* @bitmap_get_counter(%struct.bitmap_counts* %342, i32 %343, i32* %14, i32 1)
  store i32* %344, i32** %27, align 8
  %345 = load i32*, i32** %27, align 8
  %346 = icmp ne i32* %345, null
  br i1 %346, label %347, label %364

347:                                              ; preds = %340
  %348 = load i32*, i32** %27, align 8
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %347
  %352 = load i32, i32* @NEEDED_MASK, align 4
  %353 = or i32 %352, 2
  %354 = load i32*, i32** %27, align 8
  store i32 %353, i32* %354, align 4
  %355 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %356 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %355, i32 0, i32 1
  %357 = load i32, i32* %12, align 4
  %358 = call i32 @bitmap_count_page(%struct.bitmap_counts* %356, i32 %357, i32 1)
  %359 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %360 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %359, i32 0, i32 1
  %361 = load i32, i32* %12, align 4
  %362 = call i32 @bitmap_set_pending(%struct.bitmap_counts* %360, i32 %361)
  br label %363

363:                                              ; preds = %351, %347
  br label %364

364:                                              ; preds = %363, %340
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* %12, align 4
  %367 = add nsw i32 %366, %365
  store i32 %367, i32* %12, align 4
  br label %332

368:                                              ; preds = %332
  store i32 0, i32* %26, align 4
  br label %369

369:                                              ; preds = %381, %368
  %370 = load i32, i32* %26, align 4
  %371 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %372 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %371, i32 0, i32 2
  %373 = getelementptr inbounds %struct.bitmap_storage, %struct.bitmap_storage* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp slt i32 %370, %374
  br i1 %375, label %376, label %384

376:                                              ; preds = %369
  %377 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %378 = load i32, i32* %26, align 4
  %379 = load i32, i32* @BITMAP_PAGE_DIRTY, align 4
  %380 = call i32 @set_page_attr(%struct.bitmap* %377, i32 %378, i32 %379)
  br label %381

381:                                              ; preds = %376
  %382 = load i32, i32* %26, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %26, align 4
  br label %369

384:                                              ; preds = %369
  br label %385

385:                                              ; preds = %384, %328
  %386 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %387 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.bitmap_counts, %struct.bitmap_counts* %387, i32 0, i32 4
  %389 = call i32 @spin_unlock_irq(i32* %388)
  %390 = load i32, i32* %8, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %406, label %392

392:                                              ; preds = %385
  %393 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %394 = call i32 @bitmap_unplug(%struct.bitmap* %393)
  %395 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %396 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %395, i32 0, i32 0
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 0
  %401 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %400, align 8
  %402 = load %struct.bitmap*, %struct.bitmap** %5, align 8
  %403 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %402, i32 0, i32 0
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %403, align 8
  %405 = call i32 %401(%struct.TYPE_7__* %404, i32 0)
  br label %406

406:                                              ; preds = %392, %385
  store i32 0, i32* %16, align 4
  br label %407

407:                                              ; preds = %406, %152, %139
  %408 = load i32, i32* %16, align 4
  ret i32 %408
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP_SECTOR_T(i32, i32) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @memset(%struct.bitmap_storage*, i32, i32) #1

declare dso_local i32 @bitmap_storage_alloc(%struct.bitmap_storage*, i64, i32) #1

declare dso_local %struct.bitmap_page* @kzalloc(i64, i32) #1

declare dso_local i32 @bitmap_file_unmap(%struct.bitmap_storage*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @page_address(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32* @bitmap_get_counter(%struct.bitmap_counts*, i32, i32*, i32) #1

declare dso_local i64 @NEEDED(i32) #1

declare dso_local i32 @bitmap_file_set_bit(%struct.bitmap*, i32) #1

declare dso_local i32 @bitmap_count_page(%struct.bitmap_counts*, i32, i32) #1

declare dso_local i32 @bitmap_set_pending(%struct.bitmap_counts*, i32) #1

declare dso_local i32 @set_page_attr(%struct.bitmap*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bitmap_unplug(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
