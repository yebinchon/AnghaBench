; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_crtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv84_fence.c_nv84_fence_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.nv84_fence_chan* }
%struct.nv84_fence_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv84_fence_crtc(%struct.nouveau_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv84_fence_chan*, align 8
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_channel*, %struct.nouveau_channel** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %6, i32 0, i32 0
  %8 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %7, align 8
  store %struct.nv84_fence_chan* %8, %struct.nv84_fence_chan** %5, align 8
  %9 = load %struct.nv84_fence_chan*, %struct.nv84_fence_chan** %5, align 8
  %10 = getelementptr inbounds %struct.nv84_fence_chan, %struct.nv84_fence_chan* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
