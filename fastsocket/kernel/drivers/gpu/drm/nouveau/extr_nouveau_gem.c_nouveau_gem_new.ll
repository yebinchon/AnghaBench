; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_bo = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.nouveau_bo*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.TYPE_7__ = type { i64 }

@NOUVEAU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@NV_50 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_new(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.nouveau_bo** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nouveau_bo**, align 8
  %16 = alloca %struct.nouveau_drm*, align 8
  %17 = alloca %struct.nouveau_bo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.nouveau_bo** %6, %struct.nouveau_bo*** %15, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %21 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %16, align 8
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %28 = load i32, i32* %18, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %18, align 4
  br label %30

30:                                               ; preds = %26, %7
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %37 = load i32, i32* %18, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @NOUVEAU_GEM_DOMAIN_CPU, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %39
  %48 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %49 = load i32, i32* %18, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %18, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.nouveau_bo**, %struct.nouveau_bo*** %15, align 8
  %59 = call i32 @nouveau_bo_new(%struct.drm_device* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32* null, %struct.nouveau_bo** %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %19, align 4
  store i32 %63, i32* %8, align 4
  br label %119

64:                                               ; preds = %51
  %65 = load %struct.nouveau_bo**, %struct.nouveau_bo*** %15, align 8
  %66 = load %struct.nouveau_bo*, %struct.nouveau_bo** %65, align 8
  store %struct.nouveau_bo* %66, %struct.nouveau_bo** %17, align 8
  %67 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %68 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %71 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.nouveau_drm*, %struct.nouveau_drm** %16, align 8
  %73 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_7__* @nv_device(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NV_50, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %64
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %83 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %64
  %87 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %88 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %89 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_8__* @drm_gem_object_alloc(%struct.drm_device* %87, i32 %92)
  %94 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %95 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %94, i32 0, i32 1
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %95, align 8
  %96 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %97 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = icmp ne %struct.TYPE_8__* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %86
  %101 = load %struct.nouveau_bo**, %struct.nouveau_bo*** %15, align 8
  %102 = call i32 @nouveau_bo_ref(i32* null, %struct.nouveau_bo** %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %119

105:                                              ; preds = %86
  %106 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %107 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %112 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %115 = load %struct.nouveau_bo*, %struct.nouveau_bo** %17, align 8
  %116 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store %struct.nouveau_bo* %114, %struct.nouveau_bo** %118, align 8
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %105, %100, %62
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_bo_new(%struct.drm_device*, i32, i32, i32, i32, i32, i32*, %struct.nouveau_bo**) #1

declare dso_local %struct.TYPE_7__* @nv_device(i32) #1

declare dso_local %struct.TYPE_8__* @drm_gem_object_alloc(%struct.drm_device*, i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, %struct.nouveau_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
