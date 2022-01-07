; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.nouveau_drm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DRM_FILE_PAGE_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_ttm_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  store %struct.drm_file* %10, %struct.drm_file** %6, align 8
  %11 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %12 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nouveau_drm* @nouveau_drm(i32 %15)
  store %struct.nouveau_drm* %16, %struct.nouveau_drm** %7, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DRM_FILE_PAGE_OFFSET, align 8
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = call i32 @drm_mmap(%struct.file* %26, %struct.vm_area_struct* %27)
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %33 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @ttm_bo_mmap(%struct.file* %30, %struct.vm_area_struct* %31, i32* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @drm_mmap(%struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @ttm_bo_mmap(%struct.file*, %struct.vm_area_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
