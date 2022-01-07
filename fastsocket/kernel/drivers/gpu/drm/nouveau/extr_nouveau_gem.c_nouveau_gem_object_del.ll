; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i64, %struct.nouveau_bo* }
%struct.nouveau_bo = type { i32, %struct.ttm_buffer_object, i32* }
%struct.ttm_buffer_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_gem_object_del(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %6 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %5, i32 0, i32 1
  %7 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  store %struct.nouveau_bo* %7, %struct.nouveau_bo** %3, align 8
  %8 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %8, i32 0, i32 1
  store %struct.ttm_buffer_object* %9, %struct.ttm_buffer_object** %4, align 8
  %10 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %11 = icmp ne %struct.nouveau_bo* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %15 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %17 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %23 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %25 = call i32 @nouveau_bo_unpin(%struct.nouveau_bo* %24)
  br label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %28 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %33 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @drm_prime_gem_destroy(%struct.drm_gem_object* %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  %39 = call i32 @ttm_bo_unref(%struct.ttm_buffer_object** %4)
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %41 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %40)
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %43 = call i32 @kfree(%struct.drm_gem_object* %42)
  br label %44

44:                                               ; preds = %38, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nouveau_bo_unpin(%struct.nouveau_bo*) #1

declare dso_local i32 @drm_prime_gem_destroy(%struct.drm_gem_object*, i32) #1

declare dso_local i32 @ttm_bo_unref(%struct.ttm_buffer_object**) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
