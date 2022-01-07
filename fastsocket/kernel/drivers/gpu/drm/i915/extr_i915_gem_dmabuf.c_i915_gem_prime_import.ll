; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_dmabuf.c_i915_gem_prime_import.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_dmabuf.c_i915_gem_prime_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.dma_buf_attachment*, %struct.drm_device* }
%struct.dma_buf_attachment = type { i32 }
%struct.drm_device = type { i32 }
%struct.dma_buf = type { i32, %struct.drm_i915_gem_object*, i32* }
%struct.drm_i915_gem_object = type { %struct.drm_gem_object }

@i915_dmabuf_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i915_gem_object_dmabuf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @i915_gem_prime_import(%struct.drm_device* %0, %struct.dma_buf* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca %struct.dma_buf_attachment*, align 8
  %7 = alloca %struct.drm_i915_gem_object*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %5, align 8
  %9 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %10 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, @i915_dmabuf_ops
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %15 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %14, i32 0, i32 1
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  store %struct.drm_i915_gem_object* %16, %struct.drm_i915_gem_object** %7, align 8
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %18, i32 0, i32 1
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = icmp eq %struct.drm_device* %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %24, i32 0, i32 0
  %26 = call i32 @drm_gem_object_reference(%struct.drm_gem_object* %25)
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %27, i32 0, i32 0
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %3, align 8
  br label %82

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf* %31, i32 %34)
  store %struct.dma_buf_attachment* %35, %struct.dma_buf_attachment** %6, align 8
  %36 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %37 = call i64 @IS_ERR(%struct.dma_buf_attachment* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %41 = call %struct.drm_gem_object* @ERR_CAST(%struct.dma_buf_attachment* %40)
  store %struct.drm_gem_object* %41, %struct.drm_gem_object** %3, align 8
  br label %82

42:                                               ; preds = %30
  %43 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %44 = call i32 @get_dma_buf(%struct.dma_buf* %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = call %struct.drm_i915_gem_object* @i915_gem_object_alloc(%struct.drm_device* %45)
  store %struct.drm_i915_gem_object* %46, %struct.drm_i915_gem_object** %7, align 8
  %47 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %48 = icmp eq %struct.drm_i915_gem_object* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %74

52:                                               ; preds = %42
  %53 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %54 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %55 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %54, i32 0, i32 0
  %56 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %57 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @drm_gem_private_object_init(%struct.drm_device* %53, %struct.drm_gem_object* %55, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %64 = call i32 @i915_gem_object_free(%struct.drm_i915_gem_object* %63)
  br label %74

65:                                               ; preds = %52
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %67 = call i32 @i915_gem_object_init(%struct.drm_i915_gem_object* %66, i32* @i915_gem_object_dmabuf_ops)
  %68 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %70, i32 0, i32 0
  store %struct.dma_buf_attachment* %68, %struct.dma_buf_attachment** %71, align 8
  %72 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %7, align 8
  %73 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %72, i32 0, i32 0
  store %struct.drm_gem_object* %73, %struct.drm_gem_object** %3, align 8
  br label %82

74:                                               ; preds = %62, %49
  %75 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %76 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %6, align 8
  %77 = call i32 @dma_buf_detach(%struct.dma_buf* %75, %struct.dma_buf_attachment* %76)
  %78 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  %79 = call i32 @dma_buf_put(%struct.dma_buf* %78)
  %80 = load i32, i32* %8, align 4
  %81 = call %struct.drm_gem_object* @ERR_PTR(i32 %80)
  store %struct.drm_gem_object* %81, %struct.drm_gem_object** %3, align 8
  br label %82

82:                                               ; preds = %74, %65, %39, %23
  %83 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  ret %struct.drm_gem_object* %83
}

declare dso_local i32 @drm_gem_object_reference(%struct.drm_gem_object*) #1

declare dso_local %struct.dma_buf_attachment* @dma_buf_attach(%struct.dma_buf*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf_attachment*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(%struct.dma_buf_attachment*) #1

declare dso_local i32 @get_dma_buf(%struct.dma_buf*) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_alloc(%struct.drm_device*) #1

declare dso_local i32 @drm_gem_private_object_init(%struct.drm_device*, %struct.drm_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_free(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_init(%struct.drm_i915_gem_object*, i32*) #1

declare dso_local i32 @dma_buf_detach(%struct.dma_buf*, %struct.dma_buf_attachment*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

declare dso_local %struct.drm_gem_object* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
