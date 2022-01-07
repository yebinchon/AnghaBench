; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_fd_to_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_fd_to_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_gem_object* (%struct.drm_device*, %struct.drm_gem_object*)* }
%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dma_buf = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_prime_fd_to_handle(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dma_buf*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.drm_gem_object* @dma_buf_get(i32 %13)
  %15 = bitcast %struct.drm_gem_object* %14 to %struct.dma_buf*
  store %struct.dma_buf* %15, %struct.dma_buf** %10, align 8
  %16 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %17 = bitcast %struct.dma_buf* %16 to %struct.drm_gem_object*
  %18 = call i64 @IS_ERR(%struct.drm_gem_object* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %22 = bitcast %struct.dma_buf* %21 to %struct.drm_gem_object*
  %23 = call i32 @PTR_ERR(%struct.drm_gem_object* %22)
  store i32 %23, i32* %5, align 4
  br label %95

24:                                               ; preds = %4
  %25 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %26 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %30 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %29, i32 0, i32 0
  %31 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %32 = bitcast %struct.dma_buf* %31 to %struct.drm_gem_object*
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @drm_prime_lookup_buf_handle(%struct.TYPE_5__* %30, %struct.drm_gem_object* %32, i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %86

38:                                               ; preds = %24
  %39 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.drm_gem_object* (%struct.drm_device*, %struct.drm_gem_object*)*, %struct.drm_gem_object* (%struct.drm_device*, %struct.drm_gem_object*)** %42, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %46 = bitcast %struct.dma_buf* %45 to %struct.drm_gem_object*
  %47 = call %struct.drm_gem_object* %43(%struct.drm_device* %44, %struct.drm_gem_object* %46)
  store %struct.drm_gem_object* %47, %struct.drm_gem_object** %11, align 8
  %48 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %49 = call i64 @IS_ERR(%struct.drm_gem_object* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %53 = call i32 @PTR_ERR(%struct.drm_gem_object* %52)
  store i32 %53, i32* %12, align 4
  br label %86

54:                                               ; preds = %38
  %55 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %56 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @drm_gem_handle_create(%struct.drm_file* %55, %struct.drm_gem_object* %56, i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %60 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %86

64:                                               ; preds = %54
  %65 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %66 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %65, i32 0, i32 0
  %67 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %68 = bitcast %struct.dma_buf* %67 to %struct.drm_gem_object*
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_prime_add_buf_handle(%struct.TYPE_5__* %66, %struct.drm_gem_object* %68, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %83

75:                                               ; preds = %64
  %76 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %77 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %81 = bitcast %struct.dma_buf* %80 to %struct.drm_gem_object*
  %82 = call i32 @dma_buf_put(%struct.drm_gem_object* %81)
  store i32 0, i32* %5, align 4
  br label %95

83:                                               ; preds = %74
  %84 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %85 = call i32 @drm_gem_object_handle_unreference_unlocked(%struct.drm_gem_object* %84)
  br label %86

86:                                               ; preds = %83, %63, %51, %37
  %87 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %88 = bitcast %struct.dma_buf* %87 to %struct.drm_gem_object*
  %89 = call i32 @dma_buf_put(%struct.drm_gem_object* %88)
  %90 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %91 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %86, %75, %20
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.drm_gem_object* @dma_buf_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_prime_lookup_buf_handle(%struct.TYPE_5__*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_prime_add_buf_handle(%struct.TYPE_5__*, %struct.drm_gem_object*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_buf_put(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_handle_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
