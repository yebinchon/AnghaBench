; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.nv84_fence_priv*, i32 }
%struct.nv84_fence_priv = type { i32*, i32 }
%struct.nouveau_fifo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_drm*)* @nv84_fence_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv84_fence_resume(%struct.nouveau_drm* %0) #0 {
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
  %13 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %14 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.nouveau_fifo*, %struct.nouveau_fifo** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_fifo, %struct.nouveau_fifo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %26 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %28, 4
  %30 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %31 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nouveau_bo_wr32(i32 %27, i32 %29, i32 %36)
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %43 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @vfree(i32* %44)
  %46 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %47 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %1
  ret void
}

declare dso_local %struct.nouveau_fifo* @nouveau_fifo(i32) #1

declare dso_local i32 @nouveau_bo_wr32(i32, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
