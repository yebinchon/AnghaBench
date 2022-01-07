; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.nv84_fence_priv*, i32 }
%struct.nv84_fence_priv = type { i32*, i32 }
%struct.nouveau_fifo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*)* @nv84_fence_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv84_fence_suspend(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.nouveau_fifo*, align 8
  %4 = alloca %struct.nv84_fence_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %6 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %7 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.nouveau_fifo* @nouveau_fifo(i32 %8)
  store %struct.nouveau_fifo* %9, %struct.nouveau_fifo** %3, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 0
  %12 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %11, align 8
  store %struct.nv84_fence_priv* %12, %struct.nv84_fence_priv** %4, align 8
  %13 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32* @vmalloc(i32 %19)
  %21 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %22 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %24 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %31 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %28
  %35 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %36 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 4
  %40 = call i32 @nouveau_bo_rd32(i32 %37, i32 %39)
  %41 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %42 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %28

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %53 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  ret i32 %56
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @nouveau_bo_rd32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
