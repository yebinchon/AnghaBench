; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_handle_to_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_handle_to_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* (%struct.drm_device*, %struct.drm_gem_object*, i32)* }
%struct.drm_gem_object = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.drm_file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dma_buf = type opaque

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_prime_handle_to_fd(%struct.drm_device* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.drm_gem_object*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dma_buf*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %16, %struct.drm_file* %17, i32 %18)
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %12, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %21 = icmp ne %struct.drm_gem_object* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %107

25:                                               ; preds = %5
  %26 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %27 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %31 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.dma_buf*
  store %struct.dma_buf* %40, %struct.dma_buf** %15, align 8
  br label %90

41:                                               ; preds = %25
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %43 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %48 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to %struct.dma_buf*
  store %struct.dma_buf* %50, %struct.dma_buf** %15, align 8
  br label %90

51:                                               ; preds = %41
  %52 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8* (%struct.drm_device*, %struct.drm_gem_object*, i32)*, i8* (%struct.drm_device*, %struct.drm_gem_object*, i32)** %55, align 8
  %57 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i8* %56(%struct.drm_device* %57, %struct.drm_gem_object* %58, i32 %59)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @PTR_ERR(i8* %65)
  store i32 %66, i32* %14, align 4
  br label %99

67:                                               ; preds = %51
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %70 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %72 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %71, i32 0, i32 0
  %73 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %74 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @drm_prime_add_buf_handle(%struct.TYPE_6__* %72, i8* %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %99

81:                                               ; preds = %67
  %82 = load i8*, i8** %13, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @dma_buf_fd(i8* %82, i32 %83)
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  %86 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %87 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  store i32 0, i32* %6, align 4
  br label %107

90:                                               ; preds = %46, %34
  %91 = load %struct.dma_buf*, %struct.dma_buf** %15, align 8
  %92 = bitcast %struct.dma_buf* %91 to i8*
  %93 = call i32 @get_dma_buf(i8* %92)
  %94 = load %struct.dma_buf*, %struct.dma_buf** %15, align 8
  %95 = bitcast %struct.dma_buf* %94 to i8*
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @dma_buf_fd(i8* %95, i32 %96)
  %98 = load i32*, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %90, %80, %64
  %100 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %101 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %100)
  %102 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %103 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %99, %81, %22
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @drm_prime_add_buf_handle(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @dma_buf_fd(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_dma_buf(i8*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
