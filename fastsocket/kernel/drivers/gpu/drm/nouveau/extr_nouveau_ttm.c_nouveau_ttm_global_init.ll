; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_global_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_global_reference, %struct.TYPE_3__ }
%struct.drm_global_reference = type { i32, i32*, i32*, i32, i32 }
%struct.TYPE_3__ = type { %struct.drm_global_reference, i32 }

@DRM_GLOBAL_TTM_MEM = common dso_local global i32 0, align 4
@nouveau_ttm_mem_global_init = common dso_local global i32 0, align 4
@nouveau_ttm_mem_global_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed setting up TTM memory accounting\0A\00", align 1
@DRM_GLOBAL_TTM_BO = common dso_local global i32 0, align 4
@ttm_bo_global_init = common dso_local global i32 0, align 4
@ttm_bo_global_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed setting up TTM BO subsystem\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_ttm_global_init(%struct.nouveau_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.drm_global_reference*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  %6 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.drm_global_reference* %8, %struct.drm_global_reference** %4, align 8
  %9 = load i32, i32* @DRM_GLOBAL_TTM_MEM, align 4
  %10 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %11 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %13 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %15 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %14, i32 0, i32 2
  store i32* @nouveau_ttm_mem_global_init, i32** %15, align 8
  %16 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %17 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %16, i32 0, i32 1
  store i32* @nouveau_ttm_mem_global_release, i32** %17, align 8
  %18 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %19 = call i32 @drm_global_item_ref(%struct.drm_global_reference* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %28 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %72

32:                                               ; preds = %1
  %33 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %34 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %37 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 8
  %40 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %41 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store %struct.drm_global_reference* %43, %struct.drm_global_reference** %4, align 8
  %44 = load i32, i32* @DRM_GLOBAL_TTM_BO, align 4
  %45 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %46 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %48 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %50 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %49, i32 0, i32 2
  store i32* @ttm_bo_global_init, i32** %50, align 8
  %51 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %52 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %51, i32 0, i32 1
  store i32* @ttm_bo_global_release, i32** %52, align 8
  %53 = load %struct.drm_global_reference*, %struct.drm_global_reference** %4, align 8
  %54 = call i32 @drm_global_item_ref(%struct.drm_global_reference* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %32
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %63 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @drm_global_item_unref(%struct.drm_global_reference* %64)
  %66 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %67 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %60, %25
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @drm_global_item_ref(%struct.drm_global_reference*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_global_item_unref(%struct.drm_global_reference*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
