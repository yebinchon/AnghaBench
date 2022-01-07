; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv10_fence.c_nv10_fence_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv10_fence.c_nv10_fence_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.nv10_fence_priv* }
%struct.nv10_fence_priv = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv10_fence_destroy(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.nv10_fence_priv*, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %4 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %4, i32 0, i32 0
  %6 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %5, align 8
  store %struct.nv10_fence_priv* %6, %struct.nv10_fence_priv** %3, align 8
  %7 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @nouveau_bo_unmap(i64 %9)
  %11 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %3, align 8
  %17 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @nouveau_bo_unpin(i64 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %3, align 8
  %22 = getelementptr inbounds %struct.nv10_fence_priv, %struct.nv10_fence_priv* %21, i32 0, i32 0
  %23 = call i32 @nouveau_bo_ref(i32* null, i64* %22)
  %24 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %25 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %24, i32 0, i32 0
  store %struct.nv10_fence_priv* null, %struct.nv10_fence_priv** %25, align 8
  %26 = load %struct.nv10_fence_priv*, %struct.nv10_fence_priv** %3, align 8
  %27 = call i32 @kfree(%struct.nv10_fence_priv* %26)
  ret void
}

declare dso_local i32 @nouveau_bo_unmap(i64) #1

declare dso_local i32 @nouveau_bo_unpin(i64) #1

declare dso_local i32 @nouveau_bo_ref(i32*, i64*) #1

declare dso_local i32 @kfree(%struct.nv10_fence_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
