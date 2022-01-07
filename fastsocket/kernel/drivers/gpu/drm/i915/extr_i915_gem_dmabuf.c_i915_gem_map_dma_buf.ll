; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_dmabuf.c_i915_gem_map_dma_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_dmabuf.c_i915_gem_map_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.dma_buf_attachment = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.scatterlist* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.dma_buf_attachment*, i32)* @i915_gem_map_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @i915_gem_map_dma_buf(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %13 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  store %struct.drm_i915_gem_object* %16, %struct.drm_i915_gem_object** %6, align 8
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call i32 @i915_mutex_lock_interruptible(%struct.TYPE_8__* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.sg_table* @ERR_PTR(i32 %25)
  store %struct.sg_table* %26, %struct.sg_table** %3, align 8
  br label %122

27:                                               ; preds = %2
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %29 = call i32 @i915_gem_object_get_pages(%struct.drm_i915_gem_object* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = call %struct.sg_table* @ERR_PTR(i32 %33)
  store %struct.sg_table* %34, %struct.sg_table** %7, align 8
  br label %114

35:                                               ; preds = %27
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.sg_table* @kmalloc(i32 16, i32 %36)
  store %struct.sg_table* %37, %struct.sg_table** %7, align 8
  %38 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %39 = icmp eq %struct.sg_table* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.sg_table* @ERR_PTR(i32 %42)
  store %struct.sg_table* %43, %struct.sg_table** %7, align 8
  br label %114

44:                                               ; preds = %35
  %45 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @sg_alloc_table(%struct.sg_table* %45, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %57 = call i32 @kfree(%struct.sg_table* %56)
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.sg_table* @ERR_PTR(i32 %58)
  store %struct.sg_table* %59, %struct.sg_table** %7, align 8
  br label %114

60:                                               ; preds = %44
  %61 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %62 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.scatterlist*, %struct.scatterlist** %64, align 8
  store %struct.scatterlist* %65, %struct.scatterlist** %8, align 8
  %66 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %67 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %66, i32 0, i32 1
  %68 = load %struct.scatterlist*, %struct.scatterlist** %67, align 8
  store %struct.scatterlist* %68, %struct.scatterlist** %9, align 8
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %87, %60
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %70, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %79 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %80 = call i32 @sg_page(%struct.scatterlist* %79)
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = call i32 @sg_set_page(%struct.scatterlist* %78, i32 %80, i32 %81, i32 0)
  %83 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %84 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %83)
  store %struct.scatterlist* %84, %struct.scatterlist** %9, align 8
  %85 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %86 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %85)
  store %struct.scatterlist* %86, %struct.scatterlist** %8, align 8
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %69

90:                                               ; preds = %69
  %91 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %92 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %95 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %94, i32 0, i32 1
  %96 = load %struct.scatterlist*, %struct.scatterlist** %95, align 8
  %97 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %98 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @dma_map_sg(i32 %93, %struct.scatterlist* %96, i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %90
  %104 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %105 = call i32 @sg_free_table(%struct.sg_table* %104)
  %106 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %107 = call i32 @kfree(%struct.sg_table* %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  %110 = call %struct.sg_table* @ERR_PTR(i32 %109)
  store %struct.sg_table* %110, %struct.sg_table** %7, align 8
  br label %114

111:                                              ; preds = %90
  %112 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %113 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %112)
  br label %114

114:                                              ; preds = %111, %103, %55, %40, %32
  %115 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %116 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  store %struct.sg_table* %121, %struct.sg_table** %3, align 8
  br label %122

122:                                              ; preds = %114, %24
  %123 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %123
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.TYPE_8__*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @i915_gem_object_get_pages(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.sg_table* @kmalloc(i32, i32) #1

declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
