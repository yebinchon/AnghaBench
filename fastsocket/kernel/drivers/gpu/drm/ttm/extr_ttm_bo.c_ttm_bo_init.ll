; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }
%struct.ttm_buffer_object = type { void (%struct.ttm_buffer_object*)*, i32, i64, i32, i64, %struct.TYPE_6__*, %struct.sg_table*, %struct.file*, %struct.TYPE_5__, i64, %struct.ttm_bo_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_4__, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ttm_placement = type { i32 }
%struct.file = type { i32 }
%struct.sg_table = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Out of kernel memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Illegal buffer object size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_CACHED = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i64 0, align 8
@ttm_bo_type_sg = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_init(%struct.ttm_bo_device* %0, %struct.ttm_buffer_object* %1, i64 %2, i32 %3, %struct.ttm_placement* %4, i32 %5, i32 %6, %struct.file* %7, i64 %8, %struct.sg_table* %9, void (%struct.ttm_buffer_object*)* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ttm_bo_device*, align 8
  %14 = alloca %struct.ttm_buffer_object*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ttm_placement*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.file*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.sg_table*, align 8
  %23 = alloca void (%struct.ttm_buffer_object*)*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.ttm_mem_global*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %13, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %14, align 8
  store i64 %2, i64* %15, align 8
  store i32 %3, i32* %16, align 4
  store %struct.ttm_placement* %4, %struct.ttm_placement** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store %struct.file* %7, %struct.file** %20, align 8
  store i64 %8, i64* %21, align 8
  store %struct.sg_table* %9, %struct.sg_table** %22, align 8
  store void (%struct.ttm_buffer_object*)* %10, void (%struct.ttm_buffer_object*)** %23, align 8
  store i32 0, i32* %24, align 4
  %27 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %28 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %30, align 8
  store %struct.ttm_mem_global* %31, %struct.ttm_mem_global** %26, align 8
  %32 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %26, align 8
  %33 = load i64, i64* %21, align 8
  %34 = call i32 @ttm_mem_global_alloc(%struct.ttm_mem_global* %32, i64 %33, i32 0, i32 0)
  store i32 %34, i32* %24, align 4
  %35 = load i32, i32* %24, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %11
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %39 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %40 = icmp ne void (%struct.ttm_buffer_object*)* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %43 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  call void %42(%struct.ttm_buffer_object* %43)
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %46 = call i32 @kfree(%struct.ttm_buffer_object* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %221

50:                                               ; preds = %11
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = add i64 %51, %52
  %54 = sub i64 %53, 1
  %55 = load i64, i64* @PAGE_SHIFT, align 8
  %56 = lshr i64 %54, %55
  store i64 %56, i64* %25, align 8
  %57 = load i64, i64* %25, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %50
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %62 = icmp ne void (%struct.ttm_buffer_object*)* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %65 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  call void %64(%struct.ttm_buffer_object* %65)
  br label %69

66:                                               ; preds = %59
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %68 = call i32 @kfree(%struct.ttm_buffer_object* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %26, align 8
  %71 = load i64, i64* %21, align 8
  %72 = call i32 @ttm_mem_global_free(%struct.ttm_mem_global* %70, i64 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %12, align 4
  br label %221

75:                                               ; preds = %50
  %76 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %77 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %78 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %77, i32 0, i32 0
  store void (%struct.ttm_buffer_object*)* %76, void (%struct.ttm_buffer_object*)** %78, align 8
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %80 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %79, i32 0, i32 19
  %81 = call i32 @kref_init(i32* %80)
  %82 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %83 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %82, i32 0, i32 18
  %84 = call i32 @kref_init(i32* %83)
  %85 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %86 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %85, i32 0, i32 17
  %87 = call i32 @atomic_set(i32* %86, i32 0)
  %88 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %89 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %88, i32 0, i32 16
  %90 = call i32 @atomic_set(i32* %89, i32 1)
  %91 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %92 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %91, i32 0, i32 15
  %93 = call i32 @init_waitqueue_head(i32* %92)
  %94 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %95 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %94, i32 0, i32 14
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %98 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %97, i32 0, i32 13
  %99 = call i32 @INIT_LIST_HEAD(i32* %98)
  %100 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %101 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %100, i32 0, i32 12
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %104 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %103, i32 0, i32 11
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %107 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %108 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %107, i32 0, i32 10
  store %struct.ttm_bo_device* %106, %struct.ttm_bo_device** %108, align 8
  %109 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %110 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %113 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %112, i32 0, i32 5
  store %struct.TYPE_6__* %111, %struct.TYPE_6__** %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %116 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %25, align 8
  %118 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %119 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %25, align 8
  %121 = load i64, i64* @PAGE_SHIFT, align 8
  %122 = shl i64 %120, %121
  %123 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %124 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %127 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %128 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 6
  store i32 %126, i32* %129, align 8
  %130 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %131 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %134 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  store i64 %132, i64* %135, align 8
  %136 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %137 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 5
  store i32* null, i32** %138, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %141 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %140, i32 0, i32 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  store i32 %139, i32* %142, align 8
  %143 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %144 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %143, i32 0, i32 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %148 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %147, i32 0, i32 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %152 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %151, i32 0, i32 9
  store i64 0, i64* %152, align 8
  %153 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %154 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %157 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store i32 %155, i32* %158, align 8
  %159 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %160 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %159, i32 0, i32 3
  store i32 0, i32* %160, align 8
  %161 = load %struct.file*, %struct.file** %20, align 8
  %162 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %163 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %162, i32 0, i32 7
  store %struct.file* %161, %struct.file** %163, align 8
  %164 = load i64, i64* %21, align 8
  %165 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %166 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %165, i32 0, i32 4
  store i64 %164, i64* %166, align 8
  %167 = load %struct.sg_table*, %struct.sg_table** %22, align 8
  %168 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %169 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %168, i32 0, i32 6
  store %struct.sg_table* %167, %struct.sg_table** %169, align 8
  %170 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %171 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %170, i32 0, i32 5
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = call i32 @atomic_inc(i32* %173)
  %175 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %176 = load %struct.ttm_placement*, %struct.ttm_placement** %17, align 8
  %177 = call i32 @ttm_bo_check_placement(%struct.ttm_buffer_object* %175, %struct.ttm_placement* %176)
  store i32 %177, i32* %24, align 4
  %178 = load i32, i32* %24, align 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %75
  br label %216

184:                                              ; preds = %75
  %185 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %186 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = load i64, i64* @ttm_bo_type_device, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %198, label %191

191:                                              ; preds = %184
  %192 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %193 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* @ttm_bo_type_sg, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %191, %184
  %199 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %200 = call i32 @ttm_bo_setup_vm(%struct.ttm_buffer_object* %199)
  store i32 %200, i32* %24, align 4
  %201 = load i32, i32* %24, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %216

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %191
  %206 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %207 = load %struct.ttm_placement*, %struct.ttm_placement** %17, align 8
  %208 = load i32, i32* %19, align 4
  %209 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %206, %struct.ttm_placement* %207, i32 %208, i32 0)
  store i32 %209, i32* %24, align 4
  %210 = load i32, i32* %24, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %216

213:                                              ; preds = %205
  %214 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %215 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %214)
  store i32 0, i32* %12, align 4
  br label %221

216:                                              ; preds = %212, %203, %183
  %217 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %218 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %217)
  %219 = call i32 @ttm_bo_unref(%struct.ttm_buffer_object** %14)
  %220 = load i32, i32* %24, align 4
  store i32 %220, i32* %12, align 4
  br label %221

221:                                              ; preds = %216, %213, %69, %47
  %222 = load i32, i32* %12, align 4
  ret i32 %222
}

declare dso_local i32 @ttm_mem_global_alloc(%struct.ttm_mem_global*, i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_mem_global_free(%struct.ttm_mem_global*, i64) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ttm_bo_check_placement(%struct.ttm_buffer_object*, %struct.ttm_placement*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_bo_setup_vm(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object*, %struct.ttm_placement*, i32, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_unref(%struct.ttm_buffer_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
