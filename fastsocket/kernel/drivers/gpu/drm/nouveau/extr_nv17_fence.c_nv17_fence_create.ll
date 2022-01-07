; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_fence.c_nv17_fence_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_fence.c_nv17_fence_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { i32, %struct.nv10_fence_priv* }
%struct.nv10_fence_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 (%struct.nouveau_drm.0*)* }
%struct.nouveau_drm.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv17_fence_resume = common dso_local global i32 0, align 4
@nv17_fence_context_new = common dso_local global i32 0, align 4
@nv10_fence_context_del = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv17_fence_create(%struct.nouveau_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nv10_fence_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nv10_fence_priv* @kzalloc(i32 32, i32 %6)
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %8, i32 0, i32 1
  store %struct.nv10_fence_priv* %7, %struct.nv10_fence_priv** %9, align 8
  store %struct.nv10_fence_priv* %7, %struct.nv10_fence_priv** %4, align 8
  %10 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %11 = icmp ne %struct.nv10_fence_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %85

15:                                               ; preds = %1
  %16 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %17 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32 (%struct.nouveau_drm.0*)* bitcast (i32 (%struct.nouveau_drm*)* @nv10_fence_destroy to i32 (%struct.nouveau_drm.0*)*), i32 (%struct.nouveau_drm.0*)** %18, align 8
  %19 = load i32, i32* @nv17_fence_resume, align 4
  %20 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %21 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @nv17_fence_context_new, align 4
  %24 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %25 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @nv10_fence_context_del, align 4
  %28 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %29 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %32 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %35 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %38 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %39 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %38, i32 0, i32 0
  %40 = call i32 @nouveau_bo_new(i32 %36, i32 4096, i32 4096, i32 %37, i32 0, i32 0, i32* null, i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %15
  %44 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %45 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %48 = call i32 @nouveau_bo_pin(i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %43
  %52 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %53 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @nouveau_bo_map(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %60 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @nouveau_bo_unpin(i32 %61)
  br label %63

63:                                               ; preds = %58, %51
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %69 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %68, i32 0, i32 0
  %70 = call i32 @nouveau_bo_ref(i32* null, i32* %69)
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %15
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %77 = call i32 @nv10_fence_destroy(%struct.nouveau_drm* %76)
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %85

79:                                               ; preds = %72
  %80 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %4, align 8
  %81 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @nouveau_bo_wr32(i32 %82, i32 0, i32 0)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %75, %12
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.nv10_fence_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @nv10_fence_destroy(%struct.nouveau_drm*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nouveau_bo_new(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @nouveau_bo_pin(i32, i32) #1

declare dso_local i32 @nouveau_bo_map(i32) #1

declare dso_local i32 @nouveau_bo_unpin(i32) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i32*) #1

declare dso_local i32 @nouveau_bo_wr32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
