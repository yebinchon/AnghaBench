; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_import.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.drm_gem_object*, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.sg_table* (%struct.drm_device*, i32, %struct.sg_table*)* }
%struct.sg_table = type { %struct.sg_table*, %struct.drm_device* }
%struct.dma_buf = type { i32, %struct.sg_table*, i32* }
%struct.dma_buf_attachment = type { %struct.dma_buf_attachment*, %struct.drm_device* }

@EINVAL = common dso_local global i32 0, align 4
@drm_gem_prime_dmabuf_ops = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @drm_gem_prime_import(%struct.drm_device* %0, %struct.dma_buf* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.sg_table* (%struct.drm_device*, i32, %struct.sg_table*)*, %struct.sg_table* (%struct.drm_device*, i32, %struct.sg_table*)** %13, align 8
  %15 = icmp ne %struct.sg_table* (%struct.drm_device*, i32, %struct.sg_table*)* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sg_table* @ERR_PTR(i32 %18)
  %20 = bitcast %struct.sg_table* %19 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %20, %struct.drm_gem_object** %3, align 8
  br label %115

21:                                               ; preds = %2
  %22 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %23 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, @drm_gem_prime_dmabuf_ops
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %28 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %27, i32 0, i32 1
  %29 = load %struct.sg_table*, %struct.sg_table** %28, align 8
  %30 = bitcast %struct.sg_table* %29 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %30, %struct.drm_gem_object** %8, align 8
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %32 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %31, i32 0, i32 1
  %33 = load %struct.drm_device*, %struct.drm_device** %32, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = icmp eq %struct.drm_device* %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %38 = bitcast %struct.drm_gem_object* %37 to %struct.sg_table*
  %39 = call i32 @drm_gem_object_reference(%struct.sg_table* %38)
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %40, %struct.drm_gem_object** %3, align 8
  br label %115

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.sg_table* @dma_buf_attach(%struct.dma_buf* %43, i32 %46)
  %48 = bitcast %struct.sg_table* %47 to %struct.dma_buf_attachment*
  store %struct.dma_buf_attachment* %48, %struct.dma_buf_attachment** %6, align 8
  %49 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %50 = bitcast %struct.dma_buf_attachment* %49 to %struct.sg_table*
  %51 = call i64 @IS_ERR(%struct.sg_table* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %55 = bitcast %struct.dma_buf_attachment* %54 to %struct.sg_table*
  %56 = call i32 @PTR_ERR(%struct.sg_table* %55)
  %57 = call %struct.sg_table* @ERR_PTR(i32 %56)
  %58 = bitcast %struct.sg_table* %57 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %58, %struct.drm_gem_object** %3, align 8
  br label %115

59:                                               ; preds = %42
  %60 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %61 = call i32 @get_dma_buf(%struct.dma_buf* %60)
  %62 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %63 = bitcast %struct.dma_buf_attachment* %62 to %struct.sg_table*
  %64 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %65 = call %struct.sg_table* @dma_buf_map_attachment(%struct.sg_table* %63, i32 %64)
  store %struct.sg_table* %65, %struct.sg_table** %7, align 8
  %66 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %67 = call i64 @IS_ERR_OR_NULL(%struct.sg_table* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %71 = call i32 @PTR_ERR(%struct.sg_table* %70)
  store i32 %71, i32* %9, align 4
  br label %105

72:                                               ; preds = %59
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.sg_table* (%struct.drm_device*, i32, %struct.sg_table*)*, %struct.sg_table* (%struct.drm_device*, i32, %struct.sg_table*)** %76, align 8
  %78 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %79 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %80 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %83 = call %struct.sg_table* %77(%struct.drm_device* %78, i32 %81, %struct.sg_table* %82)
  %84 = bitcast %struct.sg_table* %83 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %84, %struct.drm_gem_object** %8, align 8
  %85 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %86 = bitcast %struct.drm_gem_object* %85 to %struct.sg_table*
  %87 = call i64 @IS_ERR(%struct.sg_table* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %72
  %90 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %91 = bitcast %struct.drm_gem_object* %90 to %struct.sg_table*
  %92 = call i32 @PTR_ERR(%struct.sg_table* %91)
  store i32 %92, i32* %9, align 4
  br label %99

93:                                               ; preds = %72
  %94 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %95 = bitcast %struct.dma_buf_attachment* %94 to %struct.drm_gem_object*
  %96 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %97 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %96, i32 0, i32 0
  store %struct.drm_gem_object* %95, %struct.drm_gem_object** %97, align 8
  %98 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %98, %struct.drm_gem_object** %3, align 8
  br label %115

99:                                               ; preds = %89
  %100 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %101 = bitcast %struct.dma_buf_attachment* %100 to %struct.sg_table*
  %102 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %103 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %104 = call i32 @dma_buf_unmap_attachment(%struct.sg_table* %101, %struct.sg_table* %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %69
  %106 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %107 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %108 = bitcast %struct.dma_buf_attachment* %107 to %struct.sg_table*
  %109 = call i32 @dma_buf_detach(%struct.dma_buf* %106, %struct.sg_table* %108)
  %110 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %111 = call i32 @dma_buf_put(%struct.dma_buf* %110)
  %112 = load i32, i32* %9, align 4
  %113 = call %struct.sg_table* @ERR_PTR(i32 %112)
  %114 = bitcast %struct.sg_table* %113 to %struct.drm_gem_object*
  store %struct.drm_gem_object* %114, %struct.drm_gem_object** %3, align 8
  br label %115

115:                                              ; preds = %105, %93, %53, %36, %16
  %116 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %116
}

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local i32 @drm_gem_object_reference(%struct.sg_table*) #1

declare dso_local %struct.sg_table* @dma_buf_attach(%struct.dma_buf*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sg_table*) #1

declare dso_local i32 @PTR_ERR(%struct.sg_table*) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

declare dso_local %struct.sg_table* @dma_buf_map_attachment(%struct.sg_table*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sg_table*) #1

declare dso_local i32 @dma_buf_unmap_attachment(%struct.sg_table*, %struct.sg_table*, i32) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.sg_table*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
