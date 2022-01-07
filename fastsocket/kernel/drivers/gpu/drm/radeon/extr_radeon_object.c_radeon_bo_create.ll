; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sg_table = type { i32 }
%struct.radeon_bo = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.radeon_device* }
%struct.TYPE_11__ = type { i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@ttm_bo_type_sg = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@radeon_ttm_bo_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_create(%struct.radeon_device* %0, i64 %1, i32 %2, i32 %3, i32 %4, %struct.sg_table* %5, %struct.radeon_bo** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sg_table*, align 8
  %15 = alloca %struct.radeon_bo**, align 8
  %16 = alloca %struct.radeon_bo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.sg_table* %5, %struct.sg_table** %14, align 8
  store %struct.radeon_bo** %6, %struct.radeon_bo*** %15, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i64 @roundup(i32 %21, i32 %22)
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = lshr i64 %23, %24
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = call i64 @ALIGN(i64 %26, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %7
  %41 = load i32, i32* @ttm_bo_type_kernel, align 4
  store i32 %41, i32* %17, align 4
  br label %50

42:                                               ; preds = %7
  %43 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %44 = icmp ne %struct.sg_table* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @ttm_bo_type_sg, align 4
  store i32 %46, i32* %17, align 4
  br label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ttm_bo_type_device, align 4
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.radeon_bo**, %struct.radeon_bo*** %15, align 8
  store %struct.radeon_bo* null, %struct.radeon_bo** %51, align 8
  %52 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @ttm_bo_dma_acc_size(%struct.TYPE_9__* %54, i64 %55, i32 40)
  store i64 %56, i64* %19, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.radeon_bo* @kzalloc(i32 40, i32 %57)
  store %struct.radeon_bo* %58, %struct.radeon_bo** %16, align 8
  %59 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %60 = icmp eq %struct.radeon_bo* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %134

64:                                               ; preds = %50
  %65 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %69 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %68, i32 0, i32 5
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @drm_gem_object_init(%struct.TYPE_10__* %67, %struct.TYPE_11__* %69, i64 %70)
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %77 = call i32 @kfree(%struct.radeon_bo* %76)
  %78 = load i32, i32* %20, align 4
  store i32 %78, i32* %8, align 4
  br label %134

79:                                               ; preds = %64
  %80 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %81 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %82 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %81, i32 0, i32 6
  store %struct.radeon_device* %80, %struct.radeon_device** %82, align 8
  %83 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %84 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %87 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 8
  %88 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %89 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %88, i32 0, i32 4
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %92 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %91, i32 0, i32 3
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @radeon_ttm_placement_from_domain(%struct.radeon_bo* %94, i32 %95)
  %97 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = call i32 @down_read(i32* %99)
  %101 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %105 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %104, i32 0, i32 2
  %106 = load i64, i64* %10, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %109 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %108, i32 0, i32 1
  %110 = load i64, i64* %18, align 8
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %19, align 8
  %116 = load %struct.sg_table*, %struct.sg_table** %14, align 8
  %117 = call i32 @ttm_bo_init(%struct.TYPE_9__* %103, i32* %105, i64 %106, i32 %107, i32* %109, i64 %110, i32 %114, i32* null, i64 %115, %struct.sg_table* %116, i32* @radeon_ttm_bo_destroy)
  store i32 %117, i32* %20, align 4
  %118 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = call i32 @up_read(i32* %120)
  %122 = load i32, i32* %20, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %79
  %128 = load i32, i32* %20, align 4
  store i32 %128, i32* %8, align 4
  br label %134

129:                                              ; preds = %79
  %130 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %131 = load %struct.radeon_bo**, %struct.radeon_bo*** %15, align 8
  store %struct.radeon_bo* %130, %struct.radeon_bo** %131, align 8
  %132 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %133 = call i32 @trace_radeon_bo_create(%struct.radeon_bo* %132)
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %129, %127, %75, %61
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i64 @roundup(i32, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @ttm_bo_dma_acc_size(%struct.TYPE_9__*, i64, i32) #1

declare dso_local %struct.radeon_bo* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_gem_object_init(%struct.TYPE_10__*, %struct.TYPE_11__*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.radeon_bo*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @radeon_ttm_placement_from_domain(%struct.radeon_bo*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ttm_bo_init(%struct.TYPE_9__*, i32*, i64, i32, i32*, i64, i32, i32*, i64, %struct.sg_table*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @trace_radeon_bo_create(%struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
