; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_unpin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i64, %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bo_unpin(%struct.nouveau_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %3, align 8
  %7 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nouveau_drm* @nouveau_bdev(i32 %10)
  store %struct.nouveau_drm* %11, %struct.nouveau_drm** %4, align 8
  %12 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %13 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %12, i32 0, i32 1
  store %struct.ttm_buffer_object* %13, %struct.ttm_buffer_object** %5, align 8
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %15 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %14, i32 0, i32 0, i32 0, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %22 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %66

27:                                               ; preds = %20
  %28 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %29 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %30 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %28, i32 %32, i32 0)
  %34 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %35 = call i32 @nouveau_bo_validate(%struct.nouveau_bo* %34, i32 0, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %27
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %40 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %63 [
    i32 128, label %43
    i32 129, label %53
  ]

43:                                               ; preds = %38
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %49 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %64

53:                                               ; preds = %38
  %54 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %55 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %59 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, %57
  store i32 %62, i32* %60, align 4
  br label %64

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %53, %43
  br label %65

65:                                               ; preds = %64, %27
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %68 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %18
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32, i32) #1

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @nouveau_bo_validate(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
