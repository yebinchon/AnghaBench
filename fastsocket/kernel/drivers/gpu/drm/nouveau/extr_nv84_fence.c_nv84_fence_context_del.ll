; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_context_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_context_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.nv84_fence_chan*, %struct.TYPE_3__* }
%struct.nv84_fence_chan = type { i32, i32, i32, i32* }
%struct.TYPE_3__ = type { %struct.nv84_fence_priv*, %struct.drm_device* }
%struct.nv84_fence_priv = type { %struct.nouveau_bo* }
%struct.nouveau_bo = type { i32 }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_channel*)* @nv84_fence_context_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv84_fence_context_del(%struct.nouveau_channel* %0) #0 {
  %2 = alloca %struct.nouveau_channel*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nv84_fence_priv*, align 8
  %5 = alloca %struct.nv84_fence_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_bo*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %2, align 8
  %8 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %16, align 8
  store %struct.nv84_fence_priv* %17, %struct.nv84_fence_priv** %4, align 8
  %18 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %19 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %18, i32 0, i32 0
  %20 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %19, align 8
  store %struct.nv84_fence_chan* %20, %struct.nv84_fence_chan** %5, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %40, %1
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.nouveau_bo* @nv50_display_crtc_sema(%struct.drm_device* %29, i32 %30)
  store %struct.nouveau_bo* %31, %struct.nouveau_bo** %7, align 8
  %32 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  %33 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %34 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @nouveau_bo_vma_del(%struct.nouveau_bo* %32, i32* %38)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %45 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %44, i32 0, i32 0
  %46 = load %struct.nouveau_bo*, %struct.nouveau_bo** %45, align 8
  %47 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %48 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %47, i32 0, i32 2
  %49 = call i32 @nouveau_bo_vma_del(%struct.nouveau_bo* %46, i32* %48)
  %50 = load %struct.nv84_fence_priv*, %struct.nv84_fence_priv** %4, align 8
  %51 = getelementptr inbounds %struct.nv84_fence_priv, %struct.nv84_fence_priv* %50, i32 0, i32 0
  %52 = load %struct.nouveau_bo*, %struct.nouveau_bo** %51, align 8
  %53 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %54 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %53, i32 0, i32 1
  %55 = call i32 @nouveau_bo_vma_del(%struct.nouveau_bo* %52, i32* %54)
  %56 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %57 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %56, i32 0, i32 0
  %58 = call i32 @nouveau_fence_context_del(i32* %57)
  %59 = load %struct.nouveau_channel*, %struct.nouveau_channel** %2, align 8
  %60 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %59, i32 0, i32 0
  store %struct.nv84_fence_chan* null, %struct.nv84_fence_chan** %60, align 8
  %61 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %62 = call i32 @kfree(%struct.nv84_fence_chan* %61)
  ret void
}

declare dso_local %struct.nouveau_bo* @nv50_display_crtc_sema(%struct.drm_device*, i32) #1

declare dso_local i32 @nouveau_bo_vma_del(%struct.nouveau_bo*, i32*) #1

declare dso_local i32 @nouveau_fence_context_del(i32*) #1

declare dso_local i32 @kfree(%struct.nv84_fence_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
